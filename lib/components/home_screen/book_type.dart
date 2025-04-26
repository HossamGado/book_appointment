import 'package:flutter/material.dart';

class BookType extends StatefulWidget {
  const BookType(
      {super.key,
      required this.icon,
      required this.type,
      required this.description});
  final IconData icon;
  final String type;
  final String description;

  @override
  State<BookType> createState() => _BookTypeState();
}
class _BookTypeState extends State<BookType> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {

        });
      },
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
              child: Icon(
                widget.icon,
                color: Colors.deepPurpleAccent,
                size: 35,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
             widget.type,
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
              widget.description,
              style: TextStyle(color: Colors.white54),
            )
          ],
        ),
      ),
    );
  }
}
