// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:newprojj/pages/cart.dart';
import 'package:newprojj/pages/dashboard.dart';
import 'package:newprojj/pages/details.dart';
import 'package:newprojj/pages/login%20and%20register/login.dart';
import 'package:newprojj/pages/login%20and%20register/register.dart';
import 'package:newprojj/widgets/products_widgets.dart';

class welcomepage extends StatefulWidget {
  const welcomepage({Key? key}) : super(key: key);

  @override
  State<welcomepage> createState() => _welcomepageState();
}

class _welcomepageState extends State<welcomepage> {
  List<Widget> pages = [
    dashboard(),
    Loginpage(),
    registerPage(),
    cartPage(),
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Salatiga City, Central java',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.normal,
          ),
        ),
        backgroundColor: Colors.white,
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 20,
              left: 20,
            ),
            child: const Icon(Icons.shopping_cart_outlined),
          ),
          const SizedBox(
            width: 20,
          ),
          const Icon(Icons.notifications_outlined)
        ],
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: pages[index],
      bottomNavigationBar: SnakeNavigationBar.color(
          snakeViewColor: Colors.teal,
          unselectedItemColor: Colors.teal,
          onTap: (_index) {
            setState(() {
              index = _index;
            });
          },
          currentIndex: index,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'home',
                backgroundColor: Colors.teal),
            BottomNavigationBarItem(
                icon: Icon(Icons.heart_broken_outlined),
                label: 'wishlist',
                backgroundColor: Colors.teal),
            BottomNavigationBarItem(
                icon: Icon(Icons.history),
                label: 'history',
                backgroundColor: Colors.teal),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_box_outlined),
                label: 'account',
                backgroundColor: Colors.teal),
          ]),
    );
  }
}
