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
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            const Text(
              'Your Cart',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
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
            const SizedBox(
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
                const SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          'Totals',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        const Text(
                          '\$6999.90',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 748,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: Colors.teal,
                      ),
                      child: const Center(
                        child: Text(
                          'Continue for payments',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
