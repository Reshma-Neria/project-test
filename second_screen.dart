import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello Music Lovers!!'),
        backgroundColor: Color.fromARGB(255, 83, 83, 81),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'We will only recommend artists!',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildParagraph(
                        'Pop',
                        'Taylor Swift, Adele, Lady Gaga, Rihanna, Ed Sheeran, Madonna, Bruno Mars....',
                      ),
                      _buildParagraph(
                        'Hip-Hop',
                        'Eminem, Kendrick Lamar, Drake, Gwamba, Nicki Minaj, Snoop Dogg, J. Cole..',
                      ),
                      _buildParagraph(
                        'RnB',
                        'SZA, Alan Walker, The Weeknd, Kehlani, Khalid, Miguel, Mary J. Blige, Giveon, Alicia Keys..',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 16.0,
            right: 16.0,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/third');
              },
              child: const Text('Great places'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildParagraph(String heading, String text) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        elevation: 4.0,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
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
                style: const TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
