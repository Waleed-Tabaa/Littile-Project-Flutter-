import 'package:flutter/material.dart';

import '../../constants.dart';
class Colordot extends StatefulWidget {
  const Colordot({
    Key? key,
    required this.fillColor,
    this.isSelected = false,
  }) : super(key: key);
  final Color fillColor;
  final bool isSelected;

  @override
  State<Colordot> createState() => _ColordotState();
}

class _ColordotState extends State<Colordot> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2.5),
      padding: EdgeInsets.all(3.0),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
            color: widget.isSelected ? kTextLightColor : Colors.transparent),
      ),
      child: Container(
        decoration:
            BoxDecoration(shape: BoxShape.circle, color: widget.fillColor),
      ),
    );
  }
}



