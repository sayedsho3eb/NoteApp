import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/note_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/Widgets/colore_iteam.dart';
import 'package:note_app/views/constant.dart';

class EditeNoteColorsList extends StatefulWidget {
  const EditeNoteColorsList({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditeNoteColorsList> createState() => _ColorListViewState();
}

int currentIndex = 0;

class _ColorListViewState extends State<EditeNoteColorsList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemCount: kColorList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                BlocProvider.of<NotesCubit>(context).notes;
                widget.note.color = kColorList[index].toARGB32();
                setState(() {});
              },
              child: ColorIteam(
                isActive: currentIndex == index,
                color: kColorList[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
