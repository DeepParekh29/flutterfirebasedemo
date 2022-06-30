import 'package:flutter/material.dart';
import 'package:flutterfirebasedemo/main_page.dart';
import 'login_page.dart';
import 'auth_page.dart';
import 'register_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<void> main() async {

  await Firebase.initializeApp(
    options: FirebaseOptions(apiKey: "AIzaSyBN2UJNhPrOTDbf0mINtNxgCIYfFnEnIF8",
        appId: "1:409143665841:web:18eedb99640a90443aee90",
        messagingSenderId: "409143665841",
        projectId: "fir-tutorial-bd68f")
  );


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthPage(),
    );
  }

}
