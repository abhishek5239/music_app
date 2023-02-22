import 'package:flutter/material.dart';
import 'package:music_app/pages/musicscreen.dart';
import 'package:music_app/screens/Myotpscreen.dart';
import 'package:music_app/screens/phnonelogin.dart';
import 'package:music_app/screens/frontscreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<void> main() async {
  // Ensure that Firebase is initialized
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize Firebase
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'frontscreen',
      routes: {
        'Mylogin': (context) => Mylogin(),
        'otpscreen': (context) => myotp(),
        'frontscreen': (context) => frontscreen(),
        // 'musicscreen': (context) => musicscreen(),
      },
      // home: Mylogin(),
    );
  }
}
