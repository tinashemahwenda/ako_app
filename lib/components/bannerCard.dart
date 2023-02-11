import 'package:flutter/material.dart';

class bannerCard extends StatelessWidget {
  const bannerCard({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    Color DimBlue = const Color.fromARGB(255, 5, 14, 51);
    return Container(
      width: width,
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: DimBlue,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Start Learning',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
          const Text(
            'New Student!',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            width: 120,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Categories',
                  style: TextStyle(
                    color: Colors.pink,
                  ),
                ),
                Icon(
                  Icons.arrow_right_alt,
                  color: Colors.pink,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class lessonCard extends StatelessWidget {
  const lessonCard({super.key});

  @override
  Widget build(BuildContext context) {
    Color DimBlue = const Color.fromARGB(255, 5, 14, 51);
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: DimBlue,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.all(10),
                child: const Icon(Icons.headphones),
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Listening',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '10 hours, 19 lessons',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              const Text('25%'),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: const Icon(
                  Icons.play_arrow,
                  size: 14,
                  color: Colors.green,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
