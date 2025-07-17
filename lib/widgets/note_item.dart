import 'package:flutter/material.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  final Color color;

  const NoteItem({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return EditNoteView();
          },));
        },
        child: Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(
                  'Flutter Tips',
                  style: TextStyle(fontSize: 26,color: Colors.black),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text(
                    'Build your carer app using Flutter',
                    style: TextStyle(fontSize: 20,color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                trailing: Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 30,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Text('May21, 2022',style: TextStyle(color: Colors.black.withOpacity(0.6)),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
