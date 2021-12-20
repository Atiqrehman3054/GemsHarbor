
import 'package:flutter/material.dart';
import 'package:gemsharbor/Screens/profile_edit_screen.dart';
import 'package:gemsharbor/Screens/widgets/widget_screen.dart';
import 'package:get/get.dart';
import '../constaint.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {



  late String title = "Gemesharbor";
  late String email= "Gehmsharbor@gmail.com";






  BoxDecoration decoration =  BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: AppColors.baseWhiteColor,
  );


  Widget buildlistTileWidget(
      {required String leading, required String trailing}) {
    return Container(
      decoration: decoration,
      child: ListTile(
        tileColor: AppColors.baseWhiteColor,
        leading: Text(
          leading,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: Text(
          trailing,
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  Widget buildBottomListTile(
      {required String leading, required String trailing}) {
    return Column(
      children: [
        Container(
          decoration: decoration,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ListTile(
              onTap: () {},
              tileColor: AppColors.baseWhiteColor,
              leading: Text(
                leading,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Wrap(
                spacing: 5,
                children: [
                  Text(
                    trailing,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  const Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
     fixsize,

      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.baseGrey30Color,

        body: Column(
          children: [
             Appbar2(buttonShow: true,),
            Expanded(
              flex: 9,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    Container(
                      decoration: decoration,
                      height: 200,
                      margin: const EdgeInsets.only(bottom: 10),

                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children:  [
                            const Center(
                              child: CircleAvatar(
                                radius: 48,
                                backgroundColor: Colors.red,
                                child: CircleAvatar(
                                  radius: 45,
                                  backgroundColor: Colors.transparent,
                                  backgroundImage: NetworkImage(
                                      "https://i.pinimg.com/originals/7b/48/65/7b48654b92587f3df86c21d7071bad42.jpg",
                                      scale: 1),
                                ),
                              ),
                            ),
                            Text(
                              title,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text(
                              "Peshawar Pakistan",
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: decoration,
                      margin: const EdgeInsets.only(bottom: 10),

                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                        child: Column(
                          children: [
                            buildlistTileWidget(
                                leading: "Full Name", trailing: title),
                            const Divider(),
                            buildlistTileWidget(
                                leading: "Email", trailing: email),
                            const Divider(),
                            buildlistTileWidget(
                                leading: "Address", trailing: "Peshawar Pakistan"),
                            const Divider(),
                            buildlistTileWidget(
                                leading: "Payment", trailing: "6001\t****\t*****1119"),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),

                      child: Padding(
                        padding: const EdgeInsets.symmetric(),
                        child: Column(
                          children: [
                            buildBottomListTile(leading: "WhisList", trailing: "5"),



                            buildBottomListTile(
                                leading: "My Order", trailing: "1 in transit"),

                          ],
                        ),
                      ),
                    ),

                    AppButton(name: "LogOut", onpressed: (){}, size: 370),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
