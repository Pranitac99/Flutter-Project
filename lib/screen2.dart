import 'product.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.menu),
                    Icon(Icons.shopping_cart)
                  ],
                ),
              ),
              Text(
                'Hello there!',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w600,
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: height * 0.025,
              ),
              Text(
                'Keep Shopping',
                style: GoogleFonts.montserrat(
                  color: Colors.black45,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Search Items',
                    hintStyle: GoogleFonts.montserrat(color: Colors.black38),
                    prefixIcon: Icon(Icons.search),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: Colors.white, width: 3)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: Colors.white, width: 0)),
                    filled: true,
                    fillColor: Colors.black.withAlpha(15)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Best Sellers',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w500,
                        fontSize: 22,
                      ),
                    ),
                    Text(
                      'See All',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.3,
                child: ListView(
                  shrinkWrap: true,
                  itemExtent: 150,
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (BuildContext context) {
                                  return Product();
                                }));
                          },
                          child: Card(
                            color: Color(0xffFFE08E),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(24, 18, 0, 0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        'Earphones',
                                        style: GoogleFonts.montserrat(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20,
                                        ),
                                      ),
                                      Text(
                                        '$50',
                                        style: GoogleFonts.montserrat(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 170,
                          left: 92,
                          child: MaterialButton(
                            minWidth: 10,
                            onPressed: () {
                              print('Pressed');
                            },
                            color: Colors.white.withOpacity(0.6),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(0),
                                    bottomRight: Radius.elliptical(40, 60),
                                    topLeft: Radius.circular(15),
                                    bottomLeft: Radius.circular(15))),
                            child: Icon(Icons.add,color: Color(0xffFFCC3F),),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: <Widget>[
                        Card(
                          color: Color(0xffFFE3E5),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.fromLTRB(24, 18, 0, 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Nintendo',
                                      style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20,
                                      ),
                                    ),
                                    Text(
                                      '$ 250',
                                      style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0,20,0,0),
                                child:
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 170,
                          left: 92,
                          child: MaterialButton(
                            minWidth: 10,
                            onPressed: () {
                              print('Pressed');
                            },
                            color: Colors.white.withOpacity(0.8),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(0),
                                    bottomRight: Radius.elliptical(40, 60),
                                    topLeft: Radius.circular(15),
                                    bottomLeft: Radius.circular(15))),
                            child: Icon(Icons.add,color: Colors.red.withAlpha(95),),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: <Widget>[
                        Card(
                          color: Color(0xffE1F8D7),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.fromLTRB(24, 18, 0, 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Headset',
                                      style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20,
                                      ),
                                    ),
                                    Text(
                                      '$70',
                                      style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(22),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 170,
                          left: 92,
                          child: MaterialButton(
                            minWidth: 10,
                            onPressed: () {
                              print('Pressed');
                            },
                            color: Colors.white.withOpacity(0.8),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(0),
                                    bottomRight: Radius.elliptical(40, 60),
                                    topLeft: Radius.circular(15),
                                    bottomLeft: Radius.circular(15))),
                            child: Icon(Icons.add,color: Colors.green.withAlpha(95),),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
