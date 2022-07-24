import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int days = 30;
  String name = "Abir";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("catalog App")),
      ),
      body: Center(
          child: Container(
              child: Text("Wellcome to $days days of flutter by $name"),
          ),
      ),
      drawer: Drawer(),
    );
  }
}
