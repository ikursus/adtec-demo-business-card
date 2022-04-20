import 'package:flutter/material.dart';
import 'package:business_card/main.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class PageAboutMe extends StatelessWidget {
  const PageAboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Me'),
      ),
      body: Center(
        child: Column(
          children: [
            Link(
              target: LinkTarget.blank,
              uri: Uri.parse('https://amirolzolkifli.com'),
              builder: (context, followLink) => MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: followLink,
                  child: const Text('Click Me'),
                ),
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
