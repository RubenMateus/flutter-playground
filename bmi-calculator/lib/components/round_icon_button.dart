import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final Function onPress;
  final IconData iconData;

  RoundIconButton({@required this.onPress, @required this.iconData});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        height: 56.0,
        width: 56.0,
      ),
      child: Icon(iconData),
    );
  }
}
