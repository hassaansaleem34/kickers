import 'package:flutter/material.dart';
import 'package:kickers/common/widgets/uihelper.dart';
import 'package:kickers/features/homescreen/model/model.dart';
import 'package:kickers/utils/constants/colors.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  TextEditingController search = TextEditingController();

  List<Product> products = [
    Product(
      name: "Nike Air Pegasus",
      image: "assets/images/projectimg/klipartz 1.png",
      price: "\$200",
      people: "1.2k people bought this",
      rating: "assets/images/icon/Stars.png",
    ),
    Product(
      name: "Jordan Jump XV",
      image: "assets/images/projectimg/klipartz 2.png",
      price: "\$120",
      people: "5k people bought this",
      rating: "assets/images/icon/Stars.png",
    ),
    Product(
      name: "Nike Raptor",
      image: "assets/images/projectimg/klipartz 6.png",
      price: "\$260",
      people: "1.8k people bought this",
      rating: "assets/images/icon/Stars.png",
    ),
    Product(
      name: "Basketball Jordans",
      image: "assets/images/projectimg/klipartz 5.png",
      price: "\$110",
      people: "8k people bought this",
      rating: "assets/images/icon/Stars.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset("assets/images/projectimg/Top App Bar.png"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Uihelper.customsearchbar(controller: search),
              const SizedBox(height: 10),

              // ✅ Scrollable Row of options
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Uihelper.Customtext(
                      text: "Explore",
                      color: uicolors.primarybold,
                      fontweight: FontWeight.bold,
                      fontsize: 20,
                    ),
                    const SizedBox(width: 20),
                    Uihelper.Customtext(
                      text: "Popular",
                      color: uicolors.secondarygrey,
                      fontweight: FontWeight.normal,
                      fontsize: 12,
                    ),
                    const SizedBox(width: 20),
                    Uihelper.Customtext(
                      text: "Newest Deals",
                      color: uicolors.secondarygrey,
                      fontweight: FontWeight.normal,
                      fontsize: 12,
                    ),
                    const SizedBox(width: 20),
                    Uihelper.Customtext(
                      text: "High ratings",
                      color: uicolors.secondarygrey,
                      fontweight: FontWeight.normal,
                      fontsize: 12,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10),

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
                          crossAxisSpacing: 16,
                          mainAxisSpacing: 16,
                          childAspectRatio: 0.68,
                        ),
                    itemBuilder: (context, index) {
                      final product = products[index];
                      return Container(
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
                              Flexible(
                                child: Image.asset(
                                  product.image,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Uihelper.Customtext(
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
                                      Text(
                                        product.price,
                                        style: const TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(width: 60),
                                      Uihelper.CustomImageproject(
                                        img: "Community.png",
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(width: 70),
                                      Uihelper.Customtext(
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
