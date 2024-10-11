// ignore_for_file: prefer_const_constructors, must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}):super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            physics: AlwaysScrollableScrollPhysics(),
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.all(25),
                  child: Text(
                    "My Account",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18)
                ))
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0,20,0,15),
                  child: CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage('assets/images/profilePicSample.JPG'),
                  )
                ),
              ),
              Align(alignment: Alignment.topCenter,
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(0,20,0,15),
                      child: Text(
                          "Hey Janvi!",
                          style: TextStyle(
                              color: Colors.grey.shade500,
                              fontWeight: FontWeight.bold,
                              fontSize: 18)
                      ))
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(15, 25, 15, 0),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(
                            Icons.person,
                          size: 28,
                          color: Colors.teal.shade300,
                        ),
                        title: Text("My Account"),
                        trailing: Icon(Icons.arrow_forward_ios),
                        onTap: () => {},
                      ),
                      Divider(),
                      ListTile(
                        leading: Icon(
                          Icons.credit_card,
                          size: 28,
                          color: Colors.teal.shade300,
                        ),
                        title: Text("My Banking Details"),
                        trailing: Icon(Icons.arrow_forward_ios),
                        onTap: () => {},
                      ),
                      Divider(),
                      ListTile(
                        leading: Icon(
                          Icons.question_answer,
                          size: 28,
                          color: Colors.teal.shade300,
                        ),
                        title: Text("FAQs"),
                        trailing: Icon(Icons.question_mark),
                        onTap: () => {},
                      ),
                      Divider(),
                    ],),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(0,25,0,15),
                      child: ElevatedButton(
                        child: Text(
                          "Sign out",
                          style: (TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )),
                        ),
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.fromLTRB(30, 15, 30, 15)),
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.teal.shade300),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            )
                          )
                        ),
                        onPressed: () => {
                        print('Sign out button pressed')
                      },
                      )
                  )
              )

            ],
          )
        ],
      ),
    );
  }
}