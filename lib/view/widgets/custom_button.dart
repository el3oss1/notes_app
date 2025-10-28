import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.hint});
 final String hint;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: kPrimaryColor,
      ),
      child: Center(
        child: Text(
          hint,
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
