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
    apiKey: 'AIzaSyDxMDToDljJUeulGyA5gLgXB2OmuiPR4Js',
    appId: '1:13212157458:web:19f492b644d49364ba3acb',
    messagingSenderId: '13212157458',
    projectId: 'traffic-rule-d97f6',
    authDomain: 'traffic-rule-d97f6.firebaseapp.com',
    storageBucket: 'traffic-rule-d97f6.appspot.com',
    measurementId: 'G-ZTE491VW4N',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDMs8q6cocpr7LeAWaX1JR-tA1zCdbRE04',
    appId: '1:13212157458:android:357ad442482302a6ba3acb',
    messagingSenderId: '13212157458',
    projectId: 'traffic-rule-d97f6',
    storageBucket: 'traffic-rule-d97f6.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDhIwHxE0pDMq84ymRRZADEogQRLwWLvMc',
    appId: '1:13212157458:ios:a984f25de05b49dfba3acb',
    messagingSenderId: '13212157458',
    projectId: 'traffic-rule-d97f6',
    storageBucket: 'traffic-rule-d97f6.appspot.com',
    iosClientId: '13212157458-ngmkdm5a8t46n9ttgi2oi33bkh3mpj2l.apps.googleusercontent.com',
    iosBundleId: 'com.example.ourRightsFe',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDhIwHxE0pDMq84ymRRZADEogQRLwWLvMc',
    appId: '1:13212157458:ios:17703a850c3ed8bfba3acb',
    messagingSenderId: '13212157458',
    projectId: 'traffic-rule-d97f6',
    storageBucket: 'traffic-rule-d97f6.appspot.com',
    iosClientId: '13212157458-m329qvhi9mapf92e9o4ustfmpaqt639i.apps.googleusercontent.com',
    iosBundleId: 'com.example.ourRightsFe.RunnerTests',
  );
}
