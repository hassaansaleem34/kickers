import 'package:flutter/material.dart';

class ColorSelector extends StatefulWidget {
  final List<Color> colors;
  final ValueChanged<Color>? onColorSelected;
  final double size;
  final double spacing;

  const ColorSelector({
    super.key,
    required this.colors,
    this.onColorSelected,
    this.size = 30,
    this.spacing = 10,
  });

  @override
  State<ColorSelector> createState() => _ColorSelectorState();
}

class _ColorSelectorState extends State<ColorSelector> {
  Color? selectedColor; // 🔵 selected color track karega

  @override
  Widget build(BuildContext context) {
    return Row(
      children: widget.colors.map((color) {
        final bool isSelected = selectedColor == color;

        return GestureDetector(
          onTap: () {
            setState(() {
              selectedColor = color;
            });
            if (widget.onColorSelected != null) {
              widget.onColorSelected!(color);
            }
          },
          child: Container(
            margin: EdgeInsets.only(right: widget.spacing),
            padding: const EdgeInsets.all(3), // 🔵 blue ring thickness
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: isSelected
                  ? Border.all(color: Colors.blue, width: 2)
                  : null,
            ),
            child: Container(
              width: widget.size,
              height: widget.size,
              decoration: BoxDecoration(
                color: color,
                shape: BoxShape.circle,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
