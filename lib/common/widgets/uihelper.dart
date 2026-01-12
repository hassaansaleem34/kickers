import 'package:flutter/material.dart';
import 'package:kickers/utils/constants/colors.dart';

class Uihelper {
  static CustomImagelogo({required String img, int? h, int? w}) {
    return Image.asset(
      "assets/images/logo/$img",
      height: h?.toDouble(),
      width: w?.toDouble(),
    );
  }

  static CustomImageproject({required String img, int? h, int? w}) {
    return Image.asset(
      "assets/images/projectimg/$img",
      height: h?.toDouble(),
      width: w?.toDouble(),
    );
  }

  static CustomImageicon({required String img, int? h, int? w, Color? color}) {
    return Image.asset(
      "assets/images/icon/$img",
      color: color,
      height: h?.toDouble(),
      width: w?.toDouble(),
    );
  }

  static Customtext({
    required String text,
    required Color color,
    required FontWeight fontweight,
    String? fontfamily,
    required double fontsize,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontsize,
        color: color,
        fontFamily: fontfamily ?? "DM sans",
        fontWeight: fontweight,
      ),
    );
  }

  static mytext({required String text, required String img, required bool}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        obscureText: bool,
        decoration: InputDecoration(
          prefixIcon: Uihelper.CustomImageicon(img: img),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: uicolors.secondarygrey),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.black),
          ),
          hintText: text,
        ),
      ),
    );
  }

  static customsearchbar({required TextEditingController controller}) {
    return Center(
      child: Container(
        height: 38,
        width: 360,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          border: Border.all(color: Color(0xffC5C5C5)),
        ),
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: "e.g Nike Air Jordans",
            hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
            isDense: true, // 🔥 important
            contentPadding: EdgeInsets.fromLTRB(16, 12, 12, 12),

            suffixIcon: InkWell(
              onTap: () {
                print("Mic clicked");
              },
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Uihelper.CustomImageicon(img: "Search 2.png"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
