
import 'package:flutter/material.dart';


class ColorPicker extends StatelessWidget {

  final bool outerBorder;
  final Color color;
  ColorPicker(this.color, this.outerBorder);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: outerBorder? Border.all(color: color, width: 3): null,
      ),
      child: Container(
        padding: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle
        ),
      ),
    );
  }
}
