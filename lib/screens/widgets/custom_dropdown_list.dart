import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomDropDownList extends StatefulWidget {
  const CustomDropDownList({super.key, required this.items, required this.width, required this.height});
  final List<String> items;
  final double width, height;
  @override
  State<CustomDropDownList> createState() => _CustomDropDownListState();
}

class _CustomDropDownListState extends State<CustomDropDownList> {
  var value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      width:widget.width ,
      height: widget.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xffd4d5ee),
      ),
      child: DropdownButton(
        
        isExpanded: true,
          //hint: const Text('select'),
          underline:SizedBox(),
         dropdownColor: const Color(0xffd4d5ee),
          icon: Image.asset('assets/images/chevron-down.png',width: 24,),
          iconSize: 24,
          style: const TextStyle(color: Colors.black, fontSize: 24),
          value: value,
          onChanged: (chooseValue) {
            setState(() {
              value = chooseValue;
            });
          },
          items: widget.items.map((value) {
            return DropdownMenuItem(
              value: value,
              child: Text(value),
            );
          }).toList()),
    );
  }
}
