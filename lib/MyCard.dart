import 'package:flutter/material.dart';

/**
 * 我的卡片
 */
class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.red,
            backgroundImage: AssetImage('images/profile.jpg'),
          ),
          Text(
            'Lance.deng',
            style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold
            ),
          ),
          Text(
            'Flutter Devloper',
            style: TextStyle(
                fontFamily: 'SourceSansPro',
                fontSize: 20,
                color: Colors.white,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(
            width: 100,
            height: 20,
            child: Divider(
              color: Colors.teal.shade100,
            ),
          ),
          Card(
              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.teal,
                ),
                title: Text(
                  '02 12345678',
                  style: TextStyle(
                    color: Colors.teal,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
          ),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: ListTile(
              leading: Icon(
                Icons.email,
                color: Colors.teal,
              ),
              title: Text(
                'lance.den@outlook.com',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.teal
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
