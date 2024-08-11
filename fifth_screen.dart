import 'package:flutter/material.dart';

class FifthScreen extends StatelessWidget {
  const FifthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ideas to Implement'),
        backgroundColor: Color.fromARGB(255, 83, 83, 81),
      ),
      body: Stack(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildParagraph(
                    'Technology and software',
                    'You can create a voice recording app that works underground 24/7 OR you can create a personal assistance AI with emotions to check/act  not only respond/react',
                  ),
                  const SizedBox(height: 20),
                  _buildParagraph(
                    'Science and Engineering',
                    'You can manufacture body lotions that can clean the body so that bathing should be optional kkk. OR  you can create potable chairs to fit in a hand bag',
                  ),
                  const SizedBox(height: 20),
                  _buildParagraph(
                    'Business and Entrepreneurship',
                    'You can create a page that provide interface between businesses OR You can create a site for people to exchange goods or money for a fee',
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 16.0,
            left: 16.0,
            child: ElevatedButton(
              onPressed: () {
                Navigator.popUntil(context, ModalRoute.withName('/'));
              },
              child: const Text('Go to Home Screen'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildParagraph(String heading, String text) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          heading,
          style: const TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8.0),
        Text(
          text,
          style: const TextStyle(fontSize: 16.0),
        ),
      ],
    );
  }
}
