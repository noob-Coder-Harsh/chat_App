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
    apiKey: 'AIzaSyCPTSUtIRMdw4JA9wsAdV5XMuhqVHD_PkU',
    appId: '1:602602910105:web:6b13ae9a30b9bbfb26e308',
    messagingSenderId: '602602910105',
    projectId: 'flutter-chat-app-3977e',
    authDomain: 'flutter-chat-app-3977e.firebaseapp.com',
    storageBucket: 'flutter-chat-app-3977e.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDO3DcIRpziivsCp4vXreJNpClBL5uNCPQ',
    appId: '1:602602910105:android:9f98f2a97ffa3fc126e308',
    messagingSenderId: '602602910105',
    projectId: 'flutter-chat-app-3977e',
    storageBucket: 'flutter-chat-app-3977e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDzQVDd47PcNg_BruNe9_hosU9uJIxVbts',
    appId: '1:602602910105:ios:2be8a2e62d75319f26e308',
    messagingSenderId: '602602910105',
    projectId: 'flutter-chat-app-3977e',
    storageBucket: 'flutter-chat-app-3977e.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDzQVDd47PcNg_BruNe9_hosU9uJIxVbts',
    appId: '1:602602910105:ios:a0a82cbdb63be2d626e308',
    messagingSenderId: '602602910105',
    projectId: 'flutter-chat-app-3977e',
    storageBucket: 'flutter-chat-app-3977e.appspot.com',
    iosBundleId: 'com.example.chatApp.RunnerTests',
  );
}
