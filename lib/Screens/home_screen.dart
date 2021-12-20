import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:gemsharbor/Screens/cart_screen.dart';
import 'package:gemsharbor/Screens/widgets/widget_screen.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';


import '../constaint.dart';
import 'Side Bar/navigation_drawer_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    final heightSize = MediaQuery.of(context).size.height;
    final widthSize = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          drawer: const NavigationDrawerWidget(),

          backgroundColor: Colors.grey[200],
          body: Column(
            children: [
              const Appbar(),
             fixsize,
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: ListView(
                    children:[
                      GFCarousel(
                         scrollPhysics: const ScrollPhysics(),
                          viewportFraction: 1.0,
                          // height:  heightSize*0.30,
                          aspectRatio: 16 / 9,
                          pagerSize: 12,
                          pagination: true,
                          activeIndicator: blueColor,
                          passiveIndicator: Colors.grey,
                          autoPlay: true,
                          items: [
                            CardSlider(
                                heightSize: heightSize, widthSize: widthSize),
                            CardSlider(
                                heightSize: heightSize, widthSize: widthSize),
                            CardSlider(
                                heightSize: heightSize, widthSize: widthSize),
                          ]),

                      const SizedBox(
                        height: 15,
                      ),

                      const AllGems(),

                      const SizedBox(
                        height: 25,
                      ),

                      const RubyGridView(),
                      const SizedBox(
                        height: 25,
                      ),

                      const GarletGridview(),

                      // ...... other list children.
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
