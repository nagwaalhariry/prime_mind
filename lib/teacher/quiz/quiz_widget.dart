import 'package:edu/teacher/quiz/quiz.dart';
import 'package:edu/teacher/quiz/quiz_details.dart';
import 'package:edu/themes.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatefulWidget {
  int index;

  QuizWidget(this.index, {super.key});

  @override
  State<QuizWidget> createState() => _QuizWidgetState();
}

class _QuizWidgetState extends State<QuizWidget> {

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(8),
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        border: Border.all(
          color: Themes.lightTheme.primaryColor,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Quiz ${widget.index}",style: Themes.lightTheme.textTheme.displayLarge),
          Icon(Icons.arrow_forward_ios,color: Colors.black,),
        ],
      ),
    );
  }
}
