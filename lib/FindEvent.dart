import 'package:day9_party/Animation/FadeAnimation.dart';
import 'package:flutter/material.dart';

class FindEvent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(246, 248, 253, 1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        brightness: Brightness.light,
        leading: Icon(Icons.menu, color: Colors.black,),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage('assets/images/four.jpg'),
                  fit: BoxFit.cover
                )
              ),
              child: Transform.translate(
                offset: Offset(15, -15),
                child: Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Colors.white),
                    shape: BoxShape.circle,
                    color: Colors.yellow[800]
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              FadeAnimation(1, Container(
                padding: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search, color: Colors.grey,),
                    hintText: "Search Event",
                    hintStyle: TextStyle(color: Colors.grey)
                  ),
                ),
              )),
              SizedBox(height: 30,),
              FadeAnimation(1.2, makeItem(image: 'assets/images/one.jpg', date: 17)),
              SizedBox(height: 20,),
              FadeAnimation(1.3, makeItem(image: 'assets/images/two.jpg', date: 18)),
              SizedBox(height: 20,),
              FadeAnimation(1.4, makeItem(image: 'assets/images/three.jpg', date: 19)),
              SizedBox(height: 20,),
              FadeAnimation(1.5, makeItem(image: 'assets/images/four.jpg', date: 20)),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }

  Widget makeItem({image, date}) {
    return Row(
      children: <Widget>[
        Container(
          width: 50,
          height: 200,
          margin: EdgeInsets.only(right: 20),
          child: Column(
            children: <Widget>[
              Text(date.toString(), style: TextStyle(color: Colors.blue, fontSize: 25, fontWeight: FontWeight.bold),),
              Text("SEP", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
            ],
          ),
        ),
        Expanded(
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover
              )
            ),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(.4),
                    Colors.black.withOpacity(.1),
                  ]
                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text("Bumbershoot 2019", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Row(
                    children: <Widget>[
                      Icon(Icons.access_time, color: Colors.white,),
                      SizedBox(width: 10,),
                      Text("19:00 PM", style: TextStyle(color: Colors.white),)
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}