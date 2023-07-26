import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD3yBZfYTtt4wNiF2I-I4SDX8icTaCRA6w",
            authDomain: "doapalmas.firebaseapp.com",
            projectId: "doapalmas",
            storageBucket: "doapalmas.appspot.com",
            messagingSenderId: "508215755932",
            appId: "1:508215755932:web:32ee167f2b9481b63c9959",
            measurementId: "G-F8P1WP7708"));
  } else {
    await Firebase.initializeApp();
  }
}
