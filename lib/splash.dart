import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home/signin.dart';

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

backgroundColor: Colors.blue,
     body: Container(
       alignment: Alignment.center,
       child: Column(

         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Image.asset("assets/icon.png",
             height: 100,
             width: 100,

           ),
         ],
       ),
     ),

   );

  }
  void nextScreen(){
    Future.delayed(Duration(seconds: 2),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Signin()));
    });
  }
}