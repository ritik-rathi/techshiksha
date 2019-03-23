import 'package:flutter/material.dart';

class TakeAttendance extends StatefulWidget {
  @override
  _TakeAttendanceState createState() => _TakeAttendanceState();
}

class _TakeAttendanceState extends State<TakeAttendance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Attendance'), backgroundColor: Color(0xFFE1306C)),
        body: Container(
          padding: EdgeInsets.all(16),
          child: ListView.builder(
            itemBuilder: (BuildContext context, index) {
              return Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      // Padding(
                      //   padding: EdgeInsets.only(left: 16),
                      // ),
                      Expanded(
                                              child: Text(
                          '${index + 1}. Student ${index + 1}',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),

                      SizedBox(width: 50),
                      Expanded(
                                              child: RaisedButton(
                          onPressed: () {},
                          color: Colors.green,
                          child: Text('PRESENT'),
                        ),
                      ),

                      SizedBox(width: 10),
                      Expanded(
                                              child: RaisedButton(
                          onPressed: () {},
                          color: Colors.red,
                          child: Text(
                            'ABSENT',
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    height: 2,
                    color: Color(0xFFE1306C),
                  )
                ],
              );
            },
          ),
        ));
  }
}
