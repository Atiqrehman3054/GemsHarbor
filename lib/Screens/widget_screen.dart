import 'package:flutter/material.dart';
import 'package:gemsharbor/Screens/cart_screen.dart';
import 'package:gemsharbor/Screens/category_screen.dart';
import 'package:gemsharbor/Screens/profile_screen.dart';
import 'package:gemsharbor/constaint.dart';
import 'package:get/get.dart';
import 'detail_screen.dart';

class AppButton extends StatelessWidget {
  AppButton({
    required this.name,
    required this.onpressed,
    required this.size,
    Key? key,
  }) : super(key: key);
  String name;
  Function() onpressed;
  late double size;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: kSplashColor,
          fixedSize:  Size(size, 40),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        onPressed: onpressed,
        child:  Text(
          name,
          style: kSendButtonTextStyle,
        ));
  }
}
class AppButton1 extends StatelessWidget {
  AppButton1({
    required this.name,
    required this.onpressed,
    required this.size,
    Key? key,
  }) : super(key: key);
  String name;
  Function() onpressed;
  late double size;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: kSplashColor,
          fixedSize:  Size(size, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7.0),
          ),
        ),
        onPressed: onpressed,
        child:  Text(
          name,
          style: kSendButtonTextStyle,
        ));
  }
}




class Appbar extends StatelessWidget {
  const Appbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();

    return Container(
      color: Colors.white,
      child: Column(
        children: [
          const Appbar1(),
          SizedBox(
            child:  TextField(
              controller: controller,
              decoration: const InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Icon(
                    Icons.search,
                    size: 30,
                    color: Color(0xFFEA008B),
                  )),
            ),
            width: MediaQuery.of(context).size.width * 0.7,
          ),
          const SizedBox(
            width: 10,
          ),
          const SizedBox(
            height: 10,
          )

          // Stack(
          //   children: [
          //     // Container(
          //     //   transform: Matrix4.translationValues(-70, -60, 0),
          //     //   child: Image.asset(
          //     //     "assets/image/Appbar.png",
          //     //     height: 150,
          //     //     width: 200,
          //     //   ),
          //     // ),
          //     // Container(
          //     //   // alignment: Alignment.center,
          //     //   transform: Matrix4.translationValues(130, -50, 50),
          //     //   child: Image.asset(
          //     //     "assets/image/logo.jpg",
          //     //     height: 160,
          //     //     width: 160,
          //     //   ),
          //     // ),
          //     // Container(
          //     //   transform: Matrix4.translationValues(260, -50, -50),
          //     //   child: Image.asset(
          //     //     "assets/image/side2.png",
          //     //     height: 250,
          //     //     width: 250,
          //     //   ),
          //     // ),
          //
          //
          //
          //   ],
          // )
        ],
      ),
    );

  }
}

class Appbar1 extends StatelessWidget {
  const Appbar1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

        height: 70,
        decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage(
                'assets/image/logo_1.png'),
            fit: BoxFit.fill,
          ),

        ),

        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(

                  icon: const Icon(
                    Icons.menu,
                    size: 35,
                  ),
                  onPressed: () {

                    Scaffold.of(context).openDrawer();

                  }),
              Row(
                children: [
                  IconButton(
                      icon: const Icon(
                        Icons.shopping_cart_outlined,
                        size: 35,
                      ),
                      onPressed: () {
                        Get.to(const CartScreen());
                      }),
                  IconButton(
                      icon: const Icon(
                        Icons.person_outline,
                        size: 35,
                      ),
                      onPressed: () {
                        Get.to(const ProfileScreen());
                      }),
                ],
              ),
            ],
          ),
        ),


    );
  }
}


class Appbar2 extends StatelessWidget {
  const Appbar2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(


      height: 70,

      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage(
              'assets/image/logo_1.png'),
          fit: BoxFit.fill,
        ),

      ),
    );
  }
}

