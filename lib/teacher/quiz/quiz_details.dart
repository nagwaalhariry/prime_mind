import 'package:edu/teacher/quiz/question_widget.dart';
import 'package:edu/teacher/quiz/quiz_result.dart';
import 'package:edu/themes.dart';
import 'package:flutter/material.dart';

import '../../navigations/bot_nav_bar.dart';
import '../../navigations/nav_drawer.dart';

class QuizDetails extends StatefulWidget {
  static const String routeName = 'quiz_details';
  const QuizDetails({super.key});

  @override
  State<QuizDetails> createState() => _QuizDetailsState();
}

class _QuizDetailsState extends State<QuizDetails> {
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

        body: Container(

          margin: EdgeInsets.symmetric(vertical: 8),
          child: Center(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Column(
                spacing: 20,
                children: [
                  Container(
                    height: 60,
                    width: 240,
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
                            width: 130,
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
                              child: Text("Quiz ${index+1}",style: Themes.lightTheme.textTheme.titleMedium,)
                          )
                        ],
                      ),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    height: 40,
                    decoration: BoxDecoration(
                      color: Themes.lightTheme.splashColor,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Center(child: Text("Quiz Description 40  MCQ",style: Themes.lightTheme.textTheme.bodyMedium,)),
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: ListView.separated(itemBuilder: (buildContext,index){
                        return QuestionWidget();
                      },
                        separatorBuilder: (buildContext,index){
                          return SizedBox(
                            height: 10,
                          );
                        },
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 40,
                        shrinkWrap: true,
                      )
                  ),

                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, QuizResult.routeName,
                        arguments: index+1
                      );
                    },
                    child: Container(
                      height: 40,
                      width: 150,
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
                          child: Text("Submit",style: Themes.lightTheme.textTheme.bodyMedium,)
                                            ),
                  ),
                  )
                ],
              ),
            ),
          ),
        )
    );
  }
}
