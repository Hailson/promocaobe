import 'package:flutter/material.dart';
import 'package:getflutter/getflutter.dart';
import 'Cadastro.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerSenha = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xff78a057)
        ),
        padding: EdgeInsets.all(16),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 32),
                  child: Image.asset(
                    'images/logo-be.png',
                    width: 200, height: 150,
                  )
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: TextField(
                    controller: _controllerEmail,
                    //autofocus: true,
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(24, 16, 24, 16),
                      hintText: 'Email',
                      prefixIcon: Icon(Icons.account_circle),
                      filled: true,
                      fillColor: Colors.white10,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                      )
                    ),
                  ),
                ),
                TextField(
                  controller: _controllerSenha,
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(24, 16, 24, 16),
                      hintText: 'Senha',
                      prefixIcon: Icon(Icons.lock),
                      filled: true,
                      fillColor: Colors.white10,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                      )
                    ),
                  ),
                Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 10),
                  child: GFButton(
                    fullWidthButton: true,
                    onPressed: (){},
                    text: "Entrar",
                    textStyle: TextStyle(fontSize: 26),
                    shape: GFButtonShape.pills,
                    size: GFSize.LARGE,
                    color: Color(0xff075e54),
                    blockButton: true
                  ),
                ), 
                Center(
                  child: GestureDetector(
                  child: Text(
                    'clique aqui para se cadastrar',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16
                    ),
                  ),
                  onTap: (){
                    print('clicado para cadastrar');
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => Cadastro()
                      )
                    );
                  },
                ),
                ) 
              ],
            ),
          ),
        ),
      ),
    );
  }
}