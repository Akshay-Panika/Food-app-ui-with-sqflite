import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../reusable_widget/my_stores.dart';
import '../../reusable_widget/text_styles.dart';

class CarouselSliderWidget extends StatelessWidget {
  const CarouselSliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount:adsList.length,
      options: CarouselOptions(
          autoPlay: true,
          disableCenter: true,
          viewportFraction:1,
      ),
      itemBuilder: (context, index, realIndex) {
        return  Stack(
          children: [
            Card(
              elevation:4,
              shape: const OutlineInputBorder(borderSide: BorderSide(color: Colors.black54)),
              child:Image.network(adsList[index]["image"],fit: BoxFit.fill,width: double.infinity,height: 300,),
            ),
            Positioned(
                  bottom: 20,left:15,
                  child: Card(
                      elevation: 1,
                      child: Padding(
                        padding:const EdgeInsets.symmetric(vertical:5,horizontal: 25),
                        child: Text(adsList[index]['headLine'],style:headLineText2),
                      )))
          ],
        );
      },
    );
  }
}
