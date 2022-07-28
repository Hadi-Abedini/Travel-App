import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:Travel/model/data.dart';

class priceData extends StatefulWidget {
  priceData({
    required this.selectedImage,
  });
  var selectedImage;

  @override
  State<priceData> createState() => _priceDataState();
}

class _priceDataState extends State<priceData> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Total Price',
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              '\$${travelList[widget.selectedImage].tPrice}',
              style: Theme.of(context).textTheme.headline5,
            )
          ],
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(1000),
            color: Colors.black,
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child:
                Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 40),
          ),
        )
      ],
    );
  }
}
