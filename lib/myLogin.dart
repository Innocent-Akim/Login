import 'package:flutter/material.dart';

import 'dashbord.dart';

class Login extends StatefulWidget {
  @override
  _Login createState() => _Login();
}

class _Login extends State<Login> {
  var _username = TextEditingController();
  var _password = TextEditingController();
  void initState() {
    super.initState();
    print("PAUL");
  }

  @override
  Widget build(BuildContext context) => Container(
        child: SafeArea(
          child: Scaffold(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.grey[300], width: 1)),
                  margin: EdgeInsets.only(left: 16, right: 16),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: TextFormField(
                      controller: _username,
                      decoration: InputDecoration(
                          hintText: "Nom d'utilisateur",
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.person)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.grey[300], width: 1)),
                  margin: EdgeInsets.only(left: 16, right: 16),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: TextFormField(
                      controller: _password,
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Mot de passe",
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.lock)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Material(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue,
                  child: Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width * 0.7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue,
                    ),
                    child: FlatButton(
                      onPressed: () {
                        setState(() {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return Dashboard();
                          }));
                        });
                      },
                      child: Center(
                        child: Text(
                          "SIGN IN",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      );
}
