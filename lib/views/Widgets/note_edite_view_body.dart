import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/note_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/Widgets/custom_app_bar.dart';
import 'package:note_app/views/Widgets/custom_text_field.dart';
import 'package:note_app/views/Widgets/edite_note_colors_list.dart';

class NoteEditeViewBody extends StatefulWidget {
  const NoteEditeViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<NoteEditeViewBody> createState() => _NoteEditeViewBodyState();
}

class _NoteEditeViewBodyState extends State<NoteEditeViewBody> {
  String? title, contant;
  int? color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 35),

        CustomAppBar(
          onPresses: () {
            widget.note.title = title ?? widget.note.title;
            widget.note.contant = contant ?? widget.note.contant;
            widget.note.color = color ?? widget.note.color;
            widget.note.save();
            BlocProvider.of<NotesCubit>(context).fetchNote();
            Navigator.pop(context);
          },
          tileAppBar: 'Edite Note',
          iconeAppBar: Icons.check,
        ),
        const SizedBox(height: 16),
        CustomTextFormField(
          onChange: (data) {
            title = data;
          },
          hintText: widget.note.title,
        ),
        const SizedBox(height: 32),
        CustomTextFormField(
          onChange: (data) {
            contant = data;
          },
          hintText: widget.note.contant,
          maxLine: 5,
        ),
        const SizedBox(height: 50),
        EditeNoteColorsList(note: widget.note),
      ],
    );
  }
}
