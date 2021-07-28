import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveFlatButton extends StatefulWidget {
  final String text;
  final Function handler;

  AdaptiveFlatButton(this.text, this.handler);

  @override
  _AdativeFlatButtonState createState() => _AdativeFlatButtonState();
}

class _AdativeFlatButtonState extends State<AdaptiveFlatButton> {
  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            child: Text(
              widget.text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: widget.handler,
          )
        : FlatButton(
            textColor: Theme.of(context).primaryColor,
            onPressed: widget.handler,
            child: Text(
              'Choose Date',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          );
  }
}
