import 'package:flutter/material.dart';
import 'package:kickers/common/widgets/uihelper.dart';
import 'package:kickers/utils/constants/colors.dart';

class mypurchase extends StatelessWidget {
  const mypurchase({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            automaticallyImplyLeading: false, // default back button remove
            // Use title as Row to hold 3 images
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Left Image
                Uihelper.CustomImageicon(img: "Left 2.png"),

                // Center Image (logo/title)
                Uihelper.CustomImagelogo(img: "Purchase.png"),

                // Right Image (profile/cart)
                Uihelper.CustomImageicon(img: "Bag 2.png"),
              ],
            ),
          ),
          SizedBox(height: 120),
          Uihelper.CustomImageproject(img: "klipartz 7.png"),
          SizedBox(height: 10),
          Row(
            children: [
              SizedBox(width: 10),
              Uihelper.Customtext(
                text: "Nike Air Pegasus",
                color: uicolors.primarybold,
                fontweight: FontWeight.bold,
                fontsize: 20,
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 10),
              Uihelper.Customtext(
                text:
                    "Limited edition nike sneakers, \nmarketed in 2021 over 20+ countries globally",
                color: uicolors.secondarygrey,
                fontweight: FontWeight.normal,
                fontsize: 12,
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            children: [
              SizedBox(width: 10),
              Uihelper.CustomImageicon(img: "Community (1).png"),
              SizedBox(width: 180),
              Uihelper.CustomImageicon(img: "Stars (1).png"),
              Uihelper.Customtext(
                text: "4.5",
                color: uicolors.secondarygrey,
                fontweight: FontWeight.normal,
                fontsize: 10,
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            children: [
              SizedBox(width: 10),
              Uihelper.Customtext(
                text: "Colors available",
                color: uicolors.primarybold,
                fontweight: FontWeight.w700,
                fontsize: 12,
              ),
            ],
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Row(
              children: [
                SizedBox(width: 10),
                Uihelper.CustomImageicon(img: "Color Choice.png"),
                Spacer(),
                Uihelper.Customtext(
                  text: "\$200",
                  color: Color(0xffEB3C3C),
                  fontweight: FontWeight.bold,
                  fontsize: 17,
                ),
              ],
            ),
          ),
          SizedBox(height: 120),
          Container(
            height: 67,
            width: 360,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // SizedBox(height: 40),
                Uihelper.Customtext(
                  text: "Add to Cart",
                  color: uicolors.primarybold,
                  fontweight: FontWeight.bold,
                  fontsize: 20,
                ),
                Uihelper.CustomImageicon(img: "Bag 2.png"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
