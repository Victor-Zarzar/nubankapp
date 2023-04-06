import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nubankapp/pages/home/header.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent,
      appBar: _appBar(),
      body: SingleChildScrollView(
          child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Header(),
          ],
        ),
      )),
    );
  }

  PreferredSize _appBar() {
    return PreferredSize(
        child: AppBar(
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
        preferredSize: const Size.fromHeight(0));
  }
}