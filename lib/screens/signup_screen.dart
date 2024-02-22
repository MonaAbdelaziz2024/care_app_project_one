import 'package:care_app_project_one/screens/widgets/custom_app_bar_items.dart';
import 'package:care_app_project_one/screens/widgets/custom_appbar.dart';
import 'package:care_app_project_one/screens/widgets/signup_view_body.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SignUpViewBody(),
    );
  }
}
