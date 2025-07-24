import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_button.dart';

import '../cubits/notes_cubit/notes_cubit.dart';
import '../models/note_model.dart';

class EditNoteView extends StatefulWidget {
  const EditNoteView({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              children: [
                CustomAppBar(
                  title: 'Edit Note',
                  icon: Icon(Icons.done, size: 30),
                  onPressed: () {
                    widget.note.title = title ?? widget.note.title;
                    widget.note.subTitle = content ?? widget.note.subTitle;
                    widget.note.save();
                    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                    Navigator.pop(context);
                  },
                ),
                SizedBox(height: 16),
                CustomTextButton(
                  onChanged: (value) {
                    title = value;
                  },
                  hintText: widget.note.title,
                  vertical: 20,
                ),
                SizedBox(height: 10),
                CustomTextButton(
                  onChanged: (value) {
                    content = value;
                  },
                  hintText: widget.note.subTitle,
                  vertical: 80,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
