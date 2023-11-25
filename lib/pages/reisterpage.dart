import 'package:flutter/material.dart';
import 'package:socialmedia/components/mybutton.dart';
import 'package:socialmedia/components/mytextfields.dart';

class RegisterPage extends StatelessWidget {
 final TextEditingController emailcontroller = TextEditingController();
 final TextEditingController usernamecontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final TextEditingController confirmpasswordcontroller = TextEditingController();
 final Function()? onTap;
   RegisterPage({super.key, this.onTap});

   // register method
   void register(){}

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
              
              const SizedBox(height: 30,),

              Icon(Icons.person_pin_rounded,
              color: Theme.of(context).colorScheme.inversePrimary,
              size: 180,
              ),
              const SizedBox(height: 0,),
          
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
              
              const SizedBox(height: 20,),
              //username
              MyTextfield(hintText: "Enter username", obscureText: false, controller: usernamecontroller),
            
              const SizedBox(height: 20,),
              //password textfield
              MyTextfield(hintText: "Enter Password", obscureText: true, controller: passwordcontroller),
            const SizedBox(height: 20,),

            //confirmpw
              MyTextfield(hintText: "Confirm Password", obscureText: true, controller: confirmpasswordcontroller),
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
            MyButton(text: "SignUp", ontap: (){}),

            SizedBox(height: 30,),
              //dont have an account register
               Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account?"),
                  GestureDetector(
                    onTap: onTap,
                    child: const Text('Login here',
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