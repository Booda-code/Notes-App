import 'package:flutter/material.dart';
import 'custom_text_button.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        spacing: 8,
        children: [
          SizedBox(height: 28),
          CustomTextButton(hintText: 'Title',vertical: 20,),
          SizedBox(height: 8),
          CustomTextButton(hintText: 'Content', vertical: 80),
          SizedBox(height: 50),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(16),
            ),
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Add Note',
                style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
