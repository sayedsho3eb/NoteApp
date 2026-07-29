import 'package:flutter/material.dart';
import 'package:note_app/views/Widgets/custom_app_bar.dart';
import 'package:note_app/views/Widgets/custom_text_field.dart';

class NoteEditeViewBody extends StatelessWidget {
  const NoteEditeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 35),

        CustomAppBar(
          onPresses: () {
            Navigator.pop(context);
          },
          tileAppBar: 'Edite Note',
          iconeAppBar: Icons.check,
        ),
        SizedBox(height: 16),
        CustomTextFormField(hintText: 'title'),
        SizedBox(height: 32),
        CustomTextFormField(hintText: 'contant', maxLine: 5),
      ],
    );
  }
}
