import 'package:care_app_project_one/constant.dart';
import 'package:care_app_project_one/screens/signup_screen_two.dart';
import 'package:care_app_project_one/screens/widgets/custom_button.dart';
import 'package:care_app_project_one/screens/widgets/custom_text_feild.dart';
import 'package:care_app_project_one/screens/widgets/signup_with_google.dart';
import 'package:care_app_project_one/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSignupItems extends StatelessWidget {
  const CustomSignupItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 110,
      ),
      child: Container(
        width: 450,
        height: 770,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25)),
            color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.only(left: 38, right: 39),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 12),
                child: Text(
                  "Sign Up",
                  style: Styles.Style36,
                  // textAlign: TextAlign.left,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 28,
                  top: 46,
                  bottom: 3,
                ),
                child: Text("Username", style: Styles.Style14),
              ),
              SizedBox(width: 350, height: 52, child: CustomTextField()),
              const Padding(
                padding: EdgeInsets.only(
                  left: 28,
                  top: 46,
                  bottom: 3,
                ),
                child: Text("Email", style: Styles.Style14),
              ),
              SizedBox(width: 350, height: 52, child: CustomTextField()),
              const Padding(
                padding: EdgeInsets.only(
                  left: 28,
                  top: 46,
                  bottom: 3,
                ),
                child: Text("Password", style: Styles.Style14),
              ),
              SizedBox(
                  width: 350,
                  height: 52,
                  child: CustomTextField(
                    obscureText: true,
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 18),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      color: Colors.blue,
                      onPressed: () {},
                      icon: const Icon(
                        FontAwesomeIcons.solidCircleCheck,
                        color: Color(0xff0075FE),
                        size: 24,
                      ),
                    ),
                    const SizedBox(
                      width: 13,
                    ),
                    Text.rich(
                      TextSpan(
                        text: 'I agree to the ',
                        style: Styles.Style11.copyWith(fontWeight: FontWeight.w800),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Terms & Conditions',
                            style: Styles.Style11.copyWith(
                                color: const Color(0xff0062D6),
                                fontWeight: FontWeight.w800),
                          ),
                          TextSpan(
                              text: ' and ',
                              style: Styles.Style11.copyWith(fontWeight: FontWeight.w800),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Privacy  Policy',
                                    style: Styles.Style11.copyWith(
                                        color: const Color(0xff0062D6),
                                        fontWeight: FontWeight.w800))
                              ])
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              CustomButton(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const SignupViewTwo();
                  }));
                },
                text: "Next",
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: kTextColor,
                      width: 130,
                      height: 1,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        'or',
                        style: Styles.Style11,
                      ),
                    ),
                    Container(
                      color: kTextColor,
                      width: 130,
                      height: 1,
                    )
                  ],
                ),
              ),
              const SignupWithGoogle(),
              const SizedBox(
                height: 11,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account?  ",
                      style: Styles.Style11),
                  Text("Sign In",
                      style: Styles.Style11.copyWith(color: Colors.blue)),
                ],
              ),
              const SizedBox(
                height: 27,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 24),
                    child: Image.asset('assets/images/Ellipse 69.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 24),
                    child: Image.asset('assets/images/Ellipse 68.png'),
                  ),
                  Image.asset('assets/images/Ellipse 68.png')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
