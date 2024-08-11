import 'package:flutter/material.dart';
import 'first_screen.dart';
import 'second_screen.dart';
import 'third_screen.dart';
import 'fourth_screen.dart';
import 'fifth_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reshma',
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 161, 161, 160),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/first': (context) => const FirstScreen(),
        '/second': (context) => const SecondScreen(),
        '/third': (context) => const ThirdScreen(),
        '/fourth': (context) => const FourthScreen(),
        '/fifth': (context) => const FifthScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome You all! Sign up first'),
        backgroundColor: Color.fromARGB(255, 83, 83, 81),
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_forward),
            color: const Color.fromARGB(255, 10, 10, 10),
            onPressed: () {
              Navigator.pushNamed(context, '/first');
            },
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                radius: 50,
                backgroundColor: Color.fromARGB(255, 0, 7, 12),
                child: Icon(
                  Icons.person,
                  size: 100,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.horizontal(
                    left: Radius.circular(30),
                    right: Radius.circular(30),
                  ),
                  border: Border.all(color: Colors.grey),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.horizontal(
                    left: Radius.circular(20),
                    right: Radius.circular(30),
                  ),
                  border: Border.all(color: Colors.grey),
                ),
                child: TextField(
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: InputBorder.none,
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/first');
                },
                style: ElevatedButton.styleFrom(),
                child: const Text(
                  'Login',
                  style: TextStyle(
                    color: Color.fromARGB(255, 12, 9, 9),
                  ),
                ),
              ),
              const SizedBox(height: 17),
              const Text(
                'Forgot your password?',
                style: TextStyle(
                  color: Color.fromARGB(255, 10, 10, 10),
                ),
              ),
              const SizedBox(height: 17),
              const Text(
                'Not a member? Sign up now',
                style: TextStyle(
                  color: Color.fromARGB(255, 10, 10, 10),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
