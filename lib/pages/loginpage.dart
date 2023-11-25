import 'package:flutter/material.dart';
import 'package:socialmedia/components/mybutton.dart';
import 'package:socialmedia/components/mytextfields.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final Function()? onTap;


   LoginPage({super.key, this.onTap});

   // login method
   void login(){}

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body:  Center(
        child:  Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              SizedBox(height: 30,),
              Icon(Icons.person_pin_rounded,
              color: Theme.of(context).colorScheme.inversePrimary,
              size: 180,
              ),
              SizedBox(height: 0,),
          
              //app name
               const Text('S O C I A L ', 
              style: TextStyle(
                fontSize: 30, 
                fontWeight: FontWeight.w300,
                 ),
                 
                 ),
                            const SizedBox(height: 20,),

              //email textfield
              MyTextfield(hintText: "Enter Email", obscureText: false, controller: emailcontroller),
              //password textfield

            const SizedBox(height: 20,),

              MyTextfield(hintText: "Enter Password", obscureText: true, controller: passwordcontroller),
            

            //forget pw
             Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('forgot password?',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary
                ),
                ),
              ],
            ),

            SizedBox(height: 20,),
              //sign in button
            MyButton(text: "Login", ontap: (){}),

            SizedBox(height: 30,),
              //dont have an account register
               Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  GestureDetector(
                    onTap: onTap,
                    child: Text('Register Now',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold
                    ),),
                  )
                ],
              )
            ],
          ),
        ),
      ),   
   
   
   
   
   
    );
  }
}