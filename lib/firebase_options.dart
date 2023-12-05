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
    apiKey: 'AIzaSyAH8V06KPzJFj_2g2_ORQVUg_iubgNYP8s',
    appId: '1:966356582576:web:214638696bad82d249fb75',
    messagingSenderId: '966356582576',
    projectId: 'cookbookver1',
    authDomain: 'cookbookver1.firebaseapp.com',
    storageBucket: 'cookbookver1.appspot.com',
    measurementId: 'G-711LK1RNSF',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBsTW9dTSnprEzjgiOkITOIrbOoDyzhOqs',
    appId: '1:966356582576:android:ad6f216b709b710449fb75',
    messagingSenderId: '966356582576',
    projectId: 'cookbookver1',
    storageBucket: 'cookbookver1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB8gMXbO_Lev4mhKvO5nMwburuBHj_zAqI',
    appId: '1:966356582576:ios:a4b435131af8675f49fb75',
    messagingSenderId: '966356582576',
    projectId: 'cookbookver1',
    storageBucket: 'cookbookver1.appspot.com',
    iosBundleId: 'com.example.foodappLogin',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB8gMXbO_Lev4mhKvO5nMwburuBHj_zAqI',
    appId: '1:966356582576:ios:bb6b80a898c97c2a49fb75',
    messagingSenderId: '966356582576',
    projectId: 'cookbookver1',
    storageBucket: 'cookbookver1.appspot.com',
    iosBundleId: 'com.example.foodappLogin.RunnerTests',
  );
}
