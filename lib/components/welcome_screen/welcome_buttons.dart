import 'package:doctor_appointment/screens/login_screen.dart';
import 'package:flutter/material.dart';

class WelcomeButtons extends StatelessWidget {
  const WelcomeButtons({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return   ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          backgroundColor: Colors.deepPurple,
          minimumSize: Size(160, 60),
        ),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => LoginScreen()));
        },
        child: Text(text,
          style: TextStyle(color: Colors.white, fontSize: 25),
        ));
  }
}
