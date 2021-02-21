import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'login.dart';
import 'unimplementedpage.dart';
import 'dart:io';

void main() {
  runApp(new MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'StudeoMea',
      theme: new ThemeData(
        primarySwatch: Colors.deepOrange,
        primaryColor: const Color(0xFFff5722),
        accentColor: const Color(0xFFff5722),
        canvasColor: const Color(0xFFFBE9E7),
      ),
      home: new MyHomePage(),
      initialRoute: '/',
      routes: {
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/landing': (context) => LandingPage(),
        '/login': (context) => LoginPage(),
        '/404': (context) => UnimplementedPage(),
        '/failedAuth': (context) => AuthFailedPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('StudeoMea'),
      ),
      body:
      new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new Padding(
              padding: const EdgeInsets.fromLTRB(24.0, 50.0, 24.0, 50.0),
            ),

            new Padding(
              padding: const EdgeInsets.fromLTRB(24.0, 50.0, 24.0, 50.0),
            ),

            new Padding(
              padding: const EdgeInsets.fromLTRB(24.0, 50.0, 24.0, 50.0),
            ),

            new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new RaisedButton(key:null, onPressed:buttonPressed,
                      color: const Color(0xFFe0e0e0),
                      child:
                      new Text(
                        "Get Started",
                        style: new TextStyle(fontSize:29.0,
                            color: const Color(0xFF000000),
                            fontWeight: FontWeight.w300,
                            fontFamily: "Merriweather"),
                      )
                  )
                ]

            )
          ]

      ),

    );
  }
  void buttonPressed()
  {
    Navigator.pushReplacementNamed(context,"/login");
  }

}
class LandingPage extends StatefulWidget
{
 LandingPage({Key key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}
class _LandingPageState extends State<LandingPage>
{
  int _pageindex = 0;
  @override

  String os = Platform.operatingSystem;
  String pfp = "assets/images/cat.png";
  String stuff = "assets/images/longcat.png";
  String topics = "assets/images/goose.png";

  void menuNav(int id)
  {
    if (id != _pageindex)
    {
      setState(() {
      _pageindex = id;
      });
      Navigator.pushNamed(context,'/404');
    }
  }

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('StudeoMea'),
      ),
      body:
      new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            ),
            new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[

                  new Container(
                    child:
                    new Row(

                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          new Padding(
                            padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                          ),
                          CircleAvatar(
                            radius: 23,
                            backgroundColor: Colors.teal,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(pfp),
                              radius: 28,
                            ),
                          ),
                          new Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          ),
                          new Text(
                            "Welcome, $os",
                            style: new TextStyle(fontSize:18.0,
                                color: const Color(0xFF000000),
                                fontWeight: FontWeight.w400,
                                fontFamily: "Merriweather"),
                          )
                        ]

                    ),

                    color: const Color(0xFFffffff),
                    padding: const EdgeInsets.all(0.0),
                    alignment: Alignment.center,
                    width: 275.0,
                    height: 50.0,
                  )
                ]

            ),

            new Padding(
              padding: const EdgeInsets.fromLTRB(24.0, 12.0, 24.0, 0.0),
            ),

            new Text(
              "Friends",
              style: new TextStyle(fontSize:29.0,
                  color: const Color(0xFF000000),
                  fontWeight: FontWeight.w500,
                  fontFamily: "Merriweather"),
            ),

            new SizedBox(
              height: 100,
              child:
              new ListView.separated(
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                        width: 30
                    );
                  },
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return new Image.asset(pfp);
                  }
              ),
            ),


            new Padding(
              padding: const EdgeInsets.fromLTRB(24.0, 12.0, 24.0, 0.0),
            ),

            new Text(
              "Happening Now",
              style: new TextStyle(fontSize:29.0,
                  color: const Color(0xFF000000),
                  fontWeight: FontWeight.w500,
                  fontFamily: "Merriweather"),
            ),

            new SizedBox(
              height: 100,
              child:
              new ListView.separated(
                  separatorBuilder: (BuildContext context, int index) => Divider(indent:50),
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return new Image.asset(stuff);
                  }
              ),
            ),

            new Padding(
              padding: const EdgeInsets.fromLTRB(24.0, 12.0, 24.0, 0.0),
            ),

            new Text(
              "Recent Topics",
              style: new TextStyle(fontSize:29.0,
                  color: const Color(0xFF000000),
                  fontWeight: FontWeight.w500,
                  fontFamily: "Merriweather"),
            ),

            new SizedBox(
              height: 100,
              child:
              new ListView.separated(
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                        width: 60
                    );
                  },
                  itemCount: 2,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return new Image.asset(topics);
                  }
              ),
            ),
          ]

      ),

      bottomNavigationBar: new BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
          items: [
            new BottomNavigationBarItem(
              icon: const Icon(Icons.home),
              //label: "Home",
              //title: new Text('Home'),
              label: 'Home',
            ),

            new BottomNavigationBarItem(
              icon: const Icon(Icons.import_contacts),
              //title: new Text('Articles'),
              label: 'Studyrooms',
            ),

            new BottomNavigationBarItem(
              backgroundColor: Colors.red,
              icon: const Icon(Icons.add_circle_outline),
              //title: new Text(''),
              label: '',
            ),

            new BottomNavigationBarItem(
              icon: const Icon(Icons.search),
              //title: new Text('Search'),
              label: 'Search',
            ),

            new BottomNavigationBarItem(
              icon: const Icon(Icons.menu),
              //title: new Text('Menu'),
              label: 'Menu',
            )
          ],
        onTap: menuNav,

      ),
    );
  }
}