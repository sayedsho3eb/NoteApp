import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.maxLine = 1,
    this.onSaved,
  });
  final Function(String?)? onSaved;
  final String hintText;
  final int maxLine;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLine,
      onSaved: onSaved,
      validator: (Value) {
        if (Value?.isEmpty ?? true) {
          return 'Field is required';
        } else {
          return null;
        }
      },

      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.white),
        focusedBorder: buildBorder(),
        border: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Colors.white),
    );
  }
}
