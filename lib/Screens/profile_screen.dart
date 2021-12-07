import 'package:flutter/material.dart';
import 'package:gemsharbor/Screens/home_screen.dart';
import 'package:gemsharbor/Screens/widget_screen.dart';
import 'package:get/get.dart';

import '../constaint.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(

          children: [
            const Appbar1(),
            Expanded(
              flex: 7,
              child: ListView(
                children: [
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                    child: Column(
                      children: [
                        ImageWidget(circleAvatar: const showImage()),
                        fixsize,

                        fixsize,
                         const CustomTextFeild(lable: "Name", hinttext: "Jhon"),
                        fixsize,
                        const CustomTextFeild(lable: "Last_Name", hinttext: "Harry"),
                        fixsize,
                        const CustomTextFeild(lable: "Email", hinttext: "Gemsharbor@gmail.com"),
                        fixsize,
                        const CustomTextFeild(lable: "Phone_Number", hinttext: "+923********"),
                        fixsize,
                        const CustomTextFeild(lable: "Address", hinttext: "Street NO#2"),
                        AppButton1(name: "Submit", onpressed: (){
                          Get.to(const HomePage());
                        }, size: 300)


                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class smallTextFeild extends StatelessWidget {
  const smallTextFeild({
    Key? key,
    required this.labeltext,
    required this.hinttext,
    required this.icon,
  }) : super(key: key);

  final String labeltext;
  final String hinttext;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labeltext,
            style: const TextStyle(
                fontFamily: "Gilroy-Light", fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 3,
          ),
          Container(
            width: double.infinity,
            height: 47,
            // decoration: outsideRowDecoration,
            child: Row(
              // ignore: prefer_const_constructors
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    alignment: Alignment.center,
                    child: Icon(
                      icon,
                      color: kSplashColor,
                      size: 30,
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: TextField(
                    cursorColor: Colors.black38,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      // suffixIcon: Icon(Icons.check,color: Colors.green,),
                        contentPadding: const EdgeInsets.only(
                            left: 15, bottom: 11, top: 11, right: 15),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintText: hinttext,
                        hintStyle: const TextStyle(
                            fontFamily: "fontFamily: 'Gilroy-Light',")),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}




class ImageWidget extends StatelessWidget {
  ImageWidget({
    required this.circleAvatar,
    Key? key,
  }) : super(key: key);

  Widget circleAvatar;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            "assets/image/Text.png",
            scale: 2.0,
          ),
          Container(
            transform: Matrix4.translationValues(56, 35, 0),
            child: circleAvatar,
          )
        ],
      ),
    );
  }
}

class showImage extends StatelessWidget {
  const showImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: kSplashColor,
      radius: 20,
      child: IconButton(
        onPressed: () {
          Get.bottomSheet(
            Container(
                height: 200,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    children: [
                      const Text(
                        "upload profile picture",
                        style: TextStyle(
                            fontFamily: "Gilroy-Light", fontSize: 14
                        )
                      ),
                      const Divider(
                        color: Colors.black26,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            "Camera",
                            style:  TextStyle(
                              fontFamily: "Gilroy-Light",
                              fontSize: 14,
                              color: Colors.indigo[800],
                            )
                          ),
                        ),
                      ),
                      const Divider(
                        color: Colors.black26,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            "Gallery",
                            style: TextStyle(
                              fontFamily: "Gilroy-Light",
                              fontSize: 14,
                              color: Colors.indigo[800],
                            )
                          ),
                        ),
                      ),
                      const Divider(
                        thickness: 5,
                        color: Colors.black12,
                      ),
                      InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: const Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            "Cancel",
                            style: TextStyle(
                              fontFamily: "Gilroy-Light",
                              fontSize: 14,
                              color: Colors.red,
                            )
                          ),
                        ),
                      ),
                    ],
                  ),
                )),

            // shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(35),
            //     side: const BorderSide(
            //         width: 5,
            //         color: Colors.black
            //     )
            // ),

            enableDrag: false,
          );
        },
        icon: const Icon(
          Icons.camera_alt_sharp,
          color: Colors.white,
        ),
      ),
    );
  }
}