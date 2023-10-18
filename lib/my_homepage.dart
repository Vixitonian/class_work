// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<String> images = [
    'https://images.pexels.com/photos/1008692/pexels-photo-1008692.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/16004662/pexels-photo-16004662/free-photo-of-nightstand-lamp-in-black-and-white.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/14656123/pexels-photo-14656123.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/3144581/pexels-photo-3144581.jpeg?auto=compress&cs=tinysrgb&w=600',
    
  ];

  final List<String> titles = [
    'Wooden Dining',
    'Night Stand',
    'Wooden Chair',
    'Family classy Dinning Table and Chairs',
    
  ];

  final List<String> descriptions = [
    '\$29.00',
    '\$29.00',
    '\$29.00',
   '\$29.00',
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Featured'),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              children: [
                Image.network('${images[index]}'),
                SizedBox(height: 10),
                Text(
                  titles[index],
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
        

              ],
              
            ),
          );
        },
      ),
    );
  }
}