import 'package:flutter/material.dart';
class CatelogPage extends StatefulWidget {
  const CatelogPage({Key? key}) : super(key: key);

  @override
  State<CatelogPage> createState() => _CatelogPageState();
}

class _CatelogPageState extends State<CatelogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Abir Hossain Tusher",
        style: TextStyle(
          color: Colors.red,
          fontSize: 18,
        ),
        ),
      ),
    );
  }
}
