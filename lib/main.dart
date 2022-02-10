import 'dart:io';
import 'package:best_flutter_ui_templates/app_theme.dart';
import 'package:best_flutter_ui_templates/design_course/activite.dart';
import 'package:best_flutter_ui_templates/design_course/espace.dart';
import 'package:best_flutter_ui_templates/design_course/media.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'design_course/contacts.dart';
import 'design_course/home_design_course.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

import 'design_course/salon.dart';
import 'design_course/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]).then((_) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness:
          !kIsWeb && Platform.isAndroid ? Brightness.dark : Brightness.light,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarDividerColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
    return MaterialApp(
      title: 'Kignon Barber Shop',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        //'/': (context) => IntroductionAnimationScreen(),
        '/':(context)=> DesignCourseHomeScreen(),
        '/home': (context) => DesignCourseHomeScreen(),
        '/tarifs':(context) => ActivitePage(),
        '/media':(context) => MediaHome(),
        '/salons':(context) => SalonHome(),
        '/services':(context) => ServicesHome(),
        '/contacts':(context) => ContactHome(),
        '/espaces':(context) => EspaceHome(),
      },
      theme: ThemeData(
        primaryColor: Colors.white,
        textTheme: AppTheme.textTheme,
        platform: TargetPlatform.iOS,
      ),
      //home: NavigationHomeScreen(),
    );
  }
}

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
}
