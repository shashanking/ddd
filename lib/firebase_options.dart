// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDNlvgaklgX7GOkuD5h-XHR4qjdyhwx8_I',
    appId: '1:574694375086:web:744d68efbb16124551773f',
    messagingSenderId: '574694375086',
    projectId: 'ddd-sample-b7d4e',
    authDomain: 'ddd-sample-b7d4e.firebaseapp.com',
    storageBucket: 'ddd-sample-b7d4e.appspot.com',
    measurementId: 'G-LQGXN86M1P',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCWrdweccsaTEuTbFyP7JJk3Gj4NfWLW-8',
    appId: '1:574694375086:android:f8861bc5893a59c451773f',
    messagingSenderId: '574694375086',
    projectId: 'ddd-sample-b7d4e',
    storageBucket: 'ddd-sample-b7d4e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDt3Nf4xmg4LCiXw2B9yEPJQla7tOyloeI',
    appId: '1:574694375086:ios:3c5a80bc00c853ba51773f',
    messagingSenderId: '574694375086',
    projectId: 'ddd-sample-b7d4e',
    storageBucket: 'ddd-sample-b7d4e.appspot.com',
    androidClientId: '574694375086-o6h6l1c5u1136vud9bkpnlpa6k5tnis6.apps.googleusercontent.com',
    iosClientId: '574694375086-ns4cltgav7dbbo918s51ng7ngn7epvlp.apps.googleusercontent.com',
    iosBundleId: 'com.example.ddd',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDt3Nf4xmg4LCiXw2B9yEPJQla7tOyloeI',
    appId: '1:574694375086:ios:a9ece4cded0ff4bd51773f',
    messagingSenderId: '574694375086',
    projectId: 'ddd-sample-b7d4e',
    storageBucket: 'ddd-sample-b7d4e.appspot.com',
    androidClientId: '574694375086-o6h6l1c5u1136vud9bkpnlpa6k5tnis6.apps.googleusercontent.com',
    iosClientId: '574694375086-40ouahf8abkpsum1985b6v50p25qrcu5.apps.googleusercontent.com',
    iosBundleId: 'com.example.ddd.RunnerTests',
  );
}
