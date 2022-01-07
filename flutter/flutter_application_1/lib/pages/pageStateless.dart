// ignore_for_file: file_names
import 'package:flutter/material.dart';

class PageStateles extends StatelessWidget {
  const PageStateles({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Segunda page"),),
      body: const Center(child: Text("Informacion"),),
      
    );
  }
}