import 'package:bmi/app_todo/bloc/bloc_app.dart';
import 'package:bmi/app_todo/bloc/counter_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Task extends StatefulWidget {
  const Task({Key? key}) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterApp, CounterStatus>(
      listener: (context, state) {},
      builder: (context, state) {
        return CounterApp.get(context).listDataAll == null ||
                CounterApp.get(context).listDataAll == 0
            ? Center(child: const CircularProgressIndicator())
            : ListView.separated(
                shrinkWrap: true,
                itemCount: CounterApp.get(context).listDataAll!.length,
                itemBuilder: (context, index) => Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      child: Text(
                        "${CounterApp.get(context).listDataAll![index]['time']}",
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
                          "${CounterApp.get(context).listDataAll![index]['task']}",
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "${CounterApp.get(context).listDataAll![index]['date']}",
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "${CounterApp.get(context).listDataAll![index]['status']}",
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 20,
                ),
              );
      },
    );
  }
}
