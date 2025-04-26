import 'package:doctor_appointment/screens/login_screen.dart';
import 'package:flutter/material.dart';

class SignupTextButton extends StatelessWidget {
  const SignupTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return   TextButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
        }, child: Text("Log In",style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold
    ),));
  }
}
