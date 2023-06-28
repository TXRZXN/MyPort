import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/helper/common.dart';
import 'package:portfolio/helper/size_config.dart';
import 'package:portfolio/screen/about_me_screen.dart';
import 'package:portfolio/screen/contact_screen.dart';
import 'package:portfolio/screen/home_screen.dart';
import 'package:portfolio/screen/list_menu_screen.dart';
import 'package:portfolio/screen/project_screen.dart';
import 'package:portfolio/theme/style.dart';
import 'package:url_launcher/url_launcher_string.dart';

AppBar appbarMobile(BuildContext context) {
  return AppBar(
    titleSpacing: 0,
    leading: IconButton(
      onPressed: () {
        if (Navigator.canPop(context)) {
          Navigator.pop(context);
        }
        changeScreenReplacement(context, const HomeScreen());
      },
      icon: const Icon(
        Icons.home,
        color: Colors.white,
      ),
    ),
    actions: [
      IconButton(
        onPressed: () {
          changeScreenWithAnimation(context, const ListMenuScreen());
        },
        icon: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
      )
    ],
  );
}

AppBar appbarDesktop(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.black,
    titleSpacing: 0,
    leading: IconButton(
      onPressed: () {
        if (Navigator.canPop(context)) {
          Navigator.pop(context);
        }
        changeScreenReplacement(context, const HomeScreen());
      },
      icon: const Icon(
        Icons.home,
        color: Colors.white,
      ),
    ),
    actions: [
      TextButton(
        onPressed: () {
          if (Navigator.canPop(context)) {
            Navigator.pop(context);
          }
          changeScreenReplacement(context, const HomeScreen());
        },
        child: Text(
          "HOME",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: getProportionateScreenHeight(kFontSmallSize),
          ),
        ),
      ),
      SizedBox(
        width: getProportionateScreenWidth(5),
      ),
      TextButton(
        onPressed: () {
          if (Navigator.canPop(context)) {
            Navigator.pop(context);
          }
          changeScreenReplacement(context, const ProjectScreen());
        },
        child: Text(
          "PROJECT",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: getProportionateScreenHeight(kFontSmallSize),
          ),
        ),
      ),
      SizedBox(
        width: getProportionateScreenWidth(5),
      ),
      TextButton(
        onPressed: () {
          if (Navigator.canPop(context)) {
            Navigator.pop(context);
          }
          changeScreenReplacement(context, const AboutMeScreen());
        },
        child: Text(
          "ABOUT ME",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: getProportionateScreenHeight(kFontSmallSize),
          ),
        ),
      ),
      SizedBox(
        width: getProportionateScreenWidth(5),
      ),
      TextButton(
        onPressed: () {
          if (Navigator.canPop(context)) {
            Navigator.pop(context);
          }
          changeScreenReplacement(context, const ContactScreen());
        },
        child: Text(
          "CONTACT  ",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: getProportionateScreenHeight(kFontSmallSize),
          ),
        ),
      ),
      SizedBox(
        width: getProportionateScreenWidth(5),
      ),
      IconButton(
        onPressed: () {
          launchUrlString('https://github.com/TXRZXN');
        },
        icon: const Icon(FontAwesomeIcons.github),
      ),
      SizedBox(
        width: getProportionateScreenWidth(5),
      ),
      IconButton(
        onPressed: () {
          launchUrlString("https://www.instagram.com/zanmartinn/");
        },
        icon: const Icon(FontAwesomeIcons.instagram),
      ),
      SizedBox(
        width: getProportionateScreenWidth(5),
      ),
      IconButton(
        onPressed: () {
          launchUrlString(
              "https://www.linkedin.com/in/%E0%B8%99%E0%B8%A4%E0%B8%8A%E0%B8%B2%E0%B8%95-%E0%B8%9A%E0%B8%B9%E0%B8%A3%E0%B8%93%E0%B8%B0%E0%B8%AA%E0%B8%A1%E0%B8%9A%E0%B8%B1%E0%B8%95%E0%B8%B4-20a531237/");
        },
        icon: const Icon(FontAwesomeIcons.linkedinIn),
      ),
      SizedBox(
        width: getProportionateScreenWidth(5),
      ),
    ],
  );
}
