import 'package:flutter/material.dart';
import 'package:note_app/views/Widgets/note_edite_view_body.dart';

class NoteEditeView extends StatelessWidget {
  const NoteEditeView({super.key});
  static String id = 'Note Edite';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: NoteEditeViewBody(),
      ),
    );
  }
}
