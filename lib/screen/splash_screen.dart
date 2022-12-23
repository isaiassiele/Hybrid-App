import 'dart:async';

import 'package:flutter/material.dart';

import '../generated/assets.dart';
import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    launchHomeScreen();
  }

  launchHomeScreen() {
    Timer(const Duration(seconds: 2), homeScreen);
  }

  homeScreen() {
    var router = MaterialPageRoute(
        builder: (context) => const HomeScreen(
              title: 'Home Screen',
            ));

    Navigator.pushReplacement(context, router);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(Assets.assetsSplashImage),
                  fit: BoxFit.fill),
            ),
          ),
          const Center(
            child: Text(
              'Web and mobile technologies',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          )
        ],
      ),
    ));
  }
}
