import 'package:flutter/material.dart';

class Report extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Report'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: ListView.builder(
          itemBuilder: (BuildContext context, index){
            return Column(
              children: <Widget>[
                Text('$index. Student $index'),
                Divider(
                  height: 2,
                )
              ],
            );
          },
        ),
      ),
    );
  }
}