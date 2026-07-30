import 'package:flutter/material.dart';
import 'package:note_app/views/Widgets/custom_app_bar.dart';
import 'package:note_app/views/Widgets/notes_list_view.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 35),
        CustomAppBar(
          onPresses: () {},
          tileAppBar: 'Notes App',
          iconeAppBar: Icons.search,
        ),
        const Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: NotesListView(),
          ),
        ),
      ],
    );
  }
}
