import 'package:doctor_appointment/components/home_screen/book_type.dart';
import 'package:doctor_appointment/components/home_screen/home_grid_view.dart';
import 'package:doctor_appointment/components/home_screen/home_list_view.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 60,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hello Gado",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/doctor1.jpg"),
                      radius: 30,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  BookType(
                      icon: Icons.add,
                      type: "Clinic Visit",
                      description: "Make an appointment"),
                  BookType(
                      icon: Icons.home,
                      type: "Home Visit",
                      description: "Call the doctor home")
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  "What are your symptoms?",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
              HomeListView(),
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "Popular Doctors",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
              HomeGridView(),
            ],
          ),
        ),
      ),
    );
  }
}
