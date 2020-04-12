import 'package:flutter/material.dart';
import '../data/data.dart';
import '../screens/AboutPage.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: Container(
                color: Colors.blue,
                child: Center(
                  child: Text(
                    "MS Word Guide",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),
            ),
            ListTile(
              onTap: (){
                Navigator.pop(context);
              },
              leading: Icon(
                Icons.home,
                size: 25.0,
                color: Colors.blue,
              ),
              title: Text(
                "Home",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
            ListTile(
              onTap: (){
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return AboutPage();
                }),
              );
              },
              leading: Icon(
                Icons.info_outline,
                size: 25.0,
                color: Colors.blue,
              ),
              title: Text(
                "About",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("MS Word Guide"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.info_outline),
            iconSize: 27.0,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return AboutPage();
                }),
              );
            },
          )
        ],
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Card(
              elevation: 2.0,
              child: ListTile(
                leading: CircleAvatar(
                  radius: 22.0,
                  backgroundColor: Colors.blue,
                  child: Text(
                    "${index + 1}",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                title: Text(data[index]["key"]),
                subtitle: Text(data[index]["use"]),
              ),
            ),
          );
        },
      ),
    );
  }
}