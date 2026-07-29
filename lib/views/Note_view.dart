import 'package:flutter/material.dart';
import 'package:note_app/views/Widgets/note_view_body.dart';
import 'package:note_app/views/Widgets/show_bottom_sheet.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});
  static String id = 'Note View';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return AddNoteBottomSheet();
            },
          );
        },
        backgroundColor: Colors.blueAccent,
        child: Icon(Icons.add, color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: NoteViewBody(),
      ),
    );
  }
}
