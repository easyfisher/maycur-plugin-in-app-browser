package com.maycur.plugin;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.FragmentActivity;
import android.webkit.WebView;
import android.webkit.WebViewClient;

/**
 * Created by Easter on 7/19/16.
 */
public class InAppBrowserActivity extends FragmentActivity {
    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        String url = getIntent().getExtras().getString("extra_url");
        setContentView(getResources().getIdentifier("activity_in_app_browser", "layout", getPackageName()));

        WebView webView = (WebView) findViewById(getResources().getIdentifier("webview", "id", getPackageName()));
        webView.setWebViewClient(new WebViewClient());
        webView.loadUrl(url);
    }
}
