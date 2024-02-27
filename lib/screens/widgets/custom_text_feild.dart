
import 'package:care_app_project_one/styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key, this.onChanged, this.hintText, this.obscureText = false});
 final String? hintText;
 final bool? obscureText;
  Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText!, // ******* for password
      // validator: (data) {
      //   if (data!.isEmpty) {
      //     return 'Field is Requied';
      //   }
      // },
      onChanged: onChanged,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xffD4D6EE),
        hintText: hintText,
       
        hintStyle: Styles.Style14,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(17),
          borderSide: const BorderSide(
            color: Color(0xffD4D6EE),
            style: BorderStyle.solid,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(17),
          borderSide: const BorderSide(
            color: Color(0xffD4D6EE),
            style: BorderStyle.solid,
          ),
        ),
      ),
    );
  }
}
