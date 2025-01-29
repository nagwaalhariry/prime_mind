
import 'package:flutter/material.dart';

class Themes{
  static const Color primaryLightColor = Color(0xFF4b5cc8);
  static const Color primaryLightBlueColor = Color(0xFF063970);
  static const Color accentLightColor = Color(0xFF8fa6ea);
  static const Color mainTextLightColor = Colors.black;
  static const Color shadowLightColor = Colors.grey;
  static const Color shadowLightOtherColor = Color(0x73000000);

  static const Color primaryDarkColor = Color(0xFF141A2E);
  static const Color accentDarkColor = Color(0xFFFACC1D);
  static const Color mainTextDarkColor = Color(0xFFF8F8F8);

  static var lightTheme = ThemeData(
      shadowColor: shadowLightColor,
      splashColor: primaryLightBlueColor,
      primaryColor: primaryLightColor,
      hintColor: accentLightColor,
      dividerColor: shadowLightOtherColor,
      scaffoldBackgroundColor: Color(0xFFF8F9FA),
      navigationDrawerTheme: NavigationDrawerThemeData(
        surfaceTintColor: Colors.white,
      ),
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(
            color: primaryLightColor,
          ),
          titleTextStyle: TextStyle(
            color: mainTextLightColor,
            fontSize: 24,
            fontWeight: FontWeight.bold,


          )

      ),
      bottomAppBarTheme: const BottomAppBarTheme(
        color: Colors.transparent,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
        selectedItemColor: mainTextLightColor,
        unselectedItemColor: Colors.white,

      ),
      textTheme: TextTheme(



          headlineLarge:
              TextStyle(color: mainTextLightColor,fontSize: 24,fontWeight: FontWeight.bold),
          headlineMedium:
          TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold
          ),
          headlineSmall:
          TextStyle(
              color: primaryLightColor,
              fontSize: 24,
              fontWeight: FontWeight.bold
          ),



          titleLarge: TextStyle(
            color: mainTextLightColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          titleMedium: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          titleSmall: TextStyle(
            color: primaryLightColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),


          bodyMedium: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          bodySmall: TextStyle(
            color: primaryLightColor,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        bodyLarge:TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),


        displaySmall: TextStyle(
          color: primaryLightColor,
          fontSize: 14,
        ),
        displayMedium: TextStyle(
          color: Colors.white,
          fontSize: 14,
        ),
        displayLarge: TextStyle(
          color: Colors.black,
          fontSize: 14,
        ),



        labelSmall:
          TextStyle(
          color: primaryLightColor,
          fontSize: 30,
          fontWeight: FontWeight.bold
      ),
        labelMedium:
        TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold
        ),
        labelLarge:
        TextStyle(
            color: mainTextLightColor,
            fontSize: 30,
            fontWeight: FontWeight.bold
        ),

      ),
    iconTheme: IconThemeData(
      size: 20,
      color: Color(0xFFF8F8F8),
    ),
    primaryIconTheme: IconThemeData(
      color: primaryLightColor,
      size: 30,
    ),
    drawerTheme: DrawerThemeData(
      scrimColor: Colors.transparent,

    ),

    cardTheme:CardTheme(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      elevation: 24,
      color: Colors.white,

    ),
  );

}