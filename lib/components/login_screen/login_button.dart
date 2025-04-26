import 'package:doctor_appointment/widgets/navbar_roots.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            backgroundColor: Colors.deepPurple,
            minimumSize: Size(400, 60)),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => NavBarRoots()));
        },
        child: Text(
          "Log In",
          style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ));
  }
}
