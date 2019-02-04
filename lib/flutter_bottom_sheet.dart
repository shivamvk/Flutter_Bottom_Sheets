library flutter_bottom_sheet;

import 'package:flutter/material.dart';

class FlutterBottomSheet extends StatefulWidget{

  final String type;
  final BuildContext context;
  final Widget widget;

  FlutterBottomSheet({
    this.type,
    this.context,
    this.widget
  });

  @override
  _FlutterBottomSheetState createState() => _FlutterBottomSheetState();
}

class _FlutterBottomSheetState extends State<FlutterBottomSheet>{
  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      onPressed: () {
        showModalBottomSheet(context: widget.context, builder: (builder){ return widget.widget; });
      },
    );
  }

}