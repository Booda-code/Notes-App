import 'package:flutter/material.dart';

import 'notes_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});
final data = const [];
  @override
  Widget build(BuildContext context) {
   return Expanded(
      child: ListView.builder(itemBuilder: (context, index) {
        return NotesItem();
      }),
    );
  }
}
