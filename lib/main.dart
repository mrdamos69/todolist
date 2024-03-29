import 'package:flutter/material.dart';
import 'package:todolist/pages/home.dart';
import 'package:todolist/pages/login.dart';
import 'package:todolist/pages/registration.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.orange,
    ),
    initialRoute: '/',
    routes: {
      '/': (context) => login(),
      '/todo': (context) => Home(),
      '/registration' : (context) => Registration(),
    },
  ));
}
