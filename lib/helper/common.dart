import 'package:flutter/material.dart';

void changeScreen(BuildContext context, Widget widget) async {
  if (Navigator.canPop(context)) {
    Navigator.pop(context);
  }
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => widget),
  );
}

void changeScreenReplacement(BuildContext context, Widget widget) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => widget),
  );
}

void changeScreenRemoveUntil(
  BuildContext context,
  Widget widget,
) {
  Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => widget),
      (Route<dynamic> route) => false);
}

void changeScreenWithAnimation(BuildContext context, Widget widget) {
  Navigator.of(context).push(
    PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => widget,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1, -1);
        const end = Offset.zero;
        const curvedValue = Curves.fastOutSlowIn;
        var tween = Tween(begin: begin, end: end).chain(
          CurveTween(curve: curvedValue),
        );
        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    ),
  );
}
