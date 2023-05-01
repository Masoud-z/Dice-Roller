import 'package:flutter/material.dart';

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
      child: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/images/dice2.png',
              width: 200,
            ),
            
          ],
        ),
      ),
    );
  }
}
