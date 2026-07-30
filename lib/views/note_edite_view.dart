import 'package:flutter/material.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/Widgets/note_edite_view_body.dart';

class NoteEditeView extends StatelessWidget {
  const NoteEditeView({super.key, required this.note});
  static String id = 'Note Edite';
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: NoteEditeViewBody(note: note),
      ),
    );
  }
}
