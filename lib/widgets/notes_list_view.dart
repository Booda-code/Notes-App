import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/models/note_model.dart';

import '../cubits/notes_cubit/notes_cubit.dart';
import '../cubits/notes_cubit/notes_states.dart';
import 'note_item.dart';

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
    return BlocBuilder<NotesCubit, NotesStates>(
      builder: (context, state) {

        List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes!;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
            itemCount: notes.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return NoteItem(
                  note: notes[index]
                  ,color: data[index % data.length]);
            },
          ),
        );
      },
    );
  }
}
