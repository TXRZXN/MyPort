import 'package:flutter/material.dart';
import 'package:portfolio/helper/size_config.dart';
import 'package:portfolio/theme/style.dart';
import 'package:portfolio/widget/default_appbar_widget.dart';
import 'package:portfolio/widget/education_widget.dart';
import 'package:portfolio/widget/internship_widget.dart';
import 'package:portfolio/widget/me_widget.dart';
import 'package:portfolio/widget/skill_widget.dart';

import 'package:responsive_builder/responsive_builder.dart';

class AboutMeScreen extends StatefulWidget {
  const AboutMeScreen({super.key});

  @override
  State<AboutMeScreen> createState() => _AboutMeScreenState();
}

class _AboutMeScreenState extends State<AboutMeScreen> {
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
                      "Hello , ",
                      style: TextStyle(
                        fontSize:
                            getProportionateScreenHeight(kFontSuperLargeSize),
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Text(
                    "I'm Tarzan,  21 Years I am a new graduate in bachelor of engineering program in electronics engineering technology (computer) at King Mongkut's University of Technology North Bangkok, I’m currently interested in Mobile Developer and Flutter Developer.",
                    style: TextStyle(
                      fontSize: getProportionateScreenHeight(kFontLargeSize),
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(40),
                  ),
                  const MeWidget(),
                  SizedBox(
                    height: getProportionateScreenHeight(40),
                  ),
                  Text(
                    "EDUCATION",
                    style: TextStyle(
                      fontSize: getProportionateScreenHeight(40),
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(40),
                  ),
                  const EducationWidget(
                    year: "2019-2022",
                    branch:
                        "Bachelor of Engineering Program in Electronics Engineering Technology (computer)",
                    name:
                        "King Mongkut's University of Technology North Bangkok",
                    image: "lib/assets/png/kmutnb.png",
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(40),
                  ),
                  const EducationWidget(
                    year: "2016-2018",
                    branch:
                        "Vocational Certificate Program in Electronic Engineering.",
                    name: "Rajamangala University of Technology Phra Nakhon",
                    image: "lib/assets/png/rmutp.png",
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(40),
                  ),
                  const EducationWidget(
                    year: "2013-2015",
                    branch: "Mathmatic and Science Program",
                    name: "Mathayomprachaniwet School",
                    image: "lib/assets/png/mpn.png",
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(40),
                  ),
                  Text(
                    "SKILL",
                    style: TextStyle(
                      fontSize: getProportionateScreenHeight(40),
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(40),
                  ),
                  const SkillWidget(),
                  SizedBox(
                    height: getProportionateScreenHeight(40),
                  ),
                  Text(
                    "INTERNSHIP",
                    style: TextStyle(
                      fontSize: getProportionateScreenHeight(40),
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(40),
                  ),
                  const InternshipWidget(),
                  SizedBox(
                    height: getProportionateScreenHeight(40),
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
                  SizedBox(
                    height: getProportionateScreenHeight(30),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: SizeConfig.screenWidth! * 0.05,
                      ),
                      SizedBox(
                        width: SizeConfig.screenWidth! * 0.35,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Hello , I'm Tarzan,  21 Years I am a new graduate in bachelor of engineering program in electronics engineering technology (computer) at King Mongkut's University of Technology North Bangkok, I’m currently interested in Mobile Developer and Flutter Developer.",
                            style: TextStyle(
                              fontSize:
                                  getProportionateScreenHeight(kFontSmallSize),
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: SizeConfig.screenWidth! * 0.05,
                      ),
                      SizedBox(
                        width: SizeConfig.screenWidth! * 0.5,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            SizedBox(),
                            Center(
                              child: MeWidget(),
                            ),
                            SizedBox(),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(50),
                  ),
                  const Divider(
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(50),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: SizeConfig.screenWidth! * 0.35,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "EDUCATION",
                            style: TextStyle(
                              fontSize: getProportionateScreenHeight(40),
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          const EducationWidget(
                            year: "2019-2022",
                            branch:
                                "Bachelor of Engineering Program in Electronics Engineering Technology (computer)",
                            name:
                                "King Mongkut's University of Technology North Bangkok",
                            image: "lib/assets/png/kmutnb.png",
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(40),
                          ),
                          const EducationWidget(
                            year: "2016-2018",
                            branch:
                                "Vocational Certificate Program in Electronic Engineering.",
                            name:
                                "Rajamangala University of Technology Phra Nakhon",
                            image: "lib/assets/png/rmutp.png",
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(40),
                          ),
                          const EducationWidget(
                            year: "2013-2015",
                            branch: "Mathmatic and Science Program",
                            name: "Mathayomprachaniwet School",
                            image: "lib/assets/png/mpn.png",
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(30),
                  ),
                  const Divider(
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(30),
                  ),
                  Text(
                    "SKILL",
                    style: TextStyle(
                      fontSize: getProportionateScreenHeight(40),
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(10),
                  ),
                  const SkillWidget(),
                  SizedBox(
                    height: getProportionateScreenHeight(30),
                  ),
                  const Divider(
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(10),
                  ),
                  Text(
                    "INTERNSHIP",
                    style: TextStyle(
                      fontSize: getProportionateScreenHeight(40),
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const InternshipWidget(),
                  SizedBox(
                    height: getProportionateScreenHeight(30),
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
                  SizedBox(
                    height: getProportionateScreenHeight(40),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: SizeConfig.screenWidth! * 0.35,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Hello , I'm Tarzan,  21 Years I am a new graduate in bachelor of engineering program in electronics engineering technology (computer) at King Mongkut's University of Technology North Bangkok, I’m currently interested in Mobile Developer and Flutter Developer.",
                            style: TextStyle(
                              fontSize:
                                  getProportionateScreenHeight(kFontNormalSize),
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: SizeConfig.screenWidth! * 0.3,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            SizedBox(),
                            Center(
                              child: MeWidget(),
                            ),
                            SizedBox(),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(50),
                  ),
                  const Divider(
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(50),
                  ),
                  Text(
                    "EDUCATION",
                    style: TextStyle(
                      fontSize: getProportionateScreenHeight(40),
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(50),
                  ),
                  Column(
                    children: [
                      const EducationWidget(
                        year: "2019-2022",
                        branch:
                            "Bachelor of Engineering Program in Electronics Engineering Technology (computer)",
                        name:
                            "King Mongkut's University of Technology North Bangkok",
                        image: "lib/assets/png/kmutnb.png",
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(40),
                      ),
                      const EducationWidget(
                        year: "2016-2018",
                        branch:
                            "Vocational Certificate Program in Electronic Engineering.",
                        name:
                            "Rajamangala University of Technology Phra Nakhon",
                        image: "lib/assets/png/rmutp.png",
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(40),
                      ),
                      const EducationWidget(
                        year: "2013-2015",
                        branch: "Mathmatic and Science Program",
                        name: "Mathayomprachaniwet School",
                        image: "lib/assets/png/mpn.png",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(30),
                  ),
                  const Divider(
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(30),
                  ),
                  Text(
                    "SKILL",
                    style: TextStyle(
                      fontSize: getProportionateScreenHeight(40),
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(10),
                  ),
                  const SkillWidget(),
                  SizedBox(
                    height: getProportionateScreenHeight(30),
                  ),
                  const Divider(
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(10),
                  ),
                  Text(
                    "INTERNSHIP",
                    style: TextStyle(
                      fontSize: getProportionateScreenHeight(40),
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const InternshipWidget(),
                  SizedBox(
                    height: getProportionateScreenHeight(30),
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
