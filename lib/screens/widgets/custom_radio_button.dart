import 'package:care_app_project_one/styles.dart';
import 'package:flutter/material.dart';

class CustomRadioButton extends StatefulWidget {
  CustomRadioButton({
    super.key,
    required this.text,
    required this.value,
    this.valueChoose = 1, required this.width, required this.height,
  });
  final String text;
 int? valueChoose;
  final int value;
  final double width, height;
  @override
  State<CustomRadioButton> createState() => _CustomRadioButtonState();
}

class _CustomRadioButtonState extends State<CustomRadioButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 48),
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xffd4d5ee),
      ),
      child: Row(
        children: [
          Text(widget.text,style: Styles.Style14,),
          const SizedBox(
            width: 8,
          ),
          Radio(
            //splashRadius: 1,
              value: 1,
              groupValue: widget.valueChoose,
              onChanged: (value) {
                setState(() {
                  widget.valueChoose = value;
                });
              }),
        ],
      ),
    );
  }
}
