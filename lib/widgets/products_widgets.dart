// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:convert';
import 'dart:html';
import 'dart:ui';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class productWidget extends StatefulWidget {
  const productWidget({Key? key}) : super(key: key);

  @override
  State<productWidget> createState() => _productWidgetState();
}

class _productWidgetState extends State<productWidget> {
  final List<Map<String, dynamic>> gridMap = [
    {
      'title': 'monitor LG 22" ',
      'image': 'assets/images/product card 1.png',
      'price': '\$199.99',
    },
    // {
    //   'title': 'Aesthetic Mug',
    //   'image': 'assets/images/img.png',
    //   'price': '\$19.99',
    // },
    // {
    //   'title': 'Airpods pro 2',
    //   'image': 'assets/images/airpod.png',
    //   'price': '\$199.99',
    // },
    // {
    //   'title': 'PlayStation 4 Slim',
    //   'image': 'assets/images/ps4.png',
    //   'price': '\$199.99',
    // },
    // {
    //   'title': 'M1 macbook',
    //   'image': 'assets/images/macbook.png',
    //   'price': '\$199.99',
    // },
    // {
    //   'title': 'Rolls Royce phantom',
    //   'image': 'assets/images/phantom.png',
    //   'price': '\$199.99',
    // },
    // {
    //   'title': '2022 lambo',
    //   'image': 'assets/images/urus.png',
    //   'price': '\$199.99',
    // },
    // {
    //   'title': 'original earpiece',
    //   'image': 'assets/images/img2.png',
    //   'price': '\$199.99',
    // },
    // {
    //   'title': 'Airpods max ',
    //   'image': 'assets/images/img1.png',
    //   'price': '\$199.99',
    // },
    // {
    //   'title': 'Dr dre Speakers ',
    //   'image': 'assets/images/speaker.png',
    //   'price': '\$199.99',
    // },
    // {
    //   'title': 'Airpods pro ',
    //   'image': 'assets/images/img3.png',
    //   'price': '\$199.99',
    // },
    // {
    //   'title': 'Original Oraimo ',
    //   'image': 'assets/images/img4.png',
    //   'price': '\$199.99',
    // },
    // {
    //   'title': 'New improved ',
    //   'image': 'assets/images/img5.png',
    //   'price': '\$199.99',
    // },
    // {
    //   'title': 'bass beats ',
    //   'image': 'assets/images/img6.png',
    //   'price': '\$199.99',
    // },
  ];

  Future getProducts() async {
    print('Loading..');
    final res = await http
        .get(Uri.parse('http://ecom.whitehatng.com/api/get-all-products'));

    final Map<dynamic, dynamic> result = jsonDecode(res.body);
    var products = (result['products']);
    return products;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getProducts();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: FutureBuilder(
          future: getProducts(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator.adaptive());
            }
            final _products = snapshot.data;
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1 / 1.4,
                mainAxisExtent: 250,
              ),
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: _products.length,
              itemBuilder: (_, index) {
                dynamic product = _products[index];
                return Column(
                  children: [
                    Container(
                      height: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        // color: Colors.teal,
                        image: DecorationImage(
                            image: NetworkImage(
                                'http://ecom.whitehatng.com/storage/assets/images/${product['image']}')),
                      ),
                    ),
                    Text(
                      product['name'],
                      style:
                          TextStyle(fontSize: 20, fontStyle: FontStyle.normal),
                    ),
                    Text(
                      product['price'],
                      style: TextStyle(
                          fontSize: 20,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 31,
                      width: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: Colors.teal,
                      ),
                      child: Center(
                        child: Text(
                          'Add to cart',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                );
              },
            );
          }),
    );
  }
}
