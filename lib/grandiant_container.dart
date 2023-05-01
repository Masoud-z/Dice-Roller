import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradiantContainer extends StatelessWidget {
  GradiantContainer(this.color1, this.color2,
      {super.key, required this.colors});

  GradiantContainer.purple({super.key, required this.colors})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;

  final List<Color> colors;
  final Color color1;
  final Color color2;

  var activeDiceImage = 'assets/images/dice2.png';

  void rollDice() {
    activeDiceImage = 'assets/images/dice4.png';
  }

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
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              activeDiceImage,
              width: 200,
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton(
                onPressed: rollDice,
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(fontSize: 28),
                ),
                child: const Text('Roll the Dice!')),
          ],
        ),
      ),
    );
  }
}
