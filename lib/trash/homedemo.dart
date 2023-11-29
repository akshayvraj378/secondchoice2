import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:easy_search_bar/easy_search_bar.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  List carName = [
    'Jeep W186X LandSUV',
    'LAND ROVER X800',
    'Benz S Class 350CDI',
    'AUDI Q5 40 TDI'
  ];
  List carimage = [
    'assets/images/whitecar.jpg',
    'assets/images/rangerover.jpg',
    'assets/images/blackcar.jpg',
    'assets/images/cargr.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(centerTitle: true, title: Text("Choice Is Yours")),
      drawer: Drawer(
          child: Container(
        decoration: BoxDecoration(
          color: Colors.black38,
        ),
      )),
      body: ListView.builder(
        itemCount: carName.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 90.0, // has the effect of softening the shadow
                  spreadRadius: 1.0, // has the effect of extending the shadow
                  offset: Offset(
                    5.0, // horizontal, move right 10
                    5.0, // vertical, move down 10
                  ),
                ),
              ],
            ),
            child: InkWell(
              onTap: () {},
              child: Card(
                color: Colors.white70,
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 8,
                margin:
                    EdgeInsets.only(right: 40, left: 40, top: 15, bottom: 15),
                shadowColor: Colors.green,
                child: Column(
                  children: [
                    SizedBox(child: Image.asset(carimage[index])),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(carName[index],
                          style: TextStyle(
                              backgroundColor: Colors.transparent,
                              fontWeight: FontWeight.w900,
                              fontSize: 20)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.calendar_today_rounded),
                              Text('2014')
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.speed_rounded),
                              Text('59000 KM')
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.info_outline_rounded),
                              Text('Diesel')
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.currency_rupee),
                              Text('71,00,000')
                            ],
                          ),
                          Icon(Icons.favorite_border)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
      bottomNavigationBar:
          CurvedNavigationBar(backgroundColor: Colors.transparent, height: 55,items: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.call),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.currency_bitcoin),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.person_outline),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.favorite_border),
        )
      ]),
    );
  }
}
