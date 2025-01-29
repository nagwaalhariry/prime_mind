

import 'package:edu/navigations/nav_drawer.dart';
import 'package:flutter/material.dart';
import '../themes.dart';

class AskLawyerScreen extends StatefulWidget {
  static const String routeName = 'ask_lawyer_screen';


  const AskLawyerScreen({super.key});

  @override
  State<AskLawyerScreen> createState() => _AskLawyerScreen();
}

class _AskLawyerScreen extends State<AskLawyerScreen> {

  final TextEditingController controller = TextEditingController();

  final List<String> messages = [];

  void sendMessage(String text){
    setState(() {
      messages.add(text);
    });
    controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        iconTheme: Themes.lightTheme.primaryIconTheme,
        backgroundColor: Themes.lightTheme.appBarTheme.backgroundColor,
        title: Text("Lawyer"),
        titleTextStyle: Themes.lightTheme.appBarTheme.titleTextStyle,
      ),
      body: Container(
        margin: EdgeInsets.all(14),
        child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              spacing: 10,
              children: [
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,

                    itemBuilder: (BuildContext context, int index) {
                      return Align(
                        alignment: index % 2 == 0 ? Alignment.topRight : Alignment.topLeft,
                        child: index % 2 == 0 ?
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Themes.lightTheme.hintColor,
                          ),
                          child: Text(messages[index],style: Themes.lightTheme.textTheme.displayMedium,),) :
                        Row(
                          spacing: 10,
                          children: [
                            CircleAvatar(

                              backgroundColor: Themes.lightTheme.cardColor,

                              child: Image(image: AssetImage("assets/images/image_logo.png")),
                            ),
                            Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  color: Themes.lightTheme.scaffoldBackgroundColor,
                                ),
                                child: Text(messages[index],style: Themes.lightTheme.textTheme.bodyLarge,)),
                          ],
                        ),
                      );
                    },
                    itemCount: messages.length,


                  ),
                ),


                Container(
                  height: 40,
                  decoration:BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Themes.lightTheme.hintColor,
                  ),
                  child: Expanded(
                    child: TextFormField(

                      keyboardType: TextInputType.text,
                      keyboardAppearance: Brightness.light,
                      textInputAction: TextInputAction.send,

                      maxLines: 20,
                      controller: controller,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 14,vertical: 4),
                        prefixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.language,color: Themes.lightTheme.splashColor,)),
                        suffixIcon:  IconButton(onPressed: (){
                          sendMessage(controller.text);
                        },
                          icon: Icon(Icons.send,color: Themes.lightTheme.splashColor,),

                        ),
                        hintText: "Type your message",
                        hintStyle: Themes.lightTheme.textTheme.displayMedium,
                      ),

                    ),
                  ),
                ),

              ],
            )
        ),
      ),




    );
  }
}
