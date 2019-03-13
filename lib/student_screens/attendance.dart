import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';

int att = 9;
int wor;
int pr;

Color attendance() {
  if (att == 1)
    return Colors.green;
  else if (att == 0)
    return Colors.red;
  else
    return Colors.grey;
}

class Attendance extends StatefulWidget {
  @override
  _AttendanceState createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.teal[50],
      appBar: new AppBar(
        title: Text('Attendance'),
      ),
      body: Column(children: <Widget>[
        CalendarCarousel(
          width: double.infinity,
          height: 500,
          markedDatesMap: EventList(events: <DateTime, List<dynamic>>{
            new DateTime(2019, 3, 15): ["Party"]
          }),
          markedDateShowIcon: false,
          markedDateIconBorderColor: attendance(),
          todayButtonColor: attendance(),
          todayBorderColor: Colors.black,
          daysHaveCircularBorder: true,
        ),
        Text("Test")
      ]),
    );
  }
}
