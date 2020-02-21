import 'package:flutter/material.dart';

class SubPage extends StatefulWidget {
  SubPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SubPageState createState() => _SubPageState();
}

class _SubPageState extends State<SubPage> {
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
