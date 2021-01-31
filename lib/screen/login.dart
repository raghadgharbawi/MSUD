import 'package:epic/styles/customStyles.dart';
import 'package:epic/utils/assets.dart';
import 'package:epic/widgets/btn_auth_login.dart';
import 'package:epic/widgets/custom_input_form_widget.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Assets.bgMainBackground),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * (154 / 812),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor),
                        ),
                      ),
                      SizedBox(
                        height:
                        MediaQuery.of(context).size.height * (30 / 812),
                      ),
                    ],
                  ),
                  Form(
                    child: _formPage(),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "New Here?",
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          GestureDetector(
                            onTap: () => Navigator.pushReplacementNamed(context, "/Signup"),
                            child: Text(
                              "Register",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  btnAuthLogin(
                      title: "Login",
                      action: () => Navigator.pushNamed(context, "/BcaasLevel")),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  _formPage() {
    return Column(
      children: [
        customInputFormWidget(context,
            title: "Email",
            input: TextFormField(
              decoration: customInputForm,
            )),
        SizedBox(
          height: 20,
        ),
        customInputFormWidget(context,
            title: "Password",
            input: TextFormField(
              decoration: customInputForm,
              obscureText: true,
            )),
        Align(alignment: Alignment.topRight, child: FlatButton(onPressed: () => {}, child: Text("Forgot Password?", style: TextStyle(color: Color.fromRGBO(47, 128, 237, 1), fontSize: 14),)))
      ],
    );
  }

}
