import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kickers/common/widgets/ui_helper.dart';
import 'package:kickers/features/authentication_screen/views/login_screen.dart';
import 'package:kickers/utils/constants/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 300),
            //image
            UiHelper.customImagelogo(img: "Kicker.png"),
            //text
            UiHelper.customtext(
              text: "World’s biggest collection of kicks.",
              color: uicolors.secondarygrey,
              fontweight: FontWeight.normal,
              fontsize: 12,
              fontfamily: "DM sans",
            ),
            SizedBox(height: 200),
            Align(
              alignment: Alignment.bottomCenter,
              child: UiHelper.customImageProject(img: "klipartz 8.png"),
            ),
          ],
        ),
      ),
    );
  }
}
