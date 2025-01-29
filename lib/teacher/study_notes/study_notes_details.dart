import 'package:flutter/material.dart';

import '../../navigations/bot_nav_bar.dart';
import '../../navigations/nav_drawer.dart';
import '../../themes.dart';

class StudyNotesDetails extends StatefulWidget {

  static const String routeName = 'study_notes_details';


   StudyNotesDetails({super.key});

  @override
  State<StudyNotesDetails> createState() => _StudyNotesDetailsState();
}

class _StudyNotesDetailsState extends State<StudyNotesDetails> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as int?;
    final index = args ?? 0;
    return Scaffold(
      appBar: AppBar(
        title: Text("Study Notes"),
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
        Expanded(
          flex: 1,
          child: Container(
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
                child: Text("Content $index",style: Themes.lightTheme.textTheme.titleMedium),
                )
                ],
                ),
                ),
                ),
        ),
        Expanded(
          flex: 8,
          child: Card(
            margin: EdgeInsets.all(10),
            borderOnForeground: true,
            color: Themes.lightTheme.cardColor,
            shadowColor: Themes.lightTheme.shadowColor,
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(child: SingleChildScrollView(child: Text("data",style: Themes.lightTheme.textTheme.bodyLarge,)),),
          ),
        )


      ],
      ),
      ),
    )
    );
  }
}
