import 'package:flutter/material.dart';

import 'package:adorn/base/bloc/bloc.dart';
import 'package:adorn/base/widget/themed_app.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:ui_challange/res/pages/landing/landing.dart';
import 'route.dart';

import 'res/themes/adorn_dark_theme.dart';
import 'res/themes/adorn_light_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const Application());
}

class Application extends StatelessWidget {
  final String appName = "Adorn App";

  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocContainer(
      child: ThemedApp(
        darkTheme: AdornDarkTheme(),
        theme: AdornLightTheme(),
        appBuilder: (context, theme) => MaterialApp(
          title: appName,
          theme: theme,
          initialRoute: Landing.routeName,
          onGenerateRoute: onGenerateRoute,
          onUnknownRoute: unknownRoute,
          /*builder: (context, child) {
                  return ResponsiveWrapper.builder(
                    child,
                    breakpoints: const [
                      ResponsiveBreakpoint.resize(600, name: MOBILE),
                      ResponsiveBreakpoint.autoScale(800, name: TABLET),
                      ResponsiveBreakpoint.autoScale(1200, name: DESKTOP),
                    ],
                  );
                },*/
        ),
      ),
    );
  }
}
