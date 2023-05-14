import 'package:flutter/material.dart';

class Messenger extends StatelessWidget {
  const Messenger({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          children: const [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  'https://pic.i7lm.com/wp-content/uploads/2019/05/%D8%B9%D8%B5%D9%81%D9%88%D8%B1-%D8%A3%D8%B2%D8%B1%D9%82.jpg'),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              "Chat",
              style: TextStyle(color: Colors.black,fontSize: 30),
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.camera_alt,color: Colors.blue,size: 30,),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.edit,color: Colors.blue,size: 30,),
          ),
        ],
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
