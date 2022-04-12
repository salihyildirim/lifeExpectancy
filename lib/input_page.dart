import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yasambeklentisi/constants.dart';

import 'IconCinsiyet.dart';
import 'my_container.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String seciliCinsiyet = '';
  double icilenSigara = 20.0;
  double sporGunu = 3.0;
  int boy = 170;
  int kilo = 60;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'YAŞAM BEKLENTİSİ',
          style: TextStyle(color: Colors.black54),
        ),
        centerTitle: true,
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: MyContainer(
                  child: buildRowOutlinedButton('BOY'),
                ),
              ),
              Expanded(
                child: MyContainer(
                  child: buildRowOutlinedButton('KİLO'),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: MyContainer(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Haftada Kaç Gün Spor Yapıyorsunuz?',
                  textAlign: TextAlign.center, style: kMetinStili),
              Text(
                  sporGunu
                      .toInt()
                      .toString(), //'${icilenSigara.round()}' round -> yuvarlama
                  textAlign: TextAlign.center,
                  style: kSayiStili),
              Slider(
                min: 0,
                max: 7,
                value: sporGunu,
                divisions: 7,
                onChanged: (double newValue) {
                  setState(() {
                    sporGunu = newValue;
                  });
                },
              )
            ],
          )),
        ),
        Expanded(
          child: MyContainer(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Günde Kaç Sigara İçiyorsunuz?',
                  textAlign: TextAlign.center, style: kMetinStili),
              Text(
                  icilenSigara
                      .toInt()
                      .toString(), //'${icilenSigara.round()}' round -> yuvarlama
                  textAlign: TextAlign.center,
                  style: kSayiStili),
              Slider(
                min: 0,
                max: 40,
                value: icilenSigara,
                onChanged: (double newValue) {
                  setState(() {
                    icilenSigara = newValue;
                  });
                },
              )
            ],
          )),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: MyContainer(
                  onPress: () {
                    setState(() {
                      seciliCinsiyet = 'KADIN';
                    });
                  },
                  renk: seciliCinsiyet == 'KADIN'
                      ? Colors.purple[100]
                      : Colors.white54,
                  child:
                      KadinErkek(simge: FontAwesomeIcons.venus, text: "KADIN"),
                ),
              ),
              Expanded(
                child: MyContainer(
                  onPress: () {
                    setState(() {
                      seciliCinsiyet = 'ERKEK';
                    });
                  },
                  renk:
                      seciliCinsiyet == 'ERKEK' ? Colors.blue : Colors.white54,
                  child:
                      KadinErkek(simge: FontAwesomeIcons.mars, text: "ERKEK"),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }

  Row buildRowOutlinedButton(String label) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RotatedBox(
            quarterTurns: -1,
            child: Text(
              label,
              style: kMetinStili,
            )),
        SizedBox(
          width: 8,
        ),
        RotatedBox(
            quarterTurns: -1,
            child: Text(
              boy.toString(),
              style: kSayiStili,
            )),
        SizedBox(
          width: 8,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonTheme(
              minWidth: 36,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: BorderSide(width: 3, color: Colors.lightBlue),
                ),
                onPressed: () {
                  setState(() {
                    if (label == 'BOY') {
                      boy++;
                    } else {
                      kilo++;
                    }
                  });
                },
                child: Icon(
                  FontAwesomeIcons.plus,
                  size: 10,
                ),
              ),
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                  side: BorderSide(width: 3, color: Colors.lightBlue)),
              onPressed: () {
                setState(() {
                  if (label == 'BOY') {
                    boy--;
                  } else {
                    kilo--;
                  }
                });
              },
              child: Icon(
                FontAwesomeIcons.minus,
                size: 10,
              ),
            )
          ],
        )
      ],
    );
  }
}
