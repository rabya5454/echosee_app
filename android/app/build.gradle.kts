plugins {
    id("com.android.application")
    id("kotlin-android")
    id("dev.flutter.flutter-gradle-plugin") // ✅ Flutter Gradle Plugin
}

android {
    namespace = "com.example.echosee_app"
    compileSdk = 36
    // ✅ Explicitly set the NDK version to match plugin requirements
    ndkVersion = "27.0.12077973"

    compileOptions {
        isCoreLibraryDesugaringEnabled = true
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    kotlinOptions {
        jvmTarget = "17"
    }


    defaultConfig {
        applicationId = "com.example.echosee_app"
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName

    }

    buildTypes {
        release {
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

flutter {
    source = "../.."
}

dependencies {
    // ✅ AndroidX & Core Libraries
    implementation("androidx.core:core-ktx:1.17.0")

    // ✅ Desugaring Library for Java 8+ features
    coreLibraryDesugaring("com.android.tools:desugar_jdk_libs:2.1.5")


}