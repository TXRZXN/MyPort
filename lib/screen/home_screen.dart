import 'package:flutter/material.dart';
import 'package:portfolio/helper/size_config.dart';
import 'package:portfolio/theme/style.dart';
import 'package:portfolio/widget/default_appbar_widget.dart';

import 'package:responsive_builder/responsive_builder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.isDesktop) {
          return buildbodyDeskTop(context);
        } else if (sizingInformation.isTablet) {
          return buildbodyTablet(context);
        }
        return buildbodyMobile(context);
      },
    );
  }

  Widget buildbodyMobile(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appbarMobile(context),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(-1, -1),
              end: Alignment(0.0, 1),
              colors: [
                Colors.white,
                Colors.grey,
                Colors.black,
              ],
            ),
          ),
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(
                left: getProportionateScreenWidth(8),
                top: getProportionateScreenHeight(8),
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "HI, I’M TARZAN",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: getProportionateScreenHeight(22),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "I’M A MOBILE DEVELOPER",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: getProportionateScreenHeight(26),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "I have a goal of being a Professional Mobile Developer well-versed in software applications, algorithms, development techniques, and data structures. Nice To Meet ",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: getProportionateScreenHeight(kFontLargeSize),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: SizedBox(
                      height: SizeConfig.screenHeight! * 0.58,
                      // width: SizeConfig.screenWidth! * 0.85,
                      child: Image.asset(
                        "lib/assets/png/me.png",
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildbodyDeskTop(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appbarDesktop(context),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(-1, -1),
              end: Alignment(0, 3),
              colors: [
                Colors.white,
                Colors.grey,
                Colors.black,
              ],
            ),
          ),
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(
                left: getProportionateScreenWidth(8),
                top: getProportionateScreenHeight(8),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: SizeConfig.screenWidth! * 0.65,
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "HI, I’M TARZAN",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: getProportionateScreenHeight(22),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "I’M A MOBILE DEVELOPER",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: getProportionateScreenHeight(26),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "I have a goal of being a Professional Mobile Developer well-versed in software applications, algorithms, development techniques, and data structures.",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  getProportionateScreenHeight(kFontLargeSize),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Nice To Meet You.",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  getProportionateScreenHeight(kFontLargeSize),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: SizedBox(
                        // height: SizeConfig.screenHeight! * 0.7,
                        // width: SizeConfig.screenWidth! * 0.85,
                        child: Image.asset(
                          "lib/assets/png/me.png",
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildbodyTablet(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appbarDesktop(context),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(-1, -1),
              end: Alignment(0, 3),
              colors: [
                Colors.white,
                Colors.grey,
                Colors.black,
              ],
            ),
          ),
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(
                left: getProportionateScreenWidth(8),
                top: getProportionateScreenHeight(8),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: SizeConfig.screenWidth! * 0.65,
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "HI, I’M TARZAN",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: getProportionateScreenHeight(22),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "I’M A MOBILE DEVELOPER",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: getProportionateScreenHeight(26),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "I have a goal of being a Professional Mobile Developer well-versed in software applications, algorithms, development techniques, and data structures.",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  getProportionateScreenHeight(kFontLargeSize),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Nice To Meet You.",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  getProportionateScreenHeight(kFontLargeSize),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: SizedBox(
                        // height: SizeConfig.screenHeight! * 0.7,
                        // width: SizeConfig.screenWidth! * 0.85,
                        child: Image.asset(
                          "lib/assets/png/me.png",
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
