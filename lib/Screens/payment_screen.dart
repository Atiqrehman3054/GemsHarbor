import 'package:flutter/material.dart';
import 'package:gemsharbor/Screens/paypal.dart';
import 'package:gemsharbor/Screens/widgets/widget_screen.dart';
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

                    Get.to(const PayPal_Payment_Screen());

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

