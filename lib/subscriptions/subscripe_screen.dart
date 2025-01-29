import 'package:edu/subscriptions/payment.dart';
import 'package:edu/themes.dart';
import 'package:flutter/material.dart';

class SubscripeScreen extends StatefulWidget {
  static const String routeName = 'subscripe-screen';

  const SubscripeScreen({super.key});

  @override
  State<SubscripeScreen> createState() => _SubscripeScreenState();
}

class _SubscripeScreenState extends State<SubscripeScreen> {
  int currentStep = 0;

  List<String> subClarifications = [

    "Basic Service offers access to all educational levels from primary to secondary levels ",
    "Pro Service offers access to all educational levels from primary to secondary levels ",
    "Premium Service offers access to all educational levels from primary to secondary levels "
  ];

  int index = 1;

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
                SizedBox(height: 120,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 10,
                  children: [
                    Center(child: Text("Education Services",style: Themes.lightTheme.textTheme.labelMedium)),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(subClarifications[index],softWrap:true,style: Themes.lightTheme.textTheme.bodyMedium,),
                    ),
                  ],
                ),
                Column(
                  children: [
                     InkWell(
                       onTap: (){
                         index = 0;
                         setState(() {
                         });
                       },
                       child: Container(
                         margin: EdgeInsets.all(10),
                         width: 400,
                         height: 70,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(
                            color: Themes.lightTheme.primaryColor,
                            width: 2
                          ),

                         ),
                         child: Padding(
                           padding: const EdgeInsets.all(10),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Text("basic",style: Themes.lightTheme.textTheme.bodyMedium,),
                               Column(
                                 mainAxisAlignment: MainAxisAlignment.center,

                                 children: [
                                   Text("100", style: Themes.lightTheme.textTheme.displayMedium,),
                                   Text("8 days", style: Themes.lightTheme.textTheme.displayMedium,),
                                 ],
                               )
                             ],
                           ),
                         ),
                       ),
                     ),
                    InkWell(
                      onTap: (){
                        index = 1;
                        setState(() {
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        width: 400,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(
                              color: Themes.lightTheme.primaryColor,
                              width: 2
                          ),

                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("pro",style: Themes.lightTheme.textTheme.bodyMedium,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,

                                children: [
                                  Text("200", style: Themes.lightTheme.textTheme.displayMedium,),
                                  Text("2 month", style: Themes.lightTheme.textTheme.displayMedium,),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        index = 2;
                        setState(() {
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        width: 400,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border: Border.all(
                              color: Themes.lightTheme.primaryColor,
                              width: 2
                          ),

                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("premium",style: Themes.lightTheme.textTheme.bodyMedium,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,

                                children: [
                                  Text("250", style: Themes.lightTheme.textTheme.displayMedium,),
                                  Text("6 month", style: Themes.lightTheme.textTheme.displayMedium,),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),




                  ],

                ),
                InkWell(
                  onTap: (){
                    Navigator.popAndPushNamed(context, Payment.routeName);
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
