import 'package:flutter/material.dart';
import 'package:gemsharbor/Screens/widgets/widget_screen.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
             Appbar2(buttonShow: false,),
            Expanded(
              flex: 7,
              child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return ListTile(
                      horizontalTitleGap: 0,
                      leading: Image.asset(
                        "assets/image/2.png",
                      ),
                      minLeadingWidth: 60,
                      title: const Text(
                        "Ruby Gems",
                        style: TextStyle(
                          // fontFamily: "Gilroy-Light",
                          fontSize: 15,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Blue diamond stones are genuine diamonds that are not treated or enhanced in any way. ",
                            style: TextStyle(
                              fontFamily: "Gilroy-Light",
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "2 Hours ago",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Divider(
                            thickness: 1,
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
