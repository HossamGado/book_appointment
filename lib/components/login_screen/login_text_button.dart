import 'package:doctor_appointment/screens/sign_up.dart';
import 'package:flutter/material.dart';

class LoginTextButton extends StatelessWidget {
  const LoginTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return   TextButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => SignUp()));
        },
        child: Text(
          "Create Account",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple),
        ));
  }
}
