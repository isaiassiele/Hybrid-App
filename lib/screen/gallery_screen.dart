import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../constant/string.dart';
import '../generated/assets.dart';
import '../widget/image_picker.dart';
import '../widget/title_text.dart';

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({Key? key}) : super(key: key);

  @override
  State<GalleryScreen> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  String? galleryImage;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(gallery),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              pickImageFromGallery();
            },
            child: const TitleText(
              text: clickGallery,
            ),
          ),
          Center(
            child: ImagePickerView(
              assetImage: Assets.assetsGallery,
              image: galleryImage,
              width: 200,
              height: 200,
            ),
          )
        ],
      ),
    ));
  }

  void pickImageFromGallery() async {
    await ImagePicker().pickImage(source: ImageSource.gallery).then((file) {
      if (file == null) return;
      setState(() {
        galleryImage = file.path;
        debugPrint('imagePath ${file.path}');
      });
    });
  }
}
