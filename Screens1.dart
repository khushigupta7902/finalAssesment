import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const Coding(
            title: 'TRANNING',
          ),
      '/second': (context) => Second(),
      '/third': (context) => const Third(),
    },
  )); //MaterialApp
}

// function to trigger build when the app is run

class Coding extends StatelessWidget {
  const Coding({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, "/Second");
          },
          child: const Text("Get Started"),
        ),
      ),
    );
  }
}