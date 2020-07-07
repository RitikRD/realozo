import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: TextFormField(
          showCursor: true,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(),
            labelText: "Enter a Heritage Places,Cities or Locality",
            hintMaxLines: 2,
          ),
          keyboardType: TextInputType.text,
        ),
        padding: EdgeInsets.all(10.0));
  }
}
