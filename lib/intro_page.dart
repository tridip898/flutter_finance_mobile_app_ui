import 'package:flutter/material.dart';
import 'package:finance_mobile_app_ui/homepage.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomRight,
              colors: [
                Colors.grey.shade900.withOpacity(0.1),
                Colors.grey.shade500.withOpacity(0.5)
              ]),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 35.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("lib/images/credit.png"),
                          fit: BoxFit.cover)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Create your own card here",
                  style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade100,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 5),
                child: Text("Billy is the best solution to monitor all your financial activities",style: TextStyle(fontSize: 19,color: Colors.grey.shade400),),
              ),

              SizedBox(height: 60,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MaterialButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                      },
                      child: Text("Skip",style: TextStyle(fontSize: 25,color: Colors.grey.shade100,fontWeight: FontWeight.bold),),
                      padding: EdgeInsets.only(left: 30,right: 30,top: 10,bottom: 10),
                      color: Colors.grey.shade200.withOpacity(0.5),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    )
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}

