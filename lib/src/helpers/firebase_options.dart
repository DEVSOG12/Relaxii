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
    apiKey: 'AIzaSyAWsl0-sMcJQAi1xB7kejnBMzud-I0K0Lc',
    appId: '1:377616991789:web:4de5465246ca6904f55aa4',
    messagingSenderId: '377616991789',
    projectId: 'relaxii',
    authDomain: 'relaxii.firebaseapp.com',
    storageBucket: 'relaxii.appspot.com',
    measurementId: 'G-JE74NNS6J2',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBaRSG3PknujhOocqKCSpve8NRwN-5Qs9o',
    appId: '1:377616991789:android:2a3caa2e3fc32617f55aa4',
    messagingSenderId: '377616991789',
    projectId: 'relaxii',
    storageBucket: 'relaxii.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA06BwQZG0TrT-3gFKPkkWGmBHhjowGqiQ',
    appId: '1:377616991789:ios:e96ff7883377a20cf55aa4',
    messagingSenderId: '377616991789',
    projectId: 'relaxii',
    storageBucket: 'relaxii.appspot.com',
    iosClientId: '377616991789-otontgu92ij72204iatvhdpiu1j3ub4a.apps.googleusercontent.com',
    iosBundleId: 'com.devsog12.relax',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA06BwQZG0TrT-3gFKPkkWGmBHhjowGqiQ',
    appId: '1:377616991789:ios:e96ff7883377a20cf55aa4',
    messagingSenderId: '377616991789',
    projectId: 'relaxii',
    storageBucket: 'relaxii.appspot.com',
    iosClientId: '377616991789-otontgu92ij72204iatvhdpiu1j3ub4a.apps.googleusercontent.com',
    iosBundleId: 'com.devsog12.relax',
  );
}
