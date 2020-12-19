import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Container(
          color: Color(0XFFCEE3D1),
          child: Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * .35,
                width: MediaQuery.of(context).size.width,
               // color: Colors.pinkAccent,
                child: _profile(),
              ),
              Divider(
                height: 1,
                thickness: 3,
              ),
              Container(
                height: MediaQuery.of(context).size.height * .60,
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                
                  child: _menuItem(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _profile() {
    return Center(
      child: Container(
        height: 350,
        width: 150,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            // color: Colors.tealAccent,

            image: DecorationImage(image: AssetImage("assets/logo.png"),fit: BoxFit.contain)
          ),
          // child: Image.network(
          //   "https://avatars2.githubusercontent.com/u/12790681?s=88&v=4",
          //   fit: BoxFit.cover,
          // ),
        ),
      ),
    );
  }

  Widget _menuItem() {
    return Column(
      children: <Widget>[
        ListTile(
          //contentPadding: EdgeInsets.symmetric(horizontal: 5),
           leading: Icon(Icons.home,color: Colors.black,),
          title: Text(
            "Home",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
             fontFamily: 'Roboto',
            ),
            textAlign: TextAlign.left,
          ),
          onTap: () {},
        ),
        ListTile(
          //contentPadding: EdgeInsets.symmetric(horizontal: 5),
           leading: Icon(Icons.contacts,color: Colors.black,),
          title: Text(
            "Contact-us",
            style: TextStyle(
              fontSize: 16,
               fontWeight: FontWeight.w700,
             fontFamily: 'Roboto',
            ),
            textAlign: TextAlign.left,
          ),
          onTap: () {},
        ),
        ListTile(
          //contentPadding: EdgeInsets.symmetric(horizontal: 5),
          leading: Icon(Icons.info_outline,color: Colors.black,),
          title: Text(
            "About-us",
            style: TextStyle(
              fontSize: 16,
               fontWeight: FontWeight.w700,
             fontFamily: 'Roboto',
            ),
            textAlign: TextAlign.left,
          ),
          onTap: () {},
        ),
        
        
      ],
    );
  }
  
}
