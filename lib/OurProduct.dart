import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:transparent_image/transparent_image.dart';

class OurProduct extends StatefulWidget {
  @override
  _OurProductState createState() => _OurProductState();
}

class _OurProductState extends State<OurProduct> {
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
                            "Our Product: ",
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.start,
                          )),
                      SizedBox(
                        height: 5,
                      ),
                      _cats(),
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

  int columnCount = 2;
  Widget _cats() {
    return Container(
      height: MediaQuery.of(context).size.height * .80,
      margin: EdgeInsets.symmetric(horizontal: 05, vertical: 10),
      child: AnimationLimiter(
        child: GridView.count(
          crossAxisCount: columnCount,
          children: List.generate(
            100,
            (int index) {
              return AnimationConfiguration.staggeredGrid(
                position: index,
                duration: const Duration(milliseconds: 375),
                columnCount: columnCount,
                child: ScaleAnimation(
                  child: FadeInAnimation(
                      child: GestureDetector(
                                              child: Card(
                    elevation: 10,
                    child: Column(
                        children: <Widget>[
                          Container(
                            height: MediaQuery.of(context).size.height * .15,
                            width: MediaQuery.of(context).size.width * .40,
                            child: FadeInImage.memoryNetwork(
                              placeholder: kTransparentImage,
                              image:
                                  'http://www.toilet-valve.com/wp-content/uploads/2019/10/IMG_5638.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * .09,
                            width: MediaQuery.of(context).size.width * .40,
                            color: Colors.blueAccent,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("P.name:"),
                                Text("Model:"),
                              ],
                            ),
                          )
                        ],
                    ),
                  ),onTap: (){
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
                                            "lol",
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
                                              "Description :",
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
                                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen"+'$index',
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


                  },
                      ),),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
