import 'package:flutter/material.dart';
import 'package:project_ui/presentation/pages/home/home_page.dart';
import 'package:project_ui/presentation/pages/premium/premium_page.dart';
class Routes {
  static const homePage = '/homePage';
  static const premiumPage = '/';

  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    try {
      final Map<String, dynamic>? args = routeSettings.arguments as Map<String, dynamic>?;
      args ?? <String, dynamic>{};
      switch (routeSettings.name) {
        case homePage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const HomePage(),
          );
        case premiumPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const PremiumPage(),
          );
        
        default:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const HomePage(),
          );
      }
    } catch (e) {
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HomePage(),
      );
    }
  }
}
