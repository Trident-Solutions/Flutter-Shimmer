import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_shimmer/widgets/list_widget.dart';
import 'package:flutter_shimmer/widgets/shimmer_list.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeState();
  }
}

class HomeState extends State<Home>{
  var isDataFetched = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer timer = Timer(Duration(seconds: 3), () {
      setState(() {
        isDataFetched = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(child: isDataFetched == false ? ShimmerList() : ListWidget(10))
    );
  }
}