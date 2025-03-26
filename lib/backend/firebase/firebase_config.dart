import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCG76Un4yaXsJnTJTpJnA0gXmKlv6Ra_d0",
            authDomain: "social-media-app-9478d.firebaseapp.com",
            projectId: "social-media-app-9478d",
            storageBucket: "social-media-app-9478d.appspot.com",
            messagingSenderId: "1031210832191",
            appId: "1:1031210832191:web:3d6da1f07e0ff44b52c38a",
            measurementId: "G-0ZT440HH6Z"));
  } else {
    await Firebase.initializeApp();
  }
}
