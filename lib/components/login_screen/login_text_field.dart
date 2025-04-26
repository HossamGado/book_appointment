import 'package:flutter/material.dart';

class LoginTextField extends StatefulWidget {
  LoginTextField(
      {super.key,
      required this.icon,
      required this.label,
      this.isPassword = false});

  final IconData icon;
  final String label;
  final bool isPassword;

  @override
  State<LoginTextField> createState() => _LoginTextFieldState();
}

class _LoginTextFieldState extends State<LoginTextField> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
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
