import 'package:flutter/material.dart';
import 'package:kalkulator_frisidea/ui/pages/home_page/home_page.dart';
import 'package:kalkulator_frisidea/ui/pages/personal_info_page/personal_info_page.dart';
import 'package:kalkulator_frisidea/ui/widgets/web_container.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => HomePage());
      case 'personal_info':
        return MaterialPageRoute(builder: (context) => PersonalInfoPage());
      case 'web_container':
        String url = settings.arguments;
        return MaterialPageRoute(builder: (context) => WebContainer(url: url));
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
