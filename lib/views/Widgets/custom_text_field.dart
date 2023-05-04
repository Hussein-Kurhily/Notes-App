import 'package:flutter/material.dart';

import '../../constant/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key,required this.hintText, required this.maxLines }) : super(key: key);
  final String hintText;
  final int maxLines ;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      cursorWidth: 1.2,
      maxLines: maxLines,
      decoration:InputDecoration(
        border: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
        enabledBorder: buildBorder(Colors.white),
        hintText: hintText,

        hintStyle:const TextStyle(
          color: kPrimaryColor,
        ),
      ),
    );
  }
}
OutlineInputBorder buildBorder ([color]) {
  return OutlineInputBorder (
  borderRadius: BorderRadius.circular(16),
  borderSide: BorderSide(color: color ?? kPrimaryColor)
) ;
}