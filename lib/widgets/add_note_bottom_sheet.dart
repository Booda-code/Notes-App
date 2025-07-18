import 'package:flutter/material.dart';
import 'custom_button.dart';
import 'custom_text_button.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(padding: EdgeInsets.all(8.0), child: AddNoteForm());
  }
}

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
        spacing: 8,
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
          CustomButton(
            onTap: (){
              if (formKey.currentState!.validate())
              {
                formKey.currentState!.save();
              } else{
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
        ],
      ),
    );
  }
}

