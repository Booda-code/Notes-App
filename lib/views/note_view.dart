import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/widgets/add_note_bottom_sheet.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: ()
      {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context, builder: (context) {
          return AddNoteBottomSheet();
        },);
      },
          child: Icon(Icons.add)),
      body: NotesViewBody(),
    );
  }
}
