import 'package:care_app_project_one/constant.dart';
import 'package:care_app_project_one/styles.dart';
import 'package:datepicker_dropdown/datepicker_dropdown.dart';
import 'package:datepicker_dropdown/order_format.dart';
import 'package:flutter/material.dart';

class CustomDateOfBirth extends StatefulWidget {
  const CustomDateOfBirth({super.key});

  @override
  State<CustomDateOfBirth> createState() => _CustomDateOfBirthState();
}

class _CustomDateOfBirthState extends State<CustomDateOfBirth> {
  @override
  Widget build(BuildContext context) {
    return DropdownDatePicker(
     
              dateformatorder: OrderFormat.DMY, // default is myd
              inputDecoration: InputDecoration(
              
         
                  border:  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Color(0xffd4d5ee)),
                  ),
                  // border: OutlineInputBorder(
                  //     borderRadius: BorderRadius.circular(10)
                  //     ,)
                  
                      ), // optional
              isDropdownHideUnderline: true, // optional
              isFormValidator: true, // optional
              startYear: 1900, // optional
              endYear: 2020, // optional
              width: 30,
               // optional
              // selectedDay: 14, // optional
              selectedMonth: 10, // optional
              selectedYear: 1993, // optional
             onChangedDay: (value) => print('onChangedDay: $value'),
             onChangedMonth: (value) => print('onChangedMonth: $value'),
             onChangedYear: (value) => print('onChangedYear: $value'),
              boxDecoration: BoxDecoration(
                color: Color(0xffd4d5ee),
                borderRadius: BorderRadius.circular(10),


               //border: Border.all(color : Color(0xffd4d5ee), width: 1.0)
               ), // optional
              // showDay: false,// optional
               dayFlex: 2,// optional
              // monthFlex: 3,
               locale: "en_abbv",// optional
              hintDay: 'Day', // optional
              hintMonth: 'Month', // optional
               hintYear: 'Year', // optional
               hintTextStyle: Styles.Style14, // optional
            );
  }
}