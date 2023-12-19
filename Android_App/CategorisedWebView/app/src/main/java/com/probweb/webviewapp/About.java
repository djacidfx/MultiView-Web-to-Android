package com.probweb.webviewapp;

import androidx.appcompat.app.AppCompatActivity;
import androidx.multidex.BuildConfig;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

public class About extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_about);
        TextView title = (TextView)findViewById(R.id.title);
        title.setText("About");
        ImageView goBackHome = findViewById(R.id.goBackHome);
        goBackHome.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                startActivity(new Intent(About.this, MainActivity.class));
                finish();
            }
        });

        TextView textView = (TextView) findViewById(R.id.versionCode);
        textView.setText("Version: "+ BuildConfig.VERSION_NAME);
    }

    @Override
    public void onBackPressed() {
        startActivity(new Intent(About.this, MainActivity.class));
        finish();
        super.onBackPressed();
    }
}