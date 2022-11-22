import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  final String amount;
  const CardView({Key? key, required this.amount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        height: MediaQuery.of(context).size.height*0.17,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                tileMode: TileMode.repeated,
                colors: [
                  Colors.grey.shade900.withOpacity(0.9),
                  Colors.grey.shade900.withOpacity(0.8)
                ]),
            borderRadius: BorderRadius.circular(10)
        ),
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Current Balance",style: TextStyle(fontSize: 17,color: Colors.grey.shade100),),
                SizedBox(height: 10,),
                Text("\$"+amount,style: TextStyle(fontSize: 40,color: Colors.grey.shade100,fontWeight: FontWeight.bold),)
              ],
            ),
            Spacer(),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.black,width: 1),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 10,
                        blurRadius: 20,
                        offset: Offset(0, 5)
                    )
                  ]
              ),
              child: IconButton(onPressed: (){}, icon: Icon(Icons.add,size: 30,)),
            )
          ],
        ),
      ),
    );
  }
}
