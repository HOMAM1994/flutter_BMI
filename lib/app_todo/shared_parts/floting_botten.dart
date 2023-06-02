import 'package:bmi/app_todo/database/controler_datadase.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
var form=GlobalKey<FormState>();
Widget flotingBotten(BuildContext context) {
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
        child: Form(
          key: form,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(

                cursorColor: Colors.redAccent,
                controller: task,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  label: Text(
                    "Enter name task",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,),
                  ),
                  suffixIcon: Icon(Icons.task,size: 32,),

                ),
                validator: (value) {
                  if(value!.isEmpty){
                    return "Pleas Enter this files";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 5,),
              TextFormField(
                onTap: (){
                  showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime.now(),
                    lastDate: DateTime.parse('2023-06-25'),).then((value){
                      date.text=DateFormat.yMMMd().format(value!);});},

                controller: date,
                keyboardType: TextInputType.datetime,
                decoration: const InputDecoration(
                    label: Text(
                      "Enter date",
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                    ),
                    suffixIcon: Icon(Icons.calendar_month_outlined,size: 32,),),
                validator: (value) {
                  if(value!.isEmpty){
                    return "Pleas Enter this files";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 5,),
              TextFormField(
                onTap: (){showTimePicker(context: context,
                    initialTime: TimeOfDay.now()).then((value) {
                  time.text=value!.format(context);
                });},
                controller: time,
                keyboardType: TextInputType.datetime,
                decoration: const InputDecoration(
                  label: Text(
                    "Enter time",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                  suffixIcon: Icon(Icons.watch_later_outlined,size: 32,),
                ),
                validator: (value) {
                  if(value!.isEmpty){
                    return "Pleas Enter this files";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 5,),
            ],
          ),
        ),
      ),
    ),
  );
}
