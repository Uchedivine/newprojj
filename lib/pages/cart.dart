import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:newprojj/widgets/cartlist.dart';

class cartPage extends StatefulWidget {
  const cartPage({Key? key}) : super(key: key);

  @override
  State<cartPage> createState() => _cartPageState();
}

class _cartPageState extends State<cartPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
          Text(
            'Your Cart',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Delivery to',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                'Salatiga City, Central java',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              cartlist(
                  iconImagePath: 'assets/images/img1.png',
                  title: 'Airpods max by Apple',
                  subTitle: 'Variant : Grey',
                  price: '\$1999.99'),

              cartlist(
                  iconImagePath: 'assets/images/img2.png',
                  title: 'Airpods pro2 by Apple',
                  subTitle: 'Variant : white',
                  price: '\$1999.99'),

              cartlist(
                  iconImagePath: 'assets/images/img3.png',
                  title: 'Airpods pro2 by Apple',
                  subTitle: 'Variant : white',
                  price: '\$1999.99'),

              cartlist(
                  iconImagePath: 'assets/images/img4.png',
                  title: 'Airpods pro2 by Apple',
                  subTitle: 'Variant : white',
                  price: '\$1999.99'),

              cartlist(
                  iconImagePath: 'assets/images/img5.png',
                  title: 'Airpods pro2 by Apple',
                  subTitle: 'Variant : white',
                  price: '\$1999.99'),

              // Row(
              //   children: [
              //     Container(
              //       height: 24,
              //       width: 24,
              //       color: Colors.white,
              //     ),
              //     SizedBox(
              //       width: 5,
              //     ),
              //     Image.asset('assets/images/img1.png'),
              //     SizedBox(
              //       width: 10,
              //     ),
              //     Column(
              //       mainAxisAlignment: MainAxisAlignment.start,
              //       children: [
              //         Text(
              //           'Airpods max by Apple',
              //           style: TextStyle(
              //             fontSize: 20,
              //             color: Colors.black,
              //           ),
              //         ),
              //         Text(
              //           'Variant : Grey',
              //           style: TextStyle(
              //             fontSize: 18,
              //             color: Colors.grey,
              //           ),
              //         ),
              //         SizedBox(
              //           height: 10,
              //         ),
              //         Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //           children: [
              //             Text(
              //               '\$1999.99',
              //               style: TextStyle(
              //                 fontSize: 20,
              //                 color: Colors.black,
              //               ),
              //             ),
              //             SizedBox(
              //               width: 10,
              //             ),
              //             Icon(Icons.remove_circle_outline),
              //             Text(
              //               '1',
              //               style: TextStyle(fontSize: 20),
              //             ),
              //             Icon(Icons.add_circle_outline),
              //             Icon(Icons.delete_outline_rounded)
              //           ],
              //         ),
              //       ],
              //     ),

              //   ],
              // ),
              SizedBox(
                height: 10,
              ),
            ],
          )
        ],
      ),
    );
  }
}
