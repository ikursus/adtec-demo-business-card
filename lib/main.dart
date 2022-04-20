import 'package:flutter/material.dart';
import 'package:business_card/about-me.dart';
import 'package:business_card/contact-me.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyHome());
}

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Business Card',
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[500],
      appBar: AppBar(
        title: const Center(child: Text('Business Card Amirol')),
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    backgroundImage:
                        //NetworkImage('https://picsum.photos/500/500'),
                        AssetImage('assets/images/gambar-avatar.jpg'),
                    radius: 70.0,
                  ),
                  const Text(
                    'Amirol Zolkifli',
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'Web Developer',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    width: 200.0,
                    height: 20.0,
                    child: Divider(
                      color: Colors.white,
                    ),
                  ),
                  const Card(
                    color: Colors.white,
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: ListTile(
                      title: Text('014-6333569'),
                      leading: Icon(Icons.phone),
                    ),
                  ),
                  Link(
                    target: LinkTarget.blank,
                    uri: Uri.parse('https://www.amirolzolkifli.com'),
                    builder: (context, followLink) => GestureDetector(
                      child: const Card(
                        color: Colors.white,
                        margin: EdgeInsets.symmetric(vertical: 10),
                        child: ListTile(
                          title: Text('www.amirolzolkifli.com'),
                          leading: Icon(Icons.web),
                        ),
                      ),
                      onTap: followLink,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                    ),
                    child: ElevatedButton(
                      child: const Text(
                        'About Me',
                        style: TextStyle(fontSize: 18.5),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        minimumSize: const Size.fromHeight(50),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PageAboutMe()),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                    ),
                    child: ElevatedButton(
                      child: const Text(
                        'Contact Me',
                        style: TextStyle(fontSize: 18.5),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue[800],
                        minimumSize: const Size.fromHeight(50),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PageContactMe()),
                        );
                      },
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 30,
                    ),
                    child: Image(
                      image: NetworkImage('https://picsum.photos/500/500'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
