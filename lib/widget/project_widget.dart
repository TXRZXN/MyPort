// ignore_for_file: must_be_immutable

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:portfolio/helper/size_config.dart';
import 'package:portfolio/theme/style.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProjectWidget extends StatelessWidget {
  final String heading;
  final String content;
  final Function onTap;

  const ProjectWidget({
    required this.onTap,
    required this.heading,
    required this.content,
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
    return InkWell(
      onTap: () => onTap(),
      child: SizedBox(
        width: SizeConfig.screenWidth!,
        height: SizeConfig.screenHeight! * 0.25,
        child: Stack(
          children: [
            Transform.rotate(
              angle: 10 * (pi / 180),
              child: Container(
                width: SizeConfig.screenWidth,
                // height: SizeConfig.screenHeight! * 0.15,
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    child: Text(
                      heading,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: getProportionateScreenHeight(kFontLargeSize),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Flexible(
                    child: Text(
                      content,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: getProportionateScreenHeight(kFontMediumSize),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildbodyDesktop(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: SizedBox(
        width: SizeConfig.screenWidth! * 0.45,
        height: SizeConfig.screenHeight! * 0.25,
        child: Stack(
          children: [
            Transform.rotate(
              angle: 10 * (pi / 180),
              child: Container(
                width: SizeConfig.screenWidth,
                // height: SizeConfig.screenHeight! * 0.15,
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    child: Text(
                      heading,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: getProportionateScreenHeight(kFontNormalSize),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Flexible(
                    child: Text(
                      content,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: getProportionateScreenHeight(kFontSmallSize),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildbodyTablet(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: SizedBox(
        width: SizeConfig.screenWidth! * 0.8,
        height: SizeConfig.screenHeight! * 0.25,
        child: Stack(
          children: [
            Transform.rotate(
              angle: 5 * (pi / 180),
              child: Container(
                width: SizeConfig.screenWidth! * 0.8,
                // height: SizeConfig.screenHeight! * 0.15,
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    child: Text(
                      heading,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: getProportionateScreenHeight(kFontMediumSize),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Flexible(
                    child: Text(
                      content,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize:
                            getProportionateScreenHeight(kFontRegularSize),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
