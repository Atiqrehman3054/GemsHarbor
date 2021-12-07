import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gemsharbor/constaint.dart';
import 'package:gemsharbor/Screens/Splash_Screens/login_screen.dart';
import 'package:gemsharbor/Screens/Splash_Screens/sign_up.dart';
import 'package:get/get.dart';

class LoginSignup extends StatelessWidget {
  const LoginSignup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          Container(
              decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/image/backgound (3).png",
              ),
              fit: BoxFit.cover, // -> 02
            ),
          )),
          Container(
            alignment: Alignment.topCenter,
            child: Image.asset("assets/image/splash-logo.png"),
          ),
          Container(
            transform: Matrix4.translationValues(0, -20, 0),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: blueColor.withOpacity(0.8),
                          fixedSize: const Size(0, 70),
                        ),
                        onPressed: () {

                          Get.to(SignUp());
                        },
                        child: const Text("SignUp")),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white.withOpacity(0.6),
                          fixedSize: const Size(0, 70),
                        ),
                        onPressed: () {
                          Get.to(LoginScreens());
                        },
                        child: const Text("SignIn",style: TextStyle(color: Colors.black),)),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
