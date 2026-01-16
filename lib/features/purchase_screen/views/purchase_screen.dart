import 'package:flutter/material.dart';
import 'package:kickers/common/widgets/rating_show.dart';
import 'package:kickers/common/widgets/ui_helper.dart';
import 'package:kickers/features/home_screen/model/model.dart';
import 'package:kickers/features/purchase_screen/views/colors_container.dart';
import 'package:kickers/utils/constants/colors.dart';

class MyPurchase extends StatefulWidget {
  final Product product;

  const MyPurchase({super.key, required this.product});

  @override
  State<MyPurchase> createState() => _MyPurchaseState();
}

class _MyPurchaseState extends State<MyPurchase> {
  Color? selectedColor;
  Color? SelectedColor;
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
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: UiHelper.customImageSvg(img: "Left 2.svg"),
                ),

                // Center Image (logo/title)
                UiHelper.customImagelogo(img: "Purchase.png"),

                // Right Image (profile/cart)
                UiHelper.customImageSvg(img: "Bag 2.svg"),
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
                SizedBox(width: 130),
                StarRatingWidget(
                  rating: product.rating,
                  starSize: 18,
                  showRatingText: true,
                  ratingTextStyle: TextStyle(
                    fontSize: 15,
                    color: uicolors.secondarygrey,

                    fontWeight: FontWeight.bold,
                  ),
                  onRatingChanged: (r) {
                    print("Rating: $r");
                  },
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
                  ColorSelector(
                    colors: [
                      Colors.red,
                      Colors.yellow,
                      Colors.blue,
                      Colors.black,
                    ],
                    size: 20, // circle size
                    spacing: 4, // space between circles
                    onColorSelected: (color) {
                      SelectedColor;
                      setState(() {
                        selectedColor = color; // 🔹 update state
                        print("Selected color: $selectedColor");
                      });
                    },
                  ),
                  Spacer(),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: product.price.split('.').first,
                          style: const TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
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
          SizedBox(height: 100),
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
