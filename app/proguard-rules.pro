-dontoptimize
-optimizations !code/simplification/arithmetic,!field/*,!class/merging/*
-optimizationpasses 5
-dontusemixedcaseclassnames
-keepattributes InnerClasses,Deprecated,Signature,LineNumberTable,SourceFile
-dontpreverify
-verbose
-keep public class * extends android.app.Activity
-keep public class * extends android.app.Application
-keep public class * extends android.app.Service
-keep public class * extends android.content.BroadcastReceiver
-keep public class * extends android.content.ContentProvider
-keep public class * extends android.app.backup.BackupAgentHelper
-keep public class * extends android.preference.Preference
-keep public class com.android.vending.licensing.ILicensingService
-keep class * extends android.os.Parcelable {
    public static final android.os.Parcelable$Creator *;
    <fields>;
    <methods>;
}

-keep class * extends java.io.Serializable {
    <fields>;
    <methods>;
}



# ===================   wns start   ===================
-keep class com.tencent.wns.openssl.OpenSSLNative{ private long pkey;}
-keep class com.tencent.wns.network.ConnectionImpl  {*;}
-keep class * implements com.qq.taf.jce.JceStruct {}
-keep class com.tencent.wns.service.WnsMain
# ===================   wns end   ===================

# ===================   gson start   ===================
-keep public class com.google.gson.**
-keep public class com.google.gson.** {public private protected *;}
-keep class sun.misc.Unsafe { *; }
-keepattributes Signature
-keepattributes *Annotation*
# ===================   gson end   ===================


# ===================   rxjava start   ===================
-keep class rx.** {
    *;
}
# ===================   rxjava end   ===================


# ===================   retrofit start   ===================
# Platform calls Class.forName on types which do not exist on Android to determine platform.
-dontnote retrofit2.Platform
# Platform used when running on Java 8 VMs. Will not be used at runtime.
-dontwarn retrofit2.Platform$Java8
# Retain generic type information for use by reflection by converters and adapters.
-keepattributes Signature
# Retain declared checked exceptions for use by a Proxy instance.
-keepattributes Exceptions
# ===================   retrofit end   ===================



# ===================   okhttp start   ===================
-dontwarn okhttp3.**
-keep class okhttp3.** { *;}
-dontwarn com.squareup.**
-dontwarn okio.**
-keep class okio.** { *;}
-keep public class org.codehaus.* { *; }
-keep public class java.nio.* { *; }
# ===================   okhttp end   ===================


# ===================   eventbus end   ===================
-keepattributes *Annotation*
-keepclassmembers class ** {
    @org.greenrobot.eventbus.Subscribe <methods>;
}
-keep enum org.greenrobot.eventbus.ThreadMode { *; }

# Only required if you use AsyncExecutor
-keepclassmembers class * extends org.greenrobot.eventbus.util.ThrowableFailureEvent {
    <init>(java.lang.Throwable);
}
# ===================   eventbus end   ===================

# ===================   greendao start   ===================
-keep class * extends org.greenrobot.greendao.AbstractDao { *;}
-keep class **$Properties

# If you do not use SQLCipher:
-dontwarn org.greenrobot.greendao.database.**
# If you do not use Rx:
-dontwarn rx.**
# ===================   greendao end   ===================

# ===================   conn module start   ===================
-keepattributes *Annotation*
-keep @com.tencent.voice.deviceconnector.annotation.LocalService interface * {*;}
# ===================   conn module end   ===================

-keep public class * extends com.tencent.mia.commonlib.eventbus.AbstractEvent{*;}
-keep class com.tencent.mia.networkconfig.cooee.ConfigureNet{*;}
-keep class com.tencent.mia.networkconfig.softap.SoftAPConfigNet{*;}
-keep class jce.mia.**{*;}
-keep class com.tencent.miaconfignet.**{*;}
-keep class com.tencent.mia.commonlib.constant.Constant{*;}
-keep class com.tencent.mia.networkconfig.util.**{*;}
-dontwarn jce.mia.**
-dontwarn  org.eclipse.jdt.annotation.**
-dontwarn  com.amap.**
-dontwarn  com.tencent.beacon.**

# ===================   jmdns start   ===================
-keep class javax.**{*;}
-dontwarn org.slf4j.**
-keep class org.slf4j.**{*;}
# ===================   jmdns start   ===================

-keep public class oicq.wlogin_sdk.request.WtloginHelper {
    <fields>;
    <methods>;
}

-keep public class oicq.wlogin_sdk.request.WUserSigInfo {
    <fields>;
    <methods>;
}

-keep public class oicq.wlogin_sdk.sharemem.WloginSimpleInfo {
    <fields>;
    <methods>;
}

-keep public class oicq.wlogin_sdk.tools.util {
    <fields>;
    <methods>;
}

-keep public class oicq.wlogin_sdk.tools.EcdhCrypt {
    <fields>;
    <methods>;
}

-keep public class oicq.wlogin_sdk.tools.RSACrypt {
    <fields>;
    <methods>;
}

-keep public class oicq.wlogin_sdk.tools.LogCallBack {
    <fields>;
    <methods>;
}

-keep public class oicq.wlogin_sdk.code2d.fetch_code {
    <fields>;
    <methods>;
}

-keep public class oicq.wlogin_sdk.request.WtloginListener {
    <fields>;
    <methods>;
}

-keep class oicq.wlogin_sdk.request.WtloginHelper$* {
    <fields>;
    <methods>;
}

-keep class oicq.wlogin_sdk.code2d.fetch_code$* {
    <fields>;
    <methods>;
}

-keep class oicq.wlogin_sdk.devicelock.DevlockInfo {
    public <fields>;
}

-keep public class oicq.wlogin_sdk.devicelock.DevlockBase {
    <fields>;
    <methods>;
}

-keep class oicq.wlogin_sdk.devicelock.DevlockRst {
    <fields>;
    <methods>;
}

-keep class oicq.wlogin_sdk.devicelock.TLV_QuerySig {
    <fields>;
    <methods>;
}

-keep class oicq.wlogin_sdk.devicelock.TLV_SppKey {
    <fields>;
    <methods>;
}

