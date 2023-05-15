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
              style: TextStyle(color: Colors.black, fontSize: 30),
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.camera_alt,
              color: Colors.blue,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.edit,
              color: Colors.blue,
              size: 30,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            TextFormField(
              keyboardType: TextInputType.visiblePassword,
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'search',
                filled: true,
                fillColor: Colors.black.withOpacity(0.2),
                focusColor: Colors.amberAccent,
                prefixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                      color: Colors.blue,
                      size: 25.0,
                    )),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: const [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                'https://pic.i7lm.com/wp-content/uploads/2019/05/%D8%B9%D8%B5%D9%81%D9%88%D8%B1-%D8%A3%D8%B2%D8%B1%D9%82.jpg'),
                          ),
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.red,
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 60,
                        child: Text(
                          "homam alslamat ",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: const [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                'https://pic.i7lm.com/wp-content/uploads/2019/05/%D8%B9%D8%B5%D9%81%D9%88%D8%B1-%D8%A3%D8%B2%D8%B1%D9%82.jpg'),
                          ),
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.red,
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 60,
                        child: Text(
                          "homam alslamat ",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: const [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                'https://pic.i7lm.com/wp-content/uploads/2019/05/%D8%B9%D8%B5%D9%81%D9%88%D8%B1-%D8%A3%D8%B2%D8%B1%D9%82.jpg'),
                          ),
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.red,
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 60,
                        child: Text(
                          "homam alslamat ",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: const [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                'https://pic.i7lm.com/wp-content/uploads/2019/05/%D8%B9%D8%B5%D9%81%D9%88%D8%B1-%D8%A3%D8%B2%D8%B1%D9%82.jpg'),
                          ),
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.red,
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 60,
                        child: Text(
                          "homam alslamat ",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: const [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                'https://pic.i7lm.com/wp-content/uploads/2019/05/%D8%B9%D8%B5%D9%81%D9%88%D8%B1-%D8%A3%D8%B2%D8%B1%D9%82.jpg'),
                          ),
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.red,
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 60,
                        child: Text(
                          "homam alslamat ",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: const [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                'https://pic.i7lm.com/wp-content/uploads/2019/05/%D8%B9%D8%B5%D9%81%D9%88%D8%B1-%D8%A3%D8%B2%D8%B1%D9%82.jpg'),
                          ),
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.red,
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 60,
                        child: Text(
                          "homam alslamat ",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children: const [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                'https://pic.i7lm.com/wp-content/uploads/2019/05/%D8%B9%D8%B5%D9%81%D9%88%D8%B1-%D8%A3%D8%B2%D8%B1%D9%82.jpg'),
                          ),
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.red,
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 60,
                        child: Text(
                          "homam alslamat ",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),const SizedBox(
              height: 15,
            ),
            Expanded(
              child: ListView.separated(
                itemCount: 10,
                itemBuilder: (context, index) => Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      alignment: AlignmentDirectional.bottomEnd,
                      children: const [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(
                              'https://e0.pxfuel.com/wallpapers/636/386/desktop-wallpaper-beautiful-red-rose-flower-beautiful-red-rose-thumbnail.jpg'),
                        ),
                        CircleAvatar(
                          radius: 8,
                          backgroundColor: Colors.green,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 60,
                      child: Text(
                        "homam alslamat ",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),

                  ],
                ),
                separatorBuilder:(context, index) =>const SizedBox(
                  height: 25,
                ) ,
                shrinkWrap: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
