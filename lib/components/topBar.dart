import 'package:flutter/material.dart';

class topBar extends StatelessWidget {
  const topBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.pinkAccent,
            ),
            child: const Icon(
              Icons.menu,
              color: Colors.white,
              size: 12,
            )),
        const Icon(Icons.person_2),
      ],
    );
  }
}
