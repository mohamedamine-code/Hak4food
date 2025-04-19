import 'package:flutter/material.dart';
import 'package:haack4food/pages/SginUp.dart';
import 'package:haack4food/pages/fisrt_page.dart';
import 'package:lottie/lottie.dart';
import 'package:json5/json5.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Color.fromARGB(252, 252, 245, 255),
      //   leading: IconButton(
      //     onPressed: () {
      //       Navigator.push(
      //         context,
      //         MaterialPageRoute(builder: (context) => fisrt_page()),
      //       );
      //     },
      //     icon: Icon(Icons.arrow_back, size: 35),
      //   ),
      //   elevation: 0,
      // ),
      backgroundColor: const Color.fromARGB(252, 252, 245, 255),
      body: SafeArea(
        // appBar:
        child: Center(
          child: Stack(
            children: [
              
              
               // Instead of Expanded for spacing
              Positioned(
                bottom: 0,
                child: Column(
                  children: [
                    Container(
                      width: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                        color: Colors.amberAccent,
                      ),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        alignment: Alignment.topLeft,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              child: Text(
                                'Welcome back!',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text(
                              'Email or phone Number',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 8),
                            SizedBox(
                              height: 40,
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Enter username',
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Text(
                              'Password',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 8),
                            SizedBox(
                              height: 40,
                              child: TextField(
                                obscureText: true, // For password field
                                decoration: InputDecoration(
                                  suffixIcon: Icon(Icons.remove_red_eye),
                                  border: OutlineInputBorder(),
                                  hintText: 'Enter password',
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8.0),
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Text('Forget password?'),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: 45,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.black,
                                ),
                                child: Center(
                                  child: Text(
                                    'Login',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                    
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => SginUp()),
                                  );
                                },
                                child: Center(
                                  child: Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Don\'t have an account? ',
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        TextSpan(
                                          text: 'Sign up',
                                          style: TextStyle(
                                            decoration: TextDecoration.underline,
                                            fontSize: 15,
                                            decorationColor: Colors.black,
                                            decorationThickness: 2.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Lottie.asset(
                  'assets/animation/animation.json',
                  repeat: false,
                  height: 340,
                                ),
                ),
                 IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => fisrt_page()),
            );
          },
          icon: Icon(Icons.arrow_back, size: 35,color: Colors.black,),
        ),
            ],
          ),
        ),
      ),
    );
  }
}
