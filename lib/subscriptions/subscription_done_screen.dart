import 'package:flutter/material.dart';

import '../themes.dart';

class SubscriptionDoneScreen extends StatelessWidget {
  static const String routeName = 'subscription-done-screen';


  const SubscriptionDoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Image(image: AssetImage("assets/images/bg.png",),
      
            fit: BoxFit.fill,
            width: double.infinity,
            height: double.infinity,
          ),
      
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
      
              children: [
                SizedBox(height: 100,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 10,
                  children: [
                    Center(child: Text("Education Services",style: Themes.lightTheme.textTheme.labelMedium)),
      
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("",softWrap:true,style: Themes.lightTheme.textTheme.bodyMedium,),
                    ),
                  ],
                ),
      
                InkWell(
                  onTap: (){
                    Navigator.popAndPushNamed(context, SubscriptionDoneScreen.routeName);
                  },
                  child: Container(
                    height: 60,
                    width: 200,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Themes.lightTheme.dividerColor,
                          offset: Offset(0, 8),
                          blurRadius: 8,
      
      
                        )],
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Themes.lightTheme.primaryColor,
                    ),
      
                    child: Center(
                        child: Text("Subscribe Now",style: Themes.lightTheme.textTheme.titleMedium,)
                    ),
                  ),
                ),
              ],
      
            ),
          ),
        ],
      ),
    );
  }
}
