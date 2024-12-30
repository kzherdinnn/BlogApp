# Menjaga kelas javax.annotation.Nullable yang hilang (penting untuk OkHttp)
-keep class javax.annotation.Nullable { *; }

# Menjaga kelas-kelas terkait OkHttp
-keep class okhttp3.** { *; }
-keep class okio.** { *; }

# Menjaga semua kelas terkait Conscrypt
-keep class org.conscrypt.** { *; }

# Abaikan peringatan untuk kelas Conscrypt yang tidak ditemukan
-dontwarn org.conscrypt.**

# Jangan memberi peringatan untuk kelas dan paket ini
-dontwarn javax.annotation.Nullable
-dontwarn javax.annotation.ParametersAreNonnullByDefault
-dontwarn org.conscrypt.Conscrypt
-dontwarn org.conscrypt.OpenSSLProvider
-dontwarn org.bouncycastle.jsse.BCSSLParameters
-dontwarn org.bouncycastle.jsse.BCSSLSocket
-dontwarn org.bouncycastle.jsse.provider.BouncyCastleJsseProvider
-dontwarn org.openjsse.javax.net.ssl.SSLParameters
-dontwarn org.openjsse.javax.net.ssl.SSLSocket
-dontwarn org.openjsse.net.ssl.OpenJSSE

# Menjaga WebView JavaScript interface
-keepclassmembers class fqcn.of.javascript.interface.for.webview {
   public *;
}

# Menjaga informasi nomor baris dan file sumber
-keepattributes SourceFile,LineNumberTable

# Menjaga kelas yang digunakan dengan reflection
-keepclassmembers class * {
   @android.webkit.JavascriptInterface <methods>;
}

# Menjaga kelas yang digunakan untuk Dependency Injection
-keep class dagger.** { *; }
-keep class javax.inject.** { *; }

# Menjaga semua kelas dalam package utama Anda (com.pam.blogapp)
-keep class com.pam.blogapp.** { *; }

# Menjaga semua enum untuk menghindari error R8
-keepclassmembers enum * {
   public static **[] values();
   public static ** valueOf(java.lang.String);
}
