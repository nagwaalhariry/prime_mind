import 'package:flutter/material.dart';

import '../../themes.dart';

class QuestionWidget extends StatelessWidget {
  const QuestionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Themes.lightTheme.cardColor,
      shadowColor: Themes.lightTheme.shadowColor,
      elevation: 6,
      margin: EdgeInsets.symmetric(horizontal: 20),
      borderOnForeground: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Column(
          spacing: 8,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(8),
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.all(
                  color: Themes.lightTheme.primaryColor,
                ),
              ),
              child: Text("Question",style: Themes.lightTheme.textTheme.displayLarge),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),

              child: Row(
                spacing: 8,
                children: [
                  Icon(Icons.circle,color: Colors.black,size: 10,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    height: 40,
                    width: MediaQuery.of(context).size.width*0.6,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Themes.lightTheme.hintColor,
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                        child: Text("data",style: Themes.lightTheme.textTheme.bodyLarge)),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                spacing: 8,
                children: [
                  Icon(Icons.circle,color: Colors.black,size: 10,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    height: 40,
                    width: MediaQuery.of(context).size.width*0.6,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Themes.lightTheme.hintColor,
                    ),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text("data",style: Themes.lightTheme.textTheme.bodyLarge)),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                spacing: 8,
                children: [
                  Icon(Icons.circle,color: Colors.black,size: 10,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    height: 40,
                    width: MediaQuery.of(context).size.width*0.6,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Themes.lightTheme.hintColor,
                    ),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text("data",style: Themes.lightTheme.textTheme.bodyLarge)),
                  )
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
