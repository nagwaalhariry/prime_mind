import 'package:edu/navigations/bot_nav_bar.dart';
import 'package:edu/navigations/nav_drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'home_screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F9FA),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(0xFF4b5cc8),
        ),
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Education",style: TextStyle(color: Color(0xFF333333),fontSize: 30,fontWeight: FontWeight.bold),),
              Icon(Icons.calendar_month_sharp,color: Colors.black,size: 18,),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF4b5cc8),
        onPressed: (){},
        elevation: 6,
        shape: CircleBorder(),
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            spacing: 10,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("data",style: TextStyle(color: Color(0xFF333333),fontSize: 24,fontWeight: FontWeight.bold),),
                  Row(
                    children: [
                      Text("Data",style: TextStyle(fontSize: 16, color: Color(0xFF4b5cc8), fontWeight: FontWeight.bold),),
                      SizedBox(width: 10,),
                      Icon(Icons.arrow_forward,size: 18,color: Color(0xFF333333),),
                    ],
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                height: 210,
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(20),


                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0, 8),
                      blurRadius: 20,
                    )
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(12),bottomLeft: Radius.circular(12),bottomRight: Radius.circular(12)),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height : 30,
                                  width: 2,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF4b5cc8),
                                  ),
                                ),
                                Column(
                                  children: [
                                    Text("data"),
                                    Row(
                                      children: [
                                        Icon(Icons.ac_unit,color: Color(0xFF4b5cc8),),
                                        Text("data"),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  height : 30,
                                  width: 2,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF4b5cc8),
                                  ),
                                ),
                                Column(
                                  children: [
                                    Text("data"),
                                    Row(
                                      children: [
                                        Icon(Icons.ac_unit,color: Color(0xFF4b5cc8),),
                                        Text("data"),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Color(0xFF4b5cc8),
                                width: 6,
                              )
                          ),
                          child: Center(child: Text("1010",style: TextStyle(color: Color(0xFF4b5cc8),fontWeight: FontWeight.bold),)),
                        ),
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      height: 2,
                      decoration: BoxDecoration(
                        color: Color(0xFF4b5cc8),
                      ),
                      margin: const EdgeInsets.all(10),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text("data"),
                            Container(
                              height: 2,
                              width: 30,
                              decoration: BoxDecoration(
                                  color: Color(0xFF4b5cc8),
                                  gradient: LinearGradient(colors: [
                                    Color(0xFF4b5cc8),
                                    Colors.transparent,
                                  ])
                              ),
                            ),
                            Text("data"),
                          ],
                        ),
                        Column(
                          children: [
                            Text("data"),
                            Container(
                              height: 2,
                              width: 30,
                              decoration: BoxDecoration(
                                  color: Color(0xFF4b5cc8),
                                  gradient: LinearGradient(colors: [
                                    Color(0xFF4b5cc8),
                                    Colors.transparent,
                                  ])
                              ),
                            ),
                            Text("data"),
                          ],
                        ),
                        Column(
                          children: [
                            Text("data"),
                            Container(
                              height: 2,
                              width: 30,
                              decoration: BoxDecoration(
                                  color: Color(0xFF4b5cc8),
                                  gradient: LinearGradient(colors: [
                                    Color(0xFF4b5cc8),
                                    Colors.transparent,
                                  ])
                              ),
                            ),
                            Text("data"),
                          ],
                        ),

                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Text("data",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Color(0xFF333333)),),
                  Row(
                    children: [
                      Text("Data",style: TextStyle(fontSize: 16,color: Color(0xFF4b5cc8),fontWeight: FontWeight.bold),),
                      SizedBox(width: 10,),
                      Icon(Icons.arrow_forward,size: 18,color: Color(0xFF333333),),
                    ],
                  ),

                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 10,
                  children: [
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            color: Colors.grey,
                            offset: const Offset(0, 4),
                          )
                        ],
                        borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),


                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                        child: Stack(
                          children: [
                            Container(
                              width: 130,
                              color: Color(0xFFf26089),
                            ),
                            Positioned(
                                top: -50,
                                left: -40,
                                child: ClipOval(
                                  child: Container(
                                    width: 120,
                                    height: 120,
                                    color: Color(0xFFffb7cd),

                                  ),
                                )
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            color: Colors.grey,
                            offset: const Offset(0, 8),
                          )
                        ],
                        borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),


                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                        child: Stack(
                          children: [
                            Container(
                              width: 130,
                              color: Color(0xFF4b5cc8),
                            ),
                            Positioned(
                                top: -50,
                                left: -40,
                                child: ClipOval(
                                  child: Container(
                                    width: 120,
                                    height: 120,
                                    color: Color(0xFF8fa6ea),

                                  ),
                                )
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            color: Colors.grey,
                            offset: const Offset(0, 8),
                          )
                        ],
                        borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),


                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                        child: Stack(
                          children: [
                            Container(
                              width: 130,
                              color: Color(0xFFf77e81),
                            ),
                            Positioned(
                                top: -50,
                                left: -40,
                                child: ClipOval(
                                  child: Container(
                                    width: 120,
                                    height: 120,
                                    color: Color(0xFFfdb7ca),

                                  ),
                                )
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            color: Colors.grey,
                            offset: const Offset(0, 4),
                          )
                        ],
                        borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),


                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                        child: Stack(
                          children: [
                            Container(
                              width: 130,
                              color: Color(0xFFf26089),
                            ),
                            Positioned(
                                top: -50,
                                left: -40,
                                child: ClipOval(
                                  child: Container(
                                    width: 120,
                                    height: 120,
                                    color: Color(0xFFffb7cd),

                                  ),
                                )
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            color: Colors.grey,
                            offset: const Offset(0, 8),
                          )
                        ],
                        borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),


                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                        child: Stack(
                          children: [
                            Container(
                              width: 130,
                              color: Color(0xFF4b5cc8),
                            ),
                            Positioned(
                                top: -50,
                                left: -40,
                                child: ClipOval(
                                  child: Container(
                                    width: 120,
                                    height: 120,
                                    color: Color(0xFF8fa6ea),

                                  ),
                                )
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            color: Colors.grey,
                            offset: const Offset(0, 8),
                          )
                        ],
                        borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),


                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                        child: Stack(
                          children: [
                            Container(
                              width: 130,
                              color: Color(0xFFf77e81),
                            ),
                            Positioned(
                                top: -50,
                                left: -40,
                                child: ClipOval(
                                  child: Container(
                                    width: 120,
                                    height: 120,
                                    color: Color(0xFFfdb7ca),

                                  ),
                                )
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            color: Colors.grey,
                            offset: const Offset(0, 4),
                          )
                        ],
                        borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),


                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                        child: Stack(
                          children: [
                            Container(
                              width: 130,
                              color: Color(0xFFf26089),
                            ),
                            Positioned(
                                top: -50,
                                left: -40,
                                child: ClipOval(
                                  child: Container(
                                    width: 120,
                                    height: 120,
                                    color: Color(0xFFffb7cd),

                                  ),
                                )
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            color: Colors.grey,
                            offset: const Offset(0, 8),
                          )
                        ],
                        borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),


                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                        child: Stack(
                          children: [
                            Container(
                              width: 130,
                              color: Color(0xFF4b5cc8),
                            ),
                            Positioned(
                                top: -50,
                                left: -40,
                                child: ClipOval(
                                  child: Container(
                                    width: 120,
                                    height: 120,
                                    color: Color(0xFF8fa6ea),

                                  ),
                                )
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            color: Colors.grey,
                            offset: const Offset(0, 8),
                          )
                        ],
                        borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),


                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                        child: Stack(
                          children: [
                            Container(
                              width: 130,
                              color: Color(0xFFf77e81),
                            ),
                            Positioned(
                                top: -50,
                                left: -40,
                                child: ClipOval(
                                  child: Container(
                                    width: 120,
                                    height: 120,
                                    color: Color(0xFFfdb7ca),

                                  ),
                                )
                            )
                          ],
                        ),
                      ),
                    ),


                  ],




                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Text("data",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Color(0xFF333333)),),
                  Row(
                    children: [
                      Text("Data",style: TextStyle(fontSize: 16,color: Color(0xFF4b5cc8),fontWeight: FontWeight.bold),),
                      SizedBox(width: 10,),
                      Icon(Icons.arrow_forward,size: 18,color: Color(0xFF333333),),
                    ],
                  ),

                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 10,
                  children: [
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            color: Colors.grey,
                            offset: const Offset(0, 4),
                          )
                        ],
                        borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),


                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                        child: Stack(
                          children: [
                            Container(
                              width: 130,
                              color: Color(0xFFf26089),
                            ),
                            Positioned(
                                top: -50,
                                left: -40,
                                child: ClipOval(
                                  child: Container(
                                    width: 120,
                                    height: 120,
                                    color: Color(0xFFffb7cd),

                                  ),
                                )
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            color: Colors.grey,
                            offset: const Offset(0, 8),
                          )
                        ],
                        borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),


                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                        child: Stack(
                          children: [
                            Container(
                              width: 130,
                              color: Color(0xFF4b5cc8),
                            ),
                            Positioned(
                                top: -50,
                                left: -40,
                                child: ClipOval(
                                  child: Container(
                                    width: 120,
                                    height: 120,
                                    color: Color(0xFF8fa6ea),

                                  ),
                                )
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            color: Colors.grey,
                            offset: const Offset(0, 8),
                          )
                        ],
                        borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),


                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                        child: Stack(
                          children: [
                            Container(
                              width: 130,
                              color: Color(0xFFf77e81),
                            ),
                            Positioned(
                                top: -50,
                                left: -40,
                                child: ClipOval(
                                  child: Container(
                                    width: 120,
                                    height: 120,
                                    color: Color(0xFFfdb7ca),

                                  ),
                                )
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            color: Colors.grey,
                            offset: const Offset(0, 4),
                          )
                        ],
                        borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),


                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                        child: Stack(
                          children: [
                            Container(
                              width: 130,
                              color: Color(0xFFf26089),
                            ),
                            Positioned(
                                top: -50,
                                left: -40,
                                child: ClipOval(
                                  child: Container(
                                    width: 120,
                                    height: 120,
                                    color: Color(0xFFffb7cd),

                                  ),
                                )
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            color: Colors.grey,
                            offset: const Offset(0, 8),
                          )
                        ],
                        borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),


                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                        child: Stack(
                          children: [
                            Container(
                              width: 130,
                              color: Color(0xFF4b5cc8),
                            ),
                            Positioned(
                                top: -50,
                                left: -40,
                                child: ClipOval(
                                  child: Container(
                                    width: 120,
                                    height: 120,
                                    color: Color(0xFF8fa6ea),

                                  ),
                                )
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            color: Colors.grey,
                            offset: const Offset(0, 8),
                          )
                        ],
                        borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),


                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                        child: Stack(
                          children: [
                            Container(
                              width: 130,
                              color: Color(0xFFf77e81),
                            ),
                            Positioned(
                                top: -50,
                                left: -40,
                                child: ClipOval(
                                  child: Container(
                                    width: 120,
                                    height: 120,
                                    color: Color(0xFFfdb7ca),

                                  ),
                                )
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            color: Colors.grey,
                            offset: const Offset(0, 4),
                          )
                        ],
                        borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),


                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                        child: Stack(
                          children: [
                            Container(
                              width: 130,
                              color: Color(0xFFf26089),
                            ),
                            Positioned(
                                top: -50,
                                left: -40,
                                child: ClipOval(
                                  child: Container(
                                    width: 120,
                                    height: 120,
                                    color: Color(0xFFffb7cd),

                                  ),
                                )
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            color: Colors.grey,
                            offset: const Offset(0, 8),
                          )
                        ],
                        borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),


                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                        child: Stack(
                          children: [
                            Container(
                              width: 130,
                              color: Color(0xFF4b5cc8),
                            ),
                            Positioned(
                                top: -50,
                                left: -40,
                                child: ClipOval(
                                  child: Container(
                                    width: 120,
                                    height: 120,
                                    color: Color(0xFF8fa6ea),

                                  ),
                                )
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            color: Colors.grey,
                            offset: const Offset(0, 8),
                          )
                        ],
                        borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),


                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                        child: Stack(
                          children: [
                            Container(
                              width: 130,
                              color: Color(0xFFf77e81),
                            ),
                            Positioned(
                                top: -50,
                                left: -40,
                                child: ClipOval(
                                  child: Container(
                                    width: 120,
                                    height: 120,
                                    color: Color(0xFFfdb7ca),

                                  ),
                                )
                            )
                          ],
                        ),
                      ),
                    ),


                  ],




                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Text("data",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Color(0xFF333333)),),
                  Row(
                    children: [
                      Text("Data",style: TextStyle(fontSize: 16,color: Color(0xFF4b5cc8),fontWeight: FontWeight.bold),),
                      SizedBox(width: 10,),
                      Icon(Icons.arrow_forward,size: 18,color: Color(0xFF333333),),
                    ],
                  ),

                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 10,
                  children: [
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            color: Colors.grey,
                            offset: const Offset(0, 4),
                          )
                        ],
                        borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),


                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                        child: Stack(
                          children: [
                            Container(
                              width: 130,
                              color: Color(0xFFf26089),
                            ),
                            Positioned(
                                top: -50,
                                left: -40,
                                child: ClipOval(
                                  child: Container(
                                    width: 120,
                                    height: 120,
                                    color: Color(0xFFffb7cd),

                                  ),
                                )
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            color: Colors.grey,
                            offset: const Offset(0, 8),
                          )
                        ],
                        borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),


                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                        child: Stack(
                          children: [
                            Container(
                              width: 130,
                              color: Color(0xFF4b5cc8),
                            ),
                            Positioned(
                                top: -50,
                                left: -40,
                                child: ClipOval(
                                  child: Container(
                                    width: 120,
                                    height: 120,
                                    color: Color(0xFF8fa6ea),

                                  ),
                                )
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            color: Colors.grey,
                            offset: const Offset(0, 8),
                          )
                        ],
                        borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),


                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                        child: Stack(
                          children: [
                            Container(
                              width: 130,
                              color: Color(0xFFf77e81),
                            ),
                            Positioned(
                                top: -50,
                                left: -40,
                                child: ClipOval(
                                  child: Container(
                                    width: 120,
                                    height: 120,
                                    color: Color(0xFFfdb7ca),

                                  ),
                                )
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            color: Colors.grey,
                            offset: const Offset(0, 4),
                          )
                        ],
                        borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),


                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                        child: Stack(
                          children: [
                            Container(
                              width: 130,
                              color: Color(0xFFf26089),
                            ),
                            Positioned(
                                top: -50,
                                left: -40,
                                child: ClipOval(
                                  child: Container(
                                    width: 120,
                                    height: 120,
                                    color: Color(0xFFffb7cd),

                                  ),
                                )
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            color: Colors.grey,
                            offset: const Offset(0, 8),
                          )
                        ],
                        borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),


                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                        child: Stack(
                          children: [
                            Container(
                              width: 130,
                              color: Color(0xFF4b5cc8),
                            ),
                            Positioned(
                                top: -50,
                                left: -40,
                                child: ClipOval(
                                  child: Container(
                                    width: 120,
                                    height: 120,
                                    color: Color(0xFF8fa6ea),

                                  ),
                                )
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            color: Colors.grey,
                            offset: const Offset(0, 8),
                          )
                        ],
                        borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),


                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                        child: Stack(
                          children: [
                            Container(
                              width: 130,
                              color: Color(0xFFf77e81),
                            ),
                            Positioned(
                                top: -50,
                                left: -40,
                                child: ClipOval(
                                  child: Container(
                                    width: 120,
                                    height: 120,
                                    color: Color(0xFFfdb7ca),

                                  ),
                                )
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            color: Colors.grey,
                            offset: const Offset(0, 4),
                          )
                        ],
                        borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),


                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                        child: Stack(
                          children: [
                            Container(
                              width: 130,
                              color: Color(0xFFf26089),
                            ),
                            Positioned(
                                top: -50,
                                left: -40,
                                child: ClipOval(
                                  child: Container(
                                    width: 120,
                                    height: 120,
                                    color: Color(0xFFffb7cd),

                                  ),
                                )
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            color: Colors.grey,
                            offset: const Offset(0, 8),
                          )
                        ],
                        borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),


                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                        child: Stack(
                          children: [
                            Container(
                              width: 130,
                              color: Color(0xFF4b5cc8),
                            ),
                            Positioned(
                                top: -50,
                                left: -40,
                                child: ClipOval(
                                  child: Container(
                                    width: 120,
                                    height: 120,
                                    color: Color(0xFF8fa6ea),

                                  ),
                                )
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            color: Colors.grey,
                            offset: const Offset(0, 8),
                          )
                        ],
                        borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),


                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(80),topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                        child: Stack(
                          children: [
                            Container(
                              width: 130,
                              color: Color(0xFFf77e81),
                            ),
                            Positioned(
                                top: -50,
                                left: -40,
                                child: ClipOval(
                                  child: Container(
                                    width: 120,
                                    height: 120,
                                    color: Color(0xFFfdb7ca),

                                  ),
                                )
                            )
                          ],
                        ),
                      ),
                    ),


                  ],




                ),
              ),

            ],
          ),
        ),
      ),
      bottomNavigationBar: BotNavBar(),
      drawer: Drawer(
        child: NavDrawer(),
      ),
    );
  }
}
