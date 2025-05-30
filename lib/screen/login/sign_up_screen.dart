import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meditation_app/common/color_extension.dart';
import 'package:meditation_app/common_widget/round_button.dart';
import 'package:meditation_app/common_widget/round_text_field.dart';
import 'package:meditation_app/screen/home/choose_topic_screen.dart';
import 'package:meditation_app/screen/home/welcome_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _StartupScreenState();
}

class _StartupScreenState extends State<SignUpScreen> {
  bool isTrue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: context.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Image.asset(
                    'assets/images/login_top.png',
                    width: double.maxFinite,
                    fit: BoxFit.fitWidth,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                context.pop();
                              },
                              child: Image.asset('assets/images/back_white.png',
                                  width: 55, height: 55),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Create your account',
                        style: TextStyle(
                          color: TColor.primaryText,
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: MaterialButton(
                          onPressed: () {},
                          minWidth: double.infinity,
                          elevation: 0,
                          color: const Color(0xff8e97fd),
                          height: 60,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: BorderSide.none,
                          ),
                          child: Row(
                            children: [
                              const SizedBox(width: 15),
                              Image.asset('assets/images/fb.png',
                                  width: 25, height: 25),
                              Expanded(
                                child: Text(
                                  "CONTINUE WITH FACEBOOK",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 40),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: MaterialButton(
                          onPressed: () {},
                          minWidth: double.infinity,
                          elevation: 0,
                          color: Colors.white,
                          height: 60,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: BorderSide(color: TColor.tertiary, width: 1),
                          ),
                          child: Row(
                            children: [
                              const SizedBox(width: 15),
                              Image.asset('assets/images/google.png',
                                  width: 25, height: 25),
                              Expanded(
                                child: Text(
                                  "CONTINUE WITH GOOGLE",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: TColor.primaryText,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 40),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 35),
              Text(
                'OR LOGIN WITH EMAIL',
                style: TextStyle(
                  color: TColor.secondaryText,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 35),
              RoundTextField(
                hintText: 'Username',
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 20),
              RoundTextField(
                hintText: 'Email Address',
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 20),
              RoundTextField(
                hintText: 'Password',
                keyboardType: TextInputType.emailAddress,
                obscureText: true,
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text(
                      'I have read the ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: TColor.secondaryText,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      'Privacy Policy',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: TColor.primary,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            isTrue = !isTrue;
                          });
                        },
                        icon: Icon(
                          isTrue
                              ? Icons.check_box
                              : Icons.check_box_outline_blank_rounded,
                          color: isTrue ? TColor.primary : TColor.secondaryText,
                        )),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              RoundButton(
                title: 'GET STARTED',
                onPressed: () {
                  context.push(const WelcomeScreen());
                },
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
