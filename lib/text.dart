import 'package:flutter/material.dart';

class SpecialText extends StatelessWidget {
  final String data;
  SpecialText(this.data);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: Center(
            child: Text(
          data,
          style: TextStyle(fontSize: 18),
        )));
  }
}
