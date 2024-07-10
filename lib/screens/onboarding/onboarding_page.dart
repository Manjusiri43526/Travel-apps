import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travel_app/screens/authentication/sign_in.dart';
import 'package:travel_app/screens/onboarding/onboarding_items.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return OnboardingPageState();
  }
}

class OnboardingPageState extends State<OnboardingPage> {
  final controller = OnboardingItems();
  final pageController = PageController();
  bool isLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: isLastPage
            ? getStarted()
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {
                        return pageController
                            .jumpToPage(controller.item.length - 1);
                      },
                      child: const Text(
                        "Skip",
                        style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF24BAEC),
                            fontFamily: "abcya"),
                      )),

                  //indicator
                  SmoothPageIndicator(
                    controller: pageController,
                    count: controller.item.length,
                    onDotClicked: (index) => pageController.animateToPage(index,
                        duration: const Duration(milliseconds: 600),
                        curve: Curves.easeIn),
                    effect: const WormEffect(
                        dotWidth: 9,
                        dotHeight: 7,
                        activeDotColor: Color(0xFF24BAEC)),
                  ),

                  TextButton(
                      onPressed: () {
                        pageController.nextPage(
                            duration: const Duration(milliseconds: 600),
                            curve: Curves.easeIn);
                      },
                      child: const Text("Next",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF24BAEC),
                              fontFamily: "abcya")))
                ],
              ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: PageView.builder(
          onPageChanged: (index) =>
              setState(() => isLastPage = controller.item.length - 1 == index),
          itemCount: controller.item.length,
          controller: pageController,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Image.asset(controller.item[index].image),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  controller.item[index].title1,
                  style: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.w400),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      controller.item[index].title2,
                      style: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      controller.item[index].title3,
                      style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFFF7029)),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 120),
                  child: SizedBox(
                      width: 200,
                      child: SvgPicture.asset("assets/images/Vector 2524.svg")),
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  width: 303,
                  height: 72,
                  child: Text(
                    controller.item[index].description,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 16,
                      fontFamily: "gill sans",
                      color: Color(0xFF7D848D),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  //Get started Button
  Widget getStarted() {
    return Container(
        width: MediaQuery.of(context).size.width * .9,
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color(0xFF24BAEC),
        ),
        child: TextButton(
            onPressed: () async {
              final pres = await SharedPreferences.getInstance();
              pres.setBool("onboarding", true);


              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignInPage(),
                  ));

              //after we press get started button this onboarding value become true

              if (!mounted) return;
            },
            child: const Text(
              "Get Started",
              style: TextStyle(fontFamily: "abcya", color: Colors.white),
            )));
  }
}
