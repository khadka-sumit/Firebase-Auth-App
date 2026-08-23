import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform => const FirebaseOptions(
    apiKey: 'AIzaSyDemoPlaceholderKey123456789',
    appId: '1:1234567890:android:abcdef',
    messagingSenderId: '1234567890',
    projectId: 'demo-internship-firebase',
  );
}
