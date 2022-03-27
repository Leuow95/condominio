import 'package:condominio/app/pages/home_page.dart';
import 'package:flutter/cupertino.dart';

class RoutesConstants {
  static const homePage = "/homepage";
}

class RoutesGenerator {
  static Map<String, dynamic> getRoutes(RouteSettings setting) => {
        RoutesConstants.homePage: (context) => const HomePage(),
      };
}
