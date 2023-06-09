import 'package:flutter/material.dart';

import '../whatsnew.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile(
      {Key? key,
      required this.iconimg,
      required this.text,
      required this.onclick})
      : super(key: key);

  final String iconimg;
  final String text;
  final VoidCallback onclick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onclick,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Colors.white, // Set the color of the top border
              width: 0.2, // Set the width of the top border
            ),
          ),
        ),
        child: SizedBox(
          width: 300,
          height: 50,
          child: ListTile(
            leading: Image.asset(
              iconimg,
              width: 25,
              height: 25,
            ),
            title: Text(
              text,
              style: TextStyle(
                  fontFamily: "NexaBold", fontSize: 21, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
