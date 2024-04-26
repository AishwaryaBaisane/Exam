import 'package:flutter/material.dart';
import 'package:hi/componants/List.dart';
import 'package:hi/home/HomeScreen.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart Screen'),
      ),
      body: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              height: 150,
              width: 390,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12, spreadRadius: 1, blurRadius: 2)
                  ]),
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Container(
                      height: 130,
                      width: 140,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(productList[selectIndex]['img1']),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40,left: 20),
                      child: Column(
                        children: [
                          Text(
                            productList[selectIndex]['name'],style: TextStyle(fontSize: 30),
                          ),
                          Text(
                            productList[selectIndex]['price'].toString()+'/-',style: TextStyle(fontSize: 30),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 80,bottom: 100),
                      child: GestureDetector(onTap: () {
                        CartList.remove(selectIndex);
                      },child: Icon(Icons.delete)),
                    )
                    
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
