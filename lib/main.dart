import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home/firebase_options.dart';
import 'package:home/signin.dart';
import 'package:home/splash.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(MyApp());

}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Home",
      theme: ThemeData(
              brightness: Brightness.light,
              primarySwatch:Colors.cyan,
      ),
      home: Splash(),
    );
  }
}

