import 'package:flutter/material.dart';
import 'package:haack4food/pages/SginUp.dart';
import 'package:haack4food/pages/SignIn.dart';

class fisrt_page extends StatelessWidget {
  const fisrt_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset('assets/img/pexels-myfoodie-2664443.jpg'),
                ),
                SizedBox(
                  height: 20,
                ),
                Text.rich(
                  TextSpan(
                    style: TextStyle(fontSize: 30),
                    children: [
                      TextSpan(
                        style: TextStyle(fontWeight: FontWeight.bold),
                        text: 'No Worry,',
                      ),
                      TextSpan(text: 'Handel your '),
                    ],
                  ),
                ),
                Text.rich(
                  style: TextStyle(fontSize: 30),
                  TextSpan(
                    children: [
                      TextSpan(text: 'watsed food with '),
                      TextSpan(
                        style: TextStyle(fontWeight: FontWeight.bold),
                        text: 'MobiltyX.',
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "One App to Save Them All – Fight Food Waste!",
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(height: 50),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SginUp()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.amberAccent,
                    ),
                    height: 70,
                    child: Center(
                      child: Text(
                        'Get Started  >',
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
