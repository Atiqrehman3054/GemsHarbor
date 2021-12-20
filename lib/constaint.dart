import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kbackgroundColor = Color(0xFFF8F7FA);
const pinkColor = Color(0xFFEA008B);
const bringColor = Color(0xFF4A3084);
const blueColor = Color(0xFF105082);

const AppbarTex =
    TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black);

const KTextFieldDecoration = InputDecoration(

  hintText: 'Enter your email',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(15.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(width: 0.1),
    borderRadius: BorderRadius.all(Radius.circular(15.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(width: 0.1),
    borderRadius: BorderRadius.all(Radius.circular(15.0)),
  ),
);
const kSendButtonTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 12.0,
);

const TextFieldDecoration = InputDecoration(
  hintText: 'Enter your email',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(15.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(width: 0.1),
    borderRadius: BorderRadius.all(Radius.circular(15.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(width: 0.1),
    borderRadius: BorderRadius.all(Radius.circular(15.0)),
  ),
);
const SendButtonTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 12.0,
);

final boxdecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(15),
  border: Border.all(color: Colors.black38),
  boxShadow: const [
    BoxShadow(
      color: Colors.black38,
      blurRadius: 25,
      offset: Offset(0, 10),
    ),
  ],
);

const kAppBarColor = Color(0xFF1C66D6);
const kSplashColor = Color(0xFF105082);
const kBackgroundColor2 = Color(0xFF949DFF);

const textstyle = TextStyle(
  fontSize: 12,
  color: kSplashColor,
);
const textstyle3 =  TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w600,
  color: Colors.grey
);

const textstyle1 = TextStyle(
  // fontSize: 12,
  fontWeight: FontWeight.bold,
  color: kSplashColor,
);
const textstyle2 = TextStyle(
  fontWeight: FontWeight.bold,
  // color: kSplashColor,
);

const popup_style = TextStyle(
  fontSize: 20,
  color: Color(0xFF707070),
  // fontWeight: FontWeight.bold,
);

const kPrimaryColor = Color(0xFF366CF6);
const kSecondaryColor = Color(0xFFF5F6FC);
const kBgLightColor = Color(0xFFF2F4FC);
const kBgDarkColor = Color(0xFFEBEDFA);
const kBadgeColor = Color(0xFFEE376E);
const kGrayColor = Color(0xFF8793B2);
const kTitleTextColor = Color(0xFF30384D);
const kTextColor = Color(0xFF4D5875);

const kDefaultPadding = 20.0;

class AppColors {
  static final pinkColor = Color(0xffEA008B);
  static final blueColor = Color(0xff105082);
  static final blackColor = Color(0xff000000);
  static final greyColor = Color(0xff999999);
  static final purPalColor = Color(0xff4A3084);
  static final whiteColor = Color(0xffFFFFFF);
  static const baseDarkPinkColor = Color(0xff6930c3);
  static const baseLightPinkColor = Color(0xff9775fa);
  static const baseDarkGreenColor = Color(0xff23bd66);
  static const baseLightGreenColor = Color(0xff5dd136);
  static const baseDarkOrangeColor = Color(0xffff671c);
  static const baseLightOrangeColor = Color(0xffffa601);
  static const baseLightCyanColor = Color(0xff05c2bd);
  static const baseBlackColor = Color(0xff1b1b1d);
  static const baseGrey90Color = Color(0xff2d2d2f);
  static const baseGrey80Color = Color(0xff3c3c3e);
  static const baseGrey70Color = Color(0xff545455);
  static const baseGrey60Color = Color(0xff727273);
  static const baseGrey50Color = Color(0xff8d8d8e);
  static const baseGrey40Color = Color(0xffbababa);
  static const baseGrey30Color = Color(0xffd0d0d0);
  static const baseGrey20Color = Color(0xffe6e6e7);
  static const baseGrey10Color = Color(0xfff6f6f6);
  static const baseWhiteColor = Color(0xffffffff);
  static const basewhite60Color = Color(0xffF6F6F6);
}

var fixsize = const SizedBox(
  height: 10,
);
var fixsize1 = const SizedBox(
  height: 5,
);
var fixsize2 = const SizedBox(
  width: 10.0,
);

const smallfont = TextStyle(color: Colors.grey, fontSize: 12);
const medfont = TextStyle(fontSize: 14, fontWeight: FontWeight.bold);
final heading = GoogleFonts.lato(
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.bold,
  color: kSplashColor,
  fontSize: 15,
);
