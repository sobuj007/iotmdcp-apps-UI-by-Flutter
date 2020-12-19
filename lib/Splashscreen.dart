import 'dart:io';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:giffy_dialog/giffy_dialog.dart';
import 'package:iotmdcp/Home.dart';

class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  startSplashScreenTimer() async {
    Future.delayed(Duration(seconds: 5)).then((value) {
     Navigator.pushReplacement(
          context, CupertinoPageRoute(builder: (_) => Home()));
 
    });
  }

  @override
  void initState() {
    super.initState();

    DataConnectionChecker().onStatusChange.listen((status) {
      switch (status) {
        case DataConnectionStatus.connected:
          print('Data connection is available.');
          startSplashScreenTimer();
          break;
        case DataConnectionStatus.disconnected:
          print('You are disconnected from the internet.');
          showDialog(
            context: context,
            builder: (_) => AssetGiffyDialog(
                image: Image.asset(
                  "assets/nodata.png",
                ),
                title: Text("Internet connection Error"),
                description: Text("Plesas Turn on your internet conntection"),
                entryAnimation: EntryAnimation.RIGHT,
                onOkButtonPressed: ()=>exit(0),
                
              onCancelButtonPressed: (){
               startSplashScreenTimer();
              },
               ),
               
                
          );
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Color(0XFFCEE3D1),
      child: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * .45,
          width: MediaQuery.of(context).size.width * .55,
          decoration: BoxDecoration(
              // color: Colors.amber,
              image: DecorationImage(
            image: AssetImage("assets/logo.png"),
            fit: BoxFit.contain,
          )),
          // child: Text("IOTMDCP Industy Limited" ,style: TextStyle(fontSize: 25),)),
        ),
      ),
    ));
  }
}
