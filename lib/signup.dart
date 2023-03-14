import 'package:flutter/material.dart';

class Sign_up extends StatefulWidget{
  @override
  State<Sign_up> createState() => _Sign_upState();
}

class _Sign_upState extends State<Sign_up> {
  @override
  Widget build(BuildContext context) {
        return Scaffold(
          backgroundColor: Color(0xffB6D0E2),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Container(
                child: Column(
                  children: [
                    Text("Let's Create an Account for \n Only for you!",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        padding: EdgeInsets.only(left: 15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: TextField(

                          decoration: InputDecoration(border: InputBorder.none,
                              hintText: "Enter Your Username",
                              hintStyle:TextStyle(fontSize: 14)
                          ),

                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        padding: EdgeInsets.only(left: 15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: TextField(

                          decoration: InputDecoration(border: InputBorder.none,

                              hintText: "Enter Your Email",
                              hintStyle: TextStyle(fontSize: 14)
                          ),


                        ),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        padding: EdgeInsets.only(left: 15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: TextField(

                          decoration: InputDecoration(border: InputBorder.none,
                              hintText: "Enter Your Password",
                              hintStyle:TextStyle(fontSize: 14)
                          ),

                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        padding: EdgeInsets.only(left: 15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: TextField(

                          decoration: InputDecoration(border: InputBorder.none,

                              hintText: "Confirm Password",
                              hintStyle: TextStyle(fontSize: 14)
                          ),


                        ),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        padding: EdgeInsets.only(left: 15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: TextField(

                          decoration: InputDecoration(border: InputBorder.none,

                              hintText: "Gender",
                              hintStyle: TextStyle(fontSize: 14)
                          ),


                        ),

                      ),
                    ),
                  ],
                ),
              ),



              Padding(
                padding: const EdgeInsets.only(top: 60.0),
                child: Container(
                    height: 48,
                    width: 320,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.orangeAccent,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: Text("Sign Up",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                      ),
                    )
                ),
              ),
            ],
          ),
        );
  }
}