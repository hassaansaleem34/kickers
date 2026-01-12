import 'package:flutter/material.dart';
import 'package:kickers/common/widgets/uihelper.dart';
import 'package:kickers/features/homescreen/views/home.dart';
import 'package:kickers/features/purchase/views/purchase.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() {
    return _NavbarState();
  }
}

class _NavbarState extends State<Navbar> {
  int currentindex = 0;

  List<Widget> pages = [
    Homescreen(), // 0
    mypurchase(), // 1
    SizedBox(), // 2 (center scan dummy page)
    mypurchase(), // 3
    Homescreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentindex, children: pages),

      bottomNavigationBar: Stack(
        clipBehavior: Clip.none,
        children: [
          // 🔹 BottomNavigationBar
          BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: currentindex,
            onTap: (index) {
              if (index == 2) return; // center handled separately
              setState(() {
                currentindex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Uihelper.CustomImageicon(
                  img: "Home 2.png",
                  color: currentindex == 0 ? Colors.red : Colors.grey,
                ),
                label: "home",
              ),
              BottomNavigationBarItem(
                icon: Uihelper.CustomImageicon(
                  img: "Heart 1.png",
                  color: currentindex == 1 ? Colors.red : Colors.grey,
                ),
                label: "notification",
              ),

              // 👇 EMPTY CENTER ITEM
              const BottomNavigationBarItem(icon: SizedBox.shrink(), label: ""),

              BottomNavigationBarItem(
                icon: Uihelper.CustomImageicon(
                  img: "Bag 1.png",
                  color: currentindex == 3 ? Colors.red : Colors.grey,
                ),
                label: "likes",
              ),
              BottomNavigationBarItem(
                icon: Uihelper.CustomImageicon(
                  img: "Notification 1.png",
                  color: currentindex == 4 ? Colors.red : Colors.grey,
                ),
                label: "cart",
              ),
            ],
          ),

          // 🔴 CENTER RED CIRCLE BUTTON
          Positioned(
            top: -28,
            left: MediaQuery.of(context).size.width / 2 - 30,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  currentindex = 2;
                });
              },
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                  boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 8)],
                ),
                child: Center(
                  child: Uihelper.CustomImageicon(
                    img: "Scan 10.png", // 👈 apni image
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
