import 'package:flutter/material.dart';

appbar(String title) {
  return AppBar(
    title:Text(title),
    centerTitle: true,
  );
}

Widget bodyScreen(String name) {
  return Column(
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Center(
          child: Row(
            children: [CircleAvatar(child: Text(
              name,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ) ,),

            ],
          )),
    ],
  );
}
