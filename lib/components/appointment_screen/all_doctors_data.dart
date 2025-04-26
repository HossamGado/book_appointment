import 'package:doctor_appointment/components/appointment_screen/doctor_details.dart';
import 'package:doctor_appointment/components/appointment_screen/doctors_list.dart';
import 'package:doctor_appointment/components/appointment_screen/location.dart';
import 'package:flutter/material.dart';

class AllDoctorsData extends StatelessWidget {
  const AllDoctorsData({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 1.5,
      width: double.infinity,
      padding: EdgeInsets.only(top: 15, left: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10),
          topLeft: Radius.circular(10),
        ),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DoctorDetails(),
          DoctorsList(),
          SizedBox(
            height: 10,
          ),
          Text(
            "Location",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Location(),
        ],
      ),
    );
  }
}
