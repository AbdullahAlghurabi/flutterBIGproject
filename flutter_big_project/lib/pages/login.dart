// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.white,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      child: Text(
                        'Login',
                        style: TextStyle(fontFamily: 'myfont', fontSize: 27),
                      ),
                      margin: EdgeInsets.only(top: 30),
                    ),

                    SizedBox(
                      height: 20,
                    ),

                    SvgPicture.asset('assets/icons/login.svg'),

                    SizedBox(
                      height: 40,
                    ),

                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.purple[100],
                        borderRadius: BorderRadius.circular(30),
                      ),
                      width: 300,
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'email',
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.purple,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 27,
                    ),

                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.purple[100],
                        borderRadius: BorderRadius.circular(30),
                      ),
                      width: 300,
                      child: TextField(
                        obscureText: true,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'password',
                          suffixIcon: Icon(
                            Icons.remove_red_eye,
                            color: Colors.purple,
                          ),
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Colors.purple,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 27,
                    ),

                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'login',
                        style: TextStyle(fontSize: 20),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.purple[700]),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25))),
                        padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                            horizontal: 120, vertical: 15)),
                      ),
                    ),
                    SizedBox(
                      height: 27,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account ?"),
                        SizedBox(
                          width: 4,
                        ),
                        GestureDetector(
                          child: Text(
                            'sign up',
                            style: TextStyle(
                                color: Colors.purple[700],
                                fontWeight: FontWeight.bold),
                          ),
                          onTap: () {
                            Navigator.pushNamed(context, "/signup");
                          },
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              child: Image.asset(
                'assets/images/login_bottom.png',
                width: 140,
              ),
              bottom: 0,
              right: 0,
              
            ),
            Positioned(
              child: Image.asset(
                'assets/images/main_top.png',
                width: 120,
              ),
              top: 0,
              left: 0,
            ),
          ],
        ),
      ),
    );
  }
}
