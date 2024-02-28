import 'package:care_app_project_one/screens/widgets/custom_button.dart';
import 'package:care_app_project_one/screens/widgets/custom_dropdown_list.dart';
import 'package:care_app_project_one/styles.dart';
import 'package:flutter/material.dart';

class SignupDrugInfo extends StatelessWidget {
  const SignupDrugInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.only(
          top: 32,
          
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            "Sign Up....",
            style: Styles.Style42,
            // textAlign: TextAlign.left,
          ),
          const Padding(
            padding: EdgeInsets.only(
              
              top: 46,
              bottom: 3,
            ),
            child: Text("Drug name", style: Styles.Style14),
          ),
          const SizedBox(
            height: 15,
          ),
           const CustomDropDownList(
              items: ['item1', 'item2'], width: 400, height: 40),

              const Padding(
            padding: EdgeInsets.only(
             
              top: 10,
              bottom: 3,
            ),
            child: Row(
              children: [
                const Text("Dose number per Day", style: Styles.Style14),
                SizedBox(
                  width: 65,
                ),
                const Text("Duration", style: Styles.Style14),
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            children: [
              const CustomDropDownList(
                  items: ['item1', 'item2'], width: 160, height: 40),
              SizedBox(
                width: 45,
              ),
              const CustomDropDownList(
                  items: ['item1', 'item2'], width: 140, height: 40),
        
           
            ],
          ),
           
           const Padding(
            padding: EdgeInsets.only(
              
              top: 7,
              bottom: 10,
            ),
            child: Text("Dose timing", style: Styles.Style14),
          ),

           const CustomDropDownList(
                  items: ['item1', 'item2'], width: 160, height: 40),
SizedBox(height: 16,),
GestureDetector(
  onTap: (){},
  child: Padding(
    padding: const EdgeInsets.only(left: 6),
    child: Container(
      child: Center(
        child: Text(
                "Add Drug",
                style: Styles.Style14,
                ),
      )
         ,
              width: 110,
              height: 37,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff022B3A)),
          borderRadius: BorderRadius.circular(10), 
          color: Color(0x3f7e869e),)
              ),
  ),

),
SizedBox(height: 250,),
CustomButton(nextIcon: false, text: 'Finish',),
 const SizedBox(
                height: 27,
              ),
 Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 24),
                    child: Image.asset('assets/images/Ellipse 68.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 24),
                    child: Image.asset('assets/images/Ellipse 68.png'),
                  ),
                  Image.asset('assets/images/Ellipse 69.png')
                ],
              )
            ,
        ],
        ),
        );
  }
}
