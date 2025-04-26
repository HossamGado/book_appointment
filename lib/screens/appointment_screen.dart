import 'package:doctor_appointment/components/appointment_screen/all_doctors_data.dart';
import 'package:doctor_appointment/components/appointment_screen/bottom_nav_bar.dart';
import 'package:doctor_appointment/components/appointment_screen/doctor_contact.dart';
import 'package:doctor_appointment/components/appointment_screen/icon_settings.dart';
import 'package:flutter/material.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 45,
            ),
            Column(
              children: [
                IconSettings(),
                DoctorContact(),
                SizedBox(
                  height: 20,
                ),
                AllDoctorsData(),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
