import 'package:flutter/cupertino.dart';
import 'package:food_app_with_sqflite/reusable_widget/text_styles.dart';

class ReusableText extends StatelessWidget {
  final String title,value;
  const ReusableText({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,style:headLineText2,),
          Text(value,style: headLineText2,),
        ],
      ),
    );
  }
}