import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  double xoffset = 0;
  double yoffset = 0;
  double scalefactor = 1; 
  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xoffset, yoffset, 0).scaled(scalefactor),
        duration: Duration(milliseconds: 250),
        color: Colors.white,
        child: Column(children: [
          SizedBox(
            height:40,
          ),
          
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                isDrawerOpen? IconButton(
                  onPressed: (){
                    setState(() {
                      xoffset =0;
                      yoffset = 0;
                      scalefactor = 1;
                      isDrawerOpen = false;
                    });
                  }, 
                  icon: Icon(Icons.arrow_back),
                  
                  )
                 :IconButton(onPressed: () {
                  setState(() {
                    xoffset = 230;
                    yoffset = 150;
                    scalefactor=0.6;
                    isDrawerOpen = true;
                  });
                }, icon: Icon(Icons.menu)),
                Column(
                  children: [
                    Text("Location"),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.location_on),
                          color: Colors.green,
                        ),
                        Text("Nepal"),
                      ],
                    ),
                  ],
                ),
                CircleAvatar()

               
              ],
            ),
          ),

          Container(

            child: TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.all(Radius.circular(30)), 
                ),
                prefixIcon: Icon(Icons.search, color: Colors.green,),
                hintText: "Search Pet Here",
                filled: true,
                fillColor: Colors.grey[200],

              ),
            ),
            padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
          ),
        ] 
        )
        );
  }
}
