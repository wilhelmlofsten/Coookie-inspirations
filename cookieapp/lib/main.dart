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
                color: cookieLightBrown, //custom added color
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
