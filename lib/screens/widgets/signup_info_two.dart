import 'package:care_app_project_one/screens/widgets/custom_dropdown_dateofbirth.dart';
import 'package:care_app_project_one/screens/widgets/custom_dropdown_list.dart';
import 'package:care_app_project_one/screens/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

class SignupInfoTwo extends StatelessWidget {
  const SignupInfoTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 110,
      ),
      child: Container(
        width: 450,
        height: 770,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25)),
            color: Colors.white)
            , child:  Column(children: [
const CustomDropDownList(items: ['item1', 'item2'], width: 130, height: 40),
const SizedBox(height: 40,),
CustomRadioButton(text: 'Male', value: 1, width: 140, height: 40),
const SizedBox(height: 40,),
const CustomDateOfBirth(),
            ])
            ,)
            ,);
  }
}