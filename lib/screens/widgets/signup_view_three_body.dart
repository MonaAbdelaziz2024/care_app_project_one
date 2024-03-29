import 'package:care_app_project_one/screens/widgets/custom_app_bar_items.dart';
import 'package:care_app_project_one/screens/widgets/signup_drug_info.dart';
import 'package:care_app_project_one/screens/widgets/signup_info_two.dart';
import 'package:flutter/material.dart';

class SignupViewThreeBody extends StatelessWidget {
  const SignupViewThreeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28),
      child: ListView(
        children: [
        CustomAppBarItems(
          backIcon: true,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        const SignupDrugInfo()
      ]),
    );
  }
}
