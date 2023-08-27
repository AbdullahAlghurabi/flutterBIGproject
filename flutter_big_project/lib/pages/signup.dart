// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 20),
                        child: Text(
                          'Sign up',
                          style: TextStyle(fontFamily: 'myfont', fontSize: 24),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    SvgPicture.asset('assets/icons/signup.svg'),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                      width: 286,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(180, 225, 190, 231),
                          borderRadius: BorderRadius.circular(40)),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Email',
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.purple,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                      width: 286,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(180, 225, 190, 231),
                          borderRadius: BorderRadius.circular(40)),
                      child: TextField(
                        decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.remove_red_eye,
                            color: Colors.purple,
                          ),
                          border: InputBorder.none,
                          hintText: 'Password',
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Colors.purple,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('SIGNUP'),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.purple[700]),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25))),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(horizontal: 120, vertical: 15)),
                      ),
                    ),
                    SizedBox(
                      height: 10,
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
                            'login',
                            style: TextStyle(
                                color: Colors.purple[700],
                                fontWeight: FontWeight.bold),
                          ),
                          onTap: () {
                            Navigator.pushNamed(context, '/login');
                          },
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Divider(
                            
                            height: 50,
                            indent:40,
                            color: Colors.black,
                            thickness: 1,
                          ),
                        ),
                        Text('OR'),
                         Expanded(
                           child: Divider(
                            endIndent:40,
                             height: 20,
                             color: Colors.black,
                             thickness: 1,),
                         )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Positioned(
                width: 140,
                top: 0,
                left: 0,
                child: Image.asset('assets/icons/signup_top.png')),
         
          ],
        ),
      ),
    );
  }
}
