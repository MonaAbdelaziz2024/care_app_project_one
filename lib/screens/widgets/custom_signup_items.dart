import 'package:care_app_project_one/constant.dart';
import 'package:care_app_project_one/screens/signup_screen_two.dart';
import 'package:care_app_project_one/screens/widgets/custom_button.dart';
import 'package:care_app_project_one/screens/widgets/custom_text_feild.dart';
import 'package:care_app_project_one/screens/widgets/signup_with_google.dart';
import 'package:care_app_project_one/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSignupItems extends StatefulWidget {
  const CustomSignupItems({super.key});

  @override
  State<CustomSignupItems> createState() => _CustomSignupItemsState();
}

class _CustomSignupItemsState extends State<CustomSignupItems> {
  @override
  Widget build(BuildContext context) {
    bool onTap = false;
    Color color = Color(0xff0075FE);

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
                  style: Styles.Style42,
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
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: IconButton(
                        // focusColor: color,
                        //color: Colors.blue,
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.solidCircleCheck,
                          color: color,
                          size: 20,
                        ),
                      ),
                    ),
                    Text.rich(
                      TextSpan(
                        text: 'I agree to the ',
                        style: Styles.Style11.copyWith(
                            fontWeight: FontWeight.w800),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Terms & Conditions',
                            style: Styles.Style11.copyWith(
                                color: const Color(0xff0062D6).withOpacity(.8),
                                fontWeight: FontWeight.w800),
                          ),
                          TextSpan(
                              text: ' and ',
                              style: Styles.Style11.copyWith(
                                  fontWeight: FontWeight.w800),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Privacy  Policy',
                                    style: Styles.Style11.copyWith(
                                        color: const Color(0xff0062D6)
                                            .withOpacity(.8),
                                        fontWeight: FontWeight.w800))
                              ])
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              CustomButton(
                nextIcon: true,
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
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        'or',
                        style: Styles.Style11.copyWith(
                            fontWeight: FontWeight.w600),
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
                      style: Styles.Style11.copyWith(
                          color: const Color(0xff0062D6).withOpacity(.9))),
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
