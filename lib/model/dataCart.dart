import 'package:Travel/model/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class dataCart extends StatefulWidget {
  dataCart({
    required this.size,
    required this.selectedImage,
  });
  final Size size;
  var selectedImage;

  @override
  State<dataCart> createState() => _dataCartState();
}

class _dataCartState extends State<dataCart> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side: BorderSide(color: Color.fromARGB(40, 0, 0, 0))),
          child: Container(
            height: widget.size.width / 4.5,
            width: widget.size.width / 4.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Distance',
                  style: Theme.of(context).textTheme.headline3,
                ),
                Text(
                  '${travelList[widget.selectedImage].distance}KM',
                  style: Theme.of(context).textTheme.bodyText1,
                )
              ],
            ),
          ),
        ),
        Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side: BorderSide(color: Color.fromARGB(40, 0, 0, 0))),
          child: Container(
            height: widget.size.width / 4.5,
            width: widget.size.width / 4.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Temp',
                  style: Theme.of(context).textTheme.headline3,
                ),
                Text(
                  '${travelList[widget.selectedImage].temp}° C',
                  style: Theme.of(context).textTheme.bodyText1,
                )
              ],
            ),
          ),
        ),
        Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side: BorderSide(color: Color.fromARGB(40, 0, 0, 0))),
          child: Container(
            height: widget.size.width / 4.5,
            width: widget.size.width / 4.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Rating',
                  style: Theme.of(context).textTheme.headline3,
                ),
                Text(
                  '${travelList[widget.selectedImage].rating}',
                  style: Theme.of(context).textTheme.bodyText1,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
