import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isChoosed, required this.colors});
  final bool isChoosed;
  final Color colors;     // Color to display


  @override
  Widget build(BuildContext context) {
    return isChoosed
        ?CircleAvatar(
          backgroundColor: Colors.white,
          radius: 36 /2,
          child: CircleAvatar(radius: 16, backgroundColor:colors),
        )
        :  CircleAvatar(radius: 16, backgroundColor: colors);
  }
}
