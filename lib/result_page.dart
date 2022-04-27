import 'package:flutter/material.dart';
import 'package:yasambeklentisi/constants.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sonuç Sayfası')),
      body: Column(
        children: [
          Expanded(
              child: Text(
            'Beklenen Yaşam Süresi :',
            style: kMetinStili,
          )),
          Expanded(
            child: MaterialButton(
              color: Colors.white,
              onPressed: () {},
              child: Text(
                'GERİ DÖN',
                style: kMetinStili,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
