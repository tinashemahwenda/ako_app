import 'package:ako_app/components/bannerCard.dart';
import 'package:flutter/material.dart';

class readingPage extends StatelessWidget {
  const readingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 10,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(
                    Icons.arrow_back,
                    color: Colors.pinkAccent,
                  ),
                  Icon(
                    Icons.settings,
                    color: Colors.pinkAccent,
                  ),
                ],
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(70),
                    child: Container(
                      width: 130,
                      height: 130,
                      color: Colors.indigo,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(70),
                    child: Container(
                      width: 125,
                      height: 125,
                      color: Colors.white,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: Container(
                      width: 118,
                      height: 118,
                      color: Colors.grey,
                      child: const Icon(
                        Icons.book_rounded,
                        size: 50,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Reading',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.star,
                    size: 10,
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    'Student',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 100,
                        height: 120,
                        color: Colors.purple[100],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 100,
                        height: 120,
                        color: Colors.purple[100],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 100,
                        height: 120,
                        color: Colors.purple[100],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 100,
                        height: 120,
                        color: Colors.purple[100],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 100,
                        height: 120,
                        color: Colors.purple[100],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 100,
                        height: 120,
                        color: Colors.purple[100],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Course Detail',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        color: Colors.indigo[200],
                        padding: const EdgeInsets.all(5),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.watch_later_outlined,
                              color: Colors.indigo,
                              size: 10,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '3 hours 20 min',
                              style: TextStyle(
                                color: Colors.indigo,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const lessonCard(),
              const SizedBox(
                height: 10,
              ),
              const lessonCard(),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
