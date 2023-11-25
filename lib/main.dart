import 'package:flutter/material.dart';
import 'package:socialmedia/auth/login_register.dart';
import 'package:socialmedia/pages/loginpage.dart';
import 'package:socialmedia/pages/reisterpage.dart';
import 'package:socialmedia/themes/darkmode.dart';
import 'package:socialmedia/themes/lightmode.dart';

void main(){
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginOrRegister(),
      theme: lightMode,
      darkTheme: darkMode,
      
    );
  }
}