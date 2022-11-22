import 'package:flutter/material.dart';

class CardMenu extends StatelessWidget {
  final icon;
  final String text;
  const CardMenu({Key? key, required this.icon, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                border: Border.all(
                    color: Colors.grey.shade300,
                    width: 2),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Icon(icon,color: Colors.blue,size: 35,)
            ),
            Text(text,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
          ],
        ),
      ),
    );
  }
}
