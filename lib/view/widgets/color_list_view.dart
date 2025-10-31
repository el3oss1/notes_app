import 'package:flutter/cupertino.dart';

import 'color_item.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;
  List<Color> colors = [
    // Light mode friendly (pastel)
    Color(0xFFE3F2FD), // Light Blue
    Color(0xFFFFF3E0), // Light Orange
    Color(0xFFE8F5E9), // Light Green
    Color(0xFFF3E5F5), // Light Purple
    Color(0xFFFFEBEE), // Light Pink
    Color(0xFFE0F2F1), // Light Teal
    Color(0xFFFFF8E1), // Light Yellow
    // Dark mode friendly (darker shades)
    Color(0xFF2C3E50), // Dark Blue
    Color(0xFF37474F), // Dark Blue Grey
    Color(0xFF424242), // Dark Grey
    Color(0xFF4A235A), // Dark Purple
    Color(0xFF0D3B2A), // Dark Green
    Color(0xFF5D2C2C), // Dark Red
    Color(0xFF263238), // Very Dark Blue
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = index;
                });
              },
              child: ColorItem(
                  colors: colors[index],
                  isChoosed: currentIndex == index),
            ),
          );
        },
      ),
    );
  }
}
