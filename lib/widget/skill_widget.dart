import 'package:flutter/material.dart';
import 'package:portfolio/helper/size_config.dart';
import 'package:portfolio/theme/style.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SkillWidget extends StatelessWidget {
  const SkillWidget({super.key});

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
    return SizedBox(
      width: SizeConfig.screenWidth! * 0.9,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              boxSkillMobile("lib/assets/png/SKILL/html.png", "HTML"),
              boxSkillMobile("lib/assets/png/SKILL/css.png", "CSS"),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              boxSkillMobile("lib/assets/png/SKILL/js.png", "JAVASCRIP"),
              boxSkillMobile("lib/assets/png/SKILL/php.png", "PHP"),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              boxSkillMobile("lib/assets/png/SKILL/dart.png", "DART"),
              boxSkillMobile("lib/assets/png/SKILL/flutter.png", "FLUTTER"),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              boxSkillMobile("lib/assets/png/SKILL/sql.png", "MYSQL"),
              boxSkillMobile("lib/assets/png/SKILL/cplus.png", "C++"),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              boxSkillMobile("lib/assets/png/SKILL/csharp.png", "C#"),
              boxSkillMobile("lib/assets/png/SKILL/c.png", "C"),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              boxSkillMobile("lib/assets/png/SKILL/git.png", "GIT"),
              boxSkillMobile("lib/assets/png/SKILL/figma.png", "FIGMA"),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              boxSkillMobile("lib/assets/png/SKILL/java.png", "JAVA"),
              boxSkillMobile("lib/assets/png/SKILL/bootstrap.png", "BOOTSTRAP"),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              boxSkillMobile("lib/assets/png/SKILL/firebase.png", "FIREBASE"),
              SizedBox(
                width: SizeConfig.screenHeight! * 0.16,
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget buildbodyDesktop(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth! * 0.9,
      height: SizeConfig.screenHeight! * 0.9,
      padding: EdgeInsets.all(getProportionateScreenHeight(10)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white12,
        boxShadow: const [
          BoxShadow(
            color: Colors.black,
            blurRadius: 8,
            spreadRadius: 3,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              boxSkillDesktop("lib/assets/png/SKILL/html.png", "HTML"),
              boxSkillDesktop("lib/assets/png/SKILL/css.png", "CSS"),
              boxSkillDesktop("lib/assets/png/SKILL/js.png", "JAVASCRIP"),
              boxSkillDesktop("lib/assets/png/SKILL/php.png", "PHP"),
              boxSkillDesktop("lib/assets/png/SKILL/dart.png", "DART"),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              boxSkillDesktop("lib/assets/png/SKILL/flutter.png", "FLUTTER"),
              boxSkillDesktop("lib/assets/png/SKILL/firebase.png", "FIREBASE"),
              boxSkillDesktop("lib/assets/png/SKILL/sql.png", "MYSQL"),
              boxSkillDesktop("lib/assets/png/SKILL/cplus.png", "C++"),
              boxSkillDesktop("lib/assets/png/SKILL/csharp.png", "C#"),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              boxSkillDesktop("lib/assets/png/SKILL/c.png", "C"),
              boxSkillDesktop("lib/assets/png/SKILL/git.png", "GIT"),
              boxSkillDesktop("lib/assets/png/SKILL/figma.png", "FIGMA"),
              boxSkillDesktop("lib/assets/png/SKILL/java.png", "JAVA"),
              boxSkillDesktop(
                  "lib/assets/png/SKILL/bootstrap.png", "BOOTSTRAP"),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildbodyTablet(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth! * 0.9,
      height: SizeConfig.screenHeight! * 1.5,
      padding: EdgeInsets.all(getProportionateScreenHeight(10)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white12,
        boxShadow: const [
          BoxShadow(
            color: Colors.black,
            blurRadius: 8,
            spreadRadius: 3,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              boxSkillTablet("lib/assets/png/SKILL/html.png", "HTML"),
              boxSkillTablet("lib/assets/png/SKILL/css.png", "CSS"),
              boxSkillTablet("lib/assets/png/SKILL/js.png", "JAVASCRIP"),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              boxSkillTablet("lib/assets/png/SKILL/php.png", "PHP"),
              boxSkillTablet("lib/assets/png/SKILL/dart.png", "DART"),
              boxSkillTablet("lib/assets/png/SKILL/flutter.png", "FLUTTER"),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              boxSkillTablet("lib/assets/png/SKILL/firebase.png", "FIREBASE"),
              boxSkillTablet("lib/assets/png/SKILL/sql.png", "MYSQL"),
              boxSkillTablet("lib/assets/png/SKILL/cplus.png", "C++"),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              boxSkillTablet("lib/assets/png/SKILL/csharp.png", "C#"),
              boxSkillTablet("lib/assets/png/SKILL/c.png", "C"),
              boxSkillTablet("lib/assets/png/SKILL/git.png", "GIT"),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              boxSkillTablet("lib/assets/png/SKILL/figma.png", "FIGMA"),
              boxSkillTablet("lib/assets/png/SKILL/java.png", "JAVA"),
              boxSkillTablet("lib/assets/png/SKILL/bootstrap.png", "BOOTSTRAP"),
            ],
          ),
        ],
      ),
    );
  }
}

Container boxSkillMobile(String image, String name) {
  return Container(
    width: SizeConfig.screenHeight! * 0.16,
    height: SizeConfig.screenHeight! * 0.16,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.white12,
      boxShadow: const [
        BoxShadow(
          color: Colors.black,
          blurRadius: 8,
          spreadRadius: 3,
        ),
      ],
    ),
    child: Column(
      children: [
        Expanded(
          flex: 7,
          child: Image.asset(
            image,
            fit: BoxFit.fitWidth,
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            width: double.infinity,
            child: Text(
              name,
              style: TextStyle(
                fontSize: getProportionateScreenHeight(kFontLargeSize),
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    ),
  );
}

Container boxSkillDesktop(String image, String name) {
  bool isPortrait = SizeConfig.screenHeight! > SizeConfig.screenWidth!;

  return Container(
    width: isPortrait
        ? SizeConfig.screenHeight! * 0.08
        : SizeConfig.screenHeight! * 0.18,
    height: isPortrait
        ? SizeConfig.screenHeight! * 0.08
        : SizeConfig.screenHeight! * 0.18,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.white12,
      boxShadow: const [
        BoxShadow(
          color: Colors.black,
          blurRadius: 8,
          spreadRadius: 3,
        ),
      ],
    ),
    child: Column(
      children: [
        Expanded(
          flex: 7,
          child: Image.asset(
            image,
            fit: BoxFit.fitWidth,
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            width: double.infinity,
            child: Text(
              name,
              style: TextStyle(
                fontSize: getProportionateScreenHeight(kFontSmallSize),
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    ),
  );
}

Container boxSkillTablet(String image, String name) {
  return Container(
    width: SizeConfig.screenHeight! * 0.18,
    height: SizeConfig.screenHeight! * 0.18,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.white12,
      boxShadow: const [
        BoxShadow(
          color: Colors.black,
          blurRadius: 8,
          spreadRadius: 3,
        ),
      ],
    ),
    child: Column(
      children: [
        Expanded(
          flex: 7,
          child: Image.asset(
            image,
            fit: BoxFit.fitWidth,
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            width: double.infinity,
            child: Text(
              name,
              style: TextStyle(
                fontSize: getProportionateScreenHeight(kFontRegularSize),
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    ),
  );
}
