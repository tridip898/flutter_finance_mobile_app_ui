import 'package:flutter/material.dart';

class ActivityList extends StatelessWidget {
  final String activityName;
  final String date;
  final String icon;
  final double price;
  const ActivityList({Key? key, required this.activityName, required this.date, required this.icon, required this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      height: 70,
      decoration: BoxDecoration(
          color: Colors.grey.shade200.withOpacity(0.8),
          borderRadius: BorderRadius.circular(10)
      ),
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                  height: 55,
                  width: 55,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    border: Border.all(color: Colors.grey.shade500,width: 2),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Image.asset(icon,height: 40,width: 40)
              ),
              SizedBox(width: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(activityName,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                  Text(date,style: TextStyle(fontSize: 18),),
                ],
              ),
            ],
          ),
          Text("\$"+price.toString(),style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}
