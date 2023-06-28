import 'package:flutter/material.dart';
import 'package:portfolio/helper/size_config.dart';
import 'package:portfolio/theme/style.dart';
import 'package:portfolio/widget/default_appbar_widget.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ScematicProjectScreen extends StatelessWidget {
  const ScematicProjectScreen({super.key});

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
                      "Schematic Application",
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
                      "Homepro's internal applications are Used to check and report monthly product data according to Planogram.",
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
                      "lib/assets/png/schematic/schematic1.jpg",
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
                      "lib/assets/png/schematic/schematic2.jpg",
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
                      "lib/assets/png/schematic/schematic3.jpg",
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
                      "lib/assets/png/schematic/schematic4.jpg",
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
                      "lib/assets/png/schematic/schematic5.jpg",
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
                      "lib/assets/png/schematic/schematic6.jpg",
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
                      "lib/assets/png/schematic/schematic7.jpg",
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
                      "Schematic Application",
                      style: TextStyle(
                        fontSize: getProportionateScreenHeight(kFontLargeSize),
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Homepro's internal applications are Used to check and report monthly product data according to Planogram.",
                      style: TextStyle(
                        fontSize: getProportionateScreenHeight(kFontMediumSize),
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
                          "lib/assets/png/schematic/schematic1.jpg",
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight! * 0.8,
                        width: SizeConfig.screenWidth! * 0.2,
                        child: Image.asset(
                          "lib/assets/png/schematic/schematic2.jpg",
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight! * 0.8,
                        width: SizeConfig.screenWidth! * 0.2,
                        child: Image.asset(
                          "lib/assets/png/schematic/schematic3.jpg",
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
                          "lib/assets/png/schematic/schematic4.jpg",
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight! * 0.8,
                        width: SizeConfig.screenWidth! * 0.2,
                        child: Image.asset(
                          "lib/assets/png/schematic/schematic5.jpg",
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight! * 0.8,
                        width: SizeConfig.screenWidth! * 0.2,
                        child: Image.asset(
                          "lib/assets/png/schematic/schematic6.jpg",
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
                          "lib/assets/png/schematic/schematic7.jpg",
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight! * 0.8,
                        width: SizeConfig.screenWidth! * 0.2,
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight! * 0.8,
                        width: SizeConfig.screenWidth! * 0.2,
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
                      "Schematic Application",
                      style: TextStyle(
                        fontSize: getProportionateScreenHeight(kFontLargeSize),
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Homepro's internal applications are Used to check and report monthly product data according to Planogram.",
                      style: TextStyle(
                        fontSize: getProportionateScreenHeight(kFontMediumSize),
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
                          "lib/assets/png/schematic/schematic1.jpg",
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight! * 0.7,
                        width: SizeConfig.screenWidth! * 0.3,
                        child: Image.asset(
                          "lib/assets/png/schematic/schematic2.jpg",
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
                          "lib/assets/png/schematic/schematic3.jpg",
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight! * 0.7,
                        width: SizeConfig.screenWidth! * 0.3,
                        child: Image.asset(
                          "lib/assets/png/schematic/schematic4.jpg",
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
                          "lib/assets/png/schematic/schematic5.jpg",
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight! * 0.7,
                        width: SizeConfig.screenWidth! * 0.3,
                        child: Image.asset(
                          "lib/assets/png/schematic/schematic6.jpg",
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
                          "lib/assets/png/schematic/schematic7.jpg",
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
