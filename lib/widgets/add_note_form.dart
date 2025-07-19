import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';

import '../cubits/add_note_cubit/add_note_states.dart';
import '../models/note_model.dart';
import 'custom_button.dart';
import 'custom_text_button.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(height: 28),
          CustomTextButton(
            onSaved: (value) {
              title = value;
            },
            hintText: 'Title',
            vertical: 20,
          ),
          SizedBox(height: 8),
          CustomTextButton(
            onSaved: (value) {
              subTitle = value;
            },
            hintText: 'Content',
            vertical: 80,
          ),
          SizedBox(height: 50),
          BlocBuilder<AddNoteCubit, AddNoteStates>(
            builder: (context, state){
              return CustomButton(
                isLoading: state is AddNoteLoading ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();

                    var noteModel = NoteModel(
                      title: title!, subTitle: subTitle!, date: DateTime.now().toString(),);
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }
}