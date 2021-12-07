import 'package:flutter/material.dart';
import 'package:gemsharbor/Screens/paypal.dart';
import 'package:gemsharbor/Screens/widget_screen.dart';
import 'package:gemsharbor/constaint.dart';
import 'package:get/get.dart';



class PaymentScreen extends StatefulWidget {
   PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
 late  bool paymentvisible = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        children:  [
          Appbar1(),
          Expanded(
            flex: 7,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
              child: ListView(
                children:  [

                  paymentCard(image: "paypal.PNG",onpressed: (){

                    Get.to( PayPal_Payment_Screen());

                  }, scale: 1.5,),
                  fixsize,
                  fixsize,
                  paymentCard(image: "stripe-logo.png", onpressed: (){
                    setState(() {
                      paymentvisible = !paymentvisible;
                    });
                  }, scale: 18,),
                  fixsize,
                  Visibility(
                    visible: paymentvisible,
                    child: Column(
                      children: [
                        paymentCard(image: "MasterCard.png",onpressed: (){}, scale: 30,),
                        fixsize,
                        paymentCard(image: "Visa.png", onpressed: (){}, scale: 25,),
                        fixsize,


                      ],
                    ),
                  ),

                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}

class paymentCard extends StatelessWidget {
   paymentCard({
    required this.image,
    required this.scale,
     required this.onpressed,
    Key? key,
  }) : super(key: key);
  String image ;
  double scale;
  Function() onpressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpressed,
      child: Container(
        height: 220,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.black12
          ),
          borderRadius: BorderRadius.circular(10),


        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset("assets/image/$image",scale: scale,),

                ],
              ),
              fixsize,
              fixsize,
               Text("Gems@gmail.com",style: textstyle3.copyWith(fontSize: 17),),
              fixsize,
              fixsize,
              fixsize,

               const Text("**** **** **** 2345",style:textstyle3,),
              fixsize,
              fixsize,
               const Text("Expires 10-21",style:textstyle3,),



            ],
          ),
        ),

      ),
    );
  }
}
