import 'package:flutter/material.dart';

class BotNavBar extends StatelessWidget {

  static const String routeName = 'bot_nav_bar';


  const BotNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.white,
      ),
      child: Row(

        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.wallet_rounded),
          Icon(Icons.wallet_rounded),
          Icon(Icons.wallet_rounded),
          Icon(Icons.wallet_rounded),


        ],
      ),
    );
  }
}
