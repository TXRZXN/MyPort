import 'package:flutter/material.dart';
import 'package:portfolio/helper/size_config.dart';
import 'package:portfolio/theme/style.dart';
import 'package:responsive_builder/responsive_builder.dart';

class InternshipWidget extends StatelessWidget {
  const InternshipWidget({
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
    return Container(
      width: SizeConfig.screenWidth! * 0.9,
      height: SizeConfig.screenHeight! * 0.48,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Colors.white,
              spreadRadius: 1,
              blurRadius: 6,
              offset: Offset(0, 5),
            )
          ]),
      child: Column(
        children: [
          Expanded(
            flex: 7,
            child: SizedBox(
              child: Image.asset(
                "lib/assets/png/homepro.png",
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.only(left: getProportionateScreenHeight(5)),
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "HOMEPRO",
                    style: TextStyle(
                      fontSize: getProportionateScreenHeight(22),
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "POSITIONS AND DEPARTMENT",
                    style: TextStyle(
                      fontSize: getProportionateScreenHeight(18),
                      // fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "PROGRAMMER IN ICT DATAWAREHOUES DEPARTMENT",
                    style: TextStyle(
                      fontSize: getProportionateScreenHeight(16),
                      // fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildbodyDesktop(BuildContext context) {
    bool isPortrait = SizeConfig.screenHeight! > SizeConfig.screenWidth!;
    return Container(
      width: isPortrait
          ? SizeConfig.screenWidth! * 0.8
          : SizeConfig.screenWidth! * 0.3,
      height: SizeConfig.screenHeight! * 0.72,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Colors.white,
              spreadRadius: 1,
              blurRadius: 6,
              offset: Offset(0, 5),
            )
          ]),
      child: Column(
        children: [
          Expanded(
            flex: 7,
            child: SizedBox(
              child: Image.asset(
                "lib/assets/png/homepro.png",
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.only(left: getProportionateScreenHeight(5)),
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "HOMEPRO",
                    style: TextStyle(
                      fontSize: getProportionateScreenHeight(kFontRegularSize),
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "POSITIONS AND DEPARTMENT",
                    style: TextStyle(
                      fontSize: getProportionateScreenHeight(kFontNormalSize),
                      // fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "PROGRAMMER IN ICT DATAWAREHOUES DEPARTMENT",
                    style: TextStyle(
                      fontSize: getProportionateScreenHeight(kFontSmallSize),
                      // fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildbodyTablet(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth! * 0.4,
      height: SizeConfig.screenHeight! * 0.6,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Colors.white,
              spreadRadius: 1,
              blurRadius: 6,
              offset: Offset(0, 5),
            )
          ]),
      child: Column(
        children: [
          Expanded(
            flex: 7,
            child: SizedBox(
              child: Image.asset(
                "lib/assets/png/homepro.png",
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.only(left: getProportionateScreenHeight(5)),
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "HOMEPRO",
                    style: TextStyle(
                      fontSize: getProportionateScreenHeight(kFontRegularSize),
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "POSITIONS AND DEPARTMENT",
                    style: TextStyle(
                      fontSize: getProportionateScreenHeight(kFontNormalSize),
                      // fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "PROGRAMMER IN ICT DATAWAREHOUES DEPARTMENT",
                    style: TextStyle(
                      fontSize: getProportionateScreenHeight(kFontSmallSize),
                      // fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
