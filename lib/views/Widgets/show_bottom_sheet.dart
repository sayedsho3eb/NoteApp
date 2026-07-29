import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/views/Widgets/custom_text_field.dart';
import 'package:note_app/views/Widgets/cuton_button.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomTextField(hintText: 'Title'),
              SizedBox(height: 16),
              CustomTextField(hintText: 'contant', maxLine: 5),
              SizedBox(height: 100),
              CustomButton(ontap: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
