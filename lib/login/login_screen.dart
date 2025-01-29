import 'package:edu/themes.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = 'login_screen';

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
              end: Alignment.centerRight,


              colors: [
                Themes.lightTheme.primaryColor,
                Themes.lightTheme.splashColor,
              ]
          )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(color: Colors.transparent),
        ),

        body: Center(
          child: Column(

            children: [
              SizedBox(height: 60,),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Login",style: Themes.lightTheme.textTheme.labelMedium,),
                    Text("Welcome to Prime Mind",style: Themes.lightTheme.textTheme.bodyMedium,),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(

                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(top: 50, bottom: 20, right: 20,left: 20),
                  decoration: BoxDecoration(
                    color: Themes.lightTheme.appBarTheme.backgroundColor,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50)),
                  ),

                  child: Column(
                    spacing: 30,
                    children: [
                      Container(
                        width: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Themes.lightTheme.appBarTheme.backgroundColor,
                          boxShadow:[ BoxShadow(
                            color: Themes.lightTheme.shadowColor,
                            offset: Offset(0,4),
                            blurRadius: 10,
                          )]
                        ),
                        child: Column(
                          children: [
                            TextFormField(

                              keyboardType: TextInputType.text,
                              keyboardAppearance: Brightness.light,
                              textInputAction: TextInputAction.send,

                              maxLines: 1,

                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(horizontal: 14,vertical: 4),
                                hintText: "Email",
                                hintStyle: Themes.lightTheme.textTheme.bodyLarge,
                              ),

                            ),
                            Divider(
                              color: Themes.lightTheme.shadowColor,
                              thickness: 2,
                            ),
                            TextFormField(

                              keyboardType: TextInputType.text,
                              keyboardAppearance: Brightness.light,
                              textInputAction: TextInputAction.send,

                              maxLines: 1,

                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(horizontal: 14,vertical: 4),
                                hintText: "Password",
                                hintStyle: Themes.lightTheme.textTheme.bodyLarge,
                              ),

                            ),
                          ],
                        ),

                      ),
                      Text("Forgot your password?",style: Themes.lightTheme.textTheme.displayLarge),
                      Container(
                        height: 60,
                        width: 150,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Themes.lightTheme.shadowColor,
                              offset: Offset(0, 8),
                              blurRadius: 8,


                            )],
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: Themes.lightTheme.primaryColor,
                        ),

                        child: Center(
                            child: Text("Login",style: Themes.lightTheme.textTheme.titleMedium,)
                        ),
                      ),
                      Row(
                        spacing: 20,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [

                          CircleAvatar(
                            radius: 20,
                            backgroundColor: Themes.lightTheme.primaryColor,
                            child: Image(image: AssetImage("assets/images/facebook_logo.png"),fit: BoxFit.fill,color: Themes.lightTheme.appBarTheme.backgroundColor,),
                          ),
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: Themes.lightTheme.appBarTheme.backgroundColor,
                            child: Image(image: AssetImage("assets/images/google_logo.png"),fit: BoxFit.fill,),
                          )
                        ],
                      ),
                      Text("Don't have one? Register Now",style: Themes.lightTheme.textTheme.displayLarge),
                    ],

                  ),


                ),
              )
            ],

          ),
        ),


      ),
    );
  }


}
