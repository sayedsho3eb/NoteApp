import 'package:flutter/material.dart';
import 'package:note_app/views/Widgets/custom_text_field.dart';
import 'package:note_app/views/Widgets/cuton_button.dart';

class ShowBottomSheet extends StatelessWidget {
  const ShowBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
