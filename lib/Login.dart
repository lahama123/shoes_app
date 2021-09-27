import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shoes_app/Register.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();

}

class _LoginState extends State<Login> {
  bool valuefirst = false;
  bool valuesecond = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        constraints: BoxConstraints.expand(),
        color: Color(0xF3F4F6),
        child: SingleChildScrollView(
          child:Column(
            children: <Widget>[
              SizedBox(
                height: 80,
              ),
              Image.asset('assets/logo.jpg'),
              Text('Shoes App',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                  )
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 6)
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 6),
                  child: Column(
                    children:<Widget> [
                      Container(
                        constraints: BoxConstraints.loose(Size(double.infinity,30)),
                        alignment: AlignmentDirectional.centerStart,
                        child: Text(
                          'Account',
                          style: TextStyle(
                              fontSize: 18 ,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      TextFormField(
                        style: TextStyle(
                          fontSize: 14,
                        ),
                        decoration: InputDecoration(
                          labelText: "User",
                          border: OutlineInputBorder(
                            borderSide:
                              BorderSide(color: Color(0xFFCFCFCF),width: 10),
                            borderRadius:
                              BorderRadius.all(Radius.circular(6))
                          )
                        ),
                      ),
                    ],
                 ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 6),
                child: Column(
                  children:<Widget> [
                    Container(
                      constraints: BoxConstraints.loose(Size(double.infinity,30)),
                      alignment: AlignmentDirectional.centerStart,
                      child: Text(
                        'Password',
                        style: TextStyle(
                            fontSize: 18 ,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    TextFormField(
                      obscureText: true,
                      style: TextStyle(
                        fontSize: 14,
                      ),
                      decoration: InputDecoration(
                          labelText: "Password",
                          border: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: Color(0xFFCFCFCF),width: 10),
                              borderRadius:
                              BorderRadius.all(Radius.circular(6))
                          )
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 6),
                child: Row(
                  children: <Widget>[
                    Container(
                      constraints: BoxConstraints.loose(Size(double.infinity,30)),
                      // alignment: AlignmentDirectional.centerStart,
                      child:
                      Checkbox(
                        checkColor: Colors.black,
                        activeColor: Colors.black45,
                        value: this.valuefirst,
                        onChanged: (bool? value) {
                          setState(() {
                            this.valuefirst = value!;
                          });
                        },
                      ),
                    ),
                    Text(
                      'Remember',
                      style: TextStyle(
                          fontSize: 12 ,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 90, 0, 6),
                child: SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: RaisedButton(
                    onPressed: () {  },
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    color: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(6))
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: RichText(
                  text: TextSpan(
                    text: "No account? ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12),
                    children: <TextSpan>[
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Register()));
                        },
                        text: "Register",
                        style: TextStyle(
                          color: Color(0xFF003BFF),
                          fontSize: 12,
                          fontWeight: FontWeight.bold
                        )
                      )
                    ]
                  )
                ),
              ),
            ],
          ) ,
        ),
      ),
    );
  }
}
