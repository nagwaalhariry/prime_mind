import 'package:edu/navigations/bot_nav_bar.dart';
import 'package:edu/home_screen.dart';
import 'package:edu/register/register_screen.dart';
import 'package:edu/splash/splash_screen.dart';
import 'package:edu/subscriptions/payment.dart';
import 'package:edu/subscriptions/subscripe_screen.dart';
import 'package:edu/subscriptions/subscription_done_screen.dart';
import 'package:edu/subscriptions/subscription_screen.dart';
import 'package:edu/teacher/quiz/quiz.dart';
import 'package:edu/teacher/quiz/quiz_details.dart';
import 'package:edu/teacher/quiz/quiz_result.dart';
import 'package:edu/teacher/study_notes/study_notes.dart';
import 'package:edu/teacher/study_notes/study_notes_details.dart';
import 'package:edu/teacher/teacher_screen.dart';
import 'package:flutter/material.dart';
import 'package:edu/navigations/nav_drawer.dart';

import 'lawyer/ask_lawyer_screen.dart';
import 'lawyer/lawyer_screen.dart';
import 'lawyer/provisions_of_law_screen.dart';
import 'login/login_screen.dart';
import 'teacher/study.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName : (buildContext) => SplashScreen(),
        HomeScreen.routeName : (buildContext) => HomeScreen(),
        TeacherScreen.routeName : (buildContext) => TeacherScreen(),
        Study.routeName : (buildContext) => Study(),
        NavDrawer.routeName: (buildContext) =>  NavDrawer(),
        BotNavBar.routeName: (buildContext) =>  BotNavBar(),
        StudyNotes.routeName : (buildContext) => StudyNotes(),
        StudyNotesDetails.routeName : (buildContext) => StudyNotesDetails(),
        Quiz.routeName : (buildContext) => Quiz(),
        QuizDetails.routeName : (buildContext) => QuizDetails(),
        QuizResult.routeName : (buildContext) => QuizResult(),
        LawyerScreen.routeName : (buildContext) => LawyerScreen(),
        AskLawyerScreen.routeName : (buildContext) => AskLawyerScreen(),
        ProvisionsOfLawScreen.routeName : (buildContext) => ProvisionsOfLawScreen(selectedLaw: '',),
        SubscriptionScreen.routeName : (buildContext) => SubscriptionScreen(),
        LoginScreen.routeName : (buildContext) => LoginScreen(),
        SubscripeScreen.routeName : (buildContext) => SubscripeScreen(),
        SubscriptionDoneScreen.routeName : (buildContext) => SubscriptionDoneScreen(),
        Payment.routeName : (buildContext) => Payment(),
        RegisterScreen.routeName : (buildContext) => RegisterScreen(),











      }
    );
  }

}