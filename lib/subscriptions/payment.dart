import 'package:edu/subscriptions/subscription_done_screen.dart';
import 'package:flutter/material.dart';

import '../themes.dart';

class Payment extends StatefulWidget {
  static const String routeName = 'payment';

  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
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

              children: [
                Expanded(
                    flex: 1,
                    child: SizedBox(height: 100,)),
                Expanded(
                    flex: 1,
                    child: Center(child: Text("Payment",style: Themes.lightTheme.textTheme.labelMedium))),



                SingleChildScrollView(
                  child: Expanded(
                    flex: 4,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.only(top: 50, bottom: 20, right: 20,left: 20),
                      decoration: BoxDecoration(
                        color: Themes.lightTheme.appBarTheme.backgroundColor,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50)),
                      ),
                      child: Column(
                        children: [
                  
                          Text("Cardholder Name"),
                          Container(
                            height: 60,
                            decoration:BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              color: Themes.lightTheme.appBarTheme.backgroundColor,
                              boxShadow: [
                                BoxShadow(
                                  color: Themes.lightTheme.shadowColor,
                                  offset: Offset(0, 8),
                                  blurRadius: 4,
                                )
                              ]
                  
                            ),
                            child: TextFormField(
                  
                              keyboardType: TextInputType.text,
                              keyboardAppearance: Brightness.light,
                              textInputAction: TextInputAction.send,
                  
                              maxLines: 1,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(horizontal: 14,vertical: 4),
                  
                                hintStyle: Themes.lightTheme.textTheme.displayMedium,
                              ),
                  
                            ),
                          ),
                          Text("Card Number"),
                          Container(
                            height: 60,
                            decoration:BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Themes.lightTheme.appBarTheme.backgroundColor,
                                boxShadow: [
                                  BoxShadow(
                                    color: Themes.lightTheme.shadowColor,
                                    offset: Offset(0, 8),
                                    blurRadius: 4,
                                  )
                                ]
                  
                            ),
                            child: TextFormField(
                  
                              keyboardType: TextInputType.number,
                              keyboardAppearance: Brightness.light,
                              textInputAction: TextInputAction.send,
                  
                              maxLines: 1,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(horizontal: 14,vertical: 4),
                                
                  
                                hintStyle: Themes.lightTheme.textTheme.displayMedium,
                              ),
                  
                            ),
                          ),
                          Row(
                            children: [
                  
                              Column(
                                children: [
                                  Text("Expiration"),
                                  Container(
                                    height: 60,
                                    decoration:BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(20)),
                                        color: Themes.lightTheme.appBarTheme.backgroundColor,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Themes.lightTheme.shadowColor,
                                            offset: Offset(0, 8),
                                            blurRadius: 4,
                                          )
                                        ]
                  
                                    ),
                                    child: TextFormField(
                  
                                      keyboardType: TextInputType.datetime,
                                      keyboardAppearance: Brightness.light,
                                      textInputAction: TextInputAction.send,
                  
                                      maxLines: 1,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.symmetric(horizontal: 14,vertical: 4),
                  
                  
                                        hintStyle: Themes.lightTheme.textTheme.displayMedium,
                                      ),
                  
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text("Expiration"),
                                  Container(
                                    height: 60,
                                    decoration:BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(20)),
                                        color: Themes.lightTheme.appBarTheme.backgroundColor,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Themes.lightTheme.shadowColor,
                                            offset: Offset(0, 8),
                                            blurRadius: 4,
                                          )
                                        ]
                  
                                    ),
                                    child: TextFormField(
                  
                                      keyboardType: TextInputType.number,
                                      keyboardAppearance: Brightness.light,
                                      textInputAction: TextInputAction.send,
                  
                                      maxLines: 1,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.symmetric(horizontal: 14,vertical: 4),
                  
                  
                                        hintStyle: Themes.lightTheme.textTheme.displayMedium,
                                      ),
                  
                                    ),
                                  ),
                                ],
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
                                  child: Text("Finish",style: Themes.lightTheme.textTheme.titleMedium,)
                              ),
                            ),
                          ),
                        ],
                      ),
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
