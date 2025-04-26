import 'package:doctor_appointment/models/settings_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListTitleItem extends StatelessWidget {
  const ListTitleItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SettingsModel(
            onTap: (){},
            containerColor: Color(0xffbeddfc),
            color: Colors.blue,
            title: "Profile",
            leadingIcon: CupertinoIcons.person,
            icon: Icons.arrow_forward_ios),
        SizedBox(height: 20,),
        SettingsModel(
            onTap: (){
            },
            containerColor: Color(0xffd3c3e8),
            color: Color(0xff673db6),
            title: "Notification",
            leadingIcon: Icons.notifications_none,
            icon: Icons.arrow_forward_ios),
        SizedBox(height: 20,),
        SettingsModel(
            onTap: (){
            },
            containerColor: Color(0xffc3cbe7),
            color: Color(0xff7e88d2),
            title: "Privacy",
            leadingIcon: Icons.privacy_tip_outlined,
            icon: Icons.arrow_forward_ios),
        SizedBox(height: 20,),
        SettingsModel(
            onTap: (){},
            containerColor: Color(0xffc9e6c8),
            color: Colors.green,
            title: "General",
            leadingIcon: Icons.settings_suggest_outlined,
            icon: Icons.arrow_forward_ios),
        SizedBox(height: 20,),
        SettingsModel(
            onTap: (){},
            containerColor: Color(0xfffddeb3),
            color: Colors.orange,
            title: "About us",
            leadingIcon: Icons.info_outline,
            icon: Icons.arrow_forward_ios),
        SizedBox(height: 20,),
        Divider(height: 50,),
        SettingsModel(
            onTap: (){},
            containerColor: Color(0xffe87e74),
            color: Color(0xffdb4d4b),
            title: "Log Out",
            leadingIcon: Icons.logout,
            icon: Icons.arrow_forward_ios),
      ],
    );
  }
}
