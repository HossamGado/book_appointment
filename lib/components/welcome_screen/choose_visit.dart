import 'package:flutter/material.dart';

class ChooseVisit extends StatelessWidget {
  ChooseVisit({super.key, required this.title, required this.subTitle});

  final String title;
  final String subTitle;
  bool selectedItem = true;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.deepPurpleAccent,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 6,
              spreadRadius: 4,
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: selectedItem == true
                    ? Icon(
                        Icons.add,
                        color: Colors.deepPurpleAccent,
                        size: 35,
                      )
                    : Icon(
                        Icons.home,
                        color: Colors.deepPurpleAccent,
                        size: 35,
                      )),
            SizedBox(
              height: 30,
            ),
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              subTitle,
              style: TextStyle(color: Colors.white54),
            )
          ],
        ),
      ),
    );
  }
}
