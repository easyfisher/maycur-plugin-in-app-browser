package com.maycur.plugin;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;

import org.apache.cordova.CallbackContext;
import org.apache.cordova.CordovaPlugin;
import org.json.JSONArray;
import org.json.JSONException;

public class InAppBrowser extends CordovaPlugin {

    @Override
    public boolean execute(String action, JSONArray args, CallbackContext callbackContext) throws JSONException {
        if (action.equals("show")) {
            String url = args.getString(0);
            this.show(url);
            return true;
        }
        return false;
    }

    private void show(final String url) {
        cordova.getActivity().runOnUiThread(new Runnable() {
            @Override
            public void run() {
                Context context = cordova.getActivity()
                        .getApplicationContext();
                Intent intent = new Intent(context, InAppBrowserActivity.class);
                Bundle extras = new Bundle();
                extras.putString("extra_url", url);
                intent.putExtras(extras);
                cordova.getActivity().startActivity(intent);
            }
        });
    }
}
