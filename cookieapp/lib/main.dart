import 'package:flutter/material.dart';
import 'models/global.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override// Ta bort?
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cookie-inspirator',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(title: 'Cookie-inspirator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      color: Colors.white,
      home: DefaultTabController(
        length: 3,
        child: new Scaffold(
          body: TabBarView(
            children: [
              new Container(
                alignment: Alignment.center,
                height: 150,
                color: cookieLightBrown, //custom added color
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    new Image.network(
                      ("https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F9%2F2017%2F11%2Fthe-joy-of-cookies-cookie-monster-blog0817.jpg&q=60"),
                      //fit: BoxFit.cover,
                      //scale: 0.1,
                      width: 250,
                      height: 250
                      ),
                      new Text("King of cookies",
              style: TextStyle(
                fontSize: 20
                ),
              ),
                  ],
                   
                ),
               
        ),
              new Container(
                color: cookieLMediumBrown,
                ),
              new Container(
                color: cookieBrown,
              ),
            ],
          ),
          bottomNavigationBar: new TabBar(
            tabs: [
              Tab(
                icon: new Icon(
                  Icons.home, 
                  size: 35,
                  ),
              ),
              Tab(
                icon: new Icon(
                  Icons.list_alt_sharp,
                  size: 35,
                  ),
              ),
              Tab(
                icon: new Icon(
                  Icons.image,
                  size: 35,
                  ),
              ),
            ],
     
            indicatorSize: TabBarIndicatorSize.label,
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.black,
            indicatorPadding: const EdgeInsets.all(7.0),
            indicatorColor: Colors.red,
          ),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
