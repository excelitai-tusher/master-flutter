import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image(image: AssetImage("images/login_page.jpg"),
          fit: BoxFit.cover,
          ),
          SizedBox(height: 20.0,),
          Text("Welcome",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          ),
          SizedBox(height: 20.0,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Enter username",
                labelText: "Username"
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "Enter Password",
                  labelText: "Password"
              ),
            ),
          ),
          SizedBox(height: 20.0,),
          ElevatedButton(
              onPressed: (){},
              child: Text("Login"),
          ),
        ],
      ),
    );
  }
}
