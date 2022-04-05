import 'package:condominio/app/pages/add_morador_page.dart';
import 'package:condominio/app/pages/home_page.dart';
import 'package:flutter/material.dart';

class RoutesConstants {
  static const homePage = "/";
  static const addMoradorPage = "/add-morador";
}

class RoutesGenerator {
  static Map<String, dynamic> getRoutes(RouteSettings setting) => {
        RoutesConstants.homePage: (context) => const HomePage(),
        RoutesConstants.addMoradorPage: (context) => const AddMoradorPage(),
      };
}
