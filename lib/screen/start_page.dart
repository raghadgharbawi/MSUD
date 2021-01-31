import 'package:epic/utils/assets.dart';
import 'package:epic/widgets/btn_auth_login.dart';
import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.bgMainBackground),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 50,),
                Text("Msud".toUpperCase(), textAlign: TextAlign.start, style: TextStyle(fontSize: 62, fontWeight: FontWeight.bold, color: Theme.of(context).primaryColor),),
                Text("Baby Buddy", textAlign: TextAlign.start, style: TextStyle(fontSize: 32, color: Theme.of(context).primaryColor),)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                btnAuthLogin(title: "Get Started", action: () => Navigator.pushNamed(context, "/Signup")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
