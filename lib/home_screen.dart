import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Screen"),),
      body: Container(
        color: Colors.amberAccent,
        alignment: Alignment.center,
        width: double.infinity,
        height: double.infinity,
        child: Text("Home Screen",style: TextStyle(fontSize: 20),),
      ),
    );
  }
}
