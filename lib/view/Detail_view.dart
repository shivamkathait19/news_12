import 'package:flutter/material.dart';

class DetailViewScreen extends StatelessWidget {
  String newUri;
  DetailViewScreen({super.key,required this.newUri});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center( child:Text(newUri),),
    );
    
  }
}

