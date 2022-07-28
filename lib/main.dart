import 'package:Travel/model/appBar.dart';
import 'package:Travel/model/data.dart';
import 'package:flutter/material.dart';

import 'model/dataCart.dart';
import 'model/descriptionData.dart';
import 'model/priceData.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          headline1: TextStyle(
              fontSize: 26, color: Colors.white, fontWeight: FontWeight.w500),
          headline2: TextStyle(fontSize: 13, color: Colors.white),
          headline3: TextStyle(fontSize: 14, color: Colors.black),
          headline4: TextStyle(
            fontSize: 15,
            color: Color.fromARGB(255, 127, 127, 127),
          ),
          bodyText1: TextStyle(
            fontSize: 19,
            color: Color.fromARGB(255, 120, 202, 222),
          ),
          bodyText2: TextStyle(
            fontSize: 11,
            color: Colors.black,
          ),
          headline5: TextStyle(
              fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: mainPage(),
    );
  }
}

class mainPage extends StatefulWidget {
  mainPage({
    Key? key,
  }) : super(key: key);
  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  int _selectedIndex = 0;
  double imageSize = 55;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    color: Colors.white,
                    width: double.infinity,
                    height: size.height / 1.8,
                  ),
                  Container(
                    height: size.height / 2.1,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image:
                            AssetImage('${travelList[_selectedIndex].image}'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(60),
                        bottomRight: Radius.circular(60),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: size.height / 8,
                    left: size.width / 10,
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            travelList[_selectedIndex].name!,
                            style: Theme.of(context).textTheme.headline1,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.room,
                                color: Colors.white,
                              ),
                              Text(
                                travelList[_selectedIndex].location!,
                                style: Theme.of(context).textTheme.headline2,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: size.height / 8,
                    bottom: 10,
                    right: 0,
                    child: Container(
                      height: size.height / 1.9,
                      width: 100,
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemCount: travelList.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      _selectedIndex = index;
                                    });
                                  },
                                  child: AnimatedContainer(
                                    height: _selectedIndex == index
                                        ? imageSize + 15
                                        : imageSize,
                                    width: _selectedIndex == index
                                        ? imageSize + 15
                                        : imageSize,
                                    duration: Duration(milliseconds: 100),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          color: Colors.white, width: 3),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black26,
                                          spreadRadius: 2,
                                          blurRadius:
                                              4, // changes position of shadow
                                        ),
                                      ],
                                      image: DecorationImage(
                                        image: AssetImage(
                                            '${travelList[index].image}'),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                  const appBar()
                ],
              ),
              Container(
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(32, 8, 32, 16),
                  child: Column(
                    children: [
                      dataCart(size: size, selectedImage: _selectedIndex),
                      SizedBox(height: 24),
                      descriptionData(selectedImage: _selectedIndex),
                      SizedBox(height: 24),
                      priceData(selectedImage: _selectedIndex),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
