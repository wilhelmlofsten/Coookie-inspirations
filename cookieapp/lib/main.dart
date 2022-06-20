import 'package:flutter/material.dart';
import 'models/global.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override // Ta bort?
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
                        ("https://c.tenor.com/3FFKnlwPMf8AAAAC/answer-me-phone.gif"),
                        //fit: BoxFit.cover,
                        //scale: 0.1,
                        width: 250,
                        height: 250),
                    new Text(
                      "King of cookies",
                      style: intrayPicTitleFont,
                    ),
                  ],
                ),
              ),
              new Container(
                color: cookieLMediumBrown,
              ),
              new Container(
                color: cookieBrown,
                //alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    new CarouselSlider(
                      options: CarouselOptions(
                        autoPlay: true,
                        enlargeCenterPage: true,
                        enableInfiniteScroll: true,
                      ),
                      items: imgList
                          .map((e) => ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Stack(
                                  fit: StackFit.expand,
                                  children: <Widget>[
                                    Image.network(
                                      e,
                                      width: 1050,
                                      height: 350,
                                      fit: BoxFit.cover,
                                    )
                                  ],
                                ),
                              ))
                          .toList(),
                    ),
                    new Text(
                      "Pictures of fine Cookies",
                      style: intrayPicTitleFont,
                    ),
                  ],
                ),
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
          backgroundColor: lightGrey,
        ),
      ),
    );
  }
}

final List<String> imgList = [
  "https://static.fanpage.it/wp-content/uploads/sites/22/2022/02/Chocolate-chip-cookies-14.jpg",
  "https://www.seriouseats.com/thmb/tADe-qNstY1RjHrK9t6dj071B_o=/1500x1125/filters:fill(auto,1)/__opt__aboutcom__coeus__resources__content_migration__serious_eats__seriouseats.com__recipes__images__2017__08__20170727-bravetart-oreos-vicky-wasik-27-2795d8bfdf44495cb9c5e151fc5ef466.jpg",
  "https://upload.wikimedia.org/wikipedia/commons/e/e5/2019-11-29_14_52_43_The_interior_of_a_tin_of_McKenzie_%26_Lloyds_Danish_Style_Butter_Cookies_in_the_Dulles_section_of_Sterling%2C_Loudoun_County%2C_Virginia.jpg",
  "https://www.sprinklesandsprouts.com/wp-content/uploads/2016/10/Subway-Style-Double-Chocolate-Chip-CookiesANECDOTE.jpg",
  "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/Ballerina.png/250px-Ballerina.png",
  "https://celebratingsweets.com/wp-content/uploads/2018/12/MM-Cookies-1-500x500.jpg",
  "https://fourquarters.bar/wp-content/uploads/2020/12/0_vwtmE6kZFO0rIq9o_.jpg"

];
