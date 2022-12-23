import 'package:assignment/generated/assets.dart';
import 'package:assignment/widget/image_picker.dart';
import 'package:assignment/widget/title_text.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../constant/string.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({Key? key}) : super(key: key);

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  String? cameraImage;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text(camera),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              pickImageFromCamera();
            },
            child: const TitleText(
              text: clickCamera,
            ),
          ),
          Center(
            child: ImagePickerView(
              assetImage: Assets.assetsCamera,
              image: cameraImage,
              width: 200,
              height: 200,
            ),
          )
        ],
      ),
    ));
  }

  void pickImageFromCamera() async {
    await ImagePicker().pickImage(source: ImageSource.camera).then((file) {
      if (file == null) return;
      setState(() {
        cameraImage = file.path;
        debugPrint('imagePath ${file.path}');
      });
    });
  }
}
