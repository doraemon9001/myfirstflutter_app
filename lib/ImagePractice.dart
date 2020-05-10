import 'package:flutter/material.dart';

/**
 * 圖片使用
 * 使用網路圖片
 * image: NetworkImage("https://miro.medium.com/max/1200/1*mk1-6aYaf_Bes1E3Imhc0A.jpeg"),使用網路資源圖片
 */
class ImagePractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image.asset("images/diamond.png"), //使用本機資源圖片
            ),
          ]),
    );
  }
}
