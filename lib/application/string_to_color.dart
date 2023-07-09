import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'string_to_color.g.dart';


//Business logic to convert string to color, I've purposely given the wrong values for some of the colors to show that it would
//default back to the color black.

@riverpod
Color getColor(GetColorRef ref, String colorString) {
  switch (colorString) {
    case 'Color(0xfff44336)':
      return Colors.red;
    case 'Color(0xff4caf50)':
      return Colors.green;
    case 'Color(0xff0000FF)':
      return Colors.blue;
    case 'Color(0xffffeb3b)':
      return Colors.yellow;
    case 'Color(0xffff9800)':
      return Colors.orange;
    case 'Color(0xff9c27b0)':
      return Colors.purple;

    default:
      return Colors.black;
  }
}
