import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text('Ako App'),
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.wallet), label: 'Events'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Community'),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_2_rounded), label: 'Profile'),
      ]),
    );
  }
}
