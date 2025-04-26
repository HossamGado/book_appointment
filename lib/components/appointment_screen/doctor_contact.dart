import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DoctorContact extends StatelessWidget {
  const DoctorContact({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CircleAvatar(
          radius: 35,
          backgroundImage: AssetImage("assets/images/doctor1.jpg"),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "Dr. Doctor Name",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "Therapist",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0XFF9F97E2),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.call,
                size: 30,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0XFF9F97E2),
                shape: BoxShape.circle,
              ),
              child: Icon(
                CupertinoIcons.chat_bubble_text_fill,
                size: 30,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
