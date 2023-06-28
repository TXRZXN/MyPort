import 'dart:math';
import 'package:flutter/material.dart';
import 'package:portfolio/helper/size_config.dart';
import 'package:portfolio/theme/style.dart';
import 'package:responsive_builder/responsive_builder.dart';

class EducationWidget extends StatelessWidget {
  final String year;
  final String branch;
  final String name;
  final String image;

  const EducationWidget({
    required this.year,
    required this.branch,
    required this.name,
    required this.image,
    super.key,
  });
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
      width: SizeConfig.screenWidth,
      height: SizeConfig.screenHeight! * 0.28,
      child: Stack(
        children: [
          Transform.rotate(
            angle: 10 * (pi / 180),
            child: Container(
              width: SizeConfig.screenWidth,
              height: SizeConfig.screenHeight! * 0.3,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          Container(
            width: SizeConfig.screenWidth,
            // height: SizeConfig.screenHeight! * 0.2,
            padding: EdgeInsets.all(getProportionateScreenHeight(8)),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.white,
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Image.asset(
                    image,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Expanded(
                    flex: 7,
                    child: SizedBox(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            year,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  getProportionateScreenHeight(kFontLargeSize),
                            ),
                          ),
                          Text(
                            branch,
                            style: TextStyle(
                              // fontWeight: FontWeight.bold,
                              fontSize:
                                  getProportionateScreenHeight(kFontMediumSize),
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            name,
                            style: TextStyle(
                              // fontWeight: FontWeight.bold,
                              color: Colors.grey,
                              fontSize: getProportionateScreenHeight(
                                  kFontRegularSize),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildbodyDesktop(BuildContext context) {
    return SizedBox(
      width: SizeConfig.screenWidth! * 0.4,
      height: SizeConfig.screenHeight! * 0.3,
      child: Stack(
        children: [
          Transform.rotate(
            angle: 10 * (pi / 180),
            child: Container(
              width: SizeConfig.screenWidth,
              height: SizeConfig.screenHeight! * 0.3,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          Container(
            width: SizeConfig.screenWidth,
            // height: SizeConfig.screenHeight! * 0.2,
            padding: EdgeInsets.all(getProportionateScreenHeight(8)),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.white,
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Image.asset(
                    image,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                Expanded(
                    flex: 7,
                    child: SizedBox(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            year,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  getProportionateScreenHeight(kFontNormalSize),
                            ),
                          ),
                          Text(
                            branch,
                            style: TextStyle(
                              // fontWeight: FontWeight.bold,
                              fontSize:
                                  getProportionateScreenHeight(kFontSmallSize),
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            name,
                            style: TextStyle(
                              // fontWeight: FontWeight.bold,
                              color: Colors.grey,
                              fontSize: getProportionateScreenHeight(
                                  kFontUltraSmallSize),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildbodyTablet(BuildContext context) {
    return SizedBox(
      width: SizeConfig.screenWidth! * 0.8,
      height: SizeConfig.screenHeight! * 0.3,
      child: Stack(
        children: [
          Transform.rotate(
            angle: 5 * (pi / 180),
            child: Container(
              width: SizeConfig.screenWidth! * 0.8,
              height: SizeConfig.screenHeight! * 0.3,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          Container(
            width: SizeConfig.screenWidth,
            // height: SizeConfig.screenHeight! * 0.2,
            padding: EdgeInsets.all(getProportionateScreenHeight(8)),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.white,
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Image.asset(
                    image,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                Expanded(
                    flex: 7,
                    child: SizedBox(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            year,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: getProportionateScreenHeight(
                                  kFontRegularSize),
                            ),
                          ),
                          Text(
                            branch,
                            style: TextStyle(
                              // fontWeight: FontWeight.bold,
                              fontSize: getProportionateScreenHeight(
                                  kFontRegularSize),
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            name,
                            style: TextStyle(
                              // fontWeight: FontWeight.bold,
                              color: Colors.grey,
                              fontSize:
                                  getProportionateScreenHeight(kFontNormalSize),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
