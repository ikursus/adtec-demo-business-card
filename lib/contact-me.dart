import 'package:flutter/material.dart';
import 'package:business_card/main.dart';

class PageContactMe extends StatelessWidget {
  const PageContactMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Me'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'My Account',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_phone),
            label: 'Contact',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.orange[900],
        unselectedItemColor: Colors.black38,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: 'Ini ayat pertama.',
                    style: TextStyle(color: Colors.red),
                  ),
                  TextSpan(
                    text: 'Ini ayat kedua.',
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                  TextSpan(text: 'Ini ayat yang ketiga.'),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate back to first route when tapped.
                Navigator.pop(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHome()),
                );
              },
              child: const Text('Go back!'),
            ),
          ],
        ),
      ),
    );
  }
}
