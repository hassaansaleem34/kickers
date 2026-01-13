import 'package:flutter/material.dart';
import 'package:kickers/common/widgets/ui_helper.dart';
import 'package:kickers/features/home_screen/model/model.dart';
import 'package:kickers/features/purchase_screen/views/purchase_screen.dart';
import 'package:kickers/utils/constants/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController search = TextEditingController();

  List<Product> products = [
    Product(
      name: "Nike Air Pegasus",
      image: "assets/images/projectimg/klipartz 1.png",
      price: "\$200.99",
      people: "1.2k people bought this",
      rating: "assets/images/icon/Stars.png",
    ),
    Product(
      name: "Jordan Jump XV",
      image: "assets/images/projectimg/klipartz 2.png",
      price: "\$120.99",
      people: "5k people bought this",
      rating: "assets/images/icon/Stars.png",
    ),
    Product(
      name: "Nike Raptor",
      image: "assets/images/projectimg/klipartz 6.png",
      price: "\$260.99",
      people: "1.8k people bought this",
      rating: "assets/images/icon/Stars.png",
    ),
    Product(
      name: "Basketball Jordans",
      image: "assets/images/projectimg/klipartz 5.png",
      price: "\$110.99",
      people: "8k people bought this",
      rating: "assets/images/icon/Stars.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleSpacing: 0,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Left Image
              UiHelper.customImageIcon(img: "Menu Hamburger.png"),

              // Center Image (logo/title)
              UiHelper.customImagelogo(img: "Kicker (1).png"),

              // Right Image (profile/cart)
              UiHelper.customImageIcon(img: "Ellipse 1 (1).png"),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UiHelper.customSearchBar(controller: search),
              const SizedBox(height: 10),

              // ✅ Scrollable Row of options
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 30),
                    UiHelper.customtext(
                      text: "Explore",
                      color: uicolors.primarybold,
                      fontweight: FontWeight.bold,
                      fontsize: 20,
                    ),
                    const SizedBox(width: 20),
                    UiHelper.customtext(
                      text: "Popular",
                      color: uicolors.secondarygrey,
                      fontweight: FontWeight.normal,
                      fontsize: 12,
                    ),
                    const SizedBox(width: 20),
                    UiHelper.customtext(
                      text: "Newest Deals",
                      color: uicolors.secondarygrey,
                      fontweight: FontWeight.normal,
                      fontsize: 12,
                    ),
                    const SizedBox(width: 20),
                    UiHelper.customtext(
                      text: "High ratings",
                      color: uicolors.secondarygrey,
                      fontweight: FontWeight.normal,
                      fontsize: 12,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              // ✅ GridView inside fixed height Container for proper scrolling
              LayoutBuilder(
                builder: (context, constraints) {
                  return GridView.builder(
                    physics:
                        const NeverScrollableScrollPhysics(), // disable GridView's own scroll
                    shrinkWrap: true, // make GridView take only needed space
                    padding: const EdgeInsets.all(16),
                    itemCount: products.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 45,
                          childAspectRatio: 0.78,
                        ),
                    itemBuilder: (context, index) {
                      final product = products[index];
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  mypurchase(product: product),
                            ),
                          );
                        },

                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: const [
                              BoxShadow(color: Colors.black12, blurRadius: 8),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // IMAGE
                                SizedBox(
                                  height: 120,
                                  child: Image.asset(
                                    product.image,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                UiHelper.customtext(
                                  text: product.name,
                                  color: uicolors.primarybold,
                                  fontweight: FontWeight.w400,
                                  fontsize: 10,
                                  fontfamily: "DM sans",
                                ),

                                const SizedBox(height: 4),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text.rich(
                                          TextSpan(
                                            children: [
                                              TextSpan(
                                                text: product.price
                                                    .split('.')
                                                    .first,
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
                                                      product.price
                                                          .split('.')
                                                          .last,
                                                      textScaleFactor: 0.7,
                                                      style: const TextStyle(
                                                        color: Colors.red,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(width: 70),
                                        UiHelper.customtext(
                                          text: "1.8K people bought this",
                                          color: uicolors.secondarygrey,
                                          fontweight: FontWeight.w700,
                                          fontsize: 6,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 4),
                                Image.asset(product.rating),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
