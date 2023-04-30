import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: GradiantContainer(),
      ),
    ),
  );
}

class GradiantContainer extends StatelessWidget {
  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 26, 2, 80),
            Color.fromARGB(255, 45, 7, 98),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: Text(
          'This is my first app',
          style: TextStyle(color: Colors.white, fontSize: 28),
        ),
      ),
    );
  }
}
