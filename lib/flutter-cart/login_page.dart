import 'package:flutter/material.dart';
import 'package:flutter_cart_page/main.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../catelog_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void validate() {
    if (formKey.currentState!.validate()) {
      print("Validated");
    } else {
      print("Not Validated");
    }
  }

  String? validatepass(value) {
    if (value.isEmpty) {
      return "Required";
    } else if (value.length < 6) {
      return "Should be last 6 characters";
    }
  }

  @override
  Widget build(BuildContext context) {
    var _controller = TextEditingController();
    var TEXT_LOGIN = "Login";
    var Label_Text = "Password";
    var Email_Label_Text = "Email";
    var Hint_Text = "Enter Password";
    var Email_Hint_Text = "Email";
    var Email_Validator = "Not a valid Email";
    var Required_Validator = "Required";
    var Text_Name = "Welcome";
    bool changeButton = false;
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          key: formKey,
          child: Column(
            children: [
              Image(
                image: AssetImage("images/login_page.jpg"),
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                Text_Name,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: TextFormField(
                    controller: _controller,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.clear),
                        onPressed: () => _controller.clear(),
                      ),
                      border: OutlineInputBorder(),
                      hintText: Email_Hint_Text,
                      labelText: Email_Label_Text,
                    ),
                    autofillHints: [AutofillHints.email],
                    keyboardType: TextInputType.emailAddress,
                    validator: MultiValidator([
                      RequiredValidator(errorText: Required_Validator),
                      EmailValidator(errorText: Email_Validator),
                    ])),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(),
                    hintText: Hint_Text,
                    labelText: Label_Text,
                  ),
                  autofillHints: [AutofillHints.password],
                  validator: validatepass,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              InkWell(
                onTap: ()async{
                  setState(() {
                    changeButton = true;
                  });
                  
                  await Future.delayed(Duration(seconds: 14));
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> CatelogPage()));
                },

                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  width: changeButton ? 50 : 150,
                  height: 50,
                  child: Center(
                    child: Text(
                      TEXT_LOGIN,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      // shape: changeButton
                      //     ? BoxShape.circle
                      //     : BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(
                        changeButton ? 50 : 8,
                      )),
                ),
              ),
              // ElevatedButton(
              //     onPressed: (){
              //
              //       validate;
              //     },
              //     child: Text(TEXT_LOGIN),
              //     style: ElevatedButton.styleFrom(
              //       primary: Colors.blueGrey,
              //       shape: RoundedRectangleBorder(
              //           borderRadius: BorderRadius.circular(8.0)),
              //       minimumSize: Size(150, 40),
              //     ),
              //
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
