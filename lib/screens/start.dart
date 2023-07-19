import 'package:flutter/material.dart';

import 'LoginPage.dart';

class Start extends StatelessWidget {
  const Start({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Column(
        children: [
          Image.asset('assets/image/background.png'),
          Text('Hello My Friend', style: TextStyle(fontSize: 30, color: Colors.white, fontFamily: "Pacifico"),),
          SizedBox(height: 20,),
          Text('press on start button to Quiz', style: TextStyle(fontSize: 30, color: Colors.white, fontFamily: "Pacifico"),),
          SizedBox(height: 20,),
          SizedBox(
            height: 50,
            width: 200,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              child: const Text(
                'Start',
                style: TextStyle(
                    color: Colors.deepPurple
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
