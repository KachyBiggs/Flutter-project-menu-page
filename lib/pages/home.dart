import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('How to make french toast',
            style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold)),
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.white, 
              borderRadius: BorderRadius.circular(10)),
              alignment: Alignment.center,
          child: Image.asset('assets/arrow left.png',
          width: 20,
          height: 20,
    
          ),

        ),
        actions: [
        Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.white, 
              borderRadius: BorderRadius.circular(10)),
              alignment: Alignment.center,
          child: Image.asset('assets/dots_icon.png',
          width: 20,
          height: 20,
    
          ),
      ),
        ]
      ),
    );
  }
}
