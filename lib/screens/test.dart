import 'package:flutter/material.dart';
import 'package:iti_quiz_app/module/answer.dart';


import 'package:iti_quiz_app/screens/start.dart';

import '../screens/score.dart';

class Test extends StatelessWidget {
  Test({super.key, required this.nameoftest, required this.colorappbar,});
final String nameoftest;
final Color colorappbar;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Text(nameoftest, style: TextStyle(color: Colors.white, fontSize: 20))
        ],
        title: Text("0 % Osta", style: TextStyle(color: Colors.white),),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Start()),
            );
          },
        ),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: colorappbar,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30,),
            Text("Are you Osta?", style: TextStyle(fontSize: 32),),
            SizedBox(height: 50,),
            answer(a: "AH Osta", b: "NO i can't"),
        ],
      ),
    ),
    );
  }
}
