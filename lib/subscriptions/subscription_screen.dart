import 'package:edu/subscriptions/subscripe_screen.dart';
import 'package:flutter/material.dart';

import '../navigations/bot_nav_bar.dart';
import '../navigations/nav_drawer.dart';
import '../themes.dart';

class SubscriptionScreen extends StatefulWidget {

  static const String routeName = 'subscription-screen';



  const SubscriptionScreen({super.key});

  @override
  State<SubscriptionScreen> createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
  List <String> subContent = [
    "Basic Service offers access to all educational levels from primary to secondary levels",
    "Pro Service offers access to all educational levels from primary to secondary levels",
    "Premium Service offers access to all educational levels from primary to secondary levels"
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: Themes.lightTheme.primaryIconTheme,
        backgroundColor: Themes.lightTheme.appBarTheme.backgroundColor,
        title: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Row(
            spacing: 16,
            children: [
              Icon(Icons.subscriptions,color: Themes.lightTheme.primaryColor,size: 30,),
              Text("Subscriptions",style: Themes.lightTheme.textTheme.titleLarge),
            ],
          ),
        ),
      ),
      drawer: NavDrawer(),
      drawerScrimColor: Themes.lightTheme.drawerTheme.scrimColor,
      backgroundColor: Themes.lightTheme.scaffoldBackgroundColor,


      body: Container(
        margin: EdgeInsets.all(18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, SubscripeScreen.routeName);
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height*0.35,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          color: Themes.lightTheme.shadowColor,
                          offset: const Offset(0, 4),
                        )
                      ],
                      borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),


                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 160,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Themes.lightTheme.primaryColor,
                                Themes.lightTheme.splashColor,

                              ],
                              begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              )
                            ),
                          ),
                          Positioned(
                              top: -50,
                              left: -40,
                              child: ClipOval(
                                child: Container(
                                  width: 130,
                                  height: 130,
                                  color: Themes.lightTheme.hintColor,

                                ),
                              )
                          ),
                          Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("Education", softWrap: true,style: Themes.lightTheme.textTheme.titleMedium,),
                                Text("Services", softWrap: true,style: Themes.lightTheme.textTheme.titleMedium,),

                              ],
                            ),
                          ),
                        ],
                      ),

                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height*0.35,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        color: Themes.lightTheme.shadowColor,
                        offset: const Offset(0, 4),
                      )
                    ],
                    borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),


                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 160,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Themes.lightTheme.primaryColor,
                                Themes.lightTheme.splashColor,

                              ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              )
                          ),
                        ),
                        Positioned(
                            top: -50,
                            left: -40,
                            child: ClipOval(
                              child: Container(
                                width: 130,
                                height: 130,
                                color: Themes.lightTheme.hintColor,

                              ),
                            )
                        ),
                        Center(child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Law Firm", softWrap: true,style: Themes.lightTheme.textTheme.titleMedium,),
                            Text("Services", softWrap: true,style: Themes.lightTheme.textTheme.titleMedium,),

                          ],
                        ),),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height*0.35,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        color: Themes.lightTheme.shadowColor,
                        offset: const Offset(0, 4),
                      )
                    ],
                    borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),


                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 160,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Themes.lightTheme.primaryColor,
                                Themes.lightTheme.splashColor,

                              ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              )
                          ),
                        ),
                        Positioned(
                            top: -50,
                            left: -40,
                            child: ClipOval(
                              child: Container(
                                width: 130,
                                height: 130,
                                color: Themes.lightTheme.hintColor,

                              ),
                            )
                        ),
                        Center(child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("HR", softWrap: true,style: Themes.lightTheme.textTheme.titleMedium,),
                            Text("Services", softWrap: true,style: Themes.lightTheme.textTheme.titleMedium,),

                          ],
                        ),),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height*0.35,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        color: Themes.lightTheme.shadowColor,
                        offset: const Offset(0, 4),
                      )
                    ],
                    borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),


                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 160,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Themes.lightTheme.primaryColor,
                                Themes.lightTheme.splashColor,

                              ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              )
                          ),
                        ),
                        Positioned(
                            top: -50,
                            left: -40,
                            child: ClipOval(
                              child: Container(
                                width: 130,
                                height: 130,
                                color: Themes.lightTheme.hintColor,

                              ),
                            )
                        ),
                        Center(child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Finance Firm", softWrap: true,style: Themes.lightTheme.textTheme.titleMedium,),
                            Text("Services", softWrap: true,style: Themes.lightTheme.textTheme.titleMedium,),

                          ],
                        ),),
                      ],
                    ),
                  ),
                ),
              ],
            ),

          ],
        ),
      ),








    );
  }
}
