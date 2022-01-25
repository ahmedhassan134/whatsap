import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:image_picker/image_picker.dart';

class Camera extends StatefulWidget {
  const Camera({Key? key}) : super(key: key);

  @override
  _CameraState createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  final ImagePicker _picker = ImagePicker();
  File? pickedImage;

  photo1() async {
    final XFile? image = await _picker.pickImage(
        source: ImageSource.camera, maxHeight: 300, maxWidth: 400);

    if (image == null) {
      return;
    } else {
      setState(() {
        pickedImage = File(image.path);
      });
    }
  }

  photo2() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    if (image == null) {
      return;
    } else {
      setState(() {
        pickedImage = File(image.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: pickedImage == null ? null : Image.file(pickedImage!),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: myDialog,
        child: const Icon(Icons.camera_alt),
      ),
    );
  }

  myDialog() {
    var alert = AlertDialog(
      content: Container(
        width: double.infinity,
        height: 200,
        color: Colors.blue,
        child: Padding(
          padding: const EdgeInsetsDirectional.only(top: 40.0),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  photo1();
                  Navigator.pop(context);
                },
                child: Container(
                  width: 80,
                  height: 30,
                  color: Colors.black,
                  child: const Padding(
                    padding: EdgeInsetsDirectional.only(top: 6.0),
                    child: Text(
                      "camera",
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              const Divider(
                color: Colors.grey,
              ),
              GestureDetector(
                onTap: () {
                  photo2();
                  Navigator.pop(context);
                },
                child: Container(
                  width: 80,
                  height: 30,
                  color: Colors.black,
                  child: const Padding(
                    padding: EdgeInsetsDirectional.only(top: 6.0),
                    child: Text(
                      "gallery",
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
