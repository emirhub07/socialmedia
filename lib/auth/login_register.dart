import 'package:flutter/material.dart';
import 'package:socialmedia/pages/loginpage.dart';
import 'package:socialmedia/pages/reisterpage.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {


//intiate show login page
bool showLoginPage = true;


//toggle between login nd register
void togglePages(){
  setState(() {
    showLoginPage = !showLoginPage;
  });
}


  @override
  Widget build(BuildContext context) {
    if(showLoginPage){
      return LoginPage(onTap: togglePages,);
    }
    else{
      return RegisterPage(onTap: togglePages,);
    }
  }
}