# warnings prevent build from continuing
-ignorewarnings

# see http://stackoverflow.com/questions/5701126/compile-with-proguard-gives-exception-local-variable-type-mismatch
-dontobfuscate
-optimizations !code/allocation/variable

-dontskipnonpubliclibraryclasses
-forceprocessing
-optimizationpasses 5

# support library stuff
-keep public class android.support.v7.preference.** { *; }

-keep class com.jcraft.jsch.jce.*
-keep class * extends com.jcraft.jsch.KeyExchange
-keep class com.jcraft.jsch.**
-keep interface com.jcraft.jsch.**
-dontwarn org.ietf.jgss.*
-dontwarn com.jcraft.jzlib.ZStream

# strip debug and trace (verbose) logging
-assumenosideeffects class org.slf4j.Logger {
    public void debug(...);
    public void trace(...);
}
-dontwarn org.slf4j.impl.StaticMDCBinder
-dontwarn org.slf4j.impl.StaticMarkerBinder
-dontwarn org.slf4j.impl.StaticLoggerBinder

# junit stuff
-assumenosideeffects class org.junit.Assert {
  public static *** assert*(...);
}
-dontwarn java.lang.management.*

# prevents warnings such as "library class android.test.AndroidTestCase extends or implements program class junit.framework.TestCase"
# maybe should be done differently?
-dontwarn android.test.**

-keepclassmembers class ** {
    public void onEvent*(**);
}
