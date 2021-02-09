import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kalkulator_frisidea/core/viewmodels/kalkulator_viewmodel.dart';
import 'package:kalkulator_frisidea/ui/widgets/kalkulator.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Flutter Test Frisidea'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: ChangeNotifierProvider(
          create: (_) => KalkulatorViewModel(),
          child: Kalkulator(),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => Navigator.of(context).pushNamed('personal_info'),
        icon: FaIcon(FontAwesomeIcons.infoCircle),
        label: Text('Personal Info'),
      ),
    );
  }
}
