import 'package:edu/home_screen.dart';
import 'package:edu/lawyer/lawyer_screen.dart';
import 'package:edu/login/login_screen.dart';
import 'package:edu/subscriptions/subscription_screen.dart';
import 'package:edu/teacher/teacher_screen.dart';
import 'package:edu/themes.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class NavDrawer extends StatelessWidget {
  static const String routeName = 'nav_drawer';

  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width*0.5,
      child: ListView(

        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Themes.lightTheme.primaryColor,
            ),
            child: CircleAvatar(
              backgroundColor: Themes.lightTheme.hintColor,
              child: Icon(Icons.person,size: 100,color: Themes.lightTheme.splashColor,),
            ),
          ),
          Container(
            color: Themes.lightTheme.appBarTheme.backgroundColor,
            child: Column(

              children: [
                ListTile(

                  leading: Icon(
                    Icons.home,
                  ),
                  title: Text("Home Page"),
                  onTap: (){
                    Navigator.popAndPushNamed(context, HomeScreen.routeName);
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.auto_stories,
                  ),
                  title: Text("Teacher"),
                  onTap: (){
                    Navigator.popAndPushNamed(context, TeacherScreen.routeName);
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.balance,
                  ),
                  title: Text("Lawyer"),
                  onTap: (){
                    Navigator.popAndPushNamed(context, LawyerScreen.routeName);
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.business,
                  ),
                  title: Text("Finance"),
                  onTap: (){

                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.supervisor_account,
                  ),
                  title: Text("HR"),
                  onTap: (){
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.info,
                  ),
                  title: Text("About Us"),
                  onTap: (){
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.subscriptions,
                  ),
                  title: Text("subscriptions"),
                  onTap: (){
                    Navigator.popAndPushNamed(context, SubscriptionScreen.routeName);
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.perm_identity,
                  ),
                  title: Text("My Profile"),
                  onTap: (){
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.login,
                  ),
                  title: Text("Login"),
                  onTap: (){
                    Navigator.popAndPushNamed(context,LoginScreen.routeName);
                  },
                ),
                ListTile(
                  leading: Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.rotationY(pi),
                    child: Icon(
                      Icons.logout,
                    ),
                  ),
                  title: Text("Logout"),
                  onTap: (){
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ],

      ),
    );
  }
}
