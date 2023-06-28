import 'package:flutter/material.dart';
import 'package:portfolio/helper/size_config.dart';
import 'package:portfolio/widget/default_appbar_widget.dart';

import 'package:responsive_builder/responsive_builder.dart';

class MBDCProjectScreen extends StatelessWidget {
  const MBDCProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.isDesktop) {
          return buildbodyDesktop(context);
        } else if (sizingInformation.isTablet) {
          return buildbodytTablet(context);
        }
        return buildbodyMobile(context);
      },
    );
  }

  Widget buildbodyMobile(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appbarMobile(context),
        body: Padding(
          padding: EdgeInsets.symmetric(
            vertical: getProportionateScreenWidth(10),
            horizontal: getProportionateScreenHeight(10),
          ),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "DC Application",
                      style: TextStyle(
                        fontSize: getProportionateScreenHeight(30),
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "The DC Service's internal application is used to review and report product information for delivery and pickup.",
                      style: TextStyle(
                        fontSize: getProportionateScreenHeight(22),
                        color: Colors.white,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(10),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                    ),
                    width: SizeConfig.screenWidth! * 0.8,
                    child: Image.asset(
                      "lib/assets/png/mbdc/mbdc1.jpg",
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(5),
                  ),
                  const Divider(
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(5),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                    ),
                    width: SizeConfig.screenWidth! * 0.8,
                    child: Image.asset(
                      "lib/assets/png/mbdc/mbdc2.jpg",
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(5),
                  ),
                  const Divider(
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(5),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                    ),
                    width: SizeConfig.screenWidth! * 0.8,
                    child: Image.asset(
                      "lib/assets/png/mbdc/mbdc3.jpg",
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(5),
                  ),
                  const Divider(
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(5),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                    ),
                    width: SizeConfig.screenWidth! * 0.8,
                    child: Image.asset(
                      "lib/assets/png/mbdc/mbdc4.jpg",
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(5),
                  ),
                  const Divider(
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(5),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                    ),
                    width: SizeConfig.screenWidth! * 0.8,
                    child: Image.asset(
                      "lib/assets/png/mbdc/mbdc5.jpg",
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(5),
                  ),
                  const Divider(
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(5),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                    ),
                    width: SizeConfig.screenWidth! * 0.8,
                    child: Image.asset(
                      "lib/assets/png/mbdc/mbdc6.jpg",
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(5),
                  ),
                  const Divider(
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(5),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                    ),
                    width: SizeConfig.screenWidth! * 0.8,
                    child: Image.asset(
                      "lib/assets/png/mbdc/mbdc7.jpg",
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(5),
                  ),
                  const Divider(
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(5),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                    ),
                    width: SizeConfig.screenWidth! * 0.8,
                    child: Image.asset(
                      "lib/assets/png/mbdc/mbdc8.jpg",
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(5),
                  ),
                  const Divider(
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(5),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                    ),
                    width: SizeConfig.screenWidth! * 0.8,
                    child: Image.asset(
                      "lib/assets/png/mbdc/mbdc9.jpg",
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

  Widget buildbodyDesktop(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff1e1e1e),
        appBar: appbarDesktop(context),
        body: Padding(
          padding: EdgeInsets.symmetric(
            vertical: getProportionateScreenWidth(10),
            horizontal: getProportionateScreenHeight(10),
          ),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "DC Application",
                      style: TextStyle(
                        fontSize: getProportionateScreenHeight(30),
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "The DC Service's internal application is used to review and report product information for delivery and pickup.",
                      style: TextStyle(
                        fontSize: getProportionateScreenHeight(22),
                        color: Colors.white,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(10),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: SizeConfig.screenHeight! * 0.8,
                        width: SizeConfig.screenWidth! * 0.2,
                        child: Image.asset(
                          "lib/assets/png/mbdc/mbdc1.jpg",
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight! * 0.8,
                        width: SizeConfig.screenWidth! * 0.2,
                        child: Image.asset(
                          "lib/assets/png/mbdc/mbdc2.jpg",
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight! * 0.8,
                        width: SizeConfig.screenWidth! * 0.2,
                        child: Image.asset(
                          "lib/assets/png/mbdc/mbdc3.jpg",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(10),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: SizeConfig.screenHeight! * 0.8,
                        width: SizeConfig.screenWidth! * 0.2,
                        child: Image.asset(
                          "lib/assets/png/mbdc/mbdc4.jpg",
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight! * 0.8,
                        width: SizeConfig.screenWidth! * 0.2,
                        child: Image.asset(
                          "lib/assets/png/mbdc/mbdc5.jpg",
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight! * 0.8,
                        width: SizeConfig.screenWidth! * 0.2,
                        child: Image.asset(
                          "lib/assets/png/mbdc/mbdc6.jpg",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(10),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: SizeConfig.screenHeight! * 0.8,
                        width: SizeConfig.screenWidth! * 0.2,
                        child: Image.asset(
                          "lib/assets/png/mbdc/mbdc7.jpg",
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight! * 0.8,
                        width: SizeConfig.screenWidth! * 0.2,
                        child: Image.asset(
                          "lib/assets/png/mbdc/mbdc8.jpg",
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight! * 0.8,
                        width: SizeConfig.screenWidth! * 0.2,
                        child: Image.asset(
                          "lib/assets/png/mbdc/mbdc9.jpg",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(10),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildbodytTablet(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff1e1e1e),
        appBar: appbarDesktop(context),
        body: Padding(
          padding: EdgeInsets.symmetric(
            vertical: getProportionateScreenWidth(10),
            horizontal: getProportionateScreenHeight(10),
          ),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "DC Application",
                      style: TextStyle(
                        fontSize: getProportionateScreenHeight(30),
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "The DC Service's internal application is used to review and report product information for delivery and pickup.",
                      style: TextStyle(
                        fontSize: getProportionateScreenHeight(22),
                        color: Colors.white,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(10),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: SizeConfig.screenHeight! * 0.7,
                        width: SizeConfig.screenWidth! * 0.3,
                        child: Image.asset(
                          "lib/assets/png/mbdc/mbdc1.jpg",
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight! * 0.7,
                        width: SizeConfig.screenWidth! * 0.3,
                        child: Image.asset(
                          "lib/assets/png/mbdc/mbdc2.jpg",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(10),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: SizeConfig.screenHeight! * 0.7,
                        width: SizeConfig.screenWidth! * 0.3,
                        child: Image.asset(
                          "lib/assets/png/mbdc/mbdc3.jpg",
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight! * 0.7,
                        width: SizeConfig.screenWidth! * 0.3,
                        child: Image.asset(
                          "lib/assets/png/mbdc/mbdc4.jpg",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(10),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: SizeConfig.screenHeight! * 0.7,
                        width: SizeConfig.screenWidth! * 0.3,
                        child: Image.asset(
                          "lib/assets/png/mbdc/mbdc5.jpg",
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight! * 0.7,
                        width: SizeConfig.screenWidth! * 0.3,
                        child: Image.asset(
                          "lib/assets/png/mbdc/mbdc6.jpg",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(10),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: SizeConfig.screenHeight! * 0.7,
                        width: SizeConfig.screenWidth! * 0.3,
                        child: Image.asset(
                          "lib/assets/png/mbdc/mbdc7.jpg",
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight! * 0.7,
                        width: SizeConfig.screenWidth! * 0.3,
                        child: Image.asset(
                          "lib/assets/png/mbdc/mbdc8.jpg",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(10),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: SizeConfig.screenHeight! * 0.7,
                        width: SizeConfig.screenWidth! * 0.3,
                        child: Image.asset(
                          "lib/assets/png/mbdc/mbdc9.jpg",
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight! * 0.7,
                        width: SizeConfig.screenWidth! * 0.3,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(10),
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
