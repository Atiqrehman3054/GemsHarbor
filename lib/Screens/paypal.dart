import 'dart:io';
import 'package:flutter/material.dart';
import 'package:gemsharbor/Screens/widgets/widget_screen.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PayPal_Payment_Screen extends StatefulWidget {
  const PayPal_Payment_Screen({Key? key}) : super(key: key);

  @override
  PayPal_Payment_ScreenState createState() => PayPal_Payment_ScreenState();
}

class PayPal_Payment_ScreenState extends State<PayPal_Payment_Screen> {
  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child:Scaffold(
        body: Column(
          children: const [
            Appbar1(),
            Expanded(
              flex: 8,
              child:  WebView(
              initialUrl: 'https://www.paypal.com/pk/home',
            ),)
          ],
        ),
      )
    );
  }
}