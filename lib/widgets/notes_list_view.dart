import 'package:flutter/material.dart';

import 'notes_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  final data = const [
    Colors.orange,
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.blue,
    Colors.purple,
    Colors.pink,
    Colors.brown,
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return NotesItem(color: data[index % data.length]);
        },
      ),
    );
  }
}
