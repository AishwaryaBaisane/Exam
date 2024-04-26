import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hi/componants/List.dart';
import 'package:hi/home/HomeScreen.dart';

class detailScreen extends StatefulWidget {
  const detailScreen({super.key});

  @override
  State<detailScreen> createState() => _detailScreenState();
}

class _detailScreenState extends State<detailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Screen'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(15),
            height: 200,
            width: 400,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(productList[selectIndex]['img1'])),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(color: Colors.black12,spreadRadius: 1,blurRadius: 2)
                ]),
          ),
          Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 310, top: 20),
                  child: Text(
                    productList[selectIndex]['name'],
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 280),
                  child: Text(
                    productList[selectIndex]['price'].toString() + '/-',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 300, top: 30),
                  child: Text(
                    'details',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 10),
            child: Text(
              'A shoe is an item of footwear intended to protect and comfort the human foot. Though the human foot can adapt'
              ' to varied terrains and climate conditions, it is'
              ' vulnerable, and shoes provide protection.',
              style: TextStyle(fontSize: 20),
            ),
          ),
          GestureDetector(
            onTap: () {
               CartList.add(selectIndex);
            },
            child: Container(
              margin: EdgeInsets.only(top: 114),
              height: 60,
              width: 610,
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Center(
                child: Text(
                  'Add to Cart',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
