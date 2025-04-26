import 'package:doctor_appointment/components/signUp_screen/signUp_text_button.dart';
import 'package:doctor_appointment/components/signUp_screen/signUp_text_field.dart';
import 'package:doctor_appointment/components/signUp_screen/sign_up_button.dart';
import 'package:doctor_appointment/screens/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool passToggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Image.asset("assets/images/doctors.png"),
            SizedBox(
              height: 30,
            ),
            SignupTextField(icon: Icons.person, label: "Full Name"),
            SignupTextField(icon: Icons.email, label: "Email Address"),
            SignupTextField(icon: Icons.call, label: "Phone Number"),
            SignupTextField(
              icon: Icons.lock,
              label: "Email Password",
              isPassword: true,
            ),
            SizedBox(
              height: 15,
            ),
            SignUpButton(),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have account?",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
                SignupTextButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
