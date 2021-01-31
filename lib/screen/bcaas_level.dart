import 'package:epic/styles/customStyles.dart';
import 'package:epic/utils/assets.dart';
import 'package:epic/widgets/btn_auth_login.dart';
import 'package:epic/widgets/custom_input_form_widget.dart';
import 'package:flutter/material.dart';

class BcaasLevel extends StatefulWidget {
  @override
  _BcaasLevelState createState() => _BcaasLevelState();
}

class _BcaasLevelState extends State<BcaasLevel> {

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
                          "Enter plasma BCAAs Level",
                          style: TextStyle(
                              fontSize: 22,
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
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  btnAuthLogin(
                      title: "Submit",
                      action: () => {}),
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
            title: "Leucine",
            input: TextFormField(
              keyboardType: TextInputType.number,
              decoration: customInputForm,
            )),
        SizedBox(
          height: 20,
        ),
        customInputFormWidget(context,
            title: "Isoleuocine",
            input: TextFormField(
              keyboardType: TextInputType.number,
              decoration: customInputForm,
            )),
        SizedBox(
          height: 20,
        ),
        customInputFormWidget(context,
            title: "Valine",
            input: TextFormField(
              keyboardType: TextInputType.number,
              decoration: customInputForm,
            )),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }

}
