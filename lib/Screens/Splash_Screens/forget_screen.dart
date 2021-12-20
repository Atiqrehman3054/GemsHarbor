

import 'package:flutter/material.dart';
import 'package:gemsharbor/Screens/widgets/widget_screen.dart';
import 'package:gemsharbor/constaint.dart';
import 'package:get/get.dart';

import '../home_screen.dart';
class ForgetScreen extends StatefulWidget {

  @override
  _ForgetScreenState createState() => _ForgetScreenState();
}

class _ForgetScreenState extends State<ForgetScreen> {


  @override
  Widget build(BuildContext context) {
    final size =  MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      child: SafeArea(

        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

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
                                  "Forgot Password",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: kSplashColor,
                                      fontWeight: FontWeight.w700),
                                )),
                            fixsize,
                            fixsize,
                            const CustomTextFeild(hinttext: "Enter your email", lable: "Email Address"),


                            fixsize,




                            fixsize,
                            fixsize,
                            AppButton(name: "Send Email", onpressed: (){}, size: size),
                          ],
                        )),
                  ),
                ]
            ),
          ),
        ),
      ),
    );
  }
}


