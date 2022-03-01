import 'package:flutter/material.dart';
import 'package:pet_app/Screens/screen2.dart';
import 'package:pet_app/configuration/configuration.dart';

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
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height:40,
            ),
            
            //Making Custom AppBar
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
                            color: primaryColor,
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
        
          // Making search bar 
            Container(
        
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: primaryColor),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: primaryColor),
                    borderRadius: BorderRadius.all(Radius.circular(30)), 
                  ),
                  prefixIcon: Icon(Icons.search, color:primaryColor,),
                  hintText: "Search Pet Here",
                  filled: true,
                  fillColor: Colors.grey[200],
        
                ),
              ),
              padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
            ),
        
            Container(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return Container(
                  child: Column(children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(left: 20, top: 5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: ListShadow,
                        borderRadius: BorderRadius.circular(10),
                      
                      ),
                      child: Image.asset(categories[index]['iconPath'],height: 50, width: 50,),
                    ),
                    Text(categories[index]['name']),
                  ],
                  ),
                );
                }
              ),
            ),

        // Making body of homepage using expanded, stack etc..
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Screen2()));
              },
              child: Container(
                height: 240,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(children: [
                  Expanded(
                    child: Stack(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              boxShadow: ListShadow,
                              borderRadius: BorderRadius.circular(20)
                            ),
                            margin: EdgeInsets.only(top: 40),
                            
                        ),
                        Align(
                          child: Image.asset("images/pet-cat2.png"),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin:EdgeInsets.only(top: 60, bottom: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: ListShadow,
                        borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20))
                      ),
                    ),
                    ),
                ],)
              ),
            ),
        
             GestureDetector(
               onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Screen2()));
              },
               child: Container(
                height: 240,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(children: [
                  Expanded(
                    child: Stack(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              boxShadow: ListShadow,
                              borderRadius: BorderRadius.circular(20)
                            ),
                            margin: EdgeInsets.only(top: 40),
                            
                        ),
                        Align(
                          child: Image.asset("images/pet-cat1.png"),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin:EdgeInsets.only(top: 60, bottom: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: ListShadow,
                        borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20))
                      ),
                    ),
                    ),
                ],)
                         ),
             ),
            
          ] 
          ),
        )
        );
  }
}
