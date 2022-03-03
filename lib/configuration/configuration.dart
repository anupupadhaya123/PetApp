import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Color primaryColor =Color(0xff416d6d);

List<BoxShadow> ListShadow = [
  BoxShadow(
    color: Colors.blueGrey, blurRadius: 30, offset: Offset(0,10)
    )
];

List<Map> drawerItem =[
  {'Icon' :FontAwesomeIcons.paw, 'title' : 'Adoption'},
  {'Icon' :Icons.mail, 'title' : 'Donation'},
  {'Icon' :FontAwesomeIcons.plus, 'title' : 'Add Pet'},
  {'Icon' :Icons.favorite, 'title' : 'Faviorities'},
  {'Icon' :Icons.mail, 'title' : 'Donation'},
  {'Icon' :FontAwesomeIcons.userAlt, 'title' : 'Profile'},
];

List<Map> categories = [
  {'name' :'Cats', 'iconPath' : 'images/cat.png'},
  {'name' :'Dogs', 'iconPath' : 'images/dog.png'},
  {'name' :'Horse', 'iconPath' : 'images/horse.png'},
  {'name' :'Parrot', 'iconPath' : 'images/parrot.png'},
  {'name' :'Rabbit', 'iconPath' : 'images/rabbit.png'},
  {'name' :'Cat2', 'iconPath' : 'images/cat.png'},

];