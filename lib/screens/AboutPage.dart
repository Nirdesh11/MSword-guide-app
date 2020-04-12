import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Developer Details"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Card(
              elevation: 2.0,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/Developer.jpg"),
                      radius: 90.0,
                    ),
                    SizedBox(
                      height: 5.0,
                    ), //This box is for giving space between Image and Name.
                    Text(
                      "Nirdesh Pokharel.",
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 0.0,
                    ), //This box is for giving space between Name and BIO.
                    Text(
                      "Teacher, App + web developer",
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ), //This box is for giving space between Name and BIO.
                    Text(
                      "Hello I am Nirdesh Pokharel. I am web as well as App developer. I currently Work at Shree Amar Saecondary School ",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 10.0,
                top: 10.0,
              ),
              child: Text(
                "Social Links",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            Card(
              elevation: 2.0,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(FontAwesomeIcons.facebook),
                      color: Colors.blue,
                      onPressed: () {
                        launch("https://facebook.com/nirdeshpokhrel11");
                      },
                    ),
                    IconButton(
                      icon: Icon(FontAwesomeIcons.twitter),
                      color: Colors.blue[300],
                      onPressed: () {
                        launch("https://twitter.com/pokhrel_nirdesh");
                      },
                    ),
                    IconButton(
                      icon: Icon(FontAwesomeIcons.instagram),
                      color: Colors.red,
                      onPressed: () {
                        launch("https://instagram.com/pokhrel_nirdesh");
                      },
                    ),
                    IconButton(
                      icon: Icon(FontAwesomeIcons.code),
                      color: Colors.red,
                      onPressed: () {
                        launch("https://kanthipur.com");
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.call),
                      color: Colors.green,
                      onPressed: () {
                        launch("tel:9824930501");
                      },
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 10.0,
                top: 10.0,
              ),
              child: Text(
                "Skills",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            Card(
              elevation: 2.0,
              child: ListTile(
                leading: CircleAvatar(
                  radius: 27.0,
                  backgroundImage: AssetImage("assets/web.png"),
                ),
                title: Text("Web Development"),
                subtitle: Text("HTML, CSS, JavaScript, SCSS"),
              ),
            ),
            Card(
              elevation: 2.0,
              child: ListTile(
                leading: CircleAvatar(
                  radius: 27.0,
                  backgroundImage: AssetImage("assets/app.png"),
                ),
                title: Text("App Development"),
                subtitle: Text("Dart and Flutter"),
              ),
            ),
            Card(
              elevation: 2.0,
              child: ListTile(
                leading: CircleAvatar(
                  radius: 27.0,
                  backgroundImage: AssetImage("assets/web.png"),
                ),
                title: Text("Django Web Development"),
                subtitle: Text("Python Django Web Framework"),
              ),
            ),
            Card(
              elevation: 2.0,
              child: ListTile(
                leading: CircleAvatar(
                  radius: 27.0,
                  backgroundImage: AssetImage("assets/web.png"),
                ),
                title: Text("Office Package"),
                subtitle: Text("Word, Excel, Powerpoint, Access"),
              ),
            ),
            Card(
              elevation: 2.0,
              child: ListTile(
                leading: CircleAvatar(
                  radius: 27.0,
                  backgroundImage: AssetImage("assets/web.png"),
                ),
                title: Text("Graphic Designing"),
                subtitle: Text("Photoshop, Illustrator, Indesign"),
              ),
            ),
            Card(
              elevation: 2.0,
              child: ListTile(
                leading: CircleAvatar(
                  radius: 27.0,
                  backgroundImage: AssetImage("assets/web.png"),
                ),
                title: Text("Programming Languages"),
                subtitle: Text("C, C++, Java, Python, VB.NET"),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}
