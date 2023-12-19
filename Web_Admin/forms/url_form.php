<fieldset>
    <div class="form-group">
        <label for="f_name">URL Title *</label>
          <input type="text" name="title" value="<?php echo htmlspecialchars($edit ? $customer['title'] : '', ENT_QUOTES, 'UTF-8'); ?>" placeholder="Enter URL title" class="form-control" required="required" id = "title" >
    </div> 

    <div class="form-group">
        <label for="url">Website URL / Link *</label>
        <input type="text" name="url" value="<?php echo htmlspecialchars($edit ? $customer['url'] : '', ENT_QUOTES, 'UTF-8'); ?>" placeholder="Enter your Website URL / Link" class="form-control" required="required" id="url">
    </div> 

 

    <div class="form-group">
        <label for="image">Address</label>
          <input  type="file" name="image" value="<?php echo htmlspecialchars($edit ? $customer['image'] : '', ENT_QUOTES, 'UTF-8'); ?>" placeholder="E-Mail Address" class="form-control" id="image">
    </div> 

   
	<div class="form-group">
        <label>This is a Features Item </label>
           <?php $opt_arr = array("Yes", "No"); 
                            ?>
            <select name="is_featured" class="form-control selectpicker" required>
                <option value=" " >Please select</option>
                <?php
                foreach ($opt_arr as $opt) {
                    if ($edit && $opt == $customer['is_featured']) {
                        $sel = "selected";
                    } else {
                        $sel = "";
                    }
                    echo '<option value="'.$opt.'"' . $sel . '>' . $opt . '</option>';
                }

                ?>
            </select>
    </div>  

    <div class="form-group text-center">
        <label></label>
        <button type="submit" class="btn btn-primary btn-lg" >Save URL <span class="glyphicon glyphicon-send"></span></button>
    </div>            
</fieldset>
