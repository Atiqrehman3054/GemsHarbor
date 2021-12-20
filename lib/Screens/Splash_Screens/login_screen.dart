import 'package:flutter/material.dart';
import 'package:gemsharbor/Screens/Splash_Screens/forget_screen.dart';
import 'package:gemsharbor/Screens/widgets/widget_screen.dart';
import 'package:gemsharbor/constaint.dart';
import 'package:get/get.dart';

import '../home_screen.dart';

class LoginScreens extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<LoginScreens> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Appbar2(buttonShow: false,),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Container(
                    width: double.infinity,
                    margin: const EdgeInsets.all(15.0),
                    padding: const EdgeInsets.all(30.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Center(
                            child: Text(
                          "Log In",
                          style: TextStyle(
                              fontSize: 16,
                              color: kSplashColor,
                              fontWeight: FontWeight.w700),
                        )),
                        fixsize,
                        const CustomTextFeild(
                            hinttext: "email or name",
                            lable: "User Name / Email"),
                        const CustomTextFeild(
                          hinttext: "password",
                          lable: "Password*",
                        ),
                        Container(
                            alignment: Alignment.centerRight,
                            child: InkWell(
                              onTap: () {
                                Get.to(ForgetScreen());
                              },
                              child: const Text(
                                "Forgot Password?",
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontSize: 14,
                                    color: kSplashColor),
                              ),
                            )),
                        fixsize,
                        fixsize,
                        Center(
                          child: AppButton(
                            name: "Login",
                            onpressed: () {
                              Get.to(HomePage());
                            },
                            size: 70,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Center(
                            child: Text(
                          "OR",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.italic,
                              fontSize: 15,
                              color: kSplashColor),
                        )),
                        fixsize,
                        fixsize,
                        AppButton(
                            name: "Sign in using facebook",
                            onpressed: () {},
                            size: size),
                      ],
                    )),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
