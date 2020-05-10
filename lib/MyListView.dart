import 'package:flutter/material.dart';

class MockData {
  final String title;
  final String itemName;
  final String itemImageUrl;

  MockData(this.title, this.itemName, this.itemImageUrl);
}

/**
 * 列表使用
 */
class MyListView extends StatelessWidget {
  var data = [
    MockData('Hello1', 'doraemon',
        'https://miro.medium.com/max/676/1*XEgA1TTwXa5AvAdw40GFow.png'),
    MockData('Hello2', 'paidaxing',
        'https://sites.google.com/a/ss1es.tnc.edu.tw/95101/_/rsrc/1472762691989/hai-mian-bao-bao-tu-pian/2.jpg'),
    MockData('Hello3', 'mickey',
        'https://miro.medium.com/max/708/1*ifSob78knBe5rME04WHftg.png'),
    MockData('Hello4', 'wtf',
        'https://2.bp.blogspot.com/-xfVC7SfVJo0/Vg4lPyoup6I/AAAAAAAA0fQ/UcdPbLbfZEI/s1600/7849306_151617247181_2.jpg'),
    MockData('Hello5', 'bear',
        'https://shouyou.3dmgame.com/uploadimg/upload/image/20190928/20190928115315_97133.jpg'),
  ];

  Widget _itemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(16),
      child: SafeArea(
        child: Column(
          children: <Widget>[
            Image.network(
              '${data[index].itemImageUrl}',
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 16,
            ),
            Text('${data[index].itemName}'),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: data.length,
        itemBuilder: _itemBuilder,
      ),
    );
  }
}
