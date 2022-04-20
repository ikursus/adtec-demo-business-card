import 'package:flutter/material.dart';

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
              padding: const EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircleAvatar(
                    backgroundImage:
                        NetworkImage('https://picsum.photos/500/500'),
                    radius: 70.0,
                  ),
                  Text(
                    'Amirol Zolkifli',
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Web Developer',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 200.0,
                    height: 20.0,
                    child: Divider(
                      color: Colors.white,
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                    child: ListTile(
                      title: Text('014-6333569'),
                      leading: Icon(Icons.phone),
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
