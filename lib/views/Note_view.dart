import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/note_cubit/note_cubit.dart';
import 'package:note_app/views/Widgets/add_not_bottom_sheet.dart';
import 'package:note_app/views/Widgets/note_view_body.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});
  static String id = 'Note View';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NoteCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
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
      ),
    );
  }
}
