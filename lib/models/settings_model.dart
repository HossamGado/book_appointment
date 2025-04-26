import 'package:flutter/material.dart';

class SettingsModel extends StatelessWidget {
  const SettingsModel(
      {super.key, required this.color, required this.title, required this.leadingIcon, required this.icon, required this.containerColor, required this.onTap});

  final Color color;
  final Color containerColor;
  final IconData leadingIcon;
  final String title;
  final IconData icon;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Container(
        height: 100,
        width: 60,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: containerColor,
        ),
        child: Icon(
          leadingIcon,
          size: 35,
          color: color,
        ),
      ),
      title: Text(title, style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),),
      trailing:Icon(icon),
    );
  }
}
