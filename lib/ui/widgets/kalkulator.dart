import 'package:flutter/material.dart';
import 'package:kalkulator_frisidea/core/viewmodels/kalkulator_viewmodel.dart';
import 'package:kalkulator_frisidea/ui/widgets/ui_helper.dart';
import 'package:provider/provider.dart';

class Kalkulator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextEditingController angkaAwalController = TextEditingController();
    final TextEditingController angkaAkhirController = TextEditingController();

    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Text(
            'Kalkulator Bilangan Prima',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          UIHelper.verticalSpaceMedium,
          TextField(
            controller: angkaAwalController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: 'angka awal'),
          ),
          UIHelper.verticalSpaceSmall,
          TextField(
            controller: angkaAkhirController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: 'angka akhir'),
          ),
          UIHelper.verticalSpaceMedium,
          RaisedButton(
            onPressed: () => context.read<KalkulatorViewModel>().hitungPrima(
                  int.parse(angkaAwalController.text),
                  int.parse(angkaAkhirController.text),
                ),
            child: Text('Hitung'),
          ),
          UIHelper.verticalSpaceMedium,
          // Bisa pakai `Consumer` untuk render value bilangan prima atau bisa juga dengan `context.watch`
          // Consumer<KalkulatorViewModel>(
          //   builder: (context, value, child) => value.bilPrima == null
          //       ? Container()
          //       : Text('Bilangan Prima: ${value.bilPrima}'),
          // ),
          context.watch<KalkulatorViewModel>().bilPrima == null
              ? Container()
              : Text(
                  'Bilangan Prima: ${context.watch<KalkulatorViewModel>().bilPrima}'),
        ],
      ),
    );
  }
}
