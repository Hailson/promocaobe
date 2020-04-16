import 'package:flutter/material.dart';
import 'package:getflutter/getflutter.dart';

class Cadastro extends StatefulWidget {
  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {

  //Controladores Fields
  TextEditingController _controllerNome = TextEditingController();
  TextEditingController _controllerCpf = TextEditingController();
  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerSenha = TextEditingController();

  validarCampo(){
    String nome = _controllerNome.text;
    String cpf = _controllerCpf.text;
    String email = _controllerEmail.text;
    String senha = _controllerSenha.text;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GFAppBar(
        leading: GFIconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ), 
          onPressed: (){
            print('Clicado para fechar');
            Navigator.pop(context);
          },
          type: GFButtonType.transparent,
        ),
        title: Text('Cadastro'),
      ),
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
                    'images/user.png',
                    width: 200, height: 150,
                  )
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: TextField(
                    controller: _controllerNome,
                    autofocus: true,
                    keyboardType: TextInputType.text,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(24, 8, 24, 8),
                      hintText: 'Nome',
                      prefixIcon: Icon(Icons.account_box),
                      filled: true,
                      fillColor: Colors.white10,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(28)
                      )
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: TextField(
                    controller: _controllerCpf,
                    keyboardType: TextInputType.number,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(24, 8, 24, 8),
                      hintText: 'CPF',
                      prefixIcon: Icon(Icons.confirmation_number),
                      filled: true,
                      fillColor: Colors.white10,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(28)
                      )
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: TextField(
                    controller: _controllerEmail,
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(28, 8, 28, 8),
                      hintText: 'Email',
                      prefixIcon: Icon(Icons.account_circle),
                      filled: true,
                      fillColor: Colors.white10,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(28)
                      )
                    ),
                  ),
                ),

                TextField(
                  controller: _controllerSenha,
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    style: TextStyle(fontSize: 22),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(28, 8, 28, 8),
                      hintText: 'Senha',
                      prefixIcon: Icon(Icons.lock),
                      filled: true,
                      fillColor: Colors.white10,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(28)
                      )
                    ),
                  ),
                Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 10),
                  child: GFButton(
                    fullWidthButton: true,
                    onPressed: (){},
                    text: "Cadastrar",
                    textStyle: TextStyle(fontSize: 22),
                    shape: GFButtonShape.pills,
                    size: GFSize.LARGE,
                    color: Color(0xff075e54),
                    blockButton: true
                  ),
                ), 
                /*
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
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => Cadastro()
                      )
                    );
                  },
                ),
                ) */
              ],
            ),
          ),
        ),
      ),
    );
  }
}