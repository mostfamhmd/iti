import 'package:flutter/material.dart';
import 'package:iti_quiz_app/screens/start.dart';

class Score extends StatelessWidget {
  const Score({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Score",style: TextStyle(color: Colors.white),),
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30,),
            Text("Your Score is ", style: TextStyle(fontSize: 40),),
            SizedBox(height: 30,),
            Container(
              height: 150,
              width: 250,
              padding: EdgeInsets.all(20),
              child: Align(
                alignment: Alignment.center,
                  child: Text("Of course 0% Osta", style: TextStyle(fontSize: 30, color: Colors.white),)),
              decoration: BoxDecoration(
                color: Colors.deepPurple
              ),
            ),
            SizedBox(height: 50,),
            Text("Is anyone qualified to be Osta?", style: TextStyle(fontSize: 40),),
            SizedBox(height: 50,),
            Text("to play again click reset button", style: TextStyle(fontSize: 25,),),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context,);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Start()),
                );
              },
              child: Text(
                'Reset',
                style: TextStyle(
                    fontSize: 32, color: Colors.white, fontFamily: "Pacifico"
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                minimumSize: Size(30, 40)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
