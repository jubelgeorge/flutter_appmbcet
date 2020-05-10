import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterappmbcet/views/list.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Hello(),
      ),
    );
  }
}

class Hello extends StatelessWidget {
  TextEditingController usercontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.deepPurpleAccent, Colors.purpleAccent])),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 200.0,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30.0),
                      topLeft: Radius.circular(30.0))),
              height: MediaQuery.of(context).size.height - 200,
              child: Container(
                margin: EdgeInsets.all(30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    TextField(
                      controller: usercontroller,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.contacts),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          hintText: "Username"),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextField(
                      controller: passcontroller,
                      obscureText: true,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock_outline),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          hintText: "Password"),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        var getuser= usercontroller.text;
                        var getpass= passcontroller.text;

                        if(getuser=="admin"&&getpass=="1234")
                          {
                            Navigator.push(context,MaterialPageRoute(
                              builder: (context)=>List()
                            ));
                          }
                        else{
                          print("Invalid Credentials");
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.red),
                        height: 50.0,
                        width: 500.0,
                        child: Center(
                            child: Text(
                          "Login",
                          style: TextStyle(fontSize: 23.0, color: Colors.black),
                        )),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
