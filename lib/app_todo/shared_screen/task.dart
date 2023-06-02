import 'package:bmi/app_todo/bloc/bloc_app.dart';
import 'package:bmi/app_todo/bloc/counter_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Task extends StatelessWidget {
  const Task({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterApp, CounterStatus>(
      listener: (context, state) {
        CounterApp.get(context).getDatabase(CounterApp.get(context).database);
      },
      builder: (context, state) {
        return CounterApp.get(context).listDataAll.isEmpty
            ? const Center(child: CircularProgressIndicator())
            : ListView.separated(
              shrinkWrap: true,
              itemCount: CounterApp.get(context).listDataAll.length,
              itemBuilder: (context, index) => Dismissible(
                key: Key(CounterApp.get(context)
                    .listDataAll[index]['id']
                    .toString()),
                background: Container(
                  color: Colors.red.shade700,
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsetsDirectional.only(end: 25),
                  child: const Icon(Icons.delete_forever),
                ),
                direction: DismissDirection.endToStart,
                onDismissed: (direction) async {
                  await CounterApp.get(context).deleteData(
                    id: CounterApp.get(context).listDataAll[index]['id'],
                  );
                },
                confirmDismiss: (direction) async {
                  await CounterApp.get(context).deleteData(
                    id: CounterApp.get(context).listDataAll[index]['id'],
                  );
                  return null;
                 },
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      child: Text(
                        "${CounterApp.get(context).listDataAll[index]['time']}",
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${CounterApp.get(context).listDataAll[index]['task']}",
                                style: const TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "${CounterApp.get(context).listDataAll[index]['date']}",
                                style: const TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  CounterApp.get(context).updateData(
                                      status: 'done',
                                      id: CounterApp.get(context)
                                          .listDataAll[index]['id']);
                                },
                                icon: const Icon(
                                  Icons.check_box,
                                  color: Colors.green,
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  CounterApp.get(context).updateData(
                                      status: 'archive',
                                      id: CounterApp.get(context)
                                          .listDataAll[index]['id']);
                                },
                                icon: Icon(
                                  Icons.archive,
                                  color: Colors.black.withOpacity(0.6),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              separatorBuilder: (context, index) => const SizedBox(
                height: 20,
              ),
            );
      },
    );
  }
}
