import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: productCard(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class productCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize;
    screenSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        Column(
          children: [
            Container(
              height: screenSize.height * .4,
              color: Color(0xFF1B5E70),
              child: Container(
                margin: EdgeInsets.only(left: 25, right: 25, top: 25),
                height: screenSize.height,
                width: screenSize.width,
                decoration: BoxDecoration(
                  color: Color(0xFFF64070),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'FRDM CLUB',
                      style: TextStyle(
                        letterSpacing: 3,
                        fontFamily: 'Corbel',
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w500,
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: screenSize.height * .6,
              color: Colors.white,
              child: Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.only(left: 25, right: 25, bottom: 25),
                height: screenSize.height,
                width: screenSize.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      spreadRadius: -2,
                      blurRadius: 4,
                      offset: Offset(0, 1),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 110,
                    ),
                    Text(
                      'Php 150.00',
                      style: TextStyle(
                        letterSpacing: 3,
                        fontFamily: 'Corbel',
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none,
                        fontSize: 32,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Php 100.00',
                      style: TextStyle(
                        letterSpacing: 3,
                        fontFamily: 'Corbel',
                        decoration: TextDecoration.lineThrough,
                        decorationColor: Colors.black,
                        fontWeight: FontWeight.w100,
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'FASHION HAS BEEN CREATING WELL-DESIGNED COLLECTIONS',
                      style: TextStyle(
                        letterSpacing: 3,
                        fontFamily: 'Corbel',
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Image(
                      image: NetworkImage(
                        'https://www.boxentriq.com/img/boxentriq-barcode-sample.png',
                      ),
                      width: screenSize.width * .6,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        Positioned(
          top: 60,
          left: 80,
          child: Container(
            width: screenSize.width * .65,
            height: screenSize.height * .55,
            child: Image(
              image: AssetImage(
                'assets/img/asd.png',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 250,
          left: 100,
          child: Container(
            width: 200,
            height: 50,
            decoration: BoxDecoration(
              color: Color(0xFFF64070),
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextButton(
              onPressed: () {},
              child: Text(
                'SHOP NOW',
                style: TextStyle(
                  letterSpacing: 3,
                  fontFamily: 'Corbel',
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
