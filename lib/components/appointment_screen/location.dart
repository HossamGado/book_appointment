import 'package:flutter/material.dart';

class Location extends StatelessWidget {
  const Location({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color(0xFFF0EEFA),
          shape: BoxShape.circle,
        ),
        child: Icon(
          Icons.location_on,
          color: Color(0XFF7165D6),
          size: 30,
        ),
      ),
      title: Text(
        "New York, Medical Center",
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 17),
      ),
      subtitle: Text("address line of the medical center,"),
    );
  }
}
