import 'dart:async';
import 'package:flutter/material.dart';
import 'package:gemsharbor/Screens/home_screen.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override

  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }
  startTime() async {
    var duration = const Duration(seconds: 3);
    return  Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:  Center(child: Image.asset("assets/image/splash-logo.png",)),




    );
  }
}
