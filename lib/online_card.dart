import 'package:finance_mobile_app_ui/card_menu.dart';
import 'package:flutter/material.dart';

class OnlineCard extends StatelessWidget {
  const OnlineCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List card = [
      ["Top up wallet money", Icons.credit_card_rounded],
      ["Create wallet budget", Icons.pie_chart],
      ["Set wallet limits", Icons.settings],
      ["Lock this card", Icons.lock],
    ];
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //app bar
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(50)),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                        )),
                  ),
                  Text(
                    "Online Card",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.more_vert,
                    size: 30,
                  )
                ],
              ),
            ),

            //card
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.23,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        tileMode: TileMode.repeated,
                        colors: [
                          Colors.grey.shade900.withOpacity(0.9),
                          Colors.grey.shade900.withOpacity(0.7)
                        ]),
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Current Balance",
                              style: TextStyle(
                                  fontSize: 18, color: Colors.grey.shade100),
                            ),
                            Spacer(),
                            Text(
                              "12/24",
                              style: TextStyle(
                                  fontSize: 18, color: Colors.grey.shade100),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "\$4,750,30",
                          style: TextStyle(
                              fontSize: 35,
                              color: Colors.grey.shade100,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "6755 8875 9973 2381",
                          style: TextStyle(
                              fontSize: 18, color: Colors.grey.shade100),
                        ),
                        Image.asset(
                          "lib/icons/ms.png",
                          height: 50,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),

            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
              child: Text(
                "Card menu:",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),

            Container(
              height: MediaQuery.of(context).size.height * 0.42,
              child: GridView.builder(
                  itemCount: card.length,
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.only(left: 10, right: 10),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return CardMenu(icon: card[index][1], text: card[index][0]);
                  }),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
              child: Container(
                height: 55,
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey.shade300, width: 2)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.add,color: Colors.blue,),
                    Text("add new card",style: TextStyle(fontSize: 20,color: Colors.blue,fontWeight: FontWeight.bold),)
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
