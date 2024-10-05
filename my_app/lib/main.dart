import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RizwanDesign(),
    );
  }
}

class RizwanDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Title at the top
            const Text(
              'LAB # 3',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),

            // Image with colored background
            Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  'https://images.unsplash.com/photo-1527284503307-3f4e37e3656b',
                  width: 150,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Stacked squares
            Stack(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
                Positioned(
                  top: 20,
                  left: 20,
                  child: Container(
                    width: 60,
                    height: 60,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Vertical number list
            Container(
              color: Colors.red,
              width: 60,
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('1',
                      style: TextStyle(fontSize: 24, color: Colors.white)),
                  Text('2',
                      style: TextStyle(fontSize: 24, color: Colors.white)),
                  Text('3',
                      style: TextStyle(fontSize: 24, color: Colors.white)),
                  Text('4',
                      style: TextStyle(fontSize: 24, color: Colors.white)),
                  Text('5',
                      style: TextStyle(fontSize: 24, color: Colors.white)),
                  Text('6',
                      style: TextStyle(fontSize: 24, color: Colors.white)),
                  Text('7',
                      style: TextStyle(fontSize: 24, color: Colors.white)),
                  Text('8',
                      style: TextStyle(fontSize: 24, color: Colors.white)),
                  Text('9',
                      style: TextStyle(fontSize: 24, color: Colors.white)),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Practice text
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'PRACTICE MORE THEN THIS. IT WILL HELP YOU TO DESIGN COMPLEX MOBILE APP DESIGN',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Leading and trailing text with circle image
            Container(
              color: Colors.green,
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'LEADING',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ClipOval(
                    child: Image.network(
                      'https://images.unsplash.com/photo-1533613223968-94af0d9d377f',
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Text(
                    'TRAILING',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
