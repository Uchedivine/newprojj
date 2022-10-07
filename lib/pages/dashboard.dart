// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:convert';
import 'dart:ui';
import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:newprojj/main.dart';
import 'package:newprojj/utilities/my_button.dart';
import 'package:newprojj/widgets/products_widgets.dart';

class dashboard extends StatefulWidget {
  const dashboard({Key? key}) : super(key: key);

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var children;
    return SingleChildScrollView(
        child: Column(
      children: [
        AnimSearchBar(
          width: MediaQuery.of(context).size.width,
          textController: textController,
          onSuffixTap: () {
            setState(() {
              textController.clear();
            });
          },
          color: Colors.white,
          helpText: 'search',
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: 400,
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              ListContainer(
                  Image(image: AssetImage('assets/images/banner 1.png'))),
              ListContainer(
                  Image(image: AssetImage('assets/images/banner 1.png'))),
              ListContainer(
                  Image(image: AssetImage('assets/images/banner 1.png'))),
              ListContainer(
                  Image(image: AssetImage('assets/images/banner 1.png'))),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                'Categories',
                style: TextStyle(
                  fontSize: 20,
                ),
              )
            ],
          ),
        ),

        SizedBox(
          height: 10,
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Padding(padding: EdgeInsets.only(left: 20, right: 20)),
            myButton(
                iconImagePath: 'assets/images/apparel.png',
                buttonText: 'apparel'),
            myButton(
                iconImagePath: 'assets/images/school.png',
                buttonText: 'school'),
            myButton(
                iconImagePath: 'assets/images/sports.png', buttonText: 'sport'),
            myButton(
                iconImagePath: 'assets/images/electronic.png',
                buttonText: 'electronics'),
            myButton(iconImagePath: 'assets/images/all.png', buttonText: 'all'),
          ],
        ),
        SizedBox(
          height: 20,
        ),

        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'recent product',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Icon(Icons.filter)
            ],
          ),
        ),
        // ignore: prefer_const_constructors

        SizedBox(
          height: 20,
        ),

        Padding(
          padding: const EdgeInsets.all(24.0),
          child: productWidget(),
        )
      ],
    ));
  }
}

Container ListContainer(Image image) {
  return Container(
    width: 350,
    height: 170,
    padding: EdgeInsets.all(20),
    margin: EdgeInsets.symmetric(horizontal: 10),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        image: DecorationImage(
            image: AssetImage('assets/images/banner 1.png'),
            fit: BoxFit.cover)),
  );
}
