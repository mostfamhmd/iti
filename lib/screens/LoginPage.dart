
import 'package:flutter/material.dart';
import 'catigories.dart';

TextEditingController userNameTextEditingControllrt =
    TextEditingController();

class LoginPage extends StatefulWidget {
   LoginPage({super.key,});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
final _loginkey = GlobalKey<FormState>();


bool change = true;
  
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
                decoration: const BoxDecoration(
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
                    child: Form(
                      key: _loginkey,
                      child: TextFormField(
                        controller: userNameTextEditingControllrt,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "enter your name";
                          } else if (value.length < 9){
                            return "your name must be more than 9 letters";
                          } else if(!value[0].contains(RegExp(r'[A-Z]'))){
                            return "first letter must be capital";
                          }
                        },
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                  color: Colors.white
                              )
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          prefixIcon: const Icon(Icons.person,color: Colors.grey),
                          label: const Text("username",style: TextStyle(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.bold),),
                        ),
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
                        onPressed: (){
                          if (_loginkey.currentState!.validate()){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const Catigories()));
                          }
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40,),
                    GestureDetector(
                      onTap: () {
                             Navigator.push(context, MaterialPageRoute(builder: (context) => const Catigories()));
                          },
                      child: const Icon(
                        Icons.fingerprint,
                        color: Colors.deepPurple,
                        size: 60,
                      ),),
                    const SizedBox(height: 30,),
                    const Text(
                      'Use Touch id',
                      style: TextStyle(
                          color: Colors.grey
                      ),
                    ),
                    const SizedBox(height: 30,),
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