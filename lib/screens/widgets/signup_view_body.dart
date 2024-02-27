import 'package:care_app_project_one/screens/widgets/custom_app_bar_items.dart';
import 'package:care_app_project_one/screens/widgets/custom_signup_items.dart';
import 'package:flutter/material.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children:const [ Stack(
        //fit: StackFit.passthrough,
        children: [ 
          //CustomBackground(),
          CustomAppBarItems(),
          CustomSignupItems(),
         
        
        ]
      ),],
    );

  }
}
