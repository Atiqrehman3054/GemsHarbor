import 'package:flutter/material.dart';
import 'package:gemsharbor/Screens/Side%20Bar/navigation_drawer_widget.dart';
import 'package:gemsharbor/Screens/widgets/widget_screen.dart';
import 'package:gemsharbor/constaint.dart';
import 'package:get/get.dart';

class NotificationSettingsScreen extends StatefulWidget {
  const NotificationSettingsScreen({Key? key}) : super(key: key);

  @override
  State<NotificationSettingsScreen> createState() =>
      _NotificationSettingsScreenState();
}

class _NotificationSettingsScreenState

    extends State<NotificationSettingsScreen> {



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          drawer: const NavigationDrawerWidget(),
          backgroundColor: Colors.grey[200],
          body: Column(
            children: [
              const Appbar1(),
              Expanded(
                flex: 9,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: ListView(
                    children: [

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                           Text(
                            "Name",
                            style: textstyle2.copyWith(fontSize: 25),
                          ),
                          const VerticalDivider(
                            width: 10,
                            thickness: 1,
                            color: Colors.black,
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  Get.defaultDialog(
                                      titleStyle: const TextStyle(
                                        color: Colors.white,
                                      ),
                                      title: "Notification",
                                      backgroundColor: kSplashColor,
                                      middleTextStyle: const TextStyle(
                                        color: Colors.white,
                                      ),
                                      middleText: "Mobile(PushNotification)");
                                },
                                icon: const Icon(
                                    Icons.mobile_screen_share_outlined),
                              ),
                              fixsize2,
                              fixsize2,
                              fixsize2,
                              fixsize2,
                              IconButton(
                                onPressed: () {
                                  Get.defaultDialog(
                                      titleStyle: const TextStyle(
                                        color: Colors.white,
                                      ),
                                      title: "Notification",
                                      backgroundColor: kSplashColor,
                                      middleTextStyle: const TextStyle(
                                        color: Colors.white,
                                      ),
                                      middleText: "Web(Notification)");
                                },
                                icon:
                                    const Icon(Icons.desktop_windows_outlined),
                              ),
                              fixsize2,
                              fixsize2,
                              fixsize2,
                              fixsize2,
                              IconButton(
                                onPressed: () {
                                  Get.defaultDialog(
                                      titleStyle: const TextStyle(
                                        color: Colors.white,
                                      ),
                                      title: "Notification",
                                      backgroundColor: kSplashColor,
                                      middleTextStyle: const TextStyle(
                                        color: Colors.white,
                                      ),
                                      middleText: "Email(Notification)");
                                },
                                icon: const Icon(Icons.email_sharp),
                              ),
                            ],
                          )
                        ],
                      ),
                      const Divider(
                        thickness: 1,
                      ),

                      NotificationName(name: "Bidding",),
                      NotificationName(name: "Email",),
                      NotificationName(name: "Chat",),
                      NotificationName(name: "Watch",),
                      NotificationName(name: "Buy",),
                      NotificationName(name: "Sell",),
                      fixsize,
                      fixsize,

                      AppButton(name: "Submit", onpressed: () {}, size: 330),
                      // NotificationName(name: "Bidding",),

                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

class NotificationName extends StatefulWidget {
   NotificationName({
     required this.name,
    Key? key,
  }) : super(key: key);

   String name;

  @override
  State<NotificationName> createState() => _NotificationNameState();
}

class _NotificationNameState extends State<NotificationName> {
  late bool valuefirst = false;

  late  bool valuesecond = false;

  late  bool valuethrid = false;

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Text(
              widget.name,
              style: textstyle2,
            ),
            Container(
              width: 1,
              color: Colors.grey,
              child: const VerticalDivider(
                endIndent: 10,
                indent: 10,
                width: 10,
                thickness: 10,
                color: Colors.black,
              ),
            ),
            Row(
              children: [
                Checkbox(
                  checkColor: Colors.greenAccent,
                  activeColor: Colors.red,
                  value: valuefirst,
                  onChanged: (value) {
                    setState(() {
                      valuefirst = value!;
                    });
                  },
                ),
                fixsize2,
                fixsize2,
                fixsize2,
                fixsize2,
                Checkbox(
                  value: valuesecond,
                  onChanged: (value) {
                    setState(() {
                      valuesecond = value!;
                    });
                  },
                ),
                fixsize2,
                fixsize2,
                fixsize2,
                fixsize2,
                Checkbox(
                  value: valuethrid,
                  onChanged: (value) {
                    setState(() {
                      valuethrid = value!;
                    });
                  },
                ),
              ],
            )
          ],
        ),
        const Divider(
          thickness: 1,
        )
      ],
    );
  }
}

class Notificationcard extends StatelessWidget {
  Notificationcard({
    required this.name,
    required this.data,
    Key? key,
  }) : super(key: key);
  String name;
  Widget data;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            fixsize,
            Text(
              name,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            fixsize,
            fixsize,
            data,
          ],
        ),
      ),
    );
  }
}

class NotificationRow extends StatefulWidget {
  NotificationRow({
    required this.name,
    required this.checkedValue,
  });

  late bool checkedValue;

  late String name;

  @override
  State<NotificationRow> createState() => _NotificationRowState();
}

class _NotificationRowState extends State<NotificationRow> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              border: Border.all(color: Colors.grey.withOpacity(0.6)),
              color: Colors.white),
          child: SizedBox(
              height: 50,
              child: CheckboxListTile(
                activeColor: kSplashColor,
                contentPadding: const EdgeInsets.all(0),
                title: Text(
                  widget.name,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black45,
                      fontFamily: "Gilroy-Light"),
                ),
                value: widget.checkedValue,
                onChanged: (newValue) {
                  setState(() {
                    widget.checkedValue = newValue!;
                  });
                },
                controlAffinity:
                    ListTileControlAffinity.leading, //  <-- leading Checkbox
              )),
        ),
        fixsize,
      ],
    );
  }
}
