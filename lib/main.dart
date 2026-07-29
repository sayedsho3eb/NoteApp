import 'package:flutter/material.dart';
import 'package:note_app/views/note_view.dart';
import 'package:note_app/views/note_edite_view.dart';

void main() {
  runApp(NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        NoteView.id :(context) => NoteView(),
        NoteEditeView.id :(context) => NoteEditeView(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      initialRoute: NoteView.id,
    );
  }
}
