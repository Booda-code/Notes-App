import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key, required this.hintText, required this.vertical,
  });
  final String hintText;
  final double vertical;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blueAccent)),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.blueAccent),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: vertical,
          )),
    );
  }
}
