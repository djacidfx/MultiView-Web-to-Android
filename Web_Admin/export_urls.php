<?php

session_start();
require_once 'config/config.php';
require_once BASE_PATH . '/includes/auth_validate.php';

$db = getDbInstance();
$select = array('id', 'title', 'url', 'is_featured', 'created_at', 'updated_at');


$chunk_size = 100;
$offset = 0;

$data = $db->withTotalCount()->get('web_urls');
$total_count = $db->totalCount;

$handle = fopen('php://memory', 'w');

fputcsv($handle,$select);
$filename = 'export_urls.csv';


$num_queries = ($total_count/$chunk_size) + 1;

//Prevent memory leak for large number of rows by using limit and offset :
for ($i=0; $i<$num_queries; $i++){

    $rows = $db->get('web_urls',Array($offset,$chunk_size), $select);
    $offset = $offset + $chunk_size;
    foreach ($rows as $row) {

        fputcsv($handle,array_values($row));
    }
}

// reset the file pointer to the start of the file
fseek($handle, 0);
// tell the browser it's going to be a csv file
header('Content-Type: application/csv');
// Save instead of displaying csv string
header('Content-Disposition: attachment; filename="'.$filename.'";');
//Send the generated csv lines directly to browser
fpassthru($handle);

