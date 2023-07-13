import 'package:flutter/material.dart';

import '../module/category_comp.dart';

class Catigories extends StatelessWidget {
  const Catigories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          category_comp(testName: "Sports Test", colorName: Colors.deepPurple,),
          category_comp(testName: "History Test", colorName: Colors.black,),
          category_comp(testName: "General Test", colorName: Colors.deepPurple,),
        ],
      ),
    );
  }
}
