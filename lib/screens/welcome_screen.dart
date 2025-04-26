import 'package:doctor_appointment/components/welcome_screen/welcome_buttons.dart';
import 'package:doctor_appointment/components/welcome_screen/welcome_skip.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              height: 50,
            ),
            const WelcomeSkip(),
            const SizedBox(
              height: 60,
            ),
            Image.asset("assets/images/doctors.png"),
            const SizedBox(
              height: 60,
            ),
            const Center(
              child: Text(
                "Doctors Appointment",
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Center(
                child: Text(
              "Appoint Your Doctor",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            )),
            const SizedBox(
              height: 50,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                WelcomeButtons(text: "Log In"),
                WelcomeButtons(text: "Sign Up"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
