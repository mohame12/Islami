import 'package:flutter/cupertino.dart';

class ItemQoranList extends StatelessWidget {
  const ItemQoranList({super.key, required this.soraName, required this.ayanums});
  final String soraName;
  final String ayanums;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(flex: 1,),
         Padding(
          padding: EdgeInsetsDirectional.only(top: 19),
          child: Text(ayanums,textAlign: TextAlign.end,style: TextStyle(fontFamily: 'ElMessiri',fontSize: 25),),
        ),
        const Spacer(flex: 1,),

        const Spacer(flex: 1,),
        Padding(
          padding: const EdgeInsetsDirectional.only(top: 19),
          child: Text(textAlign: TextAlign.end,soraName,style: const TextStyle(fontFamily: 'ElMessiri',fontSize: 25),),
        ),
        const Spacer(flex: 1,),
      ],
    );
  }
}
