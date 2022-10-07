import 'package:flutter/material.dart';

class myButton extends StatelessWidget {
  final String iconImagePath;
  final String buttonText;

  const myButton(
      {Key? key, required this.iconImagePath, required this.buttonText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // height: 80,
          // padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              // color: Colors.blue,
              // borderRadius: BorderRadius.circular(35),
              ),
          child: Center(
            child: Image.asset(iconImagePath),
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          buttonText,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.grey[800],
          ),
        )
      ],
    );
  }
}
