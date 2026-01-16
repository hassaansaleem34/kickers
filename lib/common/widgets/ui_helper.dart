import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kickers/utils/constants/colors.dart';

class UiHelper {
  static customImagelogo({required String img, int? h, int? w}) {
    return Image.asset(
      "assets/images/logo/$img",
      height: h?.toDouble(),
      width: w?.toDouble(),
    );
  }

  static customImageProject({required String img, int? h, int? w}) {
    return Image.asset(
      "assets/images/projectimg/$img",
      height: h?.toDouble(),
      width: w?.toDouble(),
    );
  }

  static customImageIcon({required String img, int? h, int? w, Color? color}) {
    return Image.asset(
      "assets/images/icon/$img",
      height: h?.toDouble(),
      width: w?.toDouble(),
      color: color,
    );
  }

  static customImageSvg({required String img, int? h, int? w, Color? color}) {
    return SvgPicture.asset(
      "assets/images/svg/$img",
      height: h?.toDouble(),
      width: w?.toDouble(),
      color: color,
    );
  }

  static customtext({
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

  static myTextField({
    required String text,
    required String img,
    required bool,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: SizedBox(
        height: 42,
        child: TextField(
          obscureText: bool,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            prefixIcon: UiHelper.customImageIcon(img: img),
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
      ),
    );
  }

  static customSearchBar({required TextEditingController controller, required FocusNode focusNode,}) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: Center(
        child: Container(
          height: 38,
          width: 360,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            border: Border.all(color: Color(0xffC5C5C5)),
          ),
          child: TextField(
            autofocus: false,
             focusNode: focusNode, // ✅ ADD THIS
  

            controller: controller,
            decoration: InputDecoration(
              hintText: "  e.g Nike Air Jordans",
              hintStyle: TextStyle(
                color: Colors.grey, // 👈 hint text color
                fontSize: 14,
              ),
              isDense: true, // 🔥 important
              contentPadding: EdgeInsets.symmetric(
                vertical: 12,
                horizontal: 16,
              ),

              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(9),
                borderSide: BorderSide(color: Colors.grey.shade300, width: 1),
              ),

              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(9),
                borderSide: BorderSide(color: Colors.black, width: 1.5),
              ),

              suffixIcon: InkWell(
                onTap: () {
                  print("Mic clicked");
                },
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: UiHelper.customImageIcon(img: "Search 2.png"),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
