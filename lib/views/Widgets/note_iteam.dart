import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteIteam extends StatelessWidget {
  const NoteIteam({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.only(top: 12, right: 8, left: 8, bottom: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.amberAccent,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              'Flutter Course',
              style: TextStyle(fontSize: 38, color: Colors.black),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                'Learn Flutter With sayed shoieb Learn Flutter With sayed shoieb Learn Flutter With sayed shoieb Learn Flutter With sayed shoieb',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.black),
              ),
            ),

            trailing: FaIcon(FontAwesomeIcons.trash, color: Colors.black),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Text(
              '29 july 2026',
              style: TextStyle(fontSize: 12, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
