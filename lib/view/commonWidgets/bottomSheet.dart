import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/commonWidgets/iconcreation.dart';

Widget bottomsheet({required context}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
        border: Border.all(color: Colors.transparent),
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      height: 300,
      width: 250,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            iconcreation(
                context: context,
                icon: Icons.insert_drive_file,
                color: Color.fromARGB(255, 110, 103, 239),
                text: "Document"),
            iconcreation(
                context: context,
                icon: Icons.camera_alt,
                color: Color.fromARGB(255, 247, 106, 96),
                text: "Camera"),
            iconcreation(
                context: context,
                icon: Icons.image_rounded,
                color: Colors.pink,
                text: "Gallery"),
            iconcreation(
                context: context,
                icon: Icons.headphones,
                color: Colors.orange,
                text: "Audio"),
            iconcreation(
                context: context,
                icon: Icons.contact_page,
                color: Colors.blue,
                text: "Contact"),
          ],
        ),
      ),
    ),
  );
}
