import 'package:flutter/material.dart';
import 'package:portfolio/helper/size_config.dart';
import 'package:portfolio/theme/style.dart';
import 'package:portfolio/widget/default_appbar_widget.dart';

import 'package:responsive_builder/responsive_builder.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
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
            child: Column(
              children: [
                Text(
                  "Contact",
                  style: TextStyle(
                    fontSize: getProportionateScreenHeight(34),
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(8),
                ),
                const Divider(
                  color: Colors.grey,
                ),
                SizedBox(
                  height: getProportionateScreenHeight(8),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Icon(
                        Icons.location_on_outlined,
                        color: Colors.grey,
                        size: getProportionateScreenHeight(50),
                      ),
                      // Text(
                      //   "Address : ",
                      //   style: TextStyle(
                      //     fontSize:
                      //         getProportionateScreenHeight(kFontUltraLargeSize),
                      //     color: Colors.grey,
                      //   ),
                      // ),
                    ),
                    Expanded(
                      flex: 7,
                      child: Text(
                        "2/262 , Moo 6 , Saothonghin Subdistrict , Bangyai District , Nonthaburi , 11140",
                        style: TextStyle(
                          fontSize: getProportionateScreenHeight(20),
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(8),
                ),
                const Divider(
                  color: Colors.grey,
                ),
                SizedBox(
                  height: getProportionateScreenHeight(8),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Icon(
                        Icons.phone,
                        color: Colors.grey,
                        size: getProportionateScreenHeight(50),
                      ),
                      // Text(
                      //   "Phone : ",
                      //   style: TextStyle(
                      //     fontSize:
                      //         getProportionateScreenHeight(kFontUltraLargeSize),
                      //     color: Colors.grey,
                      //   ),
                      // ),
                    ),
                    Expanded(
                      flex: 7,
                      child: Text(
                        "0923492220",
                        style: TextStyle(
                          fontSize: getProportionateScreenHeight(20),
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(8),
                ),
                const Divider(
                  color: Colors.grey,
                ),
                SizedBox(
                  height: getProportionateScreenHeight(8),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Icon(
                        Icons.email_outlined,
                        color: Colors.grey,
                        size: getProportionateScreenHeight(50),
                      ),
                      // Text(
                      //   "Email : ",
                      //   style: TextStyle(
                      //     fontSize:
                      //         getProportionateScreenHeight(kFontUltraLargeSize),
                      //     color: Colors.grey,
                      //   ),
                      // ),
                    ),
                    Expanded(
                      flex: 7,
                      child: Text(
                        "naruechat.b@gmail.com",
                        style: TextStyle(
                          fontSize: getProportionateScreenHeight(20),
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
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
            child: Column(
              children: [
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "CONTACTS",
                      style: TextStyle(
                        fontSize: getProportionateScreenHeight(40),
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.screenHeight! * 0.7,
                      child: const VerticalDivider(
                        color: Colors.white,
                        thickness: 2,
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.screenHeight! * 0.7,
                      width: SizeConfig.screenWidth! * 0.45,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.phone,
                                size: getProportionateScreenHeight(30),
                              ),
                              SizedBox(
                                width: getProportionateScreenWidth(30),
                              ),
                              Text(
                                "092-3492220",
                                style: TextStyle(
                                  fontSize: getProportionateScreenHeight(
                                      kFontLargeSize),
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.email,
                                size: getProportionateScreenHeight(30),
                              ),
                              SizedBox(
                                width: getProportionateScreenWidth(30),
                              ),
                              Text(
                                "naruechat.b@gmail.com",
                                style: TextStyle(
                                  fontSize: getProportionateScreenHeight(
                                      kFontLargeSize),
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                size: getProportionateScreenHeight(30),
                              ),
                              SizedBox(
                                width: getProportionateScreenWidth(30),
                              ),
                              Flexible(
                                child: Text(
                                  "2/262 , Moo 6 , Saothonghin Subdistrict , Bangyai District , Nonthaburi , 11140",
                                  style: TextStyle(
                                    fontSize: getProportionateScreenHeight(
                                        kFontLargeSize),
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
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
            child: Column(
              children: [
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "CONTACTS",
                      style: TextStyle(
                        fontSize: getProportionateScreenHeight(40),
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.screenHeight! * 0.7,
                      child: const VerticalDivider(
                        color: Colors.white,
                        thickness: 2,
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.screenHeight! * 0.7,
                      width: SizeConfig.screenWidth! * 0.45,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.phone,
                                size: getProportionateScreenHeight(30),
                              ),
                              SizedBox(
                                width: getProportionateScreenWidth(30),
                              ),
                              Text(
                                "092-3492220",
                                style: TextStyle(
                                  fontSize: getProportionateScreenHeight(
                                      kFontLargeSize),
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.email,
                                size: getProportionateScreenHeight(30),
                              ),
                              SizedBox(
                                width: getProportionateScreenWidth(30),
                              ),
                              Text(
                                "naruechat.b@gmail.com",
                                style: TextStyle(
                                  fontSize: getProportionateScreenHeight(
                                      kFontLargeSize),
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                size: getProportionateScreenHeight(30),
                              ),
                              SizedBox(
                                width: getProportionateScreenWidth(30),
                              ),
                              Flexible(
                                child: Text(
                                  "2/262 , Moo 6 , Saothonghin Subdistrict , Bangyai District , Nonthaburi , 11140",
                                  style: TextStyle(
                                    fontSize: getProportionateScreenHeight(
                                        kFontLargeSize),
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
