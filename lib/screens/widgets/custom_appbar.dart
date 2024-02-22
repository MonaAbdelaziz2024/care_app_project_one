import 'package:care_app_project_one/constant.dart';
import 'package:care_app_project_one/screens/widgets/custom_app_bar_items.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: const AssetImage(
            kBackground,
          ),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
             const Color(0xffD9D9F1).withOpacity(1), BlendMode.darken),
        ),
      ),
      child: const CustomAppBarItems(),
    );
  }
}
