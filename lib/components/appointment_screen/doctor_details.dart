import 'package:flutter/material.dart';

class DoctorDetails extends StatelessWidget {
  const DoctorDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Text(
        "About Doctor",
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold),
      ),
      Text(
        "Lorem Ipsum is simply dummy text of the printing and typesettings industry  ",
        style: TextStyle(color: Colors.black54, fontSize: 16),
      ),
      SizedBox(
        height: 10,
      ),
      Row(
        children: [
          Text(
            "Reviews",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.star,
            color: Colors.amber,
          ),
          Text(
            "4.9",
            style: TextStyle(
                fontWeight: FontWeight.w500, fontSize: 16),
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            "(124)",
            style: TextStyle(
                fontWeight: FontWeight.w500, fontSize: 16),
          ),
          Spacer(),
          TextButton(
              onPressed: () {},
              child: Text(
                "See all",
                style: TextStyle(
                    color: Colors.deepPurpleAccent,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ))
        ],
      ),
    ],);
  }
}
