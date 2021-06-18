import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsFeedScreen extends StatelessWidget{
  static const route = '/newsfeed';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('home'),
      ),
      body: Column(
        children: [_buildHeader(), _buildBody(), _buildHistory()],
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      height: 150,
      width: double.infinity,
      child: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            child: Image.network(
                'https://sewabsnlchq.com/wp-content/uploads/2020/10/gallery-dummy-img-1.jpg',
                fit: BoxFit.fill),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Text("Title"),
                SizedBox(
                  height: 10,
                ),
                Text("Sub title"),
                SizedBox(
                  height: 10,
                ),
                RaisedButton(
                  color: Colors.yellow, // background
                  textColor: Colors.black, // foreground
                  onPressed: () {},
                  child: Text('Buy now'),
                ),
                SizedBox(
                  height: 10,
                ),
                Text("description"),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildBody() {
    return Container(
      height: 150,
      width: double.infinity,
      color: Colors.white70,
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Text("Date : 18/6/2021"),
          SizedBox(
            height: 10,
          ),
          Text(
            "98,213,123 \$",
            style: TextStyle(color: Colors.red, fontSize: 25),
          ),
          SizedBox(
            height: 10,
          ),
          Text("Time"),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _itemCountDown('01'),
              SizedBox(
                width: 20,
              ),
              _itemCountDown('32'),
              SizedBox(
                width: 20,
              ),
              _itemCountDown('55')
            ],
          )
        ],
      ),
    );
  }

  Widget _itemCountDown(String num) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Center(
        child: Text(
          num,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }

  Widget _buildHistory() {
    return Expanded(
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return _itemHistory();
            }));
  }

  Widget _itemHistory() {
    return Column(
      children: [
        Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('id'),
                    SizedBox(height: 5,),
                    Text('00:00 21/05/2021'),
                  ],
                ),
                SizedBox(
                  height: 25,
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return _itemResultLottery();
                      }),
                )
              ],
            )
        ),
        Divider(
          height: 10,
          color: Colors.grey,
        )
      ],
    );
  }

  Widget _itemResultLottery() {
    return Container(
      margin: EdgeInsets.only(right: 10),
      height: 25,
      width: 25,
      child: Center(
        child: Text(new Random().nextInt(9).toString()),
      ),
      decoration:
      BoxDecoration(shape: BoxShape.circle, color: Color(0xFFe0f2f1)),
    );
  }
}