import 'package:exo_dev/dialogue.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _Dashboard createState() => _Dashboard();
}

class _Dashboard extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CardDashboard(
                      icon: Icon(
                        Icons.supervised_user_circle,
                        color: Colors.white,
                      ),
                      title: "Utilisateurs",
                      color: Colors.deepOrange,
                    ),
                    CardDashboard(
                      icon: Icon(
                        Icons.cloud_upload_outlined,
                        color: Colors.white,
                      ),
                      title: "Clients",
                      color: Colors.blue,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          showDialog(
                            context: context,
                            barrierDismissible: true,
                            child: Center(
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Dialogue(),
                                  ],
                                ),
                              ),
                            ),
                          );
                        });
                      },
                      child: CardDashboard(
                        icon: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        title: "Agents",
                        color: Colors.greenAccent,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardDashboard extends StatelessWidget {
  final title;
  final icon;
  final color;
  const CardDashboard({Key key, this.title, this.icon, this.color})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        height: 100, width: 100,
        // color: Colors.blue,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        child: Center(
          child: Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white24,
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(child: icon),
                  Text(
                    "${title}",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
