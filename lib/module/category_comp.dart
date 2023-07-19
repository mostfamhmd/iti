import 'package:flutter/material.dart';

import 'package:iti_quiz_app/screens/test.dart';

import '../global/questions.dart';

// ignore: camel_case_types
class category_comp extends StatelessWidget {
   const category_comp({super.key, required this.colorName, required this.testName});
   final Color colorName;
   final String testName;

  @override
  Widget build(BuildContext context) {
    return Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: colorName,
              ),
              child: Center(
                child: InkWell(
                  onTap: () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => Test(
                      nameoftest: testName,
                      colorappbar: colorName,
                      questionsList: testName == "Sports Test"
                          ? sportTest
                          : testName == "History Test"
                              ? historyTest
                          :  generalTest
                    )));
      },
                  child: Text(testName, style: const TextStyle(fontSize: 35, color: Colors.white),),

                ),
              )
            ),
        );
  }
}
int _index = 0;
int _score = 0;