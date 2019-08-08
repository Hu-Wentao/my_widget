// Copyright 2019/7/26, Hu-Wentao. All rights reserved.
// Email: hu.wentao@outlook.com
import 'package:flutter/material.dart';

class RadiusContainer extends StatelessWidget {
  final Widget child;

  RadiusContainer({
    Key key,
    this.child,
  }) : super(key: key);

  RadiusContainer.col({Key key, List<Widget> children})
      : this(
            key: key,
            child: Column(
              children: children,
            ));
  RadiusContainer.row({Key key, List<Widget> children})
      : this(
            key: key,
            child: Row(
              children: children,
            ));

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        child: child,
        borderRadius: BorderRadius.circular(15.0),
        shadowColor: Colors.grey,
        elevation: 4,
      ),
    );
  }
}
