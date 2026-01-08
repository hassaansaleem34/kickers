import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kickers/common/widgets/uihelper.dart';
import 'package:kickers/features/authentication/views/loginscreen.dart';
import 'package:kickers/utils/constants/colors.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}


class _splashscreenState extends State<splashscreen> {
void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => loginscreen()),
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
            //image
            Uihelper.CustomImagelogo(img: "Kicker.png"),
            //text
            Uihelper.Customtext(
              text: "World’s biggest collection of kicks.",
              color: uicolors.secondarygrey,
              fontweight: FontWeight.normal,
              fontsize: 12,
              fontfamily: "DM sans",
            ),
            SizedBox(height: 100),
            Align(
              alignment: Alignment.bottomCenter,
              child: Uihelper.CustomImageproject(img: "klipartz 8.png"),
            ),
          ],
        ),
      ),
    );
  }
}
