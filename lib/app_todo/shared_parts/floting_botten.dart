import 'package:bmi/app_todo/database/controler_datadase.dart';
import 'package:flutter/material.dart';

Widget flotingBotten() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(20),
        color: Colors.black.withOpacity(0.2),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: task,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                label: Text(
                  "Enter name task",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
                suffixIcon: Icon(Icons.task,size: 32,),
              ),
            ),
            const SizedBox(height: 5,),
            TextFormField(
              controller: status,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                label: Text(
                  "Enter status",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
                suffixIcon: Icon(Icons.newspaper_outlined,size: 32,),
              ),
            ),
            const SizedBox(height: 5,),
            TextFormField(
              controller: date,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                  label: Text(
                    "Enter date",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                  suffixIcon: Icon(Icons.calendar_month_outlined,size: 32,)),
            ),
            const SizedBox(height: 5,),
            TextFormField(
              controller: time,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                label: Text(
                  "Enter time",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
                suffixIcon: Icon(Icons.watch_later_outlined,size: 32,),
              ),
            ),
            const SizedBox(height: 5,),
          ],
        ),
      ),
    ),
  );
}
