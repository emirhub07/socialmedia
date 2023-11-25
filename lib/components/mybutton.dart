import 'package:flutter/material.dart';


class MyButton extends StatelessWidget {
  final String text;
  void  Function()? ontap;
   MyButton({super.key, required this.text, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 40,
        width: 120,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(24)
        ),
        child: Center(
          child: Text(
            text,
            style:  TextStyle(
              fontSize: 20,
              color: Theme.of(context).colorScheme.inversePrimary
            ),
            )
            ),
      ),
    );
  }
}