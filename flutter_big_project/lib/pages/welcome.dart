// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          child: Stack(
            children: [
              Container(
                // color: Colors.amber,
                width: double.infinity,
                height: double.infinity,
                child: Column(
                  children: [
                    SizedBox(
                      height: 22,
                    ),
                   
                    Text('WELCOME TO EDU' , style: TextStyle(fontFamily: 'myfont' , fontSize: 20),),
                   
                    SizedBox(
                      height: 22,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    

                    SvgPicture.asset('assets/icons/chat.svg'),
                    
                    SizedBox(
                      height: 40,
                    ),
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                      ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.purple),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(horizontal: 79, vertical: 10)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(27))),
                      ),
                      child: Text(
                        "login",
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                    
                    
                    SizedBox(
                      height: 22,
                    ),
                    
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/signup");
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.purple[100]),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(horizontal: 77, vertical: 13)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(27))),
                      ),
                      child: Text(
                        "SIGNUP",
                        style: TextStyle(fontSize: 17, color: Colors.grey[850]),
                      ),
                    ),
                  ],
                ),
              ),
             
           
              Positioned(
                child: Image.asset(
                  'assets/images/main_top.png',
                  width: 100,
                ),
                top: 0,
                left: 0,
              ),
              Positioned(
                child: Image.asset(
                  'assets/images/main_bottom.png',
                  width: 80,
                ),
                left: 0,
                bottom: 0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
