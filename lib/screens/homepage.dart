import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool changed = false;
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
                  height: MediaQuery.of(context).size.height*2/3,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
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
                        Container(
                          padding: const EdgeInsets.only(left: 50,right: 50),
                          decoration: BoxDecoration(
                              boxShadow:[
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 20,
                                  offset: const Offset(1, 1.5),
                                    spreadRadius : 1.0,
                                )
                              ]
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderRadius : BorderRadius.all(Radius.circular(30)),
                                  borderSide: BorderSide(
                                  color: Colors.white,
                                )
                              ),
                              label: Text(
                                'User Name',
                              ),
                              prefixIcon: Icon(Icons.person),
                              fillColor: Colors.white,
                              filled: true,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20,),
                        Container(
                          padding: const EdgeInsets.only(left: 50,right: 50),
                          decoration: BoxDecoration(
                              boxShadow:[
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 20,
                                  offset: const Offset(1, 1.5),
                                  spreadRadius : 1.0,
                                )
                              ]
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderRadius : BorderRadius.all(Radius.circular(30)),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  )
                              ),
                              label: Text(
                                'Password',
                              ),
                              prefixIcon: Icon(Icons.lock),
                              fillColor: Colors.white,
                              filled: true,
                            ),
                          ),
                        ),
                        const SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children :[
                            const Text('New to Quiz?', style: TextStyle(color: Colors.grey,),),
                            TextButton(onPressed: (){}, child: const Text('Register?', style: TextStyle(color: Colors.deepPurple),),)
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
                            onPressed: (){},
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
                                    child: Checkbox(value: changed, onChanged: (val){
                                      setState(() {
                                        changed = val!;
                                      });
                                    },checkColor: Colors.deepPurple,)
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
                                TextButton(onPressed: (){}, child: const Text(
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