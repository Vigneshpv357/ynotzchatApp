import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/colorConstants.dart';
import 'package:image_picker/image_picker.dart';

Widget iconcreation(
    {required context,
    required IconData icon,
    required Color color,
    required String text}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            InkWell(
              onTap: () async {
                switch (icon) {
                  case Icons.insert_drive_file:
                    break;
                  case Icons.camera_alt:
                    print("camera");
                    final ImagePicker picker = ImagePicker();
                    final XFile? image =
                        await picker.pickImage(source: ImageSource.camera);
                    print(image);
                    break;
                  case Icons.image_rounded:
                    print("gallery");
                    final ImagePicker picker = ImagePicker();
                    final XFile? image =
                        await picker.pickImage(source: ImageSource.gallery);
                    print(image);
                    break;
                  case Icons.headphones:
                    print("audio");

                    break;
                  case Icons.contact_page:
                    print("contact");

                    break;
                }
              },
              child: CircleAvatar(
                radius: 20,
                backgroundColor: color,
                child: InkWell(
                  child: Icon(
                    icon,
                    color: Colorsused.secondaryColor,
                    size: 20,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(text),
            )
          ],
        ),
      ],
    ),
  );
}

// class CameraPermissions extends StatefulWidget {
//   const CameraPermissions({super.key});

//   @override
//   State<CameraPermissions> createState() => _CameraPermissionsState();
// }

// class _CameraPermissionsState extends State<CameraPermissions> {
//   late CameraController controller;
//   late List<CameraDescription> cameras;
//   bool showCamera = false;

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
 