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
