import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  final String image;
  final String text;
  final color;
  const UserProfile({Key? key, required this.image, required this.text, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 65,
          width: 65,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.grey.shade50,
            border: Border.all(color: Colors.grey.shade300,width: 2)
          ),
          padding: EdgeInsets.all(4),
          child: Container(
              height: 55,
              width: 55,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: color,
                border: Border.all(color: Colors.grey.shade300,width: 2),
                borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        blurRadius: 15,
                        spreadRadius: 5,
                        offset: Offset(0, 3)
                    )
                  ]
              ),
              child: Image.asset(image,height: 40,width: 40)
          ),
        ),
        SizedBox(height: 6,),
        Text(text,style: TextStyle(fontSize: 18,color: Colors.grey.shade700),)
      ],
    );
  }
}
