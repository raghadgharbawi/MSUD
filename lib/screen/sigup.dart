import 'package:epic/styles/customStyles.dart';
import 'package:epic/utils/assets.dart';
import 'package:epic/widgets/btn_auth_login.dart';
import 'package:epic/widgets/custom_input_form_widget.dart';
import 'package:epic/widgets/drop_down_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum ActivePage { pageOne, pageTwo }

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  ActivePage activePage = ActivePage.pageOne;

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
                  Visibility(
                      visible: activePage == ActivePage.pageOne,
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Register",
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
                      )),
                  Form(
                    child: activePage == ActivePage.pageOne
                        ? _formPageOne()
                        : _formPageTwo(),
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
                            "Already Member?",
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          GestureDetector(
                            onTap: () => Navigator.pushReplacementNamed(context, "/Login"),
                            child: Text(
                              "Login",
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
                      title: activePage == ActivePage.pageOne
                          ? "Next"
                          : "Register",
                      action: () => _btnRegister()),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  _formPageOne() {
    return Column(
      children: [
        customInputFormWidget(context,
            title: "Full Name",
            input: TextFormField(
              decoration: customInputForm,
            )),
        SizedBox(
          height: 20,
        ),
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
        SizedBox(
          height: 20,
        ),
        Container(
          child: Row(
            children: [
              GestureDetector(
                onTap: () => {},
                child: Container(
                  padding: EdgeInsets.all(10),
                  width: 50,
                  height: 50,
                  child: Image.asset(Assets.icGoogle),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 10,),
              GestureDetector(
                onTap: () => {},
                child: Container(
                  padding: EdgeInsets.all(10),
                  width: 50,
                  height: 50,
                  child: Image.asset(Assets.icFacebook),
                  decoration: BoxDecoration(
                    color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  _formPageTwo() {

    List<String> agesItems = ["0", "month", "2 months" , "3 months", "4 months", "5 months", "6 months"];

    List<String> genderItems = ["Male", "Female"];

    return Column(
      children: [
        dropDownAuth(context, title: "Age", hintText: "Choose age", items: agesItems),
        SizedBox(
          height: 20,
        ),
        dropDownAuth(context, title: "Gender", hintText: "Choose gender", items: genderItems),
        SizedBox(
          height: 20,
        ),
        customInputFormWidget(context,
            title: "Height",
            input: TextFormField(
              keyboardType: TextInputType.number,
              decoration: customInputForm,
            )),
        SizedBox(
          height: 20,
        ),
        customInputFormWidget(context,
            title: "Weight",
            input: TextFormField(
              keyboardType: TextInputType.number,
              decoration: customInputForm,
            ))
      ],
    );
  }

  _btnRegister() {
    switch (activePage) {
      case ActivePage.pageOne:
        setState(() {
          activePage = ActivePage.pageTwo;
        });
        break;
      case ActivePage.pageTwo:
        break;
    }
  }
}
