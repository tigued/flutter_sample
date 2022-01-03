import 'package:flutter/material.dart';

void main() {
  runApp(
    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          /// Text 1
          Text(
            'Hello, world!',
            textDirection: TextDirection.ltr,
            style: TextStyle(
              color: Colors.blue,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          // Text 2
          Text(
            "hello all",
            textDirection: TextDirection.ltr,
          ),
        ],
      ),
    ),
  );
}