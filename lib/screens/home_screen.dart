import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../models/ItemModel.dart';
import './customs/item_listtitle.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomeState();
  }
}

class HomeState extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<HomeState> {
  //List<String> listItem = new List();

  Function onTapHome() {}
  Function onTapProfile() {}
  Function onTapVideo() {}

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home'),
          centerTitle: true,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
        ),
        body: SafeArea(
          child: Container(),
        ),
        drawer: Drawer(
          child: SafeArea(
            child: ListView(
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        Material(
                            borderRadius: BorderRadius.all(Radius.circular(55)),
                            child: Container(
                              margin: EdgeInsets.all(10),
                              child: Image.asset(
                                'images/new-logo.png',
                                height: 90,
                                width: 90,
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            'Nguyễn Văn Hiếu',
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                ItemListTitle(
                    title: 'Home', iconData: Icons.home, onTap: () {}),
                ItemListTitle(
                    title: 'Video', iconData: Icons.call, onTap: () {}),
                ItemListTitle(
                    title: 'Profile', iconData: Icons.person, onTap: () {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}
