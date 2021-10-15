import 'package:cat_app/models/ImageModel.dart';
import 'package:flutter/material.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;
  ImageList(this.images);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: images.length,
        itemBuilder: (context, int index) {
          return Column(
            children: [
              showImage(images[index].url),
            ],
          );
        });
  }

  Widget showImage(imageUrl) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.purple)),
      padding: EdgeInsets.all(20.0),
      margin: EdgeInsets.all(20.0),
      child: Image.network(imageUrl),
    );
  }
}
