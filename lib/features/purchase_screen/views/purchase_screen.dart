import 'package:flutter/material.dart';
import 'package:kickers/common/widgets/ui_helper.dart';
import 'package:kickers/features/home_screen/model/model.dart';
import 'package:kickers/utils/constants/colors.dart';

class mypurchase extends StatefulWidget {
  final Product product;

  const mypurchase({super.key, required this.product});

  @override
  State<mypurchase> createState() => _mypurchaseState();
}

class _mypurchaseState extends State<mypurchase> {
  @override
  Widget build(BuildContext context) {
    final product = widget.product;
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
                UiHelper.customImageIcon(img: "Left 2.png"),

                // Center Image (logo/title)
                UiHelper.customImagelogo(img: "Purchase.png"),

                // Right Image (profile/cart)
                UiHelper.customImageIcon(img: "Bag 2.png"),
              ],
            ),
          ),
          SizedBox(height: 120),
          Container(
            width: 298,
            height: 223,
            decoration: BoxDecoration(),
            child: Image.asset(
              product.image,
              fit:
                  BoxFit.cover, // image ko container ke andar fit karne ke liye
            ),
          ),
          SizedBox(height: 70),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 30),
            child: Row(
              children: [
                SizedBox(width: 10),
                UiHelper.customtext(
                  text: product.name,
                  color: uicolors.primarybold,
                  fontweight: FontWeight.bold,
                  fontsize: 20,
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 30),
            child: Row(
              children: [
                SizedBox(width: 10),
                UiHelper.customtext(
                  text:
                      "Limited edition nike sneakers, marketed in 2021 over \n20+ countries globally",
                  color: uicolors.secondarygrey,
                  fontweight: FontWeight.normal,
                  fontsize: 12,
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 30),
            child: Row(
              children: [
                SizedBox(width: 10),
                UiHelper.customImageIcon(img: "Community (1).png"),
                SizedBox(width: 180),
                UiHelper.customImageIcon(img: "Stars (1).png"),
                UiHelper.customtext(
                  text: "4.5",
                  color: uicolors.secondarygrey,
                  fontweight: FontWeight.normal,
                  fontsize: 10,
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Row(
            children: [
              SizedBox(width: 20),
              UiHelper.customtext(
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
            child: Padding(
              padding: const EdgeInsets.only(left: 8, right: 0),
              child: Row(
                children: [
                  SizedBox(width: 10),
                  UiHelper.customImageIcon(img: "Color Choice.png"),
                  Spacer(),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: product.price.split('.').first,
                          style: const TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        if (product.price.contains('.'))
                          WidgetSpan(
                            child: Transform.translate(
                              offset: const Offset(2, -6),
                              child: Text(
                                product.price.split('.').last,
                                textScaleFactor: 0.7, //
                                style: const TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
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
                UiHelper.customtext(
                  text: "Add to Cart",
                  color: uicolors.primarybold,
                  fontweight: FontWeight.bold,
                  fontsize: 20,
                ),
                SizedBox(width: 10),
                UiHelper.customImageIcon(img: "Bag 2.png"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
