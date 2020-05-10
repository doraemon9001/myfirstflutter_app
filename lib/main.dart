import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
        home: DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: '選單',
            onPressed: () {
              debugPrint('選單點擊');
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: '搜尋',
              onPressed: () {
                debugPrint('搜尋點擊');
              },
            ),
          ],
          backgroundColor: Colors.lime,
          title: Text('My Intro'),
          bottom: TabBar(
            unselectedLabelColor: Colors.blue,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.assessment),
              ),
              Tab(
                icon: Icon(Icons.map),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white60,
        body: TabBarView(
          children: <Widget>[
            Icon(
              Icons.home,
              size: 128,
              color: Colors.white,
            ),
            Icon(
              Icons.assessment,
              size: 128,
              color: Colors.black,
            ),
            Icon(
              Icons.map,
              size: 128,
              color: Colors.black45,
            ),
          ],
        ),
      ),
    )));
