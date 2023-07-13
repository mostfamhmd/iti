import 'package:flutter/material.dart';
import 'package:iti_quiz_app/screens/LoginPage.dart';

import '../screens/score.dart';

class answer extends StatelessWidget {
  const answer({super.key, required this.a, required this.b});
  final String a;
  final String b;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: [
            const SizedBox(height: 50,),
            TextButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Score()),
              );
            }, child: Text(a,style: const TextStyle(fontSize: 32,),),),
            const SizedBox(height: 32,),
            TextButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            }, child: Text(b,style: const TextStyle(fontSize: 32),),),
          ],
        ),
    );
  }
}
