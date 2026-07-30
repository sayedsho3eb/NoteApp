import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.tileAppBar,
    required this.iconeAppBar,
    required this.onPresses,
  });
  final String tileAppBar;
  final IconData iconeAppBar;
  final VoidCallback onPresses;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('Notes App', style: TextStyle(fontSize: 24)),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.white.withAlpha(20),
            borderRadius: BorderRadius.circular(16),
          ),
          child: IconButton(
            onPressed: onPresses,
            icon: Icon(size: 28, iconeAppBar),
          ),
        ),
      ],
    );
  }
}
