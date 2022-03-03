import 'package:flutter/material.dart';
import 'package:pet_app/configuration/configuration.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 40,left: 10),
      color: primaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Name Full",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Active",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: 
              drawerItem.map((element) => Row(
                children: [
                  Icon(element['Icon'], color: Colors.white,size: 30,),
                  SizedBox(
                    width: 15,
                  ),
                  Text(element['title'],style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),),
                ],
              )).toList()
            
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.settings),
                color: Colors.white,
              ),
              Text(
                    "Settings",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 2,
                    height: 20,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                   Text(
                    "Log out",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
            ],
          ),
        ],
      ),
    );
  }
}
