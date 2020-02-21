import 'package:flutter/material.dart';

class Sub2Page extends StatefulWidget {
  Sub2Page({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Sub2PageState createState() => _Sub2PageState();
}

class _Sub2PageState extends State<Sub2Page> {
  List<Widget> list;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    list = _buildList();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: list,
    );
  }

  _buildList() =>
      new List<Widget>.generate(100, (i) => Text('${widget.title}_$i'))
          .toList();
}
