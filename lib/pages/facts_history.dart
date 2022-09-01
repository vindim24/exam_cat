import 'package:flutter/material.dart';

class FactsHistory extends StatelessWidget {
  const FactsHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1FFFA),
      body: Center(
        child: ListView(
          children: [
            Text("1"),
            Text("2"),
            Text("3"),
          ],
        )
      ),
    );
  }
}
