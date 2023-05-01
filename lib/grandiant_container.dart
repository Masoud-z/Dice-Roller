import 'package:flutter/material.dart';

import 'package:first_learning_app/styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradiantContainer extends StatelessWidget {
  const GradiantContainer(this.color1, this.color2,
      {super.key, required this.colors});

  const GradiantContainer.purple({super.key, required this.colors})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;

  final List<Color> colors;
  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: StyledText(
          "This is my first app",
          Colors.white,
          28,
        ),
      ),
    );
  }
}
