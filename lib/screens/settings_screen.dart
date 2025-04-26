import 'package:doctor_appointment/components/settings/List_title_item.dart';
import 'package:doctor_appointment/components/settings/profile_item.dart';
import 'package:flutter/material.dart';
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Settings",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
          ),
          ProfileItem(),
          const ListTitleItem(),
        ],
      ),
    );
  }
}
