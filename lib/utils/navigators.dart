import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<Object?>  transGoto(BuildContext context, {required screenName}) {
  return Navigator.push(
    context,
    CupertinoPageRoute(builder: (context) =>  screenName,maintainState: true),
  );
}

pop(BuildContext context) {
  return Navigator.pop(context);
}

Future<Object?> goto(BuildContext context, {screenName}) {
  return  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => screenName),
  );
}

Future<Object?> gotoPush(BuildContext context, {screenName}) {
  return  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => screenName),
  );
}

Future<Object?> removeUntil(BuildContext context, {screenName}) {
  return  Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
  screenName), (Route<dynamic> route) => false);
}

Route createRouteUp({required screenName}) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>  screenName,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.slowMiddle;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}


Route createRouteDown({required screenName}) {
  return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => screenName,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(
            0.0, -1.0);
        const end = Offset
            .zero;
        const curve = Curves
            .slowMiddle;

        var tween = Tween(
            begin: begin,
            end: end)
            .chain(
            CurveTween(
                curve: curve));
        return SlideTransition(
          position: animation
              .drive(
              tween),
          child: child,
        );
      });
}

Future<Object?>  createAnRoute({required BuildContext context,required screenName}) {
  return Navigator.push(
    context,
    PageRouteBuilder(
      transitionsBuilder:
          (context, animation, secondaryAnimation, child) {
        return ScaleTransition(
          alignment: Alignment.center,
          scale: Tween<double>(begin: 0.1, end: 1).animate(
            CurvedAnimation(
              parent: animation,
              curve: Curves.fastOutSlowIn,
            ),
          ),
          child: child,
        );
      },
      transitionDuration: const Duration(seconds: 1),
      pageBuilder: (BuildContext context,
          Animation<double> animation,
          Animation<double> secondaryAnimation) {
        return screenName;
      },
    ),
  );
}

