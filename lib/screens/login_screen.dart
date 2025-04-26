import 'package:doctor_appointment/components/login_screen/login_button.dart';
import 'package:doctor_appointment/components/login_screen/login_text_button.dart';
import 'package:doctor_appointment/components/login_screen/login_text_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Image.asset("assets/images/doctors.png"),
            SizedBox(
              height: 40,
            ),
            LoginTextField(
              icon: Icons.person,
              label: "Enter Username",
            ),
            LoginTextField(
              isPassword: true,
              icon: Icons.lock,
              label: "Enter Password",
            ),
            SizedBox(
              height: 30,
            ),
            LoginButton(),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have any account?",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                LoginTextButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
