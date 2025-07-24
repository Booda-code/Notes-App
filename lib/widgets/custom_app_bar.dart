import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon, this.onPressed});
final String title;
final Icon icon;
final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
      ),
      actions: [
        IconButton(onPressed: onPressed, icon: icon),
      ],
    );
  }
}
