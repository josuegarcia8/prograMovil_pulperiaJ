import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC_2LOq5PmNNwWpHlYejqI-t0tVwjCO-hE",
            authDomain: "pulperia-j-b6011.firebaseapp.com",
            projectId: "pulperia-j-b6011",
            storageBucket: "pulperia-j-b6011.appspot.com",
            messagingSenderId: "584110670057",
            appId: "1:584110670057:web:0130731e53d84c8e1bf078",
            measurementId: "G-CJLDWW1066"));
  } else {
    await Firebase.initializeApp();
  }
}
