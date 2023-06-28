import 'package:flutter/material.dart';
import 'package:portfolio/helper/common.dart';
import 'package:portfolio/helper/size_config.dart';
import 'package:portfolio/screen/project/mbdc.dart';
import 'package:portfolio/screen/project/rmm.dart';
import 'package:portfolio/widget/default_appbar_widget.dart';
import 'package:portfolio/widget/project_wdiget.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher_string.dart';

import 'project/sch.dart';

class ProjectScreen extends StatefulWidget {
  const ProjectScreen({super.key});

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.isDesktop) {
          return buildbodyDesktop(context);
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
                      "Academic Project",
                      style: TextStyle(
                        fontSize: getProportionateScreenHeight(30),
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(30),
                  ),
                  ProjectWidget(
                    heading: "Andriod Application For Dog Lovers",
                    content:
                        "This application is a social media app for dog lovers and can help you choose the right dog breed for you.",
                    onTap: () => launchUrlString(
                        "https://github.com/TXRZXN/DogLover_MobileApp"),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(30),
                  ),
                  ProjectWidget(
                    heading: "Calculator",
                    content:
                        "This application is developed by kotlin language.",
                    onTap: () => launchUrlString(
                        "https://github.com/TXRZXN/Calculator_Kotlin"),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(30),
                  ),
                  ProjectWidget(
                    heading: "TIC TAC TOE GAME",
                    content:
                        "This application is developed in java language and uses javasocket to connect between client and server.",
                    onTap: () => launchUrlString(
                        "https://github.com/TXRZXN/Tictactoe_javasocket"),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(30),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Another Project",
                      style: TextStyle(
                        fontSize: getProportionateScreenHeight(30),
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(30),
                  ),
                  ProjectWidget(
                    heading: "Schematic Application",
                    content:
                        "Homepro's internal applications are Used to check and report monthly product data according to Planogram.",
                    onTap: () {
                      if (Navigator.canPop(context)) {
                        Navigator.pop(context);
                      }
                      changeScreen(context, const ScematicProjectScreen());
                    },
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(30),
                  ),
                  ProjectWidget(
                    heading: "DC Application",
                    content:
                        "The DC Service's internal application is used to review and report product information for delivery and pickup.",
                    onTap: () {
                      if (Navigator.canPop(context)) {
                        Navigator.pop(context);
                      }
                      changeScreen(context, const MBDCProjectScreen());
                    },
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(30),
                  ),
                  ProjectWidget(
                    heading: "Register Member",
                    content:
                        "Homepro internal application for Homecard subscription to Homepro customers.",
                    onTap: () {
                      if (Navigator.canPop(context)) {
                        Navigator.pop(context);
                      }
                      changeScreen(context, const RMMProjectScreen());
                    },
                  ),
                  // SizedBox(
                  //   height: getProportionateScreenHeight(30),
                  // ),
                  // ProjectWidget(),
                  // SizedBox(
                  //   height: getProportionateScreenHeight(30),
                  // ),
                  // ProjectWidget(),
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
        appBar: appbarDesktop(context),
        backgroundColor: const Color(0xff1e1e1e),
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
                      "Academic Project",
                      style: TextStyle(
                        fontSize: getProportionateScreenHeight(30),
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(30),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ProjectWidget(
                        heading: "Andriod Application For Dog Lovers",
                        content:
                            "This application is a social media app for dog lovers and can help you choose the right dog breed for you.",
                        onTap: () => launchUrlString(
                            "https://github.com/TXRZXN/DogLover_MobileApp"),
                      ),
                      ProjectWidget(
                        heading: "Calculator",
                        content:
                            "This application is developed by kotlin language.",
                        onTap: () => launchUrlString(
                            "https://github.com/TXRZXN/Calculator_Kotlin"),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(50),
                  ),

                  ProjectWidget(
                    heading: "TIC TAC TOE GAME",
                    content:
                        "This application is developed in java language and uses javasocket to connect between client and server.",
                    onTap: () => launchUrlString(
                        "https://github.com/TXRZXN/Tictactoe_javasocket"),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(30),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Another Project",
                      style: TextStyle(
                        fontSize: getProportionateScreenHeight(30),
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(30),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ProjectWidget(
                        heading: "Schematic Application",
                        content:
                            "Homepro's internal applications are Used to check and report monthly product data according to Planogram.",
                        onTap: () {
                          if (Navigator.canPop(context)) {
                            Navigator.pop(context);
                          }
                          changeScreen(context, const ScematicProjectScreen());
                        },
                      ),
                      ProjectWidget(
                        heading: "DC Application",
                        content:
                            "The DC Service's internal application is used to review and report product information for delivery and pickup.",
                        onTap: () {
                          if (Navigator.canPop(context)) {
                            Navigator.pop(context);
                          }
                          changeScreen(context, const MBDCProjectScreen());
                        },
                      ),
                    ],
                  ),

                  SizedBox(
                    height: getProportionateScreenHeight(30),
                  ),

                  SizedBox(
                    height: getProportionateScreenHeight(30),
                  ),
                  ProjectWidget(
                    heading: "Register Member",
                    content:
                        "Homepro internal application for Homecard subscription to Homepro customers.",
                    onTap: () {
                      if (Navigator.canPop(context)) {
                        Navigator.pop(context);
                      }
                      changeScreen(context, const RMMProjectScreen());
                    },
                  ),
                  // SizedBox(
                  //   height: getProportionateScreenHeight(30),
                  // ),
                  // ProjectWidget(),
                  // SizedBox(
                  //   height: getProportionateScreenHeight(30),
                  // ),
                  // ProjectWidget(),
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
        backgroundColor: const Color(0xff1e1e1e),
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
                      "Academic Project",
                      style: TextStyle(
                        fontSize: getProportionateScreenHeight(30),
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(50),
                  ),
                  ProjectWidget(
                    heading: "Andriod Application For Dog Lovers",
                    content:
                        "This application is a social media app for dog lovers and can help you choose the right dog breed for you.",
                    onTap: () => launchUrlString(
                        "https://github.com/TXRZXN/DogLover_MobileApp"),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(50),
                  ),
                  ProjectWidget(
                    heading: "Calculator",
                    content:
                        "This application is developed by kotlin language.",
                    onTap: () => launchUrlString(
                        "https://github.com/TXRZXN/Calculator_Kotlin"),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(50),
                  ),
                  ProjectWidget(
                    heading: "TIC TAC TOE GAME",
                    content:
                        "This application is developed in java language and uses javasocket to connect between client and server.",
                    onTap: () => launchUrlString(
                        "https://github.com/TXRZXN/Tictactoe_javasocket"),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(30),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Another Project",
                      style: TextStyle(
                        fontSize: getProportionateScreenHeight(30),
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(50),
                  ),
                  ProjectWidget(
                    heading: "Schematic Application",
                    content:
                        "Homepro's internal applications are Used to check and report monthly product data according to Planogram.",
                    onTap: () {
                      if (Navigator.canPop(context)) {
                        Navigator.pop(context);
                      }
                      changeScreen(context, const ScematicProjectScreen());
                    },
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(50),
                  ),

                  ProjectWidget(
                    heading: "DC Application",
                    content:
                        "The DC Service's internal application is used to review and report product information for delivery and pickup.",
                    onTap: () {
                      if (Navigator.canPop(context)) {
                        Navigator.pop(context);
                      }
                      changeScreen(context, const MBDCProjectScreen());
                    },
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(50),
                  ),

                  ProjectWidget(
                    heading: "Register Member",
                    content:
                        "Homepro internal application for Homecard subscription to Homepro customers.",
                    onTap: () {
                      if (Navigator.canPop(context)) {
                        Navigator.pop(context);
                      }
                      changeScreen(context, const RMMProjectScreen());
                    },
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(50),
                  ),
                  // SizedBox(
                  //   height: getProportionateScreenHeight(30),
                  // ),
                  // ProjectWidget(),
                  // SizedBox(
                  //   height: getProportionateScreenHeight(30),
                  // ),
                  // ProjectWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
