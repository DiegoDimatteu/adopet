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
    apiKey: 'AIzaSyDB_evHYdO3cBkRLC9WtMc4LcfaubFNeRw',
    appId: '1:187258392512:web:18ec665ea4e708665a0225',
    messagingSenderId: '187258392512',
    projectId: 'adocao-pet',
    authDomain: 'adocao-pet.firebaseapp.com',
    storageBucket: 'adocao-pet.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBVKV-e3xkwmTayQcHWp29Sz6ekoimfgoA',
    appId: '1:187258392512:android:9a75bdd755ffe92f5a0225',
    messagingSenderId: '187258392512',
    projectId: 'adocao-pet',
    storageBucket: 'adocao-pet.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCw5Uk-9tDu37Qb_zbtYbJM3mys6NnuEEA',
    appId: '1:187258392512:ios:74cd3302e2e051185a0225',
    messagingSenderId: '187258392512',
    projectId: 'adocao-pet',
    storageBucket: 'adocao-pet.appspot.com',
    iosClientId: '187258392512-lh8h7ddsf5ga3e57546fn4tg5kjbegjo.apps.googleusercontent.com',
    iosBundleId: 'com.example.adocaoDePet',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCw5Uk-9tDu37Qb_zbtYbJM3mys6NnuEEA',
    appId: '1:187258392512:ios:74cd3302e2e051185a0225',
    messagingSenderId: '187258392512',
    projectId: 'adocao-pet',
    storageBucket: 'adocao-pet.appspot.com',
    iosClientId: '187258392512-lh8h7ddsf5ga3e57546fn4tg5kjbegjo.apps.googleusercontent.com',
    iosBundleId: 'com.example.adocaoDePet',
  );
}