import 'dart:io';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:iotmdcp/Navigation_bar.dart';
import 'package:transparent_image/transparent_image.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _scaffold = new GlobalKey<ScaffoldState>();

  String des =
      "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).";
  var cominfo =
      "It is a long established fact that a reader will be distracted by the readable content of a page when";

  var cominfo2 =
      "It is a long established fact that a reader will be distracted by the readable content of a page whenIt is a long established fact that a reader will be distracted by the readable content of a page whenIt is a long established fact that a reader will be distracted by the readable content of a page whenIt is a long established fact that a reader will be distracted by the readable content of a page when";
  List<String> textscorll = [
    "Discipline is the best toolDiscipline is the best tool Discipline is the best tool Discipline is the best tool",
    "Design first, then code Design first, then code Design first, then code Design first, then code Design first, then code Design first, then code ",
    "Do not patch bugs out, rewrite them Design first, then code  Design first, then code Design first, then code ",
    "Do not test bugs out, design them out Design first, then code ",
  ];

  Future<bool> _onbackpressd() {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text("Do you want Exit"),
              actions: <Widget>[
                CupertinoButton(
                  
                    child: Text("Yes"),
                    onPressed: () {
                      exit(0);
                    }),
                CupertinoButton(
                    child: Text("No"),
                    onPressed: () {
                      Navigator.pop(context);
                    })
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onbackpressd,
      child: Scaffold(
        key: _scaffold,
        drawer: NavigationBar(),
        body: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Color(0XFFCEE3D1),
            child: SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height*.95,
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                                  child: Column(
                    children: <Widget>[
                      _appbar(),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Catagory",
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700),
                            ),
                            GestureDetector(
                              child: Text(
                                "",
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700),
                              ),
                              onTap: () {},
                            ),
                          ],
                        ),
                      ),
                      _newcat(),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * .08,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        width: MediaQuery.of(context).size.width,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: TypewriterAnimatedTextKit(
                              totalRepeatCount: 100,
                              text: textscorll,
                              textStyle:
                                  TextStyle(fontSize: 12.0, fontFamily: "Agne"),
                              textAlign: TextAlign.start,
                              alignment: AlignmentDirectional
                                  .topStart // or Alignment.topLeft
                              ),
                        ),
                      ),
                      SizedBox(
                        height: 05,
                      ),
                      // _cats(),
                      _menubutton(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _appbar() {
    return Container(
        height: MediaQuery.of(context).size.height * .07,
        padding: EdgeInsets.symmetric(horizontal: 5),
        // color: Colors.pinkAccent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            // IconButton(
            //   icon: Icon(
            //     Icons.line_weight,
            //     size: 30,
            //   ),
            //   onPressed: () {
            //     _scaffold.currentState.openDrawer();
            //   },
            // ),
            Text(""),
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

  Widget _newcat() {
    return Container(
      height: MediaQuery.of(context).size.height * .25,
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext contex, int index) {
            return Card(
              elevation: 10,
              child: Column(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height * .15,
                    width: MediaQuery.of(context).size.width * .35,
                    child: FadeInImage.memoryNetwork(
                      placeholder: kTransparentImage,
                      image:
                          'http://www.toilet-valve.com/wp-content/uploads/2019/10/IMG_5638.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text("Product name:"),
                  Text("Model:"),
                ],
              ),
            );
          }),
    );
  }

  Widget _menubutton() {
    return Container(
      height: MediaQuery.of(context).size.height * .72,
      child: Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          //border: TableBorder.all(width: 1),
          children: [
            TableRow(
      children: [
        GestureDetector(
          child: Container(
              height: MediaQuery.of(context).size.height * .16,
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white),
              width: 20,
              child: Column(
                children: <Widget>[
                  Container(
                    height:  MediaQuery.of(context).size.height*.10,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/house.png"),fit:BoxFit.contain)
                    ),
                  ),
                  Text(
                    "Home",
                    style: TextStyle(fontSize: 18, fontFamily: 'Roboto',fontWeight: FontWeight.bold),
                  ),
                ],
              )),
          onTap: () {},
        ),
        GestureDetector(
          child: Container(
              height: MediaQuery.of(context).size.height * .16,
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white),
              width: 20,
              child: Column(
                children: <Widget>[
                   Container(
                    height:  MediaQuery.of(context).size.height*.10,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/about.png"),fit:BoxFit.contain)
                    ),
                  ),
                  Text(
                    "About",
                    style: TextStyle(fontSize: 18, fontFamily: 'Roboto',fontWeight: FontWeight.bold),
                  ),
                ],
              )),
          onTap: () {
            // Navigator.pushNamed(context, '/About');
            //showDialog(context: context,builder: (_) =>AssetGiffyDialog(image: Image.asset("assets/logo.png",),title:Text("data"), description: Text("datadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadata"),),);
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
                                    .80,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                          "assets/logo.png",
                                        ),
                                        fit: BoxFit.contain)),
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
                                  '$des',
                                  style: TextStyle(
                                      fontSize: 12, fontFamily: 'Roboto'),
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
      ],
            ),
            TableRow(
      children: [
        GestureDetector(
            child: Container(
                height: MediaQuery.of(context).size.height * .16,
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white),
                width: 20,
                child: Column(
                  children: <Widget>[
                    Container(
                    height:  MediaQuery.of(context).size.height*.10,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/binary.png"),fit:BoxFit.contain)
                    ),
                  ),
                    Text(
                      "Company Info",
                      style: TextStyle(fontSize: 18, fontFamily: 'Roboto',fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
            onTap: () {
              showDialog(
                  context: context,
                  builder: (_) => new AlertDialog(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 5),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                        content: Container(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          // color: Colors.amber,
                          child: SingleChildScrollView(
                            child: Container(
                              height:
                                  MediaQuery.of(context).size.height * 01,
                              width: MediaQuery.of(context).size.width,
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width,
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
                                              Navigator.pop(
                                                  context, this);
                                            }),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: MediaQuery.of(context)
                                            .size
                                            .height *
                                        .35,
                                    width: MediaQuery.of(context)
                                            .size
                                            .width *
                                        .80,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                              "assets/logo.png",
                                            ),
                                            fit: BoxFit.contain)),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                      width: MediaQuery.of(context)
                                          .size
                                          .width,
                                      child: Text(
                                        "Est:",
                                        textAlign: TextAlign.start,
                                      )),
                                  Container(
                                    height: MediaQuery.of(context)
                                            .size
                                            .height *
                                        .05,
                                    width: MediaQuery.of(context)
                                            .size
                                            .width *
                                        .80,
                                    margin: EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 5),
                                    child: Text(
                                      '$cominfo',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'Roboto'),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                      width: MediaQuery.of(context)
                                          .size
                                          .width,
                                      child: Text(
                                        "Est:",
                                        textAlign: TextAlign.start,
                                      )),
                                  Container(
                                    height: MediaQuery.of(context)
                                            .size
                                            .height *
                                        .40,
                                    width: MediaQuery.of(context)
                                            .size
                                            .width *
                                        .80,
                                    margin: EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 5),
                                    child: Text(
                                      '$cominfo2',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'Roboto'),
                                      textAlign: TextAlign.justify,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ));
            }),
        GestureDetector(
          child: Container(
              height: MediaQuery.of(context).size.height * .16,
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white),
              width: 20,
              child: Column(
                children: <Widget>[
                  Container(
                    height:  MediaQuery.of(context).size.height*.10,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/engineer.png"),fit:BoxFit.contain)
                    ),
                  ),
                  Text(
                    "Administrative",
                    style: TextStyle(fontSize: 18, fontFamily: 'Roboto',fontWeight: FontWeight.bold),
                  ),
                ],
              )),
          onTap: () {
            Navigator.pushNamed(context, '/Admin');
          },
        ),
      ],
            ),
            TableRow(
      children: [
        GestureDetector(
          child: Container(
              height: MediaQuery.of(context).size.height * .16,
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white),
              width: 20,
              // color: Colors.white,
              child: Column(
                children: <Widget>[
                  Container(
                    height:  MediaQuery.of(context).size.height*.10,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/warning.png"),fit:BoxFit.contain)
                    ),
                  ),
                  Text(
                    "Notice",
                    style: TextStyle(fontSize: 18, fontFamily: 'Roboto',fontWeight: FontWeight.bold),
                  ),
                ],
              )),
          onTap: () {
            Navigator.pushNamed(context, '/Notice');
          },
        ),
        GestureDetector(
          child: Container(
              height: MediaQuery.of(context).size.height * .16,
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white),
              width: 20,
              // color: Colors.white,
              child: Column(
                children: <Widget>[
                  Container(
                    height:  MediaQuery.of(context).size.height*.10,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/goal.png"),fit:BoxFit.contain)
                    ),
                  ),
                  Text(
                    "Carreer",
                    style: TextStyle(fontSize: 18, fontFamily: 'Roboto',fontWeight: FontWeight.bold),
                  ),
                ],
              )),
          onTap: () {
            Navigator.pushNamed(context, '/Carrier');
          },
        ),
      ],
            ),
            TableRow(
      children: [
        GestureDetector(
          child: Container(
              height: MediaQuery.of(context).size.height * .16,
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white),
              width: 20,
              // color: Colors.white,
              child: Column(
                children: <Widget>[
                  Container(
                    height:  MediaQuery.of(context).size.height*.10,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/box.png"),fit:BoxFit.contain)
                    ),
                  ),
                  Text(
                    "Our Product",
                    style: TextStyle(fontSize: 18, fontFamily: 'Roboto',fontWeight: FontWeight.bold),
                  ),
                ],
              )),
          onTap: () {
            Navigator.pushNamed(context, '/OurProduct');
          },
        ),
        GestureDetector(
          child: Container(
              height: MediaQuery.of(context).size.height * .16,
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white),
              width: 20,
              // color: Colors.white,
              child: Column(
                children: <Widget>[
                  Container(
                    height:  MediaQuery.of(context).size.height*.10,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/contact-us.png"),fit:BoxFit.contain)
                    ),
                  ),
                  Text(
                    "Contact us",
                    style: TextStyle(fontSize: 18, fontFamily: 'Roboto',fontWeight: FontWeight.bold),
                  ),
                ],
              )),
          onTap: () {
            // Navigator.pushNamed(context, '/About');

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
                          child: Container(
                            height:
                                MediaQuery.of(context).size.height * 01,
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width,
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
                                  width:
                                      MediaQuery.of(context).size.width *
                                          .80,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                            "assets/logo.png",
                                          ),
                                          fit: BoxFit.contain)),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height *
                                          .05,
                                  width:
                                      MediaQuery.of(context).size.width *
                                          .80,
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 5),
                                  // child: Text(
                                  //   '$cominfo2',
                                  //   style: TextStyle(
                                  //       fontSize: 12,
                                  //       fontFamily: 'Roboto'),
                                  //   textAlign: TextAlign.justify,
                                  // ),
                                  child: Row(
                                    children: <Widget>[],
                                  ),
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height *
                                          .45,
                                  width:
                                      MediaQuery.of(context).size.width,
                                  child: Card(
                                    elevation: 5,
                                    color: Colors.amberAccent,
                                    child: Column(
                                      children: <Widget>[
                                        ListTile(
                                          contentPadding:
                                              EdgeInsets.symmetric(
                                            horizontal: 4,
                                          ),
                                          leading: Icon(
                                            Icons.room,
                                            color: Colors.black,
                                          ),
                                          title: Text(
                                            "Horgram ,Rajpara,\nRajshahi-6201",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontFamily: 'Roboto',
                                                fontWeight:
                                                    FontWeight.bold),
                                          ),
                                        ),
                                        ListTile(
                                          contentPadding:
                                              EdgeInsets.symmetric(
                                                  horizontal: 4,
                                                  vertical: 2),
                                          leading: Icon(
                                            Icons.mail,
                                            color: Colors.black,
                                          ),
                                          title: Text(
                                            "iotmdcpbd@gmail.com",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontFamily: 'Roboto',
                                                fontWeight:
                                                    FontWeight.bold),
                                          ),
                                        ),
                                        ListTile(
                                          contentPadding:
                                              EdgeInsets.symmetric(
                                                  horizontal: 4,
                                                  vertical: 2),
                                          leading: Icon(
                                            Icons.phone,
                                            color: Colors.black,
                                          ),
                                          title: Text(
                                            "+8801314-099449",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontFamily: 'Roboto',
                                                fontWeight:
                                                    FontWeight.bold),
                                          ),
                                        ),
                                        ListTile(
                                          contentPadding:
                                              EdgeInsets.symmetric(
                                                  horizontal: 4,
                                                  vertical: 2),
                                          leading: Icon(
                                            Icons.web,
                                            color: Colors.black,
                                          ),
                                          title: Text(
                                            "www.iotmdcp.com",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontFamily: 'Roboto',
                                                fontWeight:
                                                    FontWeight.bold),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ));
          },
        ),
      ],
            ),
          ],
        ),
    );
  }

  // int columnCount = 2;
  // Widget _cats() {
  //   return Container(
  //     height: MediaQuery.of(context).size.height * .50,
  //     margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
  //     child: AnimationLimiter(
  //       child: GridView.count(
  //         crossAxisCount: columnCount,
  //         children: List.generate(
  //           6,
  //           (int index) {
  //             return AnimationConfiguration.staggeredGrid(
  //               position: index,
  //               duration: const Duration(milliseconds: 375),
  //               columnCount: columnCount,
  //               child: ScaleAnimation(
  //                 child: FadeInAnimation(
  //                     child: Card(
  //                   elevation: 10,
  //                   child: Text('data'),
  //                 )),
  //               ),
  //             );
  //           },
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
