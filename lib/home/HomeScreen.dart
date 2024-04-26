import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../componants/List.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          centerTitle: true,
          title: Text('Home Screen'),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Icon(Icons.search),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: GestureDetector(onTap: () {
                Navigator.of(context).pushNamed('/cart');

              },child: Icon(Icons.shopping_cart_outlined)),
            ),
          ],
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(15),
                  height: 200,
                  width: 400,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/img/lead2.png'),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: [
                      Text(
                        '  Shoes Store',
                        style:
                            TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Wrap(
                    children: List.generate(
                      productList.length,
                      (index) => GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed('/detail',
                                arguments: productList[selectIndex]['img1']);
                            selectIndex = index;
                          },
                          child: box(
                              img1: productList[index]['img1'],
                              price: productList[index]['price'],
                              name: productList[index]['name'])),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Column box({required String img1, required int price, required String name}) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(right: 10, left: 10),
        child: Container(
          height: 180,
          width: 180,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15)),
            boxShadow: [
              BoxShadow(color: Colors.black12, spreadRadius: 2, blurRadius: 2)
            ],
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(img1),
            ),
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.only(bottom: 30),
        child: Column(
          children: [
            Container(
              height: 60,
              width: 180,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12, spreadRadius: 2, blurRadius: 2)
                  ],
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15))),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 0),
                    child: Text(
                      name,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Text(
                    '$price' + '/-',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ],
  );
}

int selectIndex = 0;
