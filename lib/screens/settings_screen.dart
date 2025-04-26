import 'package:doctor_appointment/components/settings/List_title_design.dart';
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
          const SizedBox(
            height: 30,
          ),
          ListTile(
            leading: Container(
              width: 60,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/images/doctor1.jpg"),
                ),
              ),
            ),
            title: const Text(
              "Dr.Doctor Name",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            subtitle: const Text(
              "Profile",
              style: TextStyle(fontSize: 18),
            ),
          ),
          const Divider(
            height: 50,
            thickness: 0.5,
          ),
          const ListTitleDesign(),
        ],
      ),
    );
  }
}
