import 'package:flutter/material.dart';
import '../database/database.dart';

class Task extends StatefulWidget {
  const Task({Key? key}) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      child:listdata==null || listdata==0?Center(child: const CircularProgressIndicator()): ListView.separated(
         shrinkWrap: true,
        itemCount: listdata!.length,
        itemBuilder: (context, index) => Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 35,
              child: Text(
                "${listdata![index]['time']}",
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${listdata![index]['task']}",
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "${listdata![index]['date']}",
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            Text(
              "${listdata![index]['status']}",
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        separatorBuilder:  (context, index) =>const SizedBox(
          height: 20,
        ),
      ),
    );

  }
}
