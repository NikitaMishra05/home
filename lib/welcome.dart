import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home/signin.dart';

class Welcome extends StatefulWidget{
  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/nature3.jpg"),
                    fit: BoxFit.cover)),
            ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0,left: 30),
            child: Container(
              height: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Discover \nMindful Hiking",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                  ),
                  Container(
                    width: 200,
                    child: Text("Hiking and connecting with nature? choose a way that is right for you.",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  InkWell( onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Signin()));
                  },
                    child: Container(
                      height: 50,
                      width: 120,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(35))

                      ),
                      child: Text("Sign In",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 120,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.orangeAccent,
                        borderRadius: BorderRadius.all(Radius.circular(35))

                    ),
                    child: Text("Sign Up",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
        ]
      ),

    );
  }
}