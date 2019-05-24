import 'package:flutter/material.dart';
import './ui/home.dart';

void main()
{
  runApp(
    new MaterialApp(
      home: Home(),
      title: 'whatsapp',
      theme: ThemeData(
        
        primaryColor: Color(0xff075E54),
        accentColor: Color(0xff25D366),
      ),
    )
    
  );
}