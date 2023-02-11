import 'package:ako_app/components/bannerCard.dart';
import 'package:ako_app/components/searchBar.dart';
import 'package:ako_app/components/topBar.dart';
import 'package:ako_app/pages/readingPage.dart';
import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  final List<Widget> _screens = [
    const Home(),
    const readingPage(),
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
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    Color DimBlue = const Color.fromARGB(255, 5, 14, 51);
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 10.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(
                height: 18,
              ),
              topBar(),
              SizedBox(
                height: 30,
              ),
              Text(
                'Welcome back',
                style: TextStyle(
                  color: Color.fromARGB(255, 5, 14, 51),
                  fontFamily: 'OpenSans',
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              Text(
                'Saymon!',
                style: TextStyle(
                  color: Color.fromARGB(255, 5, 14, 51),
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              searchBar(),
              SizedBox(
                height: 20,
              ),
              bannerCard(),
              SizedBox(
                height: 10,
              ),
              Text(
                'Classes in Progress',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 5, 14, 51),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              lessonCard(),
              SizedBox(
                height: 10,
              ),
              lessonCard(),
            ],
          ),
        ),
      ),
    );
  }
}
