package com.probweb.webviewapp;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.TextView;

public class PrivacyPolicy extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_privacy_policy);
        TextView title = (TextView)findViewById(R.id.title);
        title.setText("Privacy Policy");
        ImageView goBackHome = findViewById(R.id.goBackHome);
        goBackHome.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                startActivity(new Intent(PrivacyPolicy.this, MainActivity.class));
                finish();
            }
        });
        WebView webView;
        webView = (WebView)findViewById(R.id.webView);
        webView.loadUrl("file:///android_asset/privacy_policy.html");
    }

    @Override
    public void onBackPressed() {
        startActivity(new Intent(PrivacyPolicy.this, MainActivity.class));
        finish();
        super.onBackPressed();
    }
}