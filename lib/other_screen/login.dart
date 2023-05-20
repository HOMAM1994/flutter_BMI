import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var username = TextEditingController();
  var password = TextEditingController();
  bool ispass = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding:
            const EdgeInsetsDirectional.symmetric(vertical: 50, horizontal: 25),
        color: Colors.black.withOpacity(0.8),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            const CircleAvatar(
              radius: 75,
              backgroundImage: NetworkImage(
                  "https://w7.pngwing.com/pngs/67/469/png-transparent-computer-icons-login-button-miscellaneous-orange-computer-thumbnail.png"),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "welcome to Login",
              style: TextStyle(
                color: Colors.red,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              controller: username,
              decoration: InputDecoration(
                labelText: 'User Name',
                filled: true,
                fillColor: Colors.blue.withOpacity(0.4),
                focusColor: Colors.amberAccent,
                prefixIcon: const Icon(
                  Icons.account_circle_rounded,
                  color: Colors.orange,
                  size: 35.0,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            TextFormField(
              keyboardType: TextInputType.visiblePassword,
              obscureText: ispass,
              controller: password,
              decoration: InputDecoration(
                labelText: 'Password',
                filled: true,
                fillColor: Colors.blue.withOpacity(0.4),
                focusColor: Colors.amberAccent,
                prefixIcon: const Icon(
                  Icons.lock,
                  color: Colors.orange,
                  size: 35.0,
                ),
                suffixIcon: IconButton(
                  icon:ispass?  const Icon(
                    Icons.visibility,
                    color: Colors.orange,
                  ):const Icon(
                      Icons.visibility_off,
                      color: Colors.orange),
                  onPressed: () {
                    setState(() {
                      ispass=!ispass;

                    });
                  },
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.blue,
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              width: 250,
              child: MaterialButton(
                onPressed: () {},
                child: const Text(
                  "LOGIN",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Text(
                  "Don't have account ? ",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Register now ",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
