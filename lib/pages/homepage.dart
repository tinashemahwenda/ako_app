import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  final List<Widget> _screens = [
    const Home(),
    const Center(
      child: Text('Ako Events'),
    ),
    const Center(
      child: Text('Ako Add'),
    ),
    const Center(
      child: Text('Ako Community'),
    ),
    const Center(
      child: Text('Ako Profile'),
    ),
  ];
  int _currentIndex = 0;

  void _currentIndexSelector(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.white,
          backgroundColor: Colors.pink,
          elevation: 0,
          unselectedItemColor: Colors.white,
          currentIndex: _currentIndex,
          onTap: _currentIndexSelector,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.wallet), label: 'Events'),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.search), label: 'Community'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2_rounded), label: 'Profile'),
          ]),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Center(
          child: Text('Ako Me'),
        )
      ],
    );
  }
}
