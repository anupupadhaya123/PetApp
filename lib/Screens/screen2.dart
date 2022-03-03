import 'package:flutter/material.dart';
import 'package:pet_app/configuration/configuration.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.blueGrey,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Align(
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back),
                    color: primaryColor,
                  ),
                  IconButton(
                    onPressed: () {
                      //  Navigator.pop(context);
                    },
                    icon: Icon(Icons.share),
                    color: primaryColor,
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Align(
              alignment: Alignment.topCenter,
              child: Hero(
                tag: 1,
                child: Image.asset("images/pet-cat2.png")
                ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 150,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: ListShadow,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: primaryColor,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      // margin: EdgeInsets.only(left: 20),
                      height: 50,
                      width: 200,
                      child: Center(
                        child: Text(
                          "Adoption",
                          style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20, 
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: primaryColor,
                      ),
                    ),
                  )
                ],
              ),
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                color: Colors.grey[200],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
