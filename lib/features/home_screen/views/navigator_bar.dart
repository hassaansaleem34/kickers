import 'package:flutter/material.dart';
import 'package:kickers/common/widgets/ui_helper.dart';
import 'package:kickers/features/coming_screens/coming_soon1.dart';
import 'package:kickers/features/coming_screens/coming_soon2.dart';
import 'package:kickers/features/coming_screens/coming_soon3%20.dart';

import 'package:kickers/features/home_screen/views/home_screen.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() {
    return _NavbarState();
  }
}

class _NavbarState extends State<NavBar> {
  int currentindex = 0;

  List<Widget> pages = [
    HomeScreen(), // 0
    ComingSoon1(),
    SizedBox(), // 2 (center scan dummy page)
    ComingSoon2(), // 3
    ComingSoon3(),
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
                icon: UiHelper.customImageIcon(
                  img: "Home 2.png",
                  color: currentindex == 0 ? Colors.red : Colors.grey,
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: UiHelper.customImageIcon(
                  img: "Heart 1.png",
                  color: currentindex == 1 ? Colors.red : Colors.grey,
                ),
                label: "",
              ),

              // 👇 EMPTY CENTER ITEM
              const BottomNavigationBarItem(icon: SizedBox.shrink(), label: ""),

              BottomNavigationBarItem(
                icon: UiHelper.customImageIcon(
                  img: "Bag 1.png",
                  color: currentindex == 3 ? Colors.red : Colors.grey,
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: UiHelper.customImageIcon(
                  img: "Notification 1.png",
                  color: currentindex == 4 ? Colors.red : Colors.grey,
                ),
                label: "",
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
                  child: UiHelper.customImageIcon(
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
