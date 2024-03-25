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
    apiKey: 'AIzaSyCjYXwEmFp3gwjUSlMRf3sCZ3Edt5W-Q4Y',
    appId: '1:324461526872:web:e8bc77b4f01cb7b103af2d',
    messagingSenderId: '324461526872',
    projectId: 'cow-detector',
    authDomain: 'cow-detector.firebaseapp.com',
    storageBucket: 'cow-detector.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAoU88AzhxpkvEwnNWzSZDxLa78VbWpGg0',
    appId: '1:324461526872:android:e0b70655173c931903af2d',
    messagingSenderId: '324461526872',
    projectId: 'cow-detector',
    storageBucket: 'cow-detector.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAm26a2n6gecyrVsy63eIRggnSWcUm3lko',
    appId: '1:324461526872:ios:a496a4e325c01b1103af2d',
    messagingSenderId: '324461526872',
    projectId: 'cow-detector',
    storageBucket: 'cow-detector.appspot.com',
    iosBundleId: 'com.example.cowDetector',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAm26a2n6gecyrVsy63eIRggnSWcUm3lko',
    appId: '1:324461526872:ios:a98f4ec6341c88a603af2d',
    messagingSenderId: '324461526872',
    projectId: 'cow-detector',
    storageBucket: 'cow-detector.appspot.com',
    iosBundleId: 'com.example.cowDetector.RunnerTests',
  );
}
