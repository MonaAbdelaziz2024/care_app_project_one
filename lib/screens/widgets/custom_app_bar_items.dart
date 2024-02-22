import 'package:care_app_project_one/constant.dart';
import 'package:care_app_project_one/screens/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class CustomAppBarItems extends StatelessWidget {
  const CustomAppBarItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {},
            icon: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(.7),
                borderRadius: BorderRadius.circular(32),
              ),
              child:  Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.black,
                size: 18,
              ),
            )),
        const SizedBox(
          width: 100,
        ),
        Image.asset(
          kLogo,
          width: 150,
          height: 150,
        ),
      ],
    );
  }
}
