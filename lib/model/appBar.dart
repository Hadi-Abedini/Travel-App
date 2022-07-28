import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class appBar extends StatelessWidget {
  const appBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(1000),
              color: Color.fromARGB(127, 255, 255, 255),
            ),
            child: const Padding(
              padding: EdgeInsets.all(10.0),
              child: Icon(Icons.keyboard_arrow_left),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1000),
                color: Color.fromARGB(127, 255, 255, 255)),
            child: const Padding(
              padding: EdgeInsets.all(10.0),
              child: Icon(Icons.favorite_border),
            ),
          ),
        ],
      ),
    );
  }
}
