import 'package:flutter/material.dart';

class List extends StatelessWidget {
  var data= [{"Name":"Reuel","Age":20,"Mark":85,"Paid Status": true},
    {"Name":"Akber","Age":19,"Mark":86,"Paid Status": false},
    {"Name":"Daniel","Age":20,"Mark":83,"Paid Status": false},
    {"Name":"Jubel","Age":21,"Mark":88,"Paid Status": true},
    {"Name":"Arjun","Age":21,"Mark":81,"Paid Status": false},
    {"Name":"Mevin","Age":19,"Mark":90,"Paid Status": true},
    {"Name":"Sidharth","Age":20,"Mark":82,"Paid Status": true},
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: ListView.builder(itemCount: data.length,itemBuilder: (context,index){
            return Card(
              elevation: 30.0,
              child: ListTile(
                leading: Icon(Icons.perm_contact_calendar),
            trailing: data[index]["Paid Status"]
            ? FlatButton(
            child: Text("Paid"))
                : FlatButton(
            onPressed: () {
            print("Clicked");
            },
            child: Text("Pay Now")),
            title: Text("Name:"+data[index]["Name"]),
                subtitle: Text("Age:"+data[index]["Age"].toString()+"\n"+"Mark:"+data[index]["Mark"].toString()),
              ),
            );
          }),
        ),
      ),
    );
  }
}
