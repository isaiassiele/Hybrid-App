import 'dart:io';

import 'package:flutter/material.dart';

class ImagePickerView extends StatelessWidget {
  final String? image;
  final AlignmentGeometry? alignment;
  final EdgeInsetsGeometry? margin;
  final double? width;
  final double? height;
  final String assetImage;
  const ImagePickerView({
    Key? key,
    this.alignment,
    this.margin,
    required this.height,
    required this.width,
    required this.image,
    required this.assetImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          alignment: alignment ?? Alignment.center,
          margin: margin ?? EdgeInsets.all(20),
          width: width,
          height: height,
          decoration: BoxDecoration(
            // shape: BoxShape.circle,
            image: DecorationImage(
              image: image != null
                  ? FileImage(
                      File(image!),
                    )
                  : AssetImage(assetImage) as ImageProvider,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }
}
