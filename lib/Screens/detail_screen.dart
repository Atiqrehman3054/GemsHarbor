import 'package:flutter/material.dart';
import 'package:gemsharbor/Screens/Side%20Bar/navigation_drawer_widget.dart';
import 'package:gemsharbor/Screens/widgets/widget_screen.dart';
import 'package:getwidget/components/carousel/gf_carousel.dart';
import 'package:video_player/video_player.dart';

import '../constaint.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  final assets = "assets/video.mp4";
  late VideoPlayerController _controller;

  @override
  //   // TODO: implement initState

  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(assets)
      ..setLooping(true)
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final heightSize = MediaQuery.of(context).size.height;
    final widthSize = MediaQuery.of(context).size.width;
    bool sliderplay = true;
    return Container(
      color: Colors.white,
      child: SafeArea(

        child: Scaffold(


          backgroundColor:Colors.grey[300],
          drawer: const NavigationDrawerWidget(),
          body: Column(
            children: [
              const Appbar1(),
              Expanded(
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          fixsize,
                          Stack(
                            alignment: Alignment.center,
                            children: [

                              Card(
                                elevation: 3,
                                child: _controller.value.isInitialized
                                    ? AspectRatio(
                                        aspectRatio:
                                            _controller.value.aspectRatio,
                                        child: Card(
                                            child: VideoPlayer(_controller)),
                                      )
                                    : Container(),
                              ),
                              Center(
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      _controller.value.isPlaying
                                          ? _controller.pause()
                                          : _controller.play();
                                    });
                                  },
                                  child: CircleAvatar(
                                    backgroundColor: Colors.transparent,
                                    radius: 25,
                                    child: Icon(
                                      _controller.value.isPlaying
                                          ? Icons.pause
                                          : Icons.play_arrow,
                                      size: 40,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          fixsize,
                   MainContainer( widget: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text(
                         "Item Information",
                         textAlign: TextAlign.center,
                         style: heading,
                         // style:heading.copyWith(
                         //   color: kSplashColor,
                         //         )
                       ),
                       Divider(
                         thickness: 2,
                         color: AppColors.blackColor,
                       ),
                       Row(
                         children: [
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               const Text(
                                 "Dimension",
                                 style: smallfont,
                               ),
                               fixsize,
                               const Text(
                                 "Weight (carats)",
                                 style: smallfont,
                               ),
                               fixsize,
                               const Text(
                                 "Colors",
                                 style: smallfont,
                               ),
                               fixsize,
                               const Text(
                                 "No Treatment",
                                 style: smallfont,
                               ),
                             ],
                           ),
                           const SizedBox(
                             width: 25,
                           ),
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               const Text(
                                 "3.1 x 3.1 x 2.3mm ",
                                 style: medfont,
                               ),
                               fixsize,
                               const Text(
                                 "0.76 carats",
                                 style: medfont,
                               ),
                               fixsize,
                               const Text(
                                 "3.1 x 3.1 x 2.3mm ",
                                 style: medfont,
                               ),
                               fixsize,
                               const Text(
                                 "3.1 x 3.1 x 2.3mm ",
                                 style: medfont,
                               ),
                             ],
                           )
                         ],
                       ),
                       Divider(
                         thickness: 2,
                         color: AppColors.blueColor,
                       ),
                       fixsize,
                       Text(
                         "MONTANA SAPPHIRE PARCEL ",
                         style: heading,
                       ),
                       fixsize,
                       fixsize,
                       const Text(
                           "This is the parcel of un treated  saphhires from montana usa \n \n All our sapphires in our store are tested by gem certify. \n \n ideal as accents stones \n \n This is a parcel of un treated sapphires from Montana usa.",
                           style: TextStyle(fontSize: 12)),
                       fixsize,
                       Divider(
                         thickness: 2,
                         color: AppColors.blueColor,
                       ),

                       fixsize,
                     ],
                   ),),
                          fixsize,
                          fixsize,
                      MainContainer(widget: Column(children: [
                        Text("You May Also Like",
                            style: TextStyle(
                                fontSize: 18,
                                color: AppColors.blueColor,
                                fontWeight: FontWeight.bold)),
                        fixsize,
                        ALlGemGridview(),

                        fixsize,
                        Divider(
                          thickness: 2,
                          color: AppColors.blueColor,
                        ),
                      ],)),
                          Text("Recent Customer Feedback",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: AppColors.blueColor,
                                  fontWeight: FontWeight.bold)),
                          fixsize,
                          Card(
                            // margin: EdgeInsets.symmetric(horizontal: 10),

                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "By ",
                                            style: medfont.copyWith(
                                                color: kSplashColor),
                                          ),
                                          const Text("Flex john",
                                              style: medfont),
                                        ],
                                      ),
                                      const Text(
                                        "24/09/2021",
                                      ),
                                    ],
                                  ),
                                  fixsize,
                                  Row(
                                    children: const [
                                      Icon(Icons.star),
                                      Icon(Icons.star),
                                      Icon(Icons.star_border),
                                    ],
                                  ),
                                  fixsize,
                                  Text(
                                      "5.2 CTS ALEXANDRITE - SPECIMAN FROM TANZANIA[STS2259]",
                                      style: TextStyle(
                                          fontSize: 11,
                                          color: AppColors.blueColor,
                                          fontWeight: FontWeight.bold)),
                                  const Text(
                                    "Colour change is definitely  there on one angle as the site picture show don't do\n"
                                    "justics just as gem my as excepted damn. FAst shipping as Always.would oder again  ",
                                    style: TextStyle(fontSize: 10),
                                  ),
                                  Image.asset(
                                    "assets/image/2.png",
                                    scale: 4,
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "By ",
                                            style: medfont.copyWith(
                                                color: kSplashColor),
                                          ),
                                          const Text("Flex john",
                                              style: medfont),
                                        ],
                                      ),
                                      const Text(
                                        "24/09/2021",
                                      ),
                                    ],
                                  ),
                                  fixsize,
                                  Row(
                                    children: const [
                                      Icon(Icons.star),
                                      Icon(Icons.star),
                                      Icon(Icons.star_border),
                                    ],
                                  ),
                                  fixsize,
                                  Text(
                                      "5.2 CTS ALEXANDRITE - SPECIMAN FROM TANZANIA[STS2259]",
                                      style: TextStyle(
                                          fontSize: 11,
                                          color: AppColors.blueColor,
                                          fontWeight: FontWeight.bold)),
                                  const Text(
                                    "Colour change is definitely  there on one angle as the site picture show don't do\n"
                                    "justics just as gem my as excepted damn. FAst shipping as Always.would oder again  ",
                                    style: TextStyle(fontSize: 10),
                                  ),
                                  Image.asset(
                                    "assets/image/3.png",
                                    scale: 4,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          fixsize,
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "By ",
                                            style: medfont.copyWith(
                                                color: kSplashColor),
                                          ),
                                          const Text("Flex john",
                                              style: medfont),
                                        ],
                                      ),
                                      const Text(
                                        "24/09/2021",
                                      ),
                                    ],
                                  ),
                                  fixsize,
                                  Row(
                                    children: const [
                                      Icon(Icons.star),
                                      Icon(Icons.star),
                                      Icon(Icons.star_border),
                                    ],
                                  ),
                                  fixsize,
                                  Text(
                                      "5.2 CTS ALEXANDRITE - SPECIMAN FROM TANZANIA[STS2259]",
                                      style: TextStyle(
                                          fontSize: 11,
                                          color: AppColors.blueColor,
                                          fontWeight: FontWeight.bold)),
                                  const Text(
                                    "Colour change is definitely  there on one angle as the site picture show don't do\n"
                                    "justics just as gem my as excepted damn. FAst shipping as Always.would oder again  ",
                                    style: TextStyle(fontSize: 10),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Image.asset(
                                      "assets/image/redGems.PNG",
                                      scale: 4,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          fixsize,
                          Card(
                            child: Column(
                              children: [
                                fixsize,
                                Text("\$ 3000.00 USD",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: AppColors.blueColor,
                                        fontWeight: FontWeight.bold)),
                                Divider(
                                  thickness: 2,
                                  color: AppColors.blueColor,
                                  indent:
                                      MediaQuery.of(context).size.width / 3.5,
                                  endIndent:
                                      MediaQuery.of(context).size.width / 3.5,
                                ),
                                fixsize1,
                                Divider(
                                  thickness: 1,
                                  color: AppColors.blueColor,
                                ),
                                fixsize,
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>
                                      },
                                      child: Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.05,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.4,
                                        color: AppColors.blueColor,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.shopping_cart_outlined,
                                              color: AppColors.whiteColor,
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "Add To Cart",
                                              style: TextStyle(
                                                  color: AppColors.whiteColor),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>
                                      },
                                      child: Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.05,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.4,
                                        color: AppColors.blueColor,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.compare_arrows_sharp,
                                              color: AppColors.whiteColor,
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "Make a Offer",
                                              style: TextStyle(
                                                  color: AppColors.whiteColor),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.flight_takeoff_sharp,
                                      color: AppColors.blueColor,
                                      size: 40,
                                    ),
                                    Text(
                                      "Shipping Cost \$16.00",
                                      style:
                                          TextStyle(color: AppColors.blueColor),
                                    )
                                  ],
                                ),
                                const Text("21 Days Via Registered Shipping"),
                                fixsize,
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>
                                      },
                                      child: Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.05,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.4,
                                        color: AppColors.purPalColor,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.favorite_border,
                                              color: AppColors.whiteColor,
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "Add To WishList",
                                              style: TextStyle(
                                                  color: AppColors.whiteColor),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>
                                      },
                                      child: Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.05,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.4,
                                        color: AppColors.purPalColor,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.run_circle_outlined,
                                              color: AppColors.whiteColor,
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "Ask a Question",
                                              style: TextStyle(
                                                  color: AppColors.whiteColor),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                fixsize,
                                fixsize,
                                Divider(
                                  thickness: 1,
                                  color: AppColors.blueColor,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.15,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.07,
                                      decoration: BoxDecoration(
                                          color: AppColors.blueColor,
                                          borderRadius:
                                              BorderRadius.circular(30)
                                          // image: DecorationImage(image: AssetImage("assets/1.png"))
                                          ),
                                      child: Image.asset(
                                        "assets/image/facebook1.png",
                                        scale: 1.3,
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.15,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.07,
                                      decoration: BoxDecoration(
                                          color: AppColors.blueColor,
                                          borderRadius:
                                              BorderRadius.circular(30)
                                          // image: DecorationImage(image: AssetImage("assets/1.png"))
                                          ),
                                      child: Image.asset(
                                        "assets/image/twitter.png",
                                        scale: 1.3,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.15,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.07,
                                      decoration: BoxDecoration(
                                          color: AppColors.blueColor,
                                          borderRadius:
                                              BorderRadius.circular(30)
                                          // image: DecorationImage(image: AssetImage("assets/1.png"))
                                          ),
                                      child: Image.asset(
                                        "assets/image/youtube.png",
                                        scale: 1.3,
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.15,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.07,
                                      decoration: BoxDecoration(
                                          color: AppColors.blueColor,
                                          borderRadius:
                                              BorderRadius.circular(30)
                                          // image: DecorationImage(image: AssetImage("assets/1.png"))
                                          ),
                                      child: Image.asset(
                                        "assets/image/pintrest.png",
                                        scale: 1.4,
                                      ),
                                    ),
                                  ],
                                ),
                                fixsize,
                              ],
                            ),
                          ),
                          fixsize,
                          Card(
                            child: Column(
                              children: [
                                fixsize,
                                Text("Featured Product",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: AppColors.blueColor,
                                        fontWeight: FontWeight.bold)),
                                Divider(
                                  thickness: 2,
                                  color: AppColors.blueColor,
                                  indent: MediaQuery.of(context).size.width / 4,
                                  endIndent:
                                      MediaQuery.of(context).size.width / 4,
                                ),
                                fixsize,
                                const Divider(
                                  thickness: 1,
                                  color: Colors.grey,
                                ),
                                fixsize,
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    CircleAvatar(
                                        backgroundColor: Colors.grey,
                                        child: IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                              Icons.arrow_back_ios,
                                              color: Colors.white,
                                            ))),
                                    Container(
                                      width: 250,
                                      height: 350,
                                      child: GFCarousel(
                                          viewportFraction: 1.0,
                                          aspectRatio: 4 / 5.8,
                                          pagerSize: 12,
                                          pagination: true,
                                          activeIndicator: AppColors.blueColor,
                                          passiveIndicator: Colors.grey,
                                          pauseAutoPlayOnTouch:
                                              const Duration(seconds: 10),
                                          autoPlay: true,
                                          items: [
                                            Card(
                                              child: SizedBox(
                                                width: 250,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Image.asset(
                                                      "assets/image/lightblue.jpg",
                                                      scale: 2.5,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Column(
                                                          children: [
                                                            fixsize1,
                                                            Text(
                                                              "Natural Trapiche Ruby",
                                                              style: medfont
                                                                  .copyWith(
                                                                      color:
                                                                          kSplashColor,
                                                                      fontSize:
                                                                          12),
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                    fixsize1,
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: const [
                                                        Text(
                                                          "5.42 ct Color Change GIA \n Certified Alexandrite Natural",
                                                          style: TextStyle(
                                                              fontSize: 16),
                                                        )
                                                      ],
                                                    ),
                                                    fixsize1,
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 5),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Icon(
                                                                Icons
                                                                    .handyman_outlined,
                                                                color: AppColors
                                                                    .pinkColor,
                                                              ),
                                                              const SizedBox(
                                                                width: 5,
                                                              ),
                                                              const Text(
                                                                '\$32.00',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        12),
                                                              ),
                                                            ],
                                                          ),
                                                          Text("3d 22h")
                                                        ],
                                                      ),
                                                    ),
                                                    const Divider(
                                                      thickness: 1,
                                                      color: Colors.grey,
                                                    ),
                                                    Text(
                                                      "\$32.00",
                                                      style: medfont.copyWith(
                                                          color: kSplashColor),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Card(
                                              child: Container(
                                                width: 250,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Image.asset(
                                                      "assets/image/lightblue.jpg",
                                                      scale: 2.5,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Column(
                                                          children: [
                                                            fixsize1,
                                                            Text(
                                                              "Natural Trapiche Ruby",
                                                              style: medfont
                                                                  .copyWith(
                                                                      color:
                                                                          kSplashColor,
                                                                      fontSize:
                                                                          12),
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                    fixsize1,
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: const [
                                                        Text(
                                                          "5.42 ct Color Change GIA \n Certified Alexandrite Natural",
                                                          style: TextStyle(
                                                              fontSize: 16),
                                                        )
                                                      ],
                                                    ),
                                                    fixsize1,
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 5),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Icon(
                                                                Icons
                                                                    .handyman_outlined,
                                                                color: AppColors
                                                                    .pinkColor,
                                                              ),
                                                              const SizedBox(
                                                                width: 5,
                                                              ),
                                                              const Text(
                                                                '\$32.00',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        12),
                                                              ),
                                                            ],
                                                          ),
                                                          Text("3d 22h")
                                                        ],
                                                      ),
                                                    ),
                                                    const Divider(
                                                      thickness: 1,
                                                      color: Colors.grey,
                                                    ),
                                                    Text(
                                                      "\$32.00",
                                                      style: medfont.copyWith(
                                                          color: kSplashColor),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Card(
                                              child: Container(
                                                width: 250,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Image.asset(
                                                      "assets/image/lightblue.jpg",
                                                      scale: 2.5,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Column(
                                                          children: [
                                                            fixsize1,
                                                            Text(
                                                              "Natural Trapiche Ruby",
                                                              style: medfont
                                                                  .copyWith(
                                                                      color:
                                                                          kSplashColor,
                                                                      fontSize:
                                                                          12),
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                    fixsize1,
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: const [
                                                        Text(
                                                          "5.42 ct Color Change GIA \n Certified Alexandrite Natural",
                                                          style: TextStyle(
                                                              fontSize: 16),
                                                        )
                                                      ],
                                                    ),
                                                    fixsize1,
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 5),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Icon(
                                                                Icons
                                                                    .handyman_outlined,
                                                                color: AppColors
                                                                    .pinkColor,
                                                              ),
                                                              const SizedBox(
                                                                width: 5,
                                                              ),
                                                              const Text(
                                                                '\$32.00',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        12),
                                                              ),
                                                            ],
                                                          ),
                                                          Text("3d 22h")
                                                        ],
                                                      ),
                                                    ),
                                                    const Divider(
                                                      thickness: 1,
                                                      color: Colors.grey,
                                                    ),
                                                    Text(
                                                      "\$32.00",
                                                      style: medfont.copyWith(
                                                          color: kSplashColor),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ]),
                                    ),
                                    CircleAvatar(
                                        backgroundColor: Colors.grey,
                                        child: IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                              Icons.arrow_forward_ios_rounded,
                                              color: Colors.white,
                                            ))),
                                  ],
                                ),
                                fixsize,
                              ],
                            ),
                          ),
                          Card(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Audit Information",
                                  style: TextStyle(
                                      color: AppColors.blueColor,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Divider(
                                  thickness: 2,
                                  color: AppColors.blueColor,
                                  indent: MediaQuery.of(context).size.width / 4,
                                  endIndent:
                                      MediaQuery.of(context).size.width / 4,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  "The Gems Sheriff program allows \n"
                                  "Our member to request an audit on \n"
                                  "any auction which is completed by an\n"
                                  "independent gemologist who assesses \n"
                                  "the accuracy of the  item description\n"
                                  "and Pictures",
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
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
}

class MainContainer extends StatelessWidget {
   MainContainer({
     required this.widget,
    Key? key,
  }) : super(key: key);
 Widget widget;
  @override
  Widget build(BuildContext context) {
    return Container(

      padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: widget,
    );
  }
}
