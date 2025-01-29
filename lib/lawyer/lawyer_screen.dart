import 'package:edu/lawyer/ask_lawyer_screen.dart';
import 'package:edu/lawyer/provisions_of_law_screen.dart';
import 'package:flutter/material.dart';

import '../navigations/bot_nav_bar.dart';
import '../navigations/nav_drawer.dart';
import '../themes.dart';

class LawyerScreen extends StatefulWidget {
  static const String routeName = 'lawyer_screen';

  const LawyerScreen({super.key});

  @override
  State<LawyerScreen> createState() => _LawyerScreenState();
}

class _LawyerScreenState extends State<LawyerScreen> {
  String? selectedLawSection;
  String selectedLawDepartment = 'Law Department';

  double containerWidth1 = 200;
  double containerWidth2 = 200;
  double containerWidth3 = 200;



  final Map<String, List<String>>
  lawSections = {
    'Private law'  : ['Civil law','Commercial & Maritime law','Civil and Commercial Procedures Law','Agricultural law','Air law','Labour law','International private law'],
    'Public law' : ['Administrative law','Constitutional law','Criminal law','Finance law','Public international law'],
  };

  List<String> get lawDepartments {
    return selectedLawSection != null ?
        lawSections[selectedLawSection]! : [];
  }


  String? selectedLaw;
  final List<String> laws = ['1st Semester','2nd Semester'];

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as int?;
    final index = args ?? "";
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
              Icon(Icons.balance,color: Themes.lightTheme.primaryColor,size: 30,),
              Text("Lawyer",style: Themes.lightTheme.textTheme.titleLarge),
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
                  width: containerWidth1,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.all(color: Themes.lightTheme.primaryColor),
                  ),

                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                        icon: Icon(Icons.arrow_drop_down),
                        iconEnabledColor: Themes.lightTheme.primaryColor,
                        value: selectedLawSection,
                        hint: Text("Law Section",style: Themes.lightTheme.textTheme.bodyLarge,overflow: TextOverflow.ellipsis,),
                        items: lawSections.keys.map((String section)
                        {
                          return DropdownMenuItem<String>(
                            value: section,
                            child: Text(section),
                          );
                        }).toList(),
                        onChanged: (String? newSection){
                          setState(() {
                            selectedLawSection = newSection;
                            selectedLawDepartment = 'Law Department';
                            containerWidth1 = calculateWidth(newSection!);

                          });
                        }

                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.all(8),
                  width: containerWidth2,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.all(color: Themes.lightTheme.primaryColor,),
                  ),

                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,

                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                          icon: Icon(Icons.arrow_drop_down),
                          iconEnabledColor: Themes.lightTheme.primaryColor,
                          value: selectedLawDepartment == 'Law Department' ? null : selectedLawDepartment,
                          hint: Text("Law Department",style: Themes.lightTheme.textTheme.bodyLarge,overflow: TextOverflow.ellipsis),
                          items: lawDepartments.map((String department)
                          {
                            return DropdownMenuItem<String>(
                              value: department,
                              child: Text(department),
                            );
                          }).toList(),
                          onChanged: (String? newDepartment){
                            setState(() {
                              selectedLawDepartment = newDepartment!;
                              containerWidth2 = calculateWidth(newDepartment);

                            });
                          }

                      ),
                    ),
                  )

                ),
                Container(
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.all(8),
                  width: containerWidth3,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.all(color: Themes.lightTheme.primaryColor,),
                  ),

                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                        icon: Icon(Icons.arrow_drop_down),
                        iconEnabledColor: Themes.lightTheme.primaryColor,
                        value: selectedLaw,
                        hint: Text("Law",style: Themes.lightTheme.textTheme.bodyLarge,overflow: TextOverflow.ellipsis),
                        items: laws.map((String law)
                        {
                          return DropdownMenuItem<String>(
                            value: law,
                            child: Text(law),
                          );
                        }).toList(),
                        onChanged: (String? newLaw){
                          setState(() {
                            selectedLaw = newLaw;
                            containerWidth3 = calculateWidth(newLaw!);
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
                      Navigator.popAndPushNamed(context, AskLawyerScreen.routeName);
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
                          Icon(Icons.chat, size: 20,color: Themes.lightTheme.iconTheme.color,),
                          Text("Ask Me!",style: Themes.lightTheme.textTheme.titleMedium),
                        ],
                      ),

                    ),
                  ),

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 40),
                    child: ElevatedButton(onPressed: (){
                      if (selectedLaw != null) {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ProvisionsOfLawScreen(selectedLaw: selectedLaw!))

                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Please select law"))
                        );
                      }

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
                          Icon(Icons.balance, size: 20,color: Themes.lightTheme.iconTheme.color,),
                          Text("provisions of law",style: Themes.lightTheme.textTheme.titleMedium),
                        ],
                      ),

                    ),
                  ),

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 40),
                    child: ElevatedButton(onPressed: (){
                      Navigator.popAndPushNamed(context, AskLawyerScreen.routeName);
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
                          Icon(Icons.balance, size: 20,color: Themes.lightTheme.iconTheme.color,),
                          Text("Upload Case",style: Themes.lightTheme.textTheme.titleMedium),
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
  double calculateWidth (String text) {
    return (text.length*10).toDouble()+40;
  }
}
