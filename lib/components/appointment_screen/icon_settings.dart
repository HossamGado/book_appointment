import 'package:flutter/material.dart';

class IconSettings extends StatelessWidget {
  const IconSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            child: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          InkWell(
            child: Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
