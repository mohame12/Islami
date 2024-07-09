import 'package:flutter/material.dart';

class QoranListItem extends StatelessWidget {
  const QoranListItem({
    super.key, required this.sura,

  });

final String sura;

  @override
  Widget build(BuildContext context) {
    return Text(
      sura,
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,
      style: TextStyle(fontSize: 20,),);
  }
}