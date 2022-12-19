adb shell ping `pm uninstall com.thevirustech.livelyblue`
adb push "./release/app-release.apk" "/data/local/tmp"
adb shell ping `pm install --user 0 -i "com.android.vending" -r "/data/local/tmp/app-release.apk"`
adb shell ping `am start -n com.thevirustech.livelyblue/com.thevirustech.livelyblue.activities.SplashActivity`