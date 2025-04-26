import 'package:doctor_appointment/screens/home_screen.dart';
import 'package:flutter/material.dart';

class WelcomeSkip extends StatelessWidget {
  const WelcomeSkip({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.topRight,
        child: TextButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => HomeScreen()));
          },
          child: Text(
            "SKIP",
            style: TextStyle(
                color: Colors.deepPurple,
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
        ));
  }
}
