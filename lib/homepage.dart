import 'package:finance_mobile_app_ui/card.dart';
import 'package:finance_mobile_app_ui/categories.dart';
import 'package:finance_mobile_app_ui/online_card.dart';
import 'package:finance_mobile_app_ui/profile.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'activity_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          items: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home_filled,
                  size: 30,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.add,
                  size: 30,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite_outline,
                  size: 30,
                ))
          ],
          onTap: (index) {},
          backgroundColor: Colors.deepPurple.shade400,
          buttonBackgroundColor: Colors.pinkAccent,
          height: 70,
          animationCurve: Curves.easeInCirc,
        ),
        backgroundColor: Colors.grey.shade100,
        body: Column(
          children: [
            //app bar
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello Tridip,",
                        style: TextStyle(
                            color: Colors.grey.shade700, fontSize: 17),
                      ),
                      Text(
                        "Welcome Back!",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87),
                      )
                    ],
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.notification_add_outlined,
                        size: 30,
                      ))
                ],
              ),
            ),

            SizedBox(
              height: 10,
            ),
            //card
            CardView(amount: "4,570,90"),

            SizedBox(
              height: 20,
            ),

            //categories
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Categories(
                    icon: "lib/icons/send.png",
                    text: "Send",
                    color: Colors.blue,
                  ),
                  GestureDetector(
                    child: Categories(
                      icon: "lib/icons/credit_card.png",
                      text: "Card",
                      color: Colors.deepPurple,
                    ),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>OnlineCard()));
                    },
                  ),
                  Categories(
                    icon: "lib/icons/menu1.png",
                    text: "More",
                    color: Colors.orange,
                  ),
                ],
              ),
            ),

            //profile
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 15.0, horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  UserProfile(
                    image: "lib/icons/search.png",
                    text: "Search",
                    color: Colors.grey.shade50,
                  ),
                  UserProfile(
                    image: "lib/icons/man1.png",
                    text: "Fandit",
                    color: Colors.grey.shade50,
                  ),
                  UserProfile(
                    image: "lib/icons/beauty.png",
                    text: "Aziee",
                    color: Colors.grey.shade50,
                  ),
                  UserProfile(
                    image: "lib/icons/man2.png",
                    text: "Mamad",
                    color: Colors.grey.shade50,
                  ),
                  UserProfile(
                    image: "lib/icons/beard.png",
                    text: "Aezo",
                    color: Colors.grey.shade50,
                  ),
                ],
              ),
            ),

            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recent Activity",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade900),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(fontSize: 18, color: Colors.grey.shade700),
                  )
                ],
              ),
            ),

            //activity list
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    ActivityList(
                        activityName: "Google Bill",
                        date: "12 August,2022",
                        icon: "lib/icons/search (1).png",
                        price: 229.0
                    ),
                    ActivityList(
                        activityName: "TikTok Product",
                        date: "25 Jan,2022",
                        icon: "lib/icons/tik-tok.png",
                        price: 250.0
                    ),
                    ActivityList(
                        activityName: "Apple Macbook",
                        date: "04 June,2022",
                        icon: "lib/icons/apple-logo.png",
                        price: 539.5
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
