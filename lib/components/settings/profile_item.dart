import 'package:flutter/material.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

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
      ],
    );
  }
}
