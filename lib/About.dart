import 'package:flutter/material.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
 final GlobalKey<ScaffoldState> _scafold = new GlobalKey<ScaffoldState>();

  List<String> names = [
    "Pranto kumar",
    "Atiqe Ahamed",
    'Sayem Bashar',
    "Pranto kumar",
    "Atiqe Ahamed",
    'Sayem Bashar',
    "Pranto kumar",
    "Atiqe Ahamed",
    'Sayem Bashar'
  ];
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
              child: SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: <Widget>[
                      Container(
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            "Administration : ",
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.start,
                          )),
                      SizedBox(
                        height: 5,
                      ),
                      //_emplist(),
                    ],
                  ),
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

  Widget _emplist() {
    return Container(
        height: MediaQuery.of(context).size.height * .82,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: names.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              elevation: 5,
              child: ListTile(
                leading: Container(
                  height: 100,
                  width: 100,
                  color: Colors.amber,
                  child: Icon(
                    Icons.supervised_user_circle,
                    size: 80,
                  ),
                ),
                title: Container(
                  margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  height: 100,
                  width: MediaQuery.of(context).size.width * .61,
                  color: Colors.amberAccent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Name : \n\t\t\t" + names[index],
                        style: TextStyle(
                            fontSize: 18,
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
                                              .05,
                                      width: MediaQuery.of(context).size.width *
                                          .80,
                                      color: Colors.blueAccent,
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 5, vertical: 5),
                                      child: Text(
                                        names[index],
                                        style: TextStyle(
                                            fontSize: 18, fontFamily: 'Roboto'),
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .30,
                                      width: MediaQuery.of(context).size.width *
                                          .80,
                                      color: Colors.blueAccent,
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 5, vertical: 5),
                                      child: Text(
                                        // names[index],
                                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled",
                                        style: TextStyle(
                                            fontSize: 14, fontFamily: 'Roboto'),
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
        ));
  }
}
