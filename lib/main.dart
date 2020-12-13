import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants/color_constant.dart';
import 'constants/string_constant.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: COLOR_APP_BAR,
        centerTitle: true,
        elevation: 0,
        leading: Icon(
          Icons.chevron_left_outlined,
          size: 32,
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 32),
        color: COLOR_BG,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            RichText(
              text: TextSpan(
                style: TextStyle(color: COLOR_TEXT, fontSize: 28, height: 1.8),
                children: <TextSpan>[
                  TextSpan(
                      text: TXT_WELCOME_TITLE,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: TXT_WELCOME_BACK),
                  TextSpan(text: TXT_WELCOME_MESSAGE),
                ],
              ),
            ),
            SizedBox(height: 40),
            _inputField("Email"),
            SizedBox(height: 20),
            _inputField("Password", obscureText: true),
            SizedBox(height: 8),
            Align(
              alignment: Alignment.centerRight,
              child: Text(TXT_FORGET_PASSWORD,style: TextStyle(color: COLOR_TEXT),),
            ),
            Spacer(),
            Center(
              child: RichText(
                text: TextSpan(
                  style:
                      TextStyle(color: Colors.white, fontSize: 16, height: 1.8),
                  children: <TextSpan>[
                    TextSpan(text: 'Don\'t have an account?'),
                    TextSpan(
                        text: ' Register',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: FlatButton(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    minWidth: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    onPressed: () {},
                    child: Text(
                      "Sign In",
                      style: TextStyle(color: Color(0xff191720), fontSize: 16),
                    )),
              ),
            ),
            SizedBox(height: 8),
          ],
        ),
      ),
    );
  }

  Widget _inputField(var hint, {var obscureText = false}) {
    return TextField(
      obscureText: obscureText,
      style: TextStyle(color: COLOR_TEXT),
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xff3b3a42),
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: COLOR_INPUT_FILED),
            borderRadius: BorderRadius.circular(10.0),
          ),
          hintText: hint,
          hintStyle: TextStyle(color: Color(0xff3b3a42))),
    );
  }
}
