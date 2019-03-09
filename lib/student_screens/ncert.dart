import 'package:flutter/material.dart';
import 'subjects.dart';
import 'package:flutter_pdf_viewer/flutter_pdf_viewer.dart';

class Ncert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          SizedBox(
              height: 100,
              child: DecoratedBox(
                decoration: new BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [color11, color22])),
                child: Column(
                  children: <Widget>[
                    DecoratedBox(
                      decoration: new BoxDecoration(color: Colors.white),
                    ),
                    Container(margin: EdgeInsets.only(bottom: 30)),
                    Text(
                      'CONTENTS',
                      style: TextStyle(
                          fontSize: 40.0, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )),
          Container(
            margin: EdgeInsets.only(bottom: 20.0, top: 30.0, left: 20.0),
            child: Text('Select chapter',
                style: TextStyle(
                  fontSize: 20.0,
                )),
          ),
          Divider(
            height: 20.0,
            color: color11,
          ),
          FlatButton(
            onPressed: () {
              PdfViewer.loadAsset('assets/science_book.pdf');
            },
            child: Text(
              '1. Food: Where does it come from?',
              style: TextStyle(color: Colors.grey, fontSize: 20.0),
              textAlign: TextAlign.left,
            ),
          ),
          Divider(
            height: 20.0,
            color: color11,
          ),
          FlatButton(
            onPressed: () {},
            child: Text('2. Components of food',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20.0,
                ),
                textAlign: TextAlign.left),
          ),
          Divider(
            height: 20.0,
            color: color11,
          ),
          FlatButton(
            onPressed: () {},
            child: Text('3. Fibre to fabric',
                style: TextStyle(color: Colors.grey, fontSize: 20.0)),
          ),
          Divider(
            height: 20.0,
            color: color11,
          ),
          FlatButton(
            onPressed: () {},
            child: Text('4. Sorting materials into groups',
                style: TextStyle(color: Colors.grey, fontSize: 20.0),
                textAlign: TextAlign.left),
          ),
          Divider(
            height: 20.0,
            color: color11,
          ),
          FlatButton(
            onPressed: () {},
            child: Text('5. Separation of substances',
                style: TextStyle(color: Colors.grey, fontSize: 20.0),
                textAlign: TextAlign.left),
          ),
          Divider(
            height: 20.0,
            color: color11,
          ),
          FlatButton(
            onPressed: () {},
            child: Text('6. Changes around us',
                style: TextStyle(color: Colors.grey, fontSize: 20.0),
                textAlign: TextAlign.left),
          ),
          Divider(
            height: 20.0,
            color: color11,
          ),
          FlatButton(
            onPressed: () {},
            child: Text('7. Getting to know plants',
                style: TextStyle(color: Colors.grey, fontSize: 20.0),
                textAlign: TextAlign.left),
          ),
          Divider(
            height: 20.0,
            color: color11,
          ),
          FlatButton(
            onPressed: () {},
            child: Text('8. Body movements',
                style: TextStyle(color: Colors.grey, fontSize: 20.0),
                textAlign: TextAlign.left),
          ),
          Divider(
            height: 20.0,
            color: color11,
          ),
          FlatButton(
            onPressed: () {},
            child: Text('9. The living organisms and their surroundings',
                style: TextStyle(color: Colors.grey, fontSize: 20.0),
                textAlign: TextAlign.left),
          ),
          Divider(
            height: 20.0,
            color: color11,
          ),
          
        ],
      ),
    );
  }
}
