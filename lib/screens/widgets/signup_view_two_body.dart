import 'package:care_app_project_one/screens/widgets/custom_app_bar_items.dart';
import 'package:care_app_project_one/screens/widgets/signup_info_two.dart';
import 'package:flutter/material.dart';

class SignupViewTwoBody extends StatelessWidget {
  const SignupViewTwoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Stack(children: [
       // CustomBackground(),
        CustomAppBarItems(
          backIcon: true,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        const SignupInfoTwo(),
      ])
    ]);
  }
}
