// Copyright 2021 Lorena Munoz. //
// All rights reserved. Lorena Projects. //

import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 64, right: 50, top: 64, bottom: 32),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
//          Text(
//            "Artificial Intelligence",
//            style: TextStyle(color: Colors.black, fontSize: 30.0),
//          ),
//          TabBar(
//            tabs: <Tab>[
//              Tab(
//                // set icon to the tab
//                icon: Icon(Icons.favorite),
//              ),
//              Tab(
//                icon: Icon(Icons.adb),
//              ),
//              Tab(
//                icon: Icon(Icons.airport_shuttle),
//              ),
//            ],
//          ),
//          Icon(
//            Icons.reorder,
//            color: Colors.white,
//            size: 30.0,
//          ),
          SizedBox(
            height: 40.0,
          )
        ],
      ),
    );
  }
}
