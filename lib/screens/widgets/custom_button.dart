import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({this.text, this.onTap});
  final String? text;
 final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xffE33551),
          borderRadius: BorderRadius.circular(16),
        ),
        //width: 303,
        height: 54.331,
        child: 
            
           
                Center(
                  child: Text(
                    text!,
                    style: const TextStyle(
                      color: Color(0xffEEEEEE),
                      fontFamily: 'Kadwa',
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                 
                ),
               
             
          
          //  SizedBox(width: 100,),
           // Icon(Icons.arrow_forward_ios_outlined,size: 14,),
          
      ),
    );
  }
}
