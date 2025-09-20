plugins {
    id("com.android.application")
    kotlin("android")
}

android {
    namespace = "com.example.votingapp"
    compileSdk = 34

    defaultConfig {
        applicationId = "com.example.votingapp"
        minSdk = 24
        targetSdk = 34
        versionCode = 1
        versionName = "1.0"
    }

    buildFeatures {
        viewBinding = true
    }

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    kotlinOptions {
        jvmTarget = "21"
    }
}

dependencies {
    implementation("org.jetbrains.kotlin:kotlin-stdlib:1.9.0")
    implementation("org.web3j:core:5.0.0")
    implementation("org.web3j:crypto:5.0.0")
    implementation("org.web3j:contracts:5.0.0")
    implementation("androidx.core:core-ktx:1.12.0")
    implementation("androidx.appcompat:appcompat:1.7.0")
}
