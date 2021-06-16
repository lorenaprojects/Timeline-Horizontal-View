// Copyright 2021 Lorena Munoz. //
// All rights reserved. Lorena Projects. //

import 'dart:ui';

import 'package:flutter/material.dart';

class ReusableButton extends StatelessWidget {
  final String buttonTitle;
  final Function onTap;
  final Color color;
  final bool isNormalButton;

  ReusableButton(
      {@required this.buttonTitle,
      this.onTap,
      this.color,
      @required this.isNormalButton});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      disabledColor: Colors.blue,
      disabledTextColor: Colors.transparent,
      textColor: isNormalButton == true ? Colors.white : Colors.transparent,
      hoverColor: Colors.red,
      hoverElevation: 10.0,
      elevation: 2,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40), topRight: Radius.circular(40))),
      color: color,
      onPressed: onTap,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          buttonTitle,
          style: TextStyle(fontFamily: "Raleway", fontSize: 20.0),
        ),
      ),
    );
  }
}
