import 'package:flutter/material.dart';

class Carrier extends StatefulWidget {
  @override
  _CarrierState createState() => _CarrierState();
}

class _CarrierState extends State<Carrier> {
  final GlobalKey<ScaffoldState> _scafold = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scafold,
      //  drawer: NavigationBar(),
      body: SafeArea(
          child: Container(
        color: Color(0XFFCEE3D1),
        child: Column(
          children: <Widget>[
            _appbar(),
            Container(
              height: MediaQuery.of(context).size.height * .88,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Container(
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          "Carrier : ",
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.start,
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    _noticelist(),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }

  Widget _appbar() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 5),
        //color: Colors.pinkAccent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.arrow_back,
                size: 30,
              ),
              onPressed: () {
                //_scafold.currentState.openDrawer();
                Navigator.popAndPushNamed(context, '/Home');
              },
            ),
            Text(
              "IOTMDCP",
              style: TextStyle(
                fontFamily: 'Roboto',
              ),
            ),
            Container(
              height: 30,
              width: 30,
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/smlogo.png"),
                      fit: BoxFit.contain)),
            )
          ],
        ));
  }

  Widget _noticelist() {
    return Container(
        height: MediaQuery.of(context).size.height * .82,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(horizontal: 5),
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          // itemCount: names.length,
          itemCount: 15,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              elevation: 5,
              child: ListTile(
                leading: Container(
                  height: 50,
                  width: 30,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/smlogo.png"),
                          fit: BoxFit.contain)),
                  //color: Colors.amber,
                ),
                title: Container(
                  //  margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                  height: 40,
                  width: MediaQuery.of(context).size.width * .64,
                  color: Colors.amberAccent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Name : \n\t\t\t",
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start,
                      )
                    ],
                  ),
                ),
                onTap: () {
                  print(index);

                  showDialog(
                      context: context,
                      builder: (_) => new AlertDialog(
                            contentPadding: EdgeInsets.symmetric(horizontal: 5),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0))),
                            content: Container(
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width,
                              // color: Colors.amber,
                              child: SingleChildScrollView(
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 50,
                                      // color: Colors.black,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(""),
                                          IconButton(
                                              icon: Icon(
                                                Icons.cancel,
                                              ),
                                              onPressed: () {
                                                Navigator.pop(context, this);
                                              }),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .35,
                                      width: MediaQuery.of(context).size.width *
                                          .60,
                                      color: Colors.amberAccent,
                                      child: Icon(
                                        Icons.supervised_user_circle,
                                        size: 150,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .35,
                                      width: MediaQuery.of(context).size.width *
                                          .80,
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 5, vertical: 5),
                                      child: Text(
                                        " names[index]",
                                        style: TextStyle(
                                            fontSize: 18, fontFamily: 'Roboto'),
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ));
                },
              ),
            );
          },
        ),);
  }
}
