// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyAvkZ7Bgcb3bJF4G33VibOyytmMrtn282E',
    appId: '1:1023532795002:web:956832e938d0f967bc67c3',
    messagingSenderId: '1023532795002',
    projectId: 'bright-code-lab',
    authDomain: 'bright-code-lab.firebaseapp.com',
    storageBucket: 'bright-code-lab.firebasestorage.app',
    measurementId: 'G-PSMLLJ10ZF',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBFKKdvRen5Ev3u14hSz4vglcalKQHvqoo',
    appId: '1:1023532795002:android:544ad74b053d0210bc67c3',
    messagingSenderId: '1023532795002',
    projectId: 'bright-code-lab',
    storageBucket: 'bright-code-lab.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDbuvXOJPyphdM0sNdwr3-zPb2axv_RH5A',
    appId: '1:1023532795002:ios:63be450cf7008031bc67c3',
    messagingSenderId: '1023532795002',
    projectId: 'bright-code-lab',
    storageBucket: 'bright-code-lab.firebasestorage.app',
    iosBundleId: 'com.example.brightcodelab',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDbuvXOJPyphdM0sNdwr3-zPb2axv_RH5A',
    appId: '1:1023532795002:ios:63be450cf7008031bc67c3',
    messagingSenderId: '1023532795002',
    projectId: 'bright-code-lab',
    storageBucket: 'bright-code-lab.firebasestorage.app',
    iosBundleId: 'com.example.brightcodelab',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAvkZ7Bgcb3bJF4G33VibOyytmMrtn282E',
    appId: '1:1023532795002:web:37a68ea4695d2a98bc67c3',
    messagingSenderId: '1023532795002',
    projectId: 'bright-code-lab',
    authDomain: 'bright-code-lab.firebaseapp.com',
    storageBucket: 'bright-code-lab.firebasestorage.app',
    measurementId: 'G-86PSHBN1WE',
  );
}
