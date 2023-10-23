import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // The pink circle with the person's image and name
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.pink,
                shape: BoxShape.circle,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // The blurred person's image
                  ClipOval(
                    child: Image.network(
                      'https://i.imgur.com/9w3jZyQ.jpg',
                      height: 200,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  // The name text
                  Text(
                    'مرحبا! اسمي أمل',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            // The year text
            const Text(
              '2020-2021',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            // The grid of buttons
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                padding:const  EdgeInsets.all(16),
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                children: [
                  // The first button
                  ElevatedButton.icon(
                    onPressed: () {
                      // TODO: Handle the button press
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    icon: const Icon(Icons.school),
                    label: const Text('التعليم الإلكتروني'),
                  ),
                  // The second button
                  ElevatedButton.icon(
                    onPressed: () {
                      // TODO: Handle the button press
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    icon:const  Icon(Icons.accessible),
                    label:const  Text('الخدمات الإلكترونية'),
                  ),
                  // The third button
                  ElevatedButton.icon(
                    onPressed: () {
                      // TODO: Handle the button press
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    icon: Icon(Icons.apartment),
                    label: Text('20 مباني جامعية'),
                  ),
                  // TODO: Add the remaining buttons
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Te extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}

void main(List<String> args) {
  runApp(Te());
}
