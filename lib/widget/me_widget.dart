import 'dart:math';
import 'package:flutter/material.dart';
import 'package:portfolio/helper/size_config.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MeWidget extends StatelessWidget {
  const MeWidget({
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
      width: SizeConfig.screenWidth! * 0.8,
      height: SizeConfig.screenHeight! * 0.55,
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
            child: Image.asset(
              "lib/assets/png/me2.png",
              fit: BoxFit.fitWidth,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildbodyDesktop(BuildContext context) {
    return SizedBox(
      width: SizeConfig.screenWidth! * 0.25,
      height: SizeConfig.screenHeight! * 0.7,
      child: Stack(
        children: [
          Transform.rotate(
            angle: 10 * (pi / 180),
            child: Container(
              width: SizeConfig.screenWidth! * 0.25,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          Container(
            width: SizeConfig.screenWidth,
            padding: EdgeInsets.all(getProportionateScreenHeight(8)),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.white,
              ),
            ),
            child: Image.asset(
              "lib/assets/png/me2.png",
              fit: BoxFit.fitHeight,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildbodyTablet(BuildContext context) {
    return SizedBox(
      width: SizeConfig.screenWidth! * 0.25,
      height: SizeConfig.screenHeight! * 0.5,
      child: Stack(
        children: [
          Transform.rotate(
            angle: 10 * (pi / 180),
            child: Container(
              width: SizeConfig.screenWidth! * 0.25,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          Container(
            width: SizeConfig.screenWidth,
            padding: EdgeInsets.all(getProportionateScreenHeight(8)),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.white,
              ),
            ),
            child: Image.asset(
              "lib/assets/png/me2.png",
              fit: BoxFit.fitHeight,
            ),
          ),
        ],
      ),
    );
  }
}
