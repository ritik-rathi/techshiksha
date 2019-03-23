import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'dart:async';

class Upload extends StatefulWidget {
  @override
  _UploadState createState() => _UploadState();
}

class _UploadState extends State<Upload> {
  File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Upload'), backgroundColor: Color(0xFFE1306C)),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Click',
        onPressed: getImage,
        child: Icon(Icons.add_a_photo),
      ),
      body: Center(
        child: _image == null
            ? Text('No image selected.')
            : Container(
                width: 200.0,
                height: 200.0,
                decoration: BoxDecoration(
                  border: new Border.all(width: 2.0 , color: Colors.black),
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                   image:FileImage(_image),
                   fit: BoxFit.cover
                  )
                ),
              ),
      ),
    );
  }
}
