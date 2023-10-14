import 'package:flutter/material.dart';



class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: Container(
        child: Center(
          child: Text("New UI Design Create",style: Theme.of(context).textTheme.headline6!.copyWith(
            color: Colors.pinkAccent,
            fontWeight: FontWeight.bold,
            fontSize: 30
          ),),
        ),
      ),
    );
  }
}