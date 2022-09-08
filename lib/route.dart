import 'package:flutter/material.dart';
import 'package:ui_challange/res/pages/landing/landing.dart';

PageRoute? onGenerateRoute(settings) {
  PageRoute? route;
  switch (settings.name) {
    case Landing.routeName:
      return MaterialPageRoute(builder: (context) => const Landing());
  }
  return route;
}

PageRoute? unknownRoute(settings) {
  PageRoute? route;
  switch (settings.name) {
  }
  return route;
}
