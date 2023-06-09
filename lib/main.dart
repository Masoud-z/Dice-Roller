import 'package:flutter/material.dart';

import 'package:first_learning_app/grandiant_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: GradiantContainer(
          Colors.deepPurple,
          Colors.indigo,
          colors:[
            Color.fromARGB(255, 33, 5, 109),
            Color.fromARGB(255, 68, 21, 149),
          ],
        ),
      ),
    ),
  );
}
