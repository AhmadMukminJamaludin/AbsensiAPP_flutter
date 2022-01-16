import 'package:cobaapp/main.dart';
import 'package:cobaapp/nav_drawer.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const homeApp());
}

class homeApp extends StatefulWidget {
  const homeApp({Key? key}) : super(key: key);

  @override
  _homeAppState createState() => _homeAppState();
}

class _homeAppState extends State<homeApp> {
  List cardList = [Item1(), Item2(), Item3(), Item4()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        title: Text(
          'AbsensiAPP',
          style: TextStyle(fontWeight: FontWeight.w300),
        ),
        backgroundColor: Colors.red,
      ),
      drawer: DrawerWidget(),
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          CarouselSlider(
            options: CarouselOptions(
              height: 150.0,
              autoPlay: true,
            ),
            items: cardList.map((card) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      child: Card(
                        color: Colors.blueAccent,
                        child: card,
                      ));
                },
              );
            }).toList(),
          ),
          Card(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.red,
                      )),
                ),
                Positioned(
                  top: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width - 16,
                      height: 150,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8))),
                    ),
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 20,
                  right: 20,
                  bottom: 20,
                  child: Column(
                    children: [
                      ClipOval(
                        child: Container(
                            height: 100,
                            width: 100,
                            color: Colors.red[900],
                            child: Image(
                              image: AssetImage('assets/images/jamal.jpg'),
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                          child: Text(
                        'AHMAD MUKMIN JAMALUDIN',
                        style: TextStyle(
                            fontFamily: 'Spartan', fontWeight: FontWeight.bold),
                      )),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                          child: Text(
                        'Administrator',
                        style: TextStyle(
                            fontFamily: 'Spartan', fontWeight: FontWeight.w300),
                      )),
                    ],
                  ),
                )
              ],
            ),
            elevation: 5,
            margin: EdgeInsets.all(8),
          ),
          Card(
              color: Colors.white,
              elevation: 5,
              margin: EdgeInsets.all(8),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Expanded(
                      flex: 2,
                      child: Image(
                        image: AssetImage('assets/images/jamal.jpg'),
                        height: 100,
                        width: 100,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ahmad Mukmin Jamaludin',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Konfirmasi Absensi',
                          style: TextStyle(fontSize: 12),
                        ),
                        Row(
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Konfirmasi',
                                  style: TextStyle(color: Colors.green),
                                )),
                            TextButton(
                                onPressed: () {},
                                child: Text('Tolak',
                                    style: TextStyle(color: Colors.red)))
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ))
        ],
      ),
      // bottomNavigationBar: BottomAppBar(
      //   child: Container(height: 50.0),
      // ),
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: () {},
      //   label: Text(
      //     'Absen',
      //     style: TextStyle(fontFamily: 'Spartan', fontWeight: FontWeight.w500),
      //   ),
      //   icon: Icon(Icons.alarm_on),
      //   backgroundColor: Colors.red,
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class Item1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xffff4000),
              Color(0xffffcc66),
            ]),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Pengguna",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold)),
          Text("126",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17.0,
                  fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}

class Item2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.3, 1],
            colors: [Color(0xff5f2c82), Color(0xff49a09d)]),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Konfirmasi Absensi",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold)),
          Text("1",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17.0,
                  fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}

class Item3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [
              0.3,
              1
            ],
            colors: [
              Color(0xffff4000),
              Color(0xffffcc66),
            ]),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Jam masuk",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold)),
          Text("06:00 - 07:40",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17.0,
                  fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}

class Item4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Jam keluar",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold)),
          Text("14:00 - 16:00",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17.0,
                  fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}
