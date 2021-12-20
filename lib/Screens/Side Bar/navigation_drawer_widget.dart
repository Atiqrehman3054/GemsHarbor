import 'package:flutter/material.dart';
import 'package:gemsharbor/Screens/Splash_Screens/login_screen.dart';
import 'package:gemsharbor/Screens/Splash_Screens/login_signup.dart';
import 'package:gemsharbor/Screens/Splash_Screens/sign_up.dart';
import 'package:gemsharbor/Screens/biding_screen.dart';
import 'package:gemsharbor/Screens/category_screen.dart';
import 'package:gemsharbor/Screens/notifcation_screen.dart';
import 'package:gemsharbor/Screens/notification_setting_screen.dart';
import 'package:gemsharbor/Screens/widgets/widget_screen.dart';
import 'package:gemsharbor/constaint.dart';
import 'package:get/get.dart';



class NavigationDrawerWidget extends StatelessWidget {
  final padding = const EdgeInsets.symmetric(horizontal: 20);

   const NavigationDrawerWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    const name = 'Atiq Rehman';
    const email = 'Gems@gmail.com';
    const AssetImage ='assets/image/2.png';

    return Drawer(

      child: Container(
        decoration: const BoxDecoration(
          borderRadius:  BorderRadius.only(topRight: Radius.circular(15), bottomRight: Radius.circular(15) ),
        ),
        child: Material(
          color: Colors.white,
          child: ListView(
            children: <Widget>[
              buildHeader(
                urlImage: AssetImage,
                name: name,
                email: email, onClicked: () {  },

              ),
              Container(
                decoration: const BoxDecoration(
                  // borderRadius: BorderRadius.circular(15)

                ),
                padding: padding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Divider(
                      thickness: 1,

                    ),
                    const SizedBox(height: 16),
                    buildMenuItem(
                      text:
                              'View all categories',

                      icon: Icons.menu,
                      onClicked: () => selectedItem(context, 0),
                    ),

                    const SizedBox(height: 24),
                    buildMenuItem(
                      text: 'Bidding History',
                      icon: Icons.stream,
                      onClicked: () => selectedItem(context, 1),
                    ),

                    const SizedBox(height: 16),
                    buildMenuItem(
                      text: 'Notification',
                      icon: Icons.notifications_outlined,
                      onClicked: () => selectedItem(context, 2),
                    ),
                    const SizedBox(height: 16),
                    buildMenuItem(
                      text: 'Notification Setting',
                      icon: Icons.notifications_outlined,
                      onClicked: () => selectedItem(context, 3),
                    ),

                    buildMenuItem(
                      text: 'EmeraldGarnet',
                      icon: Icons.security,
                      onClicked: () => selectedItem(context, 4),
                    ),

                    const SizedBox(height: 16),
                    buildMenuItem(
                      text: 'Rubellite',
                      icon: Icons.security,
                      onClicked: () => selectedItem(context, 5),
                    ),
                    const SizedBox(height: 16),
                    buildMenuItem(
                      text: 'Register',
                      icon: Icons.logout,
                      onClicked: () => selectedItem(context, 6),

                    ),
                    buildMenuItem(
                      text: 'Login',
                      icon: Icons.logout,
                      onClicked: () => selectedItem(context, 7),

                    ),




                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildHeader({
     required String urlImage ,
    required String name,
    required String email,
    required VoidCallback onClicked,
  }) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          padding: padding.add(const EdgeInsets.symmetric(vertical: 40)),
          child: Row(
            children: [

               const CircleAvatar(radius: 30, backgroundImage:AssetImage("assets/image/real_diamond.png",),

              ),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    email,
                    style: const TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ],
              ),
              Spacer(),

            ],
          ),
        ),
      );



  Widget buildMenuItem({
    required String text,
    IconData? icon,
  required  VoidCallback onClicked,
  }) {
    const color = kSplashColor;
    const color1 = Colors.black;
    final hoverColor = Colors.black38;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: const TextStyle(color: color1)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();

    switch (index) {
      case 0:
        Get.to(const CategoreyScreen(),);
        break;
      case 1:

        Get.to(const BidingScreen(),);
        break;
      case 2:
        Get.to(const NotificationScreen());
        break;
        case 3:

          Get.to(const NotificationSettingsScreen());
        break;
        case 4:
          break;
          case 5:
           break;
      case 6:
        Get.to( SignUp());
        print(index);
        break;
      case 7:
        Get.to( LoginScreens());
        print(index);
        break;



    }
  }
}
