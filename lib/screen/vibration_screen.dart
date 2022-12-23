import 'package:assignment/constant/size.dart';
import 'package:assignment/constant/string.dart';
import 'package:assignment/widget/title_text.dart';
import 'package:flutter/material.dart';
import 'package:vibration/vibration.dart';

class VibrationScreenn extends StatefulWidget {
  const VibrationScreenn({Key? key}) : super(key: key);

  @override
  State<VibrationScreenn> createState() => _VibrationScreennState();
}

class _VibrationScreennState extends State<VibrationScreenn> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text(vibration),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            space(),
            ListTile(
              onTap: () {
                Vibration.vibrate(duration: 1000);
              },
              leading: const Icon(
                Icons.vibration,
                size: iconSize,
              ),
              title: const TitleText(
                text: vibrateFor100Ms,
                textAlign: TextAlign.start,
                fontSize: fontSize,
              ),
            ),
            space(),
            ListTile(
              onTap: () {
                Vibration.vibrate(
                  pattern: [500, 1000, 500, 2000, 500, 3000, 500, 500],
                );
              },
              leading: const Icon(
                Icons.speaker_phone,
                size: iconSize,
              ),
              title: const TitleText(
                text: vibrateWithPattern,
                textAlign: TextAlign.start,
                fontSize: fontSize,
              ),
            )
          ],
        ),
      ),
    ));
  }

  Widget space() {
    return const SizedBox(
      height: 20,
    );
  }

  @override
  void dispose() {
    super.dispose();
    Vibration.cancel();
  }
}
