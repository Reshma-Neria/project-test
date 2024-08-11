import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('What do you like?'),
        backgroundColor: Color.fromARGB(255, 83, 83, 81),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Please select your preferences, we got recommendations for you:',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            Table(
              border: TableBorder.all(),
              columnWidths: const {
                0: FixedColumnWidth(150.0),
                1: FixedColumnWidth(150.0),
              },
              children: [
                TableRow(children: [
                  Container(
                    height: 200.0,
                    padding: const EdgeInsets.all(8.0),
                    child: const Center(
                      child: Text('Listening to Music',
                          textAlign: TextAlign.center),
                    ),
                  ),
                  Container(
                    height: 200.0,
                    padding: const EdgeInsets.all(8.0),
                    child: const Center(
                      child: Text('Travelling and Exploring new places',
                          textAlign: TextAlign.center),
                    ),
                  ),
                ]),
                TableRow(children: [
                  Container(
                    height: 200.0,
                    padding: const EdgeInsets.all(8.0),
                    child: const Center(
                      child: Text('Watching Movies and Series',
                          textAlign: TextAlign.center),
                    ),
                  ),
                  Container(
                    height: 200.0,
                    padding: const EdgeInsets.all(8.0),
                    child: const Center(
                      child: Text('Creating new things',
                          textAlign: TextAlign.center),
                    ),
                  ),
                ]),
              ],
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/second');
                  },
                  child: const Text('Music'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
