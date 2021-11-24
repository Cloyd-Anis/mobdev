import 'package:flutter/material.dart';


class Profile extends StatelessWidget {
  static String routeName = "/profile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          title: Text('Profile',
          style: TextStyle(fontSize: 20.0),),
          centerTitle: true,
          backgroundColor: Colors.pink,
        ),
         body: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.redAccent, Colors.pinkAccent]
              )
            ),
            child: Container(
              width: double.infinity,
              height: 190.0,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                        "https://www.pngfind.com/pngs/m/610-6104451_image-placeholder-png-user-profile-placeholder-image-png.png",
                      ),
                      radius: 50.0,
                    ),
                    Text(
                      "John Doe",
                      style: TextStyle(
                        fontSize: 22.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0,horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                      "Bio:",
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontStyle: FontStyle.normal,
                      fontSize: 28.0
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text('I want to be the pirate king!',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                      letterSpacing: 2.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
       
        ],
      ),
    );
  }
  
}