import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'catigories.dart';

class LoginPage extends StatefulWidget {
   LoginPage({super.key,});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final TextEditingController _controller = TextEditingController();
  bool _isButtonEnabled = false;

  void _checkInput() {
    String text = _controller.text.trim();

    if (text.isNotEmpty && text.length >= 9 && text[0] == text[0].toUpperCase()) {
      setState(() {
        _isButtonEnabled = true;
      });
    } else {
      setState(() {
        _isButtonEnabled = false;
      });
    }
  }

  void _navigateToNextScreen(BuildContext context) {
    if (_isButtonEnabled) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Catigories()),
      );
    } else {
      // Handle the case when the TextFormField doesn't meet the required conditions
      // Show an error message or perform other actions
    }
  }
  bool change = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.deepPurple,
      body: Stack(
        children: [
          Image.asset('assets/image/background.png'),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 2 / 3,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                      top: Radius.circular(50.0)),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 20,),
                    const Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 35,
                          fontFamily: 'Pacifico'
                      ),
                    ),
                    const SizedBox(height: 20,),
                    SizedBox(width: 370,
                  child: Container(
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 20,
                            offset: const Offset(1, 1.5),
                            spreadRadius: 1,

                          )

                        ]
                    ),
                    child: TextFormField(
                      controller: _controller,
                      onChanged: (_) {
                        _checkInput();
                      },
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                color: Colors.white
                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: Icon(Icons.person,color: Colors.grey),
                        label: Text("username",style: TextStyle(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.bold),),
                      ),
                    ),
                  ),
                ),
                    const SizedBox(height: 20,),
                    const SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text('New to Quiz?',
                          style: TextStyle(color: Colors.grey,),),
                        TextButton(onPressed: () {},
                          child: const Text('Register?', style: TextStyle(
                              color: Colors.deepPurple),),)
                      ],
                    ),
                    const SizedBox(height: 20,),
                    SizedBox(
                      height: 50,
                      width: 200,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepPurple,
                        ),
                        onPressed: () => _navigateToNextScreen(context),
                        child: const Text(
                          'Login',
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    const Icon(
                      Icons.fingerprint,
                      color: Colors.deepPurple,
                      size: 60,
                    ),
                    const SizedBox(height: 20,),
                    const Text(
                      'Use Touch id',
                      style: TextStyle(
                          color: Colors.grey
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Transform.scale(
                                scale: 0.7,
                                child: Checkbox(
                                  value: change, onChanged: (val) {
                                  setState(() {
                                    change = val!;
                                  });
                                }, checkColor: Colors.deepPurple,)
                            ),
                            const Text(
                              'Remember Me',
                              style: TextStyle(
                                  color: Colors.grey
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            TextButton(onPressed: () {}, child: const Text(
                              'Forget Password',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ))
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}