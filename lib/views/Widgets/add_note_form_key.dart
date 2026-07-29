import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/Widgets/custom_button.dart';
import 'package:note_app/views/Widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
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
            BlocBuilder<AddNoteCubit, AddNoteState>(
              builder: (context, state) {
                return CustomButton(
                  isLoading: state is AddNoteLoaded ? true : false,
                  ontap: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      String dateFormated = DateFormat(
                        'yyy-mm-dd',
                      ).format(DateTime.now());
                      var notmodel = NoteModel(
                        title: title!,
                        contant: contant!,

                        date: dateFormated,
                        color: Colors.blue.toARGB32(),
                      );
                      BlocProvider.of<AddNoteCubit>(
                        context,
                      ).addNote(note: notmodel);
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                    }
                  },
                );
              },
            ),
            SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
