import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gemsharbor/Screens/Side%20Bar/navigation_drawer_widget.dart';
import 'package:gemsharbor/Screens/chart_screen.dart';
import 'package:gemsharbor/Screens/widget_screen.dart';
import 'package:gemsharbor/constaint.dart';

class BidingScreen extends StatefulWidget {
  const BidingScreen({Key? key}) : super(key: key);

  @override
  State<BidingScreen> createState() => _BidingScreenState();
}

class _BidingScreenState extends State<BidingScreen> {
  String dropdownValue3 = '1 Month';
  TextStyle style1 = TextStyle(color: Colors.grey[500], fontSize: 13);
  TextStyle style2 = const TextStyle(fontSize: 17, fontWeight: FontWeight.bold);
  SizedBox widthsize = const SizedBox(
    width: 10,
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          drawer: const NavigationDrawerWidget(),
      body: Column(
        children: [

          const Appbar1(),
          Expanded(
            flex: 9,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: ListView(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 6,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("2021", style: style1),
                            Text("Oct 26 - Nov 26", style: style2),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                    const Offset(0, 1), // changes position of shadow
                              ),
                            ],
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                          ),
                          height: 45,
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: DropdownButton<String>(
                              isExpanded: true,
                              underline: const Text(""),
                              value: dropdownValue3,
                              onChanged: (String? value) {
                                setState(() {
                                  dropdownValue3 = value!;
                                });
                              },
                              items: <String>['1 Month', '1 Week', '24 Hours']
                                  .map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  fixsize,
                  fixsize,
                  fixsize,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.deepPurpleAccent.withOpacity(0.2),
                            ),
                            child: IconButton(
                              icon: const Icon(
                                Icons.arrow_downward_outlined,
                                color: Colors.deepPurpleAccent,
                              ),
                              onPressed: () {},
                            ),
                          ),
                          widthsize,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Spending",
                                style: style1,
                              ),
                              Text(
                                "\$986",
                                style: style2,
                              ),
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.blue.withOpacity(0.3),
                            ),
                            child: IconButton(
                              icon: const Icon(
                                Icons.arrow_upward_rounded,
                                color: Colors.blue,
                              ),
                              onPressed: () {},
                            ),
                          ),
                          widthsize,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Icoming",
                                style: style1,
                              ),
                              Text(
                                "\$2,986",
                                style: style2,
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  fixsize,
                  fixsize,
                  const BarChartSample2(),
                  fixsize,
                  fixsize,
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        GemsCard(
                          image: "assets/image/2.png",
                          price: "\980",
                          text: "Ruby",
                        ),
                        widthsize,
                        GemsCard(
                          image: "assets/image/3.png",
                          price: "\$1080",
                          text: "Garlet",
                        ),
                        widthsize,
                        GemsCard(
                          image: "assets/image/2.png",
                          price: "\$780",
                          text: "Gems",
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

class GemsCard extends StatelessWidget {
  GemsCard({
    required this.image,
    required this.text,
    required this.price,
    Key? key,
  }) : super(key: key);

  String image;
  String text;
  String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 180,
      decoration: BoxDecoration(
        color: text== "Garlet"?Colors.pinkAccent.shade100: kSplashColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Expanded(
              flex: 5,
              child: Image.asset(
                image,
                scale: 3,
              )),
          Expanded(
              flex: 1,
              child: Text(
                text,
                style: const TextStyle(color: Colors.white, fontSize: 17),
              )),
          Expanded(
              flex: 2,
              child: Text(
                price,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )),
        ],
      ),
    );
  }
}
