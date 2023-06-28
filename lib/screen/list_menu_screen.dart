import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/helper/common.dart';
import 'package:portfolio/helper/size_config.dart';
import 'package:portfolio/screen/about_me_screen.dart';
import 'package:portfolio/screen/contact_screen.dart';
import 'package:portfolio/screen/home_screen.dart';
import 'package:portfolio/screen/project_screen.dart';
import 'package:portfolio/theme/style.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ListMenuScreen extends StatelessWidget {
  const ListMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var scaffold = Scaffold(
      appBar: AppBar(
        leading: Container(),
        actions: [
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.cancel,
              color: Colors.red,
            ),
          ),
        ],
      ),
      body: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          // if (sizingInformation.isDesktop) {
          //   return buildbodyDesktop(context);
          // } else if (sizingInformation.isTablet) {
          //   return Container(color: Colors.yellow);
          // }
          return buildbodyMobile(context);
        },
      ),
      resizeToAvoidBottomInset: false,
    );

    return scaffold;
  }

  Widget buildbodyMobile(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(15),
          vertical: getProportionateScreenHeight(15),
        ),
        child: Center(
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  if (Navigator.canPop(context)) {
                    Navigator.pop(context);
                  }
                  changeScreenReplacement(context, const HomeScreen());
                },
                child: Container(
                  height: SizeConfig.screenHeight! * 0.1,
                  width: SizeConfig.screenWidth,
                  padding: EdgeInsets.all(
                    getProportionateScreenHeight(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Home",
                        style: TextStyle(
                          fontSize:
                              getProportionateScreenHeight(kFontMediumSize),
                        ),
                      ),
                      const Icon(Icons.keyboard_arrow_right),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  if (Navigator.canPop(context)) {
                    Navigator.pop(context);
                  }
                  changeScreenReplacement(context, const ProjectScreen());
                },
                child: Container(
                  height: SizeConfig.screenHeight! * 0.1,
                  width: SizeConfig.screenWidth,
                  padding: EdgeInsets.all(
                    getProportionateScreenHeight(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Project",
                        style: TextStyle(
                          fontSize:
                              getProportionateScreenHeight(kFontMediumSize),
                        ),
                      ),
                      const Icon(Icons.keyboard_arrow_right),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  if (Navigator.canPop(context)) {
                    Navigator.pop(context);
                  }
                  changeScreenReplacement(context, const AboutMeScreen());
                },
                child: Container(
                  height: SizeConfig.screenHeight! * 0.1,
                  width: SizeConfig.screenWidth,
                  padding: EdgeInsets.all(
                    getProportionateScreenHeight(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "About Me",
                        style: TextStyle(
                          fontSize:
                              getProportionateScreenHeight(kFontMediumSize),
                        ),
                      ),
                      const Icon(Icons.keyboard_arrow_right),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  if (Navigator.canPop(context)) {
                    Navigator.pop(context);
                  }
                  changeScreenReplacement(context, const ContactScreen());
                },
                child: Container(
                  height: SizeConfig.screenHeight! * 0.1,
                  width: SizeConfig.screenWidth,
                  padding: EdgeInsets.all(
                    getProportionateScreenHeight(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Contact",
                        style: TextStyle(
                          fontSize:
                              getProportionateScreenHeight(kFontMediumSize),
                        ),
                      ),
                      const Icon(Icons.keyboard_arrow_right),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () => launchUrlString('https://github.com/TXRZXN'),
                child: Container(
                  height: SizeConfig.screenHeight! * 0.1,
                  width: SizeConfig.screenWidth,
                  padding: EdgeInsets.all(
                    getProportionateScreenHeight(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(FontAwesomeIcons.github),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () =>
                    launchUrlString("https://www.instagram.com/zanmartinn/"),
                child: Container(
                  height: SizeConfig.screenHeight! * 0.1,
                  width: SizeConfig.screenWidth,
                  padding: EdgeInsets.all(
                    getProportionateScreenHeight(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(FontAwesomeIcons.instagram),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () => launchUrlString(
                    "https://www.linkedin.com/in/%E0%B8%99%E0%B8%A4%E0%B8%8A%E0%B8%B2%E0%B8%95-%E0%B8%9A%E0%B8%B9%E0%B8%A3%E0%B8%93%E0%B8%B0%E0%B8%AA%E0%B8%A1%E0%B8%9A%E0%B8%B1%E0%B8%95%E0%B8%B4-20a531237/"),
                child: Container(
                  height: SizeConfig.screenHeight! * 0.1,
                  width: SizeConfig.screenWidth,
                  padding: EdgeInsets.all(
                    getProportionateScreenHeight(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(FontAwesomeIcons.linkedinIn),
                    ],
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
