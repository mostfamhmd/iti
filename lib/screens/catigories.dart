import 'package:flutter/material.dart';
import 'package:iti_quiz_app/Tests/general_test.dart';
import 'package:iti_quiz_app/Tests/sport_test.dart';
import 'package:iti_quiz_app/Tests/history_test.dart';

class Catigories extends StatelessWidget {
  const Catigories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height*1/3,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.deepPurple,
            ),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context,);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Sport()),
                );
              },
              child: Text(
                'Sports Tests',
                style: TextStyle(
                  fontSize: 32, color: Colors.white, fontFamily: "Pacifico"
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height*1/3,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context,);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => History()),
                );

              },
              child: Text(
                'History Tests',
                style: TextStyle(
                    fontSize: 32, color: Colors.white, fontFamily: "Pacifico"
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height*1/3,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.deepPurple,
            ),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context,);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => General()),
                );
              },
              child: Text(
                'General Tests',
                style: TextStyle(
                    fontSize: 32, color: Colors.white, fontFamily: "Pacifico"
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
