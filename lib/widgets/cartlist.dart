import 'package:flutter/material.dart';
import 'dart:html';
import 'dart:ui';

class cartlist extends StatefulWidget {
  final String iconImagePath;
  final String title;
  final String subTitle;
  final String price;

  cartlist(
      {Key? key,
      required this.iconImagePath,
      required this.title,
      required this.subTitle,
      required this.price})
      : super(key: key);

  @override
  State<cartlist> createState() => _cartlistState();
}

class _cartlistState extends State<cartlist> {
  int _quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 24,
          width: 24,
          color: Colors.grey,
        ),
        SizedBox(
          width: 5,
        ),
        Container(
          height: 82,
          width: 76,
          child: Image.asset(widget.iconImagePath),
        ),
        SizedBox(
          width: 5,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              Text(
                widget.subTitle,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.price,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          print('i was clicked -- ');
                          setState(() {
                            _quantity--;
                          });
                        },
                        child: Icon(Icons.remove_circle_outline),
                      ),
                      Text(
                        '$_quantity',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          print('i was clicked ++ ');
                          setState(() {
                            _quantity++;
                          });
                        },
                        child: Icon(Icons.add_circle_outline),
                      ),
                      Icon(Icons.delete_outline_rounded)
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 15,
              )
            ],
          ),
        ),
      ],
    );
  }
}
