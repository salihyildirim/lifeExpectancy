import 'package:flutter/material.dart';

class KadinErkek extends StatelessWidget {
  final IconData? simge;
  final String? text;

  KadinErkek({required this.simge, required this.text});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          simge,
          size: 50,
          color: Colors.black54,
        ),
        SizedBox(height: 10),
        Text(
          text!,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black54),
        )
      ],
    );
  }
}
