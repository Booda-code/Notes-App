import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_button.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          children: [
            CustomAppBar(title: 'Edit Note', icon: Icon(Icons.done, size: 30)),
            SizedBox(height: 16),
            CustomTextButton(hintText: 'Title', vertical: 20),
            SizedBox(height: 10),
            CustomTextButton(hintText: 'Content', vertical: 80),
          ],
        ),
      ),)),
    );
  }
}
