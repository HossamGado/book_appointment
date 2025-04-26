import 'package:doctor_appointment/widgets/upcoming_schedule.dart';
import 'package:flutter/material.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  int buttonIndex = 0;
  final scheduleWidgets = [
  UpcomingSchedule(),
    Center(
      child: Text("Completed",style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500
      ),),
    ),
    Center(
      child: Text("Canceled",style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500
      ),),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60,left: 10,right: 10),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Schedule",
              style: TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 60,
              decoration: BoxDecoration(
                color: const Color(0xfff5f4fb),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        buttonIndex = 0;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 12,horizontal: 20),
                      decoration: BoxDecoration(
                        color: buttonIndex==0?Colors.deepPurpleAccent:Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "Upcoming",
                        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17,
                          color: buttonIndex==0?Colors.white:Colors.black38,
        
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        buttonIndex = 1;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 12,horizontal: 20),
                      decoration: BoxDecoration(
                        color: buttonIndex==1?Colors.deepPurpleAccent:Colors.transparent,
        
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "Completed",
                        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17,
                          color: buttonIndex==1?Colors.white:Colors.black38,
        
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        buttonIndex = 2;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 12,horizontal: 20),
                      decoration: BoxDecoration(
                        color: buttonIndex==2?Colors.deepPurpleAccent:Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "Canceled",
                        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17,
                          color: buttonIndex==2?Colors.white:Colors.black38,
        
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),
            scheduleWidgets[buttonIndex],
          ],
        ),
      ),
    );
  }
}
