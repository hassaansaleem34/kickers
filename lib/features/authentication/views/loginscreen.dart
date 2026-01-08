import 'package:flutter/material.dart';
import 'package:kickers/common/widgets/uihelper.dart';
import 'package:kickers/features/homescreen/views/home.dart';
import 'package:kickers/features/homescreen/views/navbar.dart';
import 'package:kickers/utils/constants/colors.dart';

class loginscreen extends StatefulWidget {
  const loginscreen({super.key});

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(top: 80, left: 20, right: 20),
            child: Column(
              children: [
                Row(children: [Uihelper.CustomImagelogo(img: "Login.png")]),
                SizedBox(height: 10),
                Row(
                  children: [
                    Uihelper.Customtext(
                      text:
                          "Welcome back, get back to exploring our amazing kicks.",
                      color: uicolors.secondarygrey,
                      fontweight: FontWeight.normal,
                      fontsize: 12,
                      fontfamily: "DM sans",
                    ),
                  ],
                ),
                SizedBox(height: 20),

                Uihelper.mytext(
                  text: "email address",
                  img: "Message 35.png",
                  bool: false,
                ),
                SizedBox(height: 10),
                Uihelper.mytext(
                  text: "enter password",
                  img: "Lock 1.png",
                  bool: true,
                ),

                SizedBox(height: 10),
                SizedBox(
                  height: 38,
                  width: 296,

                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Navbar()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0XFF4584FF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(10),
                      ),
                    ),
                    child: Row(
                      children: [
                        Uihelper.CustomImageicon(img: "facebook.png"),
                        SizedBox(width: 50),
                        Uihelper.Customtext(
                          text: "Continue with Facebook",
                          color: Color(0xFFFFFFFF),
                          fontweight: FontWeight.bold,
                          fontsize: 10,
                          fontfamily: "DM sans",
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 38,
                  width: 296,

                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFFFFFFF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(10),
                      ),
                    ),
                    child: Row(
                      children: [
                        Uihelper.CustomImageicon(img: "Google (logo).png"),
                        SizedBox(width: 50),
                        Uihelper.Customtext(
                          text: "Continue with Google",
                          color: Color(0xFFEB3C3C),
                          fontweight: FontWeight.bold,
                          fontsize: 10,
                          fontfamily: "DM sans",
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 60),
                Container(
                  width: 400,
                  height: 120,

                  decoration: BoxDecoration(
                    color: Color(0xFFE74C3C),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Uihelper.Customtext(
                        text: "Sign Up",
                        color: Color(0xffFFFFFF),
                        fontweight: FontWeight.bold,
                        fontsize: 20,
                        fontfamily: "DM sans",
                      ),

                      SizedBox(height: 10),
                      Container(
                        height: 80,
                        width: 360,
                        padding: EdgeInsets.symmetric(
                          horizontal: 40,
                          vertical: 15,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50),
                          ),
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 70),
                            Uihelper.Customtext(
                              text: "Let’s Get Kicking!",
                              color: Color(0xff2D264B),
                              fontweight: FontWeight.bold,
                              fontsize: 20,
                              fontfamily: "DM sans",
                            ),

                            SizedBox(width: 8),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.black,
                              size: 18,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
