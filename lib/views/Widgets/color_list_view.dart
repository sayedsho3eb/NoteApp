import 'package:flutter/material.dart';
import 'package:note_app/views/Widgets/colore_iteam.dart';
import 'package:note_app/views/constant.dart';

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

int currentIndex = 0;

class _ColorListViewState extends State<ColorListView> {
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
