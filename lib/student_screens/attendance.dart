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

class Attendance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('Attendance'),
      ),
      body: Container(
        child:
          CalendarCarousel(
            todayButtonColor: attendance(),
            todayBorderColor: Colors.black,
            daysHaveCircularBorder: true,
          ),
          // Text('Number of working days: $wor'),
          // Text('Number of days present: $pr')
        
      ),
    );
  }
}
