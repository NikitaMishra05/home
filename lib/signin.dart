import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Signin extends StatefulWidget{
  @override
  State<Signin> createState() => _SigninState();

}

class _SigninState extends State<Signin> {
  final username_controller=TextEditingController();
  final password_controller=TextEditingController();
  bool isvisible=false;
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffB6D0E2),
      body: Container(
        width: 500,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/flight.png",
            height: 100,
              width: 100,
            ),
            Text("Good to see you again!",
            style: TextStyle(
              color: Colors.blueAccent,
              fontWeight: FontWeight.w900,
              fontSize: 25
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
                  controller: username_controller,
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
                  controller: password_controller,
                  decoration: InputDecoration(border: InputBorder.none,
                      suffixIcon: InkWell(onTap: (){
                        setState(() {
                          isvisible=!isvisible;
                        });
                        },
                        child: isvisible?Icon(Icons.visibility_off):Icon(Icons.visibility),
                      ),
                    hintText: "Password",
                    hintStyle: TextStyle(fontSize: 14)
                  ),
                  obscureText: isvisible,

                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 200, top:2),
              child: Text("Recovery Password?",
                style:TextStyle(fontSize: 10,
                fontWeight: FontWeight.w500
                ) ,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 45,
                width: 120,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: Text("Sign In",
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
      ),

    );
  }
}