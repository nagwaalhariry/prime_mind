import 'package:edu/teacher/quiz/question_widget.dart';
import 'package:flutter/material.dart';

import '../../navigations/bot_nav_bar.dart';
import '../../navigations/nav_drawer.dart';
import '../../themes.dart';

class QuizResult extends StatelessWidget {
  static const String routeName = 'quiz_result';
  const QuizResult({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as int?;
    final index = args ?? 0;
    return Scaffold(
        appBar: AppBar(
          title: Text("Quizzes"),
          titleTextStyle: Themes.lightTheme.appBarTheme.titleTextStyle,
          iconTheme: Themes.lightTheme.primaryIconTheme,
          backgroundColor: Themes.lightTheme.appBarTheme.backgroundColor,
        ),
        bottomNavigationBar: BotNavBar(),
        drawer: NavDrawer(),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 60,
                width: 150,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Themes.lightTheme.shadowColor,
                      offset: Offset(0, 8),
                      blurRadius: 8,


                    )],
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Themes.lightTheme.primaryColor,
                ),

                child: ClipRRect(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                  child: Stack(
                    children: [
                      Container(
                        width: 100,
                        color: Themes.lightTheme.primaryColor,
                      ),
                      Positioned(
                          top: -20,
                          left: -10,
                          child: ClipOval(
                            child: Container(
                              width: 60,
                              height: 50,
                              color: Themes.lightTheme.hintColor,
                            ),
                          )
                      ),
                      Center(
                          child: Text("Quiz $index",style: Themes.lightTheme.textTheme.titleMedium,)
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width*0.7,
                margin: EdgeInsets.symmetric(horizontal: 20),
                height: 60,
                decoration: BoxDecoration(
                  color: Themes.lightTheme.hintColor,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("You Passed This Quiz",style: Themes.lightTheme.textTheme.bodyLarge,),
                    Text("Your Score 30/40",style: Themes.lightTheme.textTheme.bodyLarge,)
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                  Icon(Icons.star,),
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Icon(Icons.star),
                ],
              ),

              Column(
                spacing: 14,
                children: [
                  Container(
                    height: 60,
                    width: 300,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Themes.lightTheme.shadowColor,
                          offset: Offset(0, 8),
                          blurRadius: 8,


                        )],
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Themes.lightTheme.primaryColor,
                    ),

                    child: Center(
                        child: Text("Your wrong answers",style: Themes.lightTheme.textTheme.titleMedium)
                    )
                  ),
                  Container(
                    height: 60,
                    width: 160,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Themes.lightTheme.shadowColor,
                          offset: Offset(0, 8),
                          blurRadius: 8,


                        )],
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Themes.lightTheme.splashColor,
                    ),

                    child: Center(
                        child: Text("Requiz",style: Themes.lightTheme.textTheme.titleMedium)
                    )
                  ),
                ],
              ),



            ],
          ),
        )
    );
  }
}