class GarletGridview extends StatelessWidget {
  const GarletGridview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Garlet",
          style: popup_style.copyWith(
              fontWeight: FontWeight.bold, color: blueColor),
        ),
        const SizedBox(
          height: 30,
        ),
        GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 4,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 10.0,
              childAspectRatio: 0.58,
            ),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    height: 130,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              "assets/image/4da0e967-e30b-4105-afbd-fda56c841e46_fullsize.jpg"),
                          fit: BoxFit.fill,
                        )),
                  ),
                  Row(
                    children: [
                      const Expanded(
                        flex: 3,
                        child: Text(
                          "Natural Trapiche Ruby",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: blueColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: MaterialButton(
                            color: blueColor,
                            height: 30,
                            minWidth: 40,
                            child: const FittedBox(
                              child: Text(
                                "Featured",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            onPressed: () {
                              Get.to(const DetailScreen());
                            }),
                      )
                    ],
                  ),
                  Text(
                    "5.34 ct color change GIA Certified "
                        "lexender Natural Oval Inheated",
                    style: popup_style.copyWith(fontSize: 10),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      Row(
                        children: const [
                          Icon(
                            Icons.security,
                            size: 25,
                            color: blueColor,
                          ),
                          Icon(
                            Icons.shopping_bag_outlined,
                            size: 25,
                            color: pinkColor,
                          ),
                          Text(
                            "\$32,000.00",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                        ],
                      ),
                      
                      const Icon(
                        Icons.compare_arrows_outlined,
                        size: 25,
                        color: bringColor,
                      ),
                    ],
                  )
                ],
              );
            }),
      ],
    );
  }
}

class RubyGridView extends StatelessWidget {
  const RubyGridView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Ruby",
          style: popup_style.copyWith(
              fontWeight: FontWeight.bold, color: blueColor),
        ),
        const SizedBox(
          height: 30,
        ),
        GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 4,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 10.0,
              childAspectRatio: 0.58,
            ),
            itemBuilder: (context, index) {
              return Container(
                child: Column(
                  children: [
                    Container(
                      height: 130,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/image/9608c6f7-4ac5-4d84-84b5-ed129469179f_fullsize.jpg"),
                            fit: BoxFit.fill,
                          )),
                    ),
                    Row(
                      children: [
                        const Expanded(
                          flex: 3,
                          child: Text(
                            "Natural Trapiche Ruby",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: blueColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: MaterialButton(
                              color: blueColor,
                              height: 30,
                              minWidth: 40,
                              child: const FittedBox(
                                child: Text(
                                  "Featured",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              onPressed: () {
                                Get.to(DetailScreen());
                              }),
                        )
                      ],
                    ),
                    Text(
                      "5.34 ct color change GIA Certified "
                          "lexender Natural Oval Inheated",
                      style: popup_style.copyWith(fontSize: 10),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        Row(
                          children: const [
                            Icon(
                              Icons.security,
                              size: 25,
                              color: blueColor,
                            ),
                            Icon(
                              Icons.shopping_bag_outlined,
                              size: 25,
                              color: pinkColor,
                            ),
                            Text(
                              "\$32,000.00",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12),
                            ),
                          ],
                        ),

                        const Icon(
                          Icons.compare_arrows_outlined,
                          size: 25,
                          color: bringColor,
                        ),
                      ],
                    )
                  ],
                ),
              );
            }),
      ],
    );
  }
}

