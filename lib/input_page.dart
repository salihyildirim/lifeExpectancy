import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
      body: Column(children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: MyContainer(),
              ),
              Expanded(
                child: MyContainer(),
              ),
            ],
          ),
        ),
        Expanded(
          child: MyContainer(),
        ),
        Expanded(
          child: MyContainer(),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: MyContainer(),
              ),
              Expanded(
                child: MyContainer(),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

class MyContainer extends StatelessWidget {
  final Color renk;
  var child;
  MyContainer({this.renk = Colors.white54, this.child /*required this.renk*/});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      margin: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: renk,
      ),
    );
  }
}
