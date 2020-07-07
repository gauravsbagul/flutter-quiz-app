import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answer;
  final Function selectHandler;
  Answer(this.selectHandler, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        onPressed: selectHandler,
        child: Text(answer),
      ),
    );
  }
}
