
package io.wj.rnappmetadata;

import java.util.HashMap;
import java.util.Map;

import android.util.Log;
import android.content.pm.PackageManager;
import android.content.pm.PackageInfo;
import android.content.pm.ApplicationInfo;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.Callback;
import com.facebook.react.bridge.Promise;

public class RNAppMetadataModule extends ReactContextBaseJavaModule {

    private final ReactApplicationContext reactContext;
    private String packageName = null;
    private String version = null;
    private String versionCode = null;

    public RNAppMetadataModule(ReactApplicationContext reactContext) {
        super(reactContext);
        this.reactContext = reactContext;
        try {
            PackageManager pm = reactContext.getPackageManager();
            packageName = reactContext.getPackageName();
            PackageInfo pInfo = pm.getPackageInfo(packageName, 0);
            ApplicationInfo aInfo = pm.getApplicationInfo(packageName, 0);
            version = pInfo.versionName;
            versionCode = String.valueOf(pInfo.versionCode);
        } catch (PackageManager.NameNotFoundException e) {
            Log.e("[RNAppMetadata]",  "name not found");
        }
    }

    @Override
    public String getName() {
        return "RNAppMetadata";
    }

    @Override
    public Map<String, Object> getConstants() {
        final Map<String, Object> constants = new HashMap<>();
        constants.put("Version", versionCode);
        constants.put("ShortVersion", version);
        constants.put("BundleIdentifier", packageName);
        constants.put("BundleName", packageName);
        return constants;
    }

    @ReactMethod
    public void getAppMetadataBy(String key, Promise promise) {
        PackageManager pm = this.reactContext.getPackageManager();
        String value = null;
        try {
            ApplicationInfo pInfo = pm.getApplicationInfo(this.packageName, PackageManager.GET_META_DATA);
            value = pInfo.metaData.getString(key);
            promise.resolve(value);
        } catch (PackageManager.NameNotFoundException e) {
            //e.printStackTrace();
            Log.e("[RNAppMetadata]", " name not found");
            promise.resolve(e);
        }
    }
}
