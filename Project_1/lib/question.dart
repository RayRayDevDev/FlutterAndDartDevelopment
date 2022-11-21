import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String
      questionText; //Final to prevent unintended changes inside the variable.
  Question(
      this.questionText); //Question widget changed and is therefore rebuilt.
  @override
  Widget build(BuildContext context) {
    return Container(
        //Container takes the entire width of the device and then, using the double.infinity, centers it no matter the screen size.
        width: double.infinity,
        //Padding, border.
        margin: EdgeInsets.all(10),
        //Space between container and neighbouring elements.
        child: Text(
          questionText,
          style: TextStyle(fontSize: 28, color: Colors.white),
          textAlign:
              TextAlign.center, //Assigns labels to an enum to make life easier.
        ));
  }
}
