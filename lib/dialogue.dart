import 'package:flutter/material.dart';

import 'dashbord.dart';

class Dialogue extends StatefulWidget {
  @override
  _Dialogue createState() => _Dialogue();
}

class _Dialogue extends State<Dialogue> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Material(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * .7,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                CardDashboard(
                  icon: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  title: "Agents",
                  color: Colors.greenAccent,
                ),
                CardDashboard(
                  icon: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  title: "Agents",
                  color: Colors.greenAccent,
                ),
                CardDashboard(
                  icon: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  title: "Agents",
                  color: Colors.greenAccent,
                ),
                CardDashboard(
                  icon: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  title: "Agents",
                  color: Colors.greenAccent,
                ),
                CardDashboard(
                  icon: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  title: "Agents",
                  color: Colors.greenAccent,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
