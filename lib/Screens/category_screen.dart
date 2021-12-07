import 'package:flutter/material.dart';
import 'package:gemsharbor/Screens/Side%20Bar/navigation_drawer_widget.dart';
import 'package:gemsharbor/Screens/widget_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constaint.dart';
import 'detail_screen.dart';

class CategoreyScreen extends StatefulWidget {
  const CategoreyScreen({Key? key}) : super(key: key);


  @override
  _CategoreyScreenState createState() => _CategoreyScreenState();
}

class _CategoreyScreenState extends State<CategoreyScreen> {

  String dropdownValue1 = 'Active';
  String dropdownValue2 = 'Certified';
  String dropdownValue3 = 'Fixed Price';
  String dropdownValue4 = 'Ending Soon';
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
        drawer: const NavigationDrawerWidget(),
          body: SingleChildScrollView(
            child: Column(
              children: [
               Column(

                 children: [
               const Appbar(),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                 child: SingleChildScrollView(
                   scrollDirection: Axis.horizontal,
                   child: Row(
                     children: [
                       Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                           Icon(Icons.view_list_rounded,color: AppColors.purPalColor,),
                           Center(
                             child: DropdownButton<String>(

                               value: dropdownValue1,
                               onChanged: (String? value) {
                                 setState(() {
                                   dropdownValue1 = value!;
                                 });
                               },
                               items: <String>['Active','InActive',]
                                   .map<DropdownMenuItem<String>>((String value) {
                                 return DropdownMenuItem<String>(
                                   value: value,
                                   child: Text(value),
                                 );
                               })
                                   .toList(),
                             ),
                           ),
                         ],
                       ),
                       Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                           Icon(Icons.credit_card_outlined,color: AppColors.purPalColor,),
                           Center(
                             child: DropdownButton<String>(

                               value: dropdownValue2,
                               onChanged: (String? value) {
                                 setState(() {
                                   dropdownValue2 = value!;
                                 });
                               },
                               items: <String>['Certified', 'UnCertified',]
                                   .map<DropdownMenuItem<String>>((String value) {
                                 return DropdownMenuItem<String>(
                                   value: value,
                                   child: Text(value),
                                 );
                               })
                                   .toList(),
                             ),
                           ),
                         ],
                       ),
                       Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                           Icon(Icons.filter_list_alt,color: AppColors.purPalColor,),
                           Center(
                             child: DropdownButton<String>(

                               value: dropdownValue3,
                               onChanged: (String? value) {
                                 setState(() {
                                   dropdownValue3 = value!;
                                 });
                               },
                               items: <String>['Fixed Price', 'sale',]
                                   .map<DropdownMenuItem<String>>((String value) {
                                 return DropdownMenuItem<String>(
                                   value: value,
                                   child: Text(value),
                                 );
                               })
                                   .toList(),
                             ),
                           ),
                         ],
                       ),
                       Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                           Icon(Icons.compare_arrows,color: AppColors.purPalColor,),
                           Center(
                             child: DropdownButton<String>(

                               value: dropdownValue4,
                               onChanged: (String? value) {
                                 setState(() {
                                   dropdownValue4 = value!;
                                 });
                               },
                               items: <String>['Ending Soon', 'TimeOut',]
                                   .map<DropdownMenuItem<String>>((String value) {
                                 return DropdownMenuItem<String>(
                                   value: value,
                                   child: Text(value),
                                 );
                               })
                                   .toList(),
                             ),
                           ),
                         ],
                       ),
                     ],
                   ),
                 ),
               ),
                 ],
               ),
                SizedBox(
                  height: 420.h,

                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: ListView(
                      shrinkWrap: true,
                      children: const [
                       AllGems(),

                        Divider(thickness: 2,indent: 10,endIndent: 12,),
                        SizedBox(height: 10,),

                        RubyGridView(),

                        SizedBox(height: 10,),
                        Divider(thickness: 2,indent: 10,endIndent: 12,),
                        SizedBox(height: 10,),

GarletGridview(),


                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

        ),
      ),
    );
  }
}
