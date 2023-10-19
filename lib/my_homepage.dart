// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyHomePageWidget extends StatefulWidget {
  const MyHomePageWidget({super.key});

  @override
  State<MyHomePageWidget> createState() => _MyHomePageWidgetState();
}

class _MyHomePageWidgetState extends State<MyHomePageWidget> {
  List<Map<String, String>> furnitures = [
    {
      'name': "Georg Jensen Chair",
      'image':
          'https://images.pexels.com/photos/1008692/pexels-photo-1008692.jpeg?auto=compress&cs=tinysrgb&w=600',
      'price': '\$259.90'
    },
    {
      'name': "Daniel Buga Chair",
      'image':
          'https://images.pexels.com/photos/16004662/pexels-photo-16004662/free-photo-of-nightstand-lamp-in-black-and-white.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'price': '\$129.90'
    },
    {
      'name': "Odogwu Chair",
      'image':
          'https://images.pexels.com/photos/14656123/pexels-photo-14656123.jpeg?auto=compress&cs=tinysrgb&w=600',
      'price': '\$90.90'
    },
    {
      'name': "Daniel Buga Chair",
      'image':
          'https://images.pexels.com/photos/16004662/pexels-photo-16004662/free-photo-of-nightstand-lamp-in-black-and-white.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'price': '\$42.90'
    },
    {
      'name': "Odogwu Chair",
      'image':
          'https://images.pexels.com/photos/14656123/pexels-photo-14656123.jpeg?auto=compress&cs=tinysrgb&w=600',
      'price': '\$29.90'
    },
    {
      'name': "Georg Jensen Chair",
      'image':
          'https://images.pexels.com/photos/1008692/pexels-photo-1008692.jpeg?auto=compress&cs=tinysrgb&w=600',
      'price': '\$29.90'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeeeeee),
      appBar: AppBar(
        backgroundColor: Color(0xffeeeeee),
        title: Text('My Shop', style: TextStyle(color: Colors.black)),
      ),
      body: GridView.builder(
          itemCount: furnitures.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 0.57, crossAxisCount: 2),
          itemBuilder: ((context, index) {
            return Card(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Image.network(
                      '${furnitures[index]['image']}',
                      height: 270,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                        right: 8,
                        top: 8,
                        child: Icon(Icons.favorite, color: Colors.white)),
                  ],
                ),
                Spacer(),
                Text(
                  '${furnitures[index]['name']}',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Spacer(),
                Text('${furnitures[index]['price']}'),
                Spacer(),
              ],
            ));
          })),
    );
  }
}
