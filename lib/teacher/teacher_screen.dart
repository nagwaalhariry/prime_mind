import 'package:edu/navigations/bot_nav_bar.dart';
import 'package:edu/navigations/nav_drawer.dart';
import 'package:edu/teacher/quiz/quiz.dart';
import 'package:edu/teacher/study.dart';
import 'package:edu/teacher/study_notes/study_notes.dart';
import 'package:flutter/material.dart';

import '../themes.dart';

class TeacherScreen extends StatefulWidget {
  static const String routeName = 'teacher_screen';


  const TeacherScreen({super.key});

  @override
  State<TeacherScreen> createState() => _TeacherScreenState();
}

class _TeacherScreenState extends State<TeacherScreen> {
  
  String? selectedStage;
  final List<String> statges =['Primary Stage','Preparatory stage','Secondary Stage'];

  String? selectedClass;
  final List<String> classes = ['1st Class','2nd Class','3rd Class','4th Class','5th Class','6th Class'];

  String? selectedSemester;
  final List<String> semesters = ['1st Semester','2nd Semester'];

  String? selectedMaterial;
  final List<String> materials = ['Arabic','English','Maths','geography','history','Science'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      drawerScrimColor: Themes.lightTheme.drawerTheme.scrimColor,
      backgroundColor: Themes.lightTheme.scaffoldBackgroundColor,
      appBar: AppBar(
        iconTheme: Themes.lightTheme.primaryIconTheme,
        backgroundColor: Themes.lightTheme.appBarTheme.backgroundColor,
        title: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Row(
            spacing: 16,
            children: [
              Icon(Icons.auto_stories,color: Themes.lightTheme.primaryColor,size: 30,),
              Text("Teacher",style: Themes.lightTheme.textTheme.titleLarge),
            ],
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          spacing: 14,
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.all(8),
                  width: 200,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.all(color: Themes.lightTheme.primaryColor),
                  ),

                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      icon: Icon(Icons.arrow_drop_down),
                      iconEnabledColor: Themes.lightTheme.primaryColor,
                      value: selectedStage,
                      hint: Text("Academic stage",style: Themes.lightTheme.textTheme.bodyLarge,),
                      items: statges.map((String stage)
                      {
                        return DropdownMenuItem<String>(
                          value: stage,
                            child: Text(stage),
                        );
                      }).toList(),
                      onChanged: (String? newStage){
                        setState(() {
                          selectedStage = newStage;
                        });
                      }

                      ),
                  ),
                  ),
                Container(
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.all(8),
                  width: 200,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.all(color: Themes.lightTheme.primaryColor,),
                  ),

                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      icon: Icon(Icons.arrow_drop_down),
                      iconEnabledColor: Themes.lightTheme.primaryColor,
                        value: selectedClass,
                        hint: Text("Class",style: Themes.lightTheme.textTheme.bodyLarge,),
                        items: classes.map((String uniClass)
                        {
                          return DropdownMenuItem<String>(
                            value: uniClass,
                            child: Text(uniClass),
                          );
                        }).toList(),
                        onChanged: (String? newClass){
                          setState(() {
                            selectedClass = newClass;
                          });
                        }

                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.all(8),
                  width: 200,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.all(color: Themes.lightTheme.primaryColor,),
                  ),

                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      icon: Icon(Icons.arrow_drop_down),
                        iconEnabledColor: Themes.lightTheme.primaryColor,
                        value: selectedSemester,
                        hint: Text("Semester",style: Themes.lightTheme.textTheme.bodyLarge,),
                        items: semesters.map((String semester)
                        {
                          return DropdownMenuItem<String>(
                            value: semester,
                            child: Text(semester),
                          );
                        }).toList(),
                        onChanged: (String? newSemester){
                          setState(() {
                            selectedSemester = newSemester;
                          });
                        }

                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.all(8),
                  width: 200,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.all(color: Themes.lightTheme.primaryColor),
                  ),

                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      iconEnabledColor: Themes.lightTheme.primaryColor,
                        icon: Icon(Icons.arrow_drop_down),
                        value: selectedMaterial,
                        hint: Text("Study material",style: Themes.lightTheme.textTheme.bodyLarge,),
                        items: materials.map((String material)
                        {
                          return DropdownMenuItem<String>(
                            value: material,
                            child: Text(material),
                          );
                        }).toList(),
                        onChanged: (String? newMaterial){
                          setState(() {
                            selectedMaterial = newMaterial;
                          });
                        }

                    ),
                  ),
                ),
              ],
            ),

            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              child: Column(
                spacing: 20,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 40),
                    child: ElevatedButton(onPressed: (){
                      Navigator.popAndPushNamed(context, Study.routeName);
                    },

                      style: ElevatedButton.styleFrom(
                        shadowColor: Themes.lightTheme.shadowColor,
                          elevation: 8,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                          ),
                          backgroundColor: Themes.lightTheme.hintColor,
                          padding: EdgeInsets.all(20)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        spacing: 10,
                        children: [
                          Icon(Icons.menu_book, size: 20,color: Themes.lightTheme.iconTheme.color,),
                          Text("Study Together!",style: Themes.lightTheme.textTheme.titleMedium),
                        ],
                      ),

                    ),
                  ),

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 40),
                    child: ElevatedButton(onPressed: (){
                      Navigator.popAndPushNamed(context, StudyNotes.routeName);
                    },

                      style: ElevatedButton.styleFrom(
                          shadowColor: Themes.lightTheme.shadowColor,
                          elevation: 8,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                          ),
                          backgroundColor:Themes.lightTheme.primaryColor,
                          padding: EdgeInsets.all(20)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        spacing: 10,
                        children: [
                          Icon(Icons.menu_book, size: 20,color: Themes.lightTheme.iconTheme.color,),
                          Text("Study Notes!",style: Themes.lightTheme.textTheme.titleMedium),
                        ],
                      ),

                    ),
                  ),

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 40),
                    child: ElevatedButton(onPressed: (){
                      Navigator.popAndPushNamed(context, Quiz.routeName);
                    },

                      style: ElevatedButton.styleFrom(
                          shadowColor: Themes.lightTheme.shadowColor,
                          elevation: 8,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                          ),
                          backgroundColor:Themes.lightTheme.splashColor,
                          padding: EdgeInsets.all(20)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        spacing: 10,
                        children: [
                          Icon(Icons.menu_book, size: 20,color: Themes.lightTheme.iconTheme.color,),
                          Text("Practice tests!",style: Themes.lightTheme.textTheme.titleMedium),
                        ],
                      ),

                    ),
                  ),
                ],
              ),
            ),




          ],
        ),
      ),
      bottomNavigationBar: BotNavBar(),
    );
  }
}
