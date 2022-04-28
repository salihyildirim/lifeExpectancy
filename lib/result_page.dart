import 'package:flutter/material.dart';
import 'package:yasambeklentisi/constants.dart';
import 'package:yasambeklentisi/user_data.dart';

import 'hesap.dart';

class ResultPage extends StatelessWidget {
  UserData _userData;
  ResultPage(this._userData);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sonuç Sayfası')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              flex: 8,
              child: Center(
                child: Text(
                  Hesap(_userData).hesapla().round().toString(),
                  style: kMetinStili,
                ),
              )),
          Expanded(
            flex: 1,
            child: MaterialButton(
              color: Colors.white,
              onPressed: () {
                Navigator.pop(context);
              },
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
