import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  int finalScore = 0;

  String get finalScoreSt {
    String resultText;
    if (finalScore <= 8) {
      resultText = "You're awesome and innocent!";
    } else if (finalScore <= 12) {
      resultText = "You're fairly likeable...";
    } else if (finalScore <= 16) {
      resultText = "You're...kinda strange, ngl...";
    } else {
      resultText = "Yikes...";
    }
    return resultText;
  }

  Result(this.finalScore);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(finalScoreSt,
            style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold)));
  }
}
