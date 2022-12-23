import 'package:assignment/constant/size.dart';
import 'package:assignment/screen/gallery_screen.dart';
import 'package:assignment/screen/vibration_screen.dart';
import 'package:assignment/widget/title_text.dart';
import 'package:flutter/material.dart';

import '../constant/string.dart';
import 'camera_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text(assignmentHome),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            space(),
            ListTile(
              onTap: () {
                goToNextScreen(const CameraScreen(), context);
              },
              leading: const Icon(Icons.camera_alt_rounded, size: iconSize),
              title: const TitleText(
                text: 'Test Camera',
                textAlign: TextAlign.start,
                fontSize: fontSize,
              ),
            ),
            space(),
            space(),
            ListTile(
              onTap: () {
                goToNextScreen(const GalleryScreen(), context);
              },
              leading: const Icon(Icons.image_rounded, size: iconSize),
              title: const TitleText(
                textAlign: TextAlign.start,
                text: 'Test Gallery',
                fontSize: fontSize,
              ),
            ),
            space(),
            ListTile(
              onTap: () {
                goToNextScreen(const VibrationScreenn(), context);
              },
              leading: const Icon(Icons.vibration_sharp, size: iconSize),
              title: const TitleText(
                textAlign: TextAlign.start,
                text: 'Test Vibration',
                fontSize: fontSize,
              ),
            ),
          ],
        ),
      ),
    ));
  }

  goToNextScreen(Widget screen, BuildContext context) =>
      Navigator.push(context, router(screen: screen));

  router({required Widget screen}) =>
      MaterialPageRoute(builder: (ctx) => screen);

  Widget space() {
    return const SizedBox(height: 20);
  }
}
