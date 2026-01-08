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
          Uihelper.CustomImageproject(img: "klipartz 7.png"),
          Row(
            children: [
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
              Uihelper.Customtext(
                text: "Nike Air Pegasus",
                color: uicolors.secondarygrey,
                fontweight: FontWeight.normal,
                fontsize: 12,
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Uihelper.CustomImageicon(img: "Community (1).png"),
              Spacer(),
              Uihelper.CustomImageicon(img: "Stars (1).png"),
              Uihelper.Customtext(
                text: "4.5",
                color: uicolors.secondarygrey,
                fontweight: FontWeight.normal,
                fontsize: 10,
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Uihelper.Customtext(
                text: "Colors available",
                color: uicolors.primarybold,
                fontweight: FontWeight.w700,
                fontsize: 12,
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Uihelper.CustomImageicon(img: "Color Choice.png"),
              Spacer(),
              Uihelper.Customtext(
                text: "200\u2079\u2079",
                color: Color(0xffEB3C3C),
                fontweight: FontWeight.bold,
                fontsize: 17,
              ),
            ],
          ),
          SizedBox(height: 10),
        ],
      ),
      bottomNavigationBar: Container(
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
            SizedBox(height: 60),
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
    );
  }
}
