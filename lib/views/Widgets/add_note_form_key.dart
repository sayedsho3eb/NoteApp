
import 'package:flutter/material.dart';
import 'package:note_app/views/Widgets/custom_text_field.dart';
import 'package:note_app/views/Widgets/cuton_button.dart';

class AddNoteFormKey extends StatefulWidget {
  const AddNoteFormKey({
    super.key,
  });

  @override
  State<AddNoteFormKey> createState() => _AddNoteFormKeyState();
}

class _AddNoteFormKeyState extends State<AddNoteFormKey> {
    final GlobalKey<FormState> formKey = GlobalKey();
  String? title, contant;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextFormField(
              onSaved: (data) {
                title = data;
              },
              hintText: 'Title',
            ),
            SizedBox(height: 16),
            CustomTextFormField(
              onSaved: (data) {
                contant = data;
              },
              hintText: 'contant',
              maxLine: 5,
            ),
            SizedBox(height: 100),
            CustomButton(
              ontap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  Navigator.pop(context);
                } else {
                  autovalidateMode = AutovalidateMode.always;
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
