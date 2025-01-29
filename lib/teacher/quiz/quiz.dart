import 'package:edu/teacher/quiz/quiz_details.dart';
import 'package:edu/teacher/quiz/quiz_widget.dart';
import 'package:edu/themes.dart';
import 'package:flutter/material.dart';

import '../../navigations/bot_nav_bar.dart';
import '../../navigations/nav_drawer.dart';

class Quiz extends StatefulWidget {
  static const String routeName = 'quiz';


  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Teacher"),
        titleTextStyle: Themes.lightTheme.appBarTheme.titleTextStyle,
        iconTheme: Themes.lightTheme.primaryIconTheme,
        backgroundColor: Themes.lightTheme.appBarTheme.backgroundColor,
      ),
      bottomNavigationBar: BotNavBar(),
      drawer: NavDrawer(),

      body: Container(
        margin: EdgeInsets.symmetric(vertical: 8),
        child: Center(
          child: Column(
            spacing: 20,
            crossAxisAlignment: CrossAxisAlignment.center,
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
                          child: Text("Quizzes",style: Themes.lightTheme.textTheme.titleMedium,)
                      )
                    ],
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    height: 600,
                    child: ListView.separated(itemBuilder: (buildContext,index){

                      return InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, QuizDetails.routeName,
                            arguments: index
                            );
                          },

                          child: QuizWidget(index+1));
                    },
                      separatorBuilder: (buildContext,index){
                        return Container();
                      },
                      itemCount: 15,
                      shrinkWrap: true,
                    ),
                  )
              ),

            ],
          ),
        ),
      ),


    );
  }
}

class QuizIndex{
  int index;
  QuizIndex(this.index);
}
