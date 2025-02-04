import 'package:edu/themes.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  static const String routeName = 'register_screen';

  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  bool? value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Themes.lightTheme.appBarTheme.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Themes.lightTheme.appBarTheme.iconTheme?.color),
      ),

      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 30,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height*0.1,
            ),
            Text("Create an Account",style: Themes.lightTheme.textTheme.headlineLarge,),
            Column(
              spacing: 20,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      border: Border.all(
                        color: Themes.lightTheme.primaryColor,
                        width: 2
                      ),

                  ),
                  child: TextFormField(

                    keyboardType: TextInputType.name,
                    keyboardAppearance: Brightness.light,
                    textInputAction: TextInputAction.next,

                    maxLines: 1,


                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 14,vertical: 4),
                      hintText: "Full Name",
                      hintStyle: Themes.lightTheme.primaryTextTheme.labelMedium,

                    ),

                  ),

                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    border: Border.all(
                        color: Themes.lightTheme.primaryColor,
                        width: 2
                    ),

                  ),
                  child: TextFormField(

                    keyboardType: TextInputType.emailAddress,
                    keyboardAppearance: Brightness.light,
                    textInputAction: TextInputAction.send,

                    maxLines: 1,


                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 14,vertical: 4),
                      hintText: "Email Address",
                      hintStyle: Themes.lightTheme.primaryTextTheme.labelMedium,
                    ),

                  ),

                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    border: Border.all(
                        color: Themes.lightTheme.primaryColor,
                        width: 2
                    ),

                  ),
                  child: TextFormField(

                    keyboardType: TextInputType.visiblePassword,
                    keyboardAppearance: Brightness.light,
                    textInputAction: TextInputAction.send,

                    maxLines: 1,


                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 14,vertical: 4),
                      hintText: "Password",
                      hintStyle: Themes.lightTheme.primaryTextTheme.labelMedium,

                    ),

                  ),

                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    border: Border.all(
                        color: Themes.lightTheme.primaryColor,
                        width: 2
                    ),

                  ),
                  child: TextFormField(

                    keyboardType: TextInputType.visiblePassword,
                    keyboardAppearance: Brightness.light,
                    textInputAction: TextInputAction.send,

                    maxLines: 1,


                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 14,vertical: 4),
                      hintText: "Confirm Password",
                      hintStyle: Themes.lightTheme.primaryTextTheme.labelMedium,
                    ),

                  ),

                ),

                Row(
                  children: [
                    Checkbox(
                    tristate: true,
                    value: value,
                    onChanged: (bool? newValue) {
                      setState(() {
                        value = newValue;
                      });
                    }),
                    Text("I Agree with privacy and policy",style: Themes.lightTheme.textTheme.displayLarge),                  ],
                ),

                Container(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Themes.lightTheme.primaryColor,
                  ),

                  child: Center(
                      child: Text("Register",style: Themes.lightTheme.textTheme.titleMedium,)
                  ),
                ),
                Text("Already have an account? Log In",style: Themes.lightTheme.textTheme.displayLarge),
              ],

            )
          ],

        ),
      ),


    );
  }
}
