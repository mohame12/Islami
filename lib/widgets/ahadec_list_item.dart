import 'package:flutter/material.dart';


class AhadecLISTitem extends StatelessWidget {
  const AhadecLISTitem({
    super.key, required this.ahadth,
  });
  final String ahadth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(top:19.5 ),
      child: Text(ahadth,textAlign: TextAlign.center,style: TextStyle(fontSize: 25,fontFamily: 'KOUFIBD'),),
    );
  }
}