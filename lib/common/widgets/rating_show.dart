import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:kickers/utils/constants/colors.dart';

class StarRatingWidget extends StatefulWidget {
  final double rating;
  final int starCount;
  final double starSize;
  final ValueChanged<double>? onRatingChanged;
  final bool showRatingText; // Add kiya
  final TextStyle? ratingTextStyle; 

  const StarRatingWidget({
    super.key,
    required this.rating,
    this.starCount = 5,
    this.starSize = 24,
    this.onRatingChanged,
    this.showRatingText = false, // default false
    this.ratingTextStyle,
  });

  @override
  State<StarRatingWidget> createState() => _StarRatingWidgetState();
}

class _StarRatingWidgetState extends State<StarRatingWidget> {
  late double currentRating;

  @override
  void initState() {
    super.initState();
    currentRating = widget.rating;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RatingBar.builder(
          initialRating: currentRating,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: false,
          itemCount: widget.starCount,
          itemSize: widget.starSize,
          itemPadding: const EdgeInsets.symmetric(horizontal: 0),
          itemBuilder: (context, _) =>
              const Icon(Icons.star, color: Colors.amber),
          onRatingUpdate: (rating) {
            setState(() {
              currentRating = rating;
            });
            if (widget.onRatingChanged != null) {
              widget.onRatingChanged!(rating);
            }
          },
        ),
        if (widget.showRatingText) // Sirf agar true ho
          Padding(
            padding: const EdgeInsets.only(left: 4),
            child: Text(
              currentRating.toStringAsFixed(1), // rating text
              style:
                  widget.ratingTextStyle ??
                  TextStyle(color: uicolors.secondarygrey, fontSize: 5),
            ),
          ),
      ],
    );
  }
}
