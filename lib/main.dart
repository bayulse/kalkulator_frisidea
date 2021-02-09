import 'package:flutter/material.dart';
import 'package:kalkulator_frisidea/ui/router.dart' as route;

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      initialRoute: '/',
      onGenerateRoute: route.Router.generateRoute,
    );
  }
}
