import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.symmetric(vertical: 50,horizontal: 25),
      color: Colors.black.withOpacity(0.8),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: const [
          CircleAvatar(
            radius: 75,
            backgroundImage:NetworkImage("https://w7.pngwing.com/pngs/67/469/png-transparent-computer-icons-login-button-miscellaneous-orange-computer-thumbnail.png"),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            "welcome to Login",
            style: TextStyle(
              color: Colors.red,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),

        ],
      ),
    );
  }
}
