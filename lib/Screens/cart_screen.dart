import 'package:flutter/material.dart';
import 'package:gemsharbor/Screens/Side%20Bar/navigation_drawer_widget.dart';
import 'package:gemsharbor/Screens/payment_screen.dart';
import 'package:gemsharbor/Screens/widget_screen.dart';
import 'package:gemsharbor/constaint.dart';
import 'package:get/get.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  bool _checkbox = false;
  String dropdownValue3 = 'Standard Shipping - Tracked';
  String radioButtonItem = 'ONE';

  @override
  Widget build(BuildContext context) {

    // Group Value for Radio Button.
    int id = 1;

    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          drawer: const NavigationDrawerWidget(),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Appbar2(),
              fixsize,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("2 Items in Your Cart", style: textstyle1),
                    AppButton(
                      name: "Keep Shopping",
                      onpressed: () {},
                      size: 140,
                    ),
                  ],
                ),
              ),
              fixsize,
              Expanded(
                flex: 10,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: ListView.builder(
                      itemCount: 2,
                      itemBuilder: (context,index){

                        return   Column(
                          children: [
                            Container(
                                width: double.infinity,
                                margin: const EdgeInsets.all(15.0),
                                padding: const EdgeInsets.all(12.0),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Image.asset("assets/image/logo jell.PNG"),
                                        const Text(
                                          "jay F jewellers",
                                          style: textstyle1,
                                        ),
                                        fixsize,
                                        fixsize,
                                        Row(
                                          children: [
                                            Expanded(
                                              flex: 5,
                                              child: Container(
                                                height: 137,
                                                width: 147,
                                                decoration: const BoxDecoration(
                                                  image: DecorationImage(
                                                    image: ExactAssetImage(
                                                        'assets/image/bluegrems.jpg'),
                                                    fit: BoxFit.fitHeight,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Expanded(
                                              flex: 8,
                                              child: Column(
                                                mainAxisAlignment:
                                                MainAxisAlignment.end,
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  const Text(
                                                      "3.15 Ct Natural Bi Color Transparent Tourmaline Gemstone"),
                                                  fixsize,
                                                  fixsize,
                                                  const Text(
                                                    "Auction ID 1633439",
                                                    style: textstyle2,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      const Text(
                                                        "\$38.00",
                                                        style: textstyle2,
                                                      ),
                                                      AppButton(
                                                          name: "Remove",
                                                          onpressed: () {},
                                                          size: 80)
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                    fixsize,
                                    fixsize,
                                    const Text("Select Shipping Provider",
                                        style: textstyle1),
                                    fixsize,
                                    Container(
                                      decoration: BoxDecoration(

                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 5,
                                            blurRadius: 7,
                                            offset: const Offset(
                                                0, 3), // changes position of shadow
                                          ),
                                        ],
                                        borderRadius: BorderRadius.circular(17),
                                        color: Colors.white,
                                      ),
                                      height: 45,
                                      width: double.infinity,
                                      child: Padding(
                                        padding:
                                        const EdgeInsets.symmetric(horizontal: 8),
                                        child:DropdownButton<String>(
                                          isExpanded: true,
                                          underline: const Text(""),
                                          value: dropdownValue3,
                                          onChanged: (String? value) {
                                            setState(() {
                                              dropdownValue3 = value!;
                                            });
                                          },
                                          items: <String>['Standard Shipping - Tracked', 'Simple Shipping - Normal', 'Fast Shipping - Urgent']
                                              .map<DropdownMenuItem<String>>((String value) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(value),
                                            );
                                          })
                                              .toList(),
                                        ),
                                      ),
                                    ),
                                    fixsize,
                                    fixsize,
                                    Row(
                                      children: [
                                        Checkbox(
                                          value: _checkbox,
                                          onChanged: (value) {
                                            setState(() {
                                              _checkbox = !_checkbox;
                                            });
                                          },
                                        ),
                                        const Text(
                                          'Add postal insurance (\$0.00)',
                                          style: textstyle2,
                                        ),
                                      ],
                                    ),
                                    fixsize,
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(right: 60),
                                          child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: const [
                                                  Text("Item Total"),
                                                  Text("Shipping"),
                                                  Text("Postal Insurance"),
                                                ],
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: const [
                                                  Text(
                                                    "\$3.00",
                                                    style: textstyle2,
                                                  ),
                                                  Text(
                                                    "\$33.0000",
                                                    style: textstyle2,
                                                  ),
                                                  Text(
                                                    "\$0.0000",
                                                    style: textstyle2,
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                        const Divider(
                                          thickness: 1,
                                          color: Colors.black,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(right: 35),
                                          child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: const [
                                                  Text("Sub total"),
                                                  Text("Tax"),
                                                ],
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: const [
                                                  Text(
                                                    "\$33.3333333",
                                                    style: textstyle2,
                                                  ),
                                                  Text(
                                                    "\$0.0000",
                                                    style: textstyle2,
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                        const Divider(
                                          thickness: 1,
                                          color: Colors.black,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(right: 80),
                                          child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: const [
                                                  Text(
                                                    "Sub total",
                                                    style: textstyle2,
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: const [
                                                  Text(
                                                    "\$333.0",
                                                    style: textstyle2,
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    fixsize,
                                    fixsize,
                                    AppButton1(
                                        name: "Proceed To Checkout",
                                        onpressed: () {
                                          Get.to( PaymentScreen());

                                        },
                                        size: MediaQuery.of(context).size.width)
                                  ],
                                )),
                            fixsize,
                            fixsize,
                          ],
                        );
                  })
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