class AllGems extends StatelessWidget {
  const AllGems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 4,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 10.0,
          childAspectRatio: 0.68,
        ),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: (){
              Get.to(DetailScreen());
            },
            child: Column(
              children: [
                Container(
                  height: 130,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/image/bluegrems.jpg"),
                        fit: BoxFit.fill,
                      )),
                ),
                Row(
                  children: [
                    const Expanded(
                      flex: 3,
                      child: Text(
                        "Natural Trapiche Ruby",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: blueColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: MaterialButton(
                          color: blueColor,
                          height: 30,
                          minWidth: 40,
                          child: const FittedBox(
                            child: Text(
                              "Featured",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          onPressed: () {
                            Get.to(const DetailScreen());
                          }),
                    )
                  ],
                ),
                Text(
                  "5.34 ct color change GIA Certified "
                      "lexender Natural Oval Inheated",
                  style: popup_style.copyWith(fontSize: 10),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(
                          Icons.security,
                          size: 25,
                          color: blueColor,
                        ),
                        Icon(
                          Icons.shopping_bag_outlined,
                          size: 25,
                          color: pinkColor,
                        ),
                        Text(
                          "\$32,000.00",
                          style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                        ),
                      ],
                    ),

                    const Icon(
                      Icons.compare_arrows_outlined,
                      size: 25,
                      color: bringColor,
                    ),
                  ],
                )
              ],
            ),
          );
        });
  }
}

class CardSlider extends StatelessWidget {
  const CardSlider({
    Key? key,
    required this.heightSize,
    required this.widthSize,
  }) : super(key: key);

  final double heightSize;
  final double widthSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heightSize * 0.20,
      width: widthSize / 1.1,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 7,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "23.87 ct Intense Red Rubellite \n Tourmaline Mozambique",
                          style: popup_style.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: bringColor),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                            "5.42 ct Color Change GIA Certified Alexandrite \n Natural Oval Unheated Gemstone (176390)",
                            style: popup_style.copyWith(
                                fontSize: 10, color: blueColor)),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "\$4,000.00",
                          style: popup_style.copyWith(
                            fontWeight: FontWeight.bold,
                            color: blueColor,
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        MaterialButton(
                          color: pinkColor,
                          height: 30,
                          minWidth: 48,
                          onPressed: () {},
                          child: const Text(
                            "Buy Now",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      transform: Matrix4.translationValues(10, -40, 20),
                      child: Image.asset(
                        "assets/image/2.png",
                        height: 150,
                        width: 150,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}




class ALlGemGridview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 30,
              childAspectRatio: 0.68,
            ),
            itemCount: 4,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Card(
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/image/lightblue.jpg",
                                scale: 2.5,
                              ),
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => const DetailScreen()));
                                    },

                                    child:  Column(

                                      children: [
                                        fixsize1,
                                        Text(
                                          "Natural Trapiche Ruby",
                                          style: medfont.copyWith(color: kSplashColor,fontSize: 12),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              fixsize1,
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "5.42 ct color change",
                                    style: TextStyle(fontSize: 16),
                                  )
                                ],
                              ),
                              fixsize1,
                              Padding(
                                padding: const EdgeInsets.only(right: 5),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.handyman_outlined,
                                          color: AppColors.pinkColor,
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const Text(
                                          '\$32.00',
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      ],
                                    ),
                                    const Text("3d 22h")
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Positioned(
                          top: 10,
                          right: 10,
                          child: Align(
                            alignment: Alignment.topRight,
                              child: Icon(Icons.security_sharp,color: kSplashColor,)),
                        )
                      ],
                    ),
                    Text("\$32.00",style: medfont.copyWith(color: kSplashColor),)
                  ],
                ),
              );
            }),
      ),
    );
  }
}



class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({
    this.controllers,
    required this.hinttext,
    required this.lable,
    Key? key,
  }) : super(key: key);

  final String lable;
  final String hinttext;
  final TextEditingController? controllers;


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          lable,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: kSplashColor,
          ),
        ),
    fixsize,
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
                color: Colors.black38
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.black38,
                blurRadius: 5,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Material(
            borderRadius: BorderRadius.circular(15),
            elevation: 1.0,
            child: TextFormField(
              controller: controllers,
              validator: (value){

              },
              decoration:
              KTextFieldDecoration.copyWith(hintText: hinttext),
            ),
          ),
        ),
        fixsize,
        fixsize,
      ],
    );
  }
}
