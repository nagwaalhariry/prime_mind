import 'package:flutter/material.dart';

import '../../navigations/bot_nav_bar.dart';
import '../../navigations/nav_drawer.dart';
import '../../themes.dart';

class ProvisionsOfLawScreen extends StatefulWidget {

  static const String routeName = 'provisions_of_law_screen';

  final String selectedLaw;


   const ProvisionsOfLawScreen({required this.selectedLaw,super.key});

  @override
  State<ProvisionsOfLawScreen> createState() => _ProvisionsOfLawScreen();
}

class _ProvisionsOfLawScreen extends State<ProvisionsOfLawScreen> {

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: Text("Provisions of law"),
            titleTextStyle: Themes.lightTheme.appBarTheme.titleTextStyle,
            iconTheme: Themes.lightTheme.primaryIconTheme,
            backgroundColor: Themes.lightTheme.appBarTheme.backgroundColor,

            bottom: TabBar(
              indicator: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Themes.lightTheme.primaryColor,
                    Themes.lightTheme.splashColor,
                  ]
                ),
                borderRadius: BorderRadius.circular(10),

              ),
              labelPadding: EdgeInsets.symmetric(horizontal: 20),
              labelStyle: Themes.lightTheme.textTheme.bodyMedium,
              unselectedLabelStyle: Themes.lightTheme.textTheme.bodyLarge,
              indicatorAnimation: TabIndicatorAnimation.elastic,
              tabs: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Tab(text: "Law provision"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Tab(text: "Edits"),
                ),
              ],

            )
          ),
          bottomNavigationBar: BotNavBar(),
          drawer: NavDrawer(),

          body: Column(
            spacing: 16,
            crossAxisAlignment : CrossAxisAlignment. center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width*0.5,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Themes.lightTheme.hintColor,
                  boxShadow: [
                    BoxShadow(
                      color: Themes.lightTheme.shadowColor,
                      offset: Offset(0, 4),
                      blurRadius: 4,
                    )
                  ]
                ),
                child: Center(child: Text(widget.selectedLaw,style: Themes.lightTheme.textTheme.bodyLarge,),),
              ),
              Flexible(
                child: TabBarView(
                  children: [
                    Container(


                      margin: EdgeInsets.symmetric(vertical: 8),
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
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 8),
                      child: Card(
                        margin: EdgeInsets.all(10),
                        borderOnForeground: true,
                        color: Themes.lightTheme.cardColor,
                        shadowColor: Themes.lightTheme.shadowColor,
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(child: SingleChildScrollView(child: Text("2nd data",style: Themes.lightTheme.textTheme.bodyLarge,)),),
                      ),
                    ),
                    ]
                ),
              ),
            ],
          )
      ),
    );
  }
}
