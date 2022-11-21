import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback
      selectHandler; //Out of date: 'Function' does not work on its own anymore as needs to be assigned to the parameter type of 'void function()'.
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black, //error when in ElevatedButton.
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () => selectHandler,
          child: Text(answerText, style: TextStyle(color: Colors.white)),
          style: ElevatedButton.styleFrom(primary: Colors.red),
        )); //RaisedButton Depreciated. //Anonymous function for calling once.,);
  }
}
