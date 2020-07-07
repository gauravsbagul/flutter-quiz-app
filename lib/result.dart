import 'package:flutter/material.dart';

import 'answer.dart';

class Result extends StatelessWidget {
  final Function resetQuestion;
  final int resultScore;

  Result({@required this.resetQuestion, this.resultScore});

  String get resultPhrase {
    var resultText = 'You did it, your score is $resultScore';

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Center(
            child: Text(
              resultPhrase,
              style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.black45),
              textAlign: TextAlign.center,
            ),
          ),
          Answer(resetQuestion, 'Reset questions'),
        ],
      ),
    );
  }
}
