import 'package:flutter/material.dart';
class Selection extends StatefulWidget {
  const Selection({Key? key}) : super(key: key);

  @override
  State<Selection> createState() => _SelectionState();
}

class _SelectionState extends State<Selection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("prefferd crops"),
      ),
      body: Column(
        children: [
          Image.asset("images/logo.jpeg"),
        ],
      ),
    );
  }
}
