import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubits/add_note_cubit/add_note_cubit.dart';
import '../cubits/add_note_cubit/add_note_states.dart';
import 'add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=> AddNoteCubit(),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: BlocConsumer<AddNoteCubit, AddNoteStates>(
          listener: (context, state) {
            if (state is AddNoteFailure) {
              print('failed ${state.errorMessage}');
            }
            if (state is AddNoteSuccess) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return AbsorbPointer(
                absorbing: state is AddNoteLoading ? true : false,
                child: AddNoteForm());
          },
        ),
      ),
    );
  }
}
