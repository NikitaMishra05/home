import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:home/welcome.dart';

class Splash extends StatefulWidget{
  @override
  State<Splash> createState() => _SplashState();
}


class _SplashState extends State<Splash> {
  @override
  void initState(){
  super.initState();
  nextScreen();
  }
  Widget build(BuildContext context) {
   return Scaffold(

backgroundColor: Color(0xff6082B6),
     body: Container(
       alignment: Alignment.center,
       child: Column(

         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Image.asset("assets/flight.png",
             height: 150,
             width: 150,

           ),
         ],
       ),
     ),

   );

  }
  void nextScreen(){
    Future.delayed(Duration(seconds: 2),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Welcome()));
    });
  }
}