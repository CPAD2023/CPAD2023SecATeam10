import 'dart:math';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodapp_login/core/app_pages.dart';
import 'package:foodapp_login/src/features/authentication/widgets/auth_bottom_rich_text.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});
  int randomNum() {
    Random random = Random();
    int randNum = random.nextInt(9) + 1;
    return randNum;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image:
                        AssetImage('assets/onboarding/image${randomNum()}.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 20,
                // right: 0,
                left: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/icon.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'COOK',
                            style: Theme.of(context).textTheme.displayLarge,
                          ),
                          TextSpan(
                            text: 'BOOK',
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium!
                                .copyWith(
                                    color: Color.fromARGB(255, 220, 11, 11)),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 155,
                right: 0,
                left: 0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35.0),
                  child: Text(
                    'Cook with Confidence',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                          fontSize: 38,
                        ),
                  ),
                ),
              ),
              Positioned(
                right: 0,
                left: 0,
                bottom: 115,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Material(
                      color: Colors.white,
                      elevation: 4,
                      child: InkWell(
                        key: const Key('SignupWithEmailButton'),
                        onTap: () {
                          Navigator.pushNamed(context, AppPages.signupPath);
                        },
                        child: Ink(
                          height: 54,
                          width: MediaQuery.of(context).size.width,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const FaIcon(
                                FontAwesomeIcons.solidEnvelope,
                                size: 22,
                              ),
                              const SizedBox(width: 12),
                              Text(
                                'Sign up with email'.toUpperCase(),
                                style: Theme.of(context)
                                    .textTheme
                                    .displayMedium!
                                    .copyWith(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17,
                                      color: Colors.black,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 0,
                left: 0,
                bottom: 75,
                child: AuthBottomRichText(
                  key: const Key('LoginWithAccountButton'),
                  detailText: 'Already have account? ',
                  darkColor: Colors.white,
                  lightColor: Colors.white,
                  clickableText: 'Log in',
                  onTap: () {
                    Navigator.pushNamed(context, AppPages.loginPath);
                  },
                ),
              ),
              Positioned(
                right: 0,
                left: 0,
                bottom: 30,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text:
                              'By using CookBook, you agree to our Terms of Use and Privacy Policy',
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .copyWith(
                                fontSize: 14,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
