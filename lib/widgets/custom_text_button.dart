import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.hintText,
    required this.vertical, this.onSaved, this.onChanged,
  });

  final String hintText;
  final double vertical;
  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'field is required';
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blueAccent),
        ),
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.blueAccent),
        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: vertical,
        ),
      ),
    );
  }
}
