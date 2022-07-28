import 'package:Travel/model/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class descriptionData extends StatefulWidget {
  descriptionData({
    required this.selectedImage,
  });
  var selectedImage;

  @override
  State<descriptionData> createState() => _descriptionDataState();
}

class _descriptionDataState extends State<descriptionData> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text('Description',
                style: Theme.of(context).textTheme.headline3),
          ),
        ),
        ReadMoreText(
          travelList[widget.selectedImage].description!,
          trimLines: 2,
          style: Theme.of(context).textTheme.bodyText2,
          colorClickableText: Color.fromARGB(255, 120, 202, 222),
          trimMode: TrimMode.Line,
          trimCollapsedText: ' Read More',
          trimExpandedText: ' Less',
        )
      ],
    );
  }
}
