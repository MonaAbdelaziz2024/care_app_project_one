import 'package:care_app_project_one/screens/widgets/signup_view_three_body.dart';
import 'package:care_app_project_one/screens/widgets/signup_view_two_body.dart';
import 'package:flutter/material.dart';

class SignupViewThree extends StatelessWidget {
  const SignupViewThree({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor:Colors.white,
      body:SignupViewThreeBody(),
    );
  }
}