import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../screens/score.dart';

class Sport extends StatelessWidget {
  const Sport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sports Tests \n   0%   Osta", style: TextStyle(color: Colors.white),),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {SystemNavigator.pop(); },
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Are you Osta?", style: TextStyle(fontSize: 32),),
            SizedBox(height: 50,),
            TextButton(onPressed: (){
              Navigator.pop(context,);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Score()),
              );
            }, child: Text("AH Osta",style: TextStyle(fontSize: 32),),),
            SizedBox(height: 32,),
            TextButton(onPressed: (){
              Navigator.pop(context,);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Score()),
              );
            }, child: Text("I can't",style: TextStyle(fontSize: 32),),),
          ],
        ),
      ),
    );
  }
}
