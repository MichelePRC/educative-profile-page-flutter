// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(ProfileContactPage());
}

class ProfileContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: Icon(Icons.arrow_back, color: Colors.black),
            actions: <Widget>[
              IconButton(
                onPressed: () {
                  print('Contact is starred');
                },
                icon: Icon(Icons.star_border, color: Colors.black),
              )
            ],
          ),
          body: ListView(
            children: [
              Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 250,
                    child: Image.asset('assets/images/sfondo_profilo.jpg',
                        fit: BoxFit.cover),
                  ),
                  SizedBox(
                    height: 60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Procopio Michele',
                            style: TextStyle(fontSize: 30),
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8, bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildActionButton("Call", Icons.message),
                        _buildActionButton("Text", Icons.message),
                        _buildActionButton("Email", Icons.email),
                        _buildActionButton("Directions", Icons.directions),
                        _buildActionButton("Pay", Icons.attach_money),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                ],
              )
            ],
          )),
    );
  }
}

Widget _buildActionButton(String text, IconData icon) {
  return Column(
    children: [
      IconButton(
        onPressed: () {},
        icon: Icon(icon, color: Colors.indigo.shade800),
      ),
      Text(text)
    ],
  );
}
