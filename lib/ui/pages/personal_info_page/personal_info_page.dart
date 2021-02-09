import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kalkulator_frisidea/ui/widgets/ui_helper.dart';

class PersonalInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Personal Information'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: MediaQuery.of(context).size.width * 0.25,
              backgroundImage: AssetImage('assets/avatar.jpg'),
            ),
            UIHelper.verticalSpaceMedium,
            Text('Bayu Laksana Surya El-Irsyadie'),
            Text('bayulse@gmail.com'),
            ListTile(
              leading: FaIcon(FontAwesomeIcons.github),
              title: Text('github.com/bayulse'),
              trailing: FaIcon(FontAwesomeIcons.link),
              onTap: () => Navigator.of(context).pushNamed('web_container',
                  arguments: 'https://github.com/bayulse'),
            ),
            ListTile(
              leading: FaIcon(FontAwesomeIcons.linkedin),
              title: Text('linkedin.com/in/bayulse'),
              trailing: FaIcon(FontAwesomeIcons.link),
              onTap: () => Navigator.of(context).pushNamed('web_container',
                  arguments: 'https://linkedin.com/in/bayulse/'),
            ),
          ],
        ),
      ),
    );
  }
}
