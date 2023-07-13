import 'package:flutter/material.dart';

import 'package:iti_quiz_app/screens/test.dart';

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
                  onTap: (){
                    Navigator.pop(context);
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Test(
                        colorappbar: colorName,
                        nameoftest: testName,
                      )),
                    );
                  },
                  child: Text(testName, style: TextStyle(fontSize: 35, color: Colors.white),),

                ),
              )
            ),
        );
  }
}
