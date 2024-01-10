import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../reusable_widget/my_stores.dart';
import '../../reusable_widget/text_styles.dart';


class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height:45,width: double.infinity,
      child: ListView.builder(
        itemCount:MyStore.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return  Padding(
            padding: const EdgeInsets.only(right:10.0),
            child: Card(
              elevation:4,
              shape:const OutlineInputBorder(borderSide: BorderSide(color: Colors.black54)),
              child: Row(
                children: [
                  Image.network(MyStore[index]["projectImage"],fit: BoxFit.fill),
                  const SizedBox(width:7,),
                  Text(MyStore[index]["productName"],style:titleText),
                  const SizedBox(width:15,)
                ],
              ),
            ),
          );
        },),
    );
  }
}
