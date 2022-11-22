import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  final String icon;
  final String text;
  final color;
  const Categories({Key? key, required this.icon, required this.text, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.16,
      width: MediaQuery.of(context).size.width*0.28,
      decoration: BoxDecoration(
          color: color[700],
          borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Container(
              height: 60,
              width: 60,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: color[400],
                  ),
              child: Image.asset(icon,height: 30,width: 30)
              ),
            ),
          Text(text,style: TextStyle(color: Colors.grey.shade100,fontSize: 22,fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}
