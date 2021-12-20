import 'package:flutter/material.dart';
import 'package:gemsharbor/Screens/widgets/widget_screen.dart';
import 'package:gemsharbor/constaint.dart';
import 'package:get/get.dart';
import '../home_screen.dart';
import 'login_screen.dart';
class SignUp extends StatefulWidget {

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Appbar2(buttonShow: false,),
                  Container(
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
                                "Register",
                                style:
                                TextStyle(
                                  // fontFamily: ,
                                    fontSize: 16,
                                    color: kSplashColor,
                                    fontWeight: FontWeight.w700),
                              )
                          ),
                          const SizedBox(height: 10,),

                          const CustomTextFeild(hinttext: "Name", lable: "Your Full Name"),
                          const CustomTextFeild(hinttext: "Email", lable: "Email"),
                          const CustomTextFeild(hinttext: "User name", lable: "User Name"),
                          const CustomTextFeild(hinttext: "Password", lable: "Password"),
                          const CustomTextFeild(hinttext: "Confirm Password", lable: "Confirm Password"),


                          Center(
                            child: AppButton(name: "Register", onpressed:(){
                              Get.to(LoginScreens());
                            },size: 90),
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
                                    color:kSplashColor),
                              )),
                          const SizedBox(
                            height: 20,
                          ),
                           AppButton(name: "Sign in using facebook", onpressed: (){}, size: MediaQuery.of(context).size.width)
                        ],
                      )),

                ]
            ),
          ),
        ),
      ),
    );
  }
}




const KTextFieldDecoration= InputDecoration(

  hintText: 'Enter your email',
  contentPadding:
  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(15.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide:
    BorderSide( width: 0.1),
    borderRadius: BorderRadius.all(Radius.circular(15.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide:
    BorderSide( width: 0.1  ),
    borderRadius: BorderRadius.all(Radius.circular(15.0)),
  ),
);
const kSendButtonTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 12.0,
);