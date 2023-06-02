import 'package:bmi/app_todo/bloc/bloc_app.dart';
import 'package:bmi/app_todo/shared_parts/floting_botten.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/counter_states.dart';
import 'database/controler_datadase.dart';
import 'shared_parts/appbar.dart';

class HomeScreen extends StatelessWidget {


  var formkey = GlobalKey<FormState>();
  var scafoldkey = GlobalKey<ScaffoldState>();

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterApp()..createDataBase(),
      child: BlocConsumer<CounterApp, CounterStatus>(
          builder: (context, state) {
            return Scaffold(
              key: scafoldkey,
              appBar: appbar(
                  "${CounterApp.get(context).screenBody[CounterApp.get(context).currentIndex]}"),
              body:CounterApp.get(context)
                  .screenBody[CounterApp.get(context).currentIndex],

              bottomNavigationBar: BottomNavigationBar(
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.menu,
                      size: 32,
                    ),
                    label: "NewTask",
                  ),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.done_all,
                        size: 32,
                      ),
                      label: "DoneTask"),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.archive_outlined,
                        size: 32,
                      ),
                      label: "Archive"),
                ],
                currentIndex: CounterApp.get(context).currentIndex,
                onTap: (value) {
                  CounterApp.get(context).changIndex(value);
                },
                backgroundColor: Colors.teal.shade800,
                fixedColor: Colors.white,
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  if (CounterApp.get(context).isBottomSheet) {
                    if (form.currentState!.validate()) {
                      CounterApp.get(context)
                          .insertDataBase(CounterApp.get(context).database!);
                      Navigator.pop(context);

                      CounterApp.get(context).changBottomSheet(isShow: false,
                          icon: Icons.edit);

                     }
                  } else {
                    scafoldkey.currentState
                        ?.showBottomSheet(
                          (context) => flotingBotten(context),
                        )
                        .closed
                        .then((value) {
                      CounterApp.get(context).changBottomSheet(isShow: false,
                          icon: Icons.edit);
                    });
                    CounterApp.get(context).changBottomSheet(isShow: true,
                        icon: Icons.add);
                  }
                },
                child: Icon(CounterApp.get(context).fbIcon),
              ),
            );
          },
          listener: (context, state) {}),
    );
  }
}
