import 'package:flutter/material.dart';
import '../screens/score.dart';

class Test extends StatefulWidget {
  const Test({super.key,  this.nameoftest,  this.colorappbar, required this.questionsList,});
final String? nameoftest;
final Color? colorappbar;
final List questionsList;

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
int _index = 0;
int _score = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.colorappbar,
        leadingWidth: 100,
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: Center(child: Text(widget.nameoftest!)),
        title: Column(
          children: [
            const Text("Qestion No:"),
            Text("${_index + 1}/${widget.questionsList.length}"),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.local_parking_outlined,
              color: Colors.orange,
            ),
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(18),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Question:",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline),
            ),
            Text(widget.questionsList[_index]["question"]),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            const Text(
              "Answers:",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                     for (int i = 0;
                  i <
                      (widget.questionsList[_index]["answers"] as List)
                          .length;
                  i++)
                      
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: widget.colorappbar),
                           onPressed: () {
                    _score = _score +
                        widget.questionsList[_index]["answers"][i]["score"] as int;

                    if (_index == widget.questionsList.length - 1) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Score(
                            index: _index,
                            score: _score,
                          ),
                        ),
                      );
                    } else {
                      setState(() {
                        // Increment the index and clamp it to the valid range.
                        _index = (_index + 1).clamp(0, widget.questionsList.length - 1);
                      });

                      print(widget.questionsList[_index]["answers"][i]["score"]);
                      print(_score);
                    }
                  },
                  child: Text(widget.questionsList[_index]["answers"][i]["ans"]),
                ),
                  ]
            ),
          ),
        ),
      ]
      )
      )
    );
  }
}
