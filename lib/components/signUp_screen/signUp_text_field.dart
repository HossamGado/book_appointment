import 'package:flutter/material.dart';

class SignupTextField extends StatefulWidget {
  SignupTextField(
      {super.key,
        required this.icon,
        required this.label,
        this.isPassword = false});

  final IconData icon;
  final String label;
  final bool isPassword;

  @override
  State<SignupTextField> createState() => _SignupTextFieldState();
}

class _SignupTextFieldState extends State<SignupTextField> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
      child: TextField(
        obscureText: widget.isPassword ? obscureText : false,
        decoration: InputDecoration(
            prefixIcon: Icon(
              widget.icon,
              size: 30,
            ),
            suffixIcon: widget.isPassword
                ? InkWell(
              onTap: () {
                setState(() {
                  obscureText!=obscureText;
                });
              },
              child: Icon(
                  obscureText ? Icons.visibility_off : Icons.visibility),
            )
                : null,
            label: Text(widget.label),
            border: OutlineInputBorder(
                borderSide: const BorderSide(),
                borderRadius: BorderRadius.circular(10))),
      ),
    );
  }
}
