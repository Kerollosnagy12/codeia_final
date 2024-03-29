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
    apiKey: 'AIzaSyAdkWfT9B1mv3mtUQsZkYxDe6Uxr9ybkqA',
    appId: '1:424723577530:web:87d9935a6c394596fca083',
    messagingSenderId: '424723577530',
    projectId: 'codiea-final',
    authDomain: 'codiea-final.firebaseapp.com',
    storageBucket: 'codiea-final.appspot.com',
    measurementId: 'G-10BQY6BYVJ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDOhA3mwENq6pmxeUaQG5zRYDU_PV6epis',
    appId: '1:424723577530:android:0ec3470ad5f1410dfca083',
    messagingSenderId: '424723577530',
    projectId: 'codiea-final',
    storageBucket: 'codiea-final.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCHpIhpVA0w3otyhQ8gOMobmM3zQfN2UCU',
    appId: '1:424723577530:ios:80908b87af1936b4fca083',
    messagingSenderId: '424723577530',
    projectId: 'codiea-final',
    storageBucket: 'codiea-final.appspot.com',
    iosBundleId: 'com.example.codeiaFinal',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCHpIhpVA0w3otyhQ8gOMobmM3zQfN2UCU',
    appId: '1:424723577530:ios:bf4661e20e603231fca083',
    messagingSenderId: '424723577530',
    projectId: 'codiea-final',
    storageBucket: 'codiea-final.appspot.com',
    iosBundleId: 'com.example.codeiaFinal.RunnerTests',
  );
}
