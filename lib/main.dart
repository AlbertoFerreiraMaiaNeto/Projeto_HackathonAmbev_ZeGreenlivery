import 'package:ambev_app/dashboard.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  runApp(MaterialApp(
    title: "Ambev",
    home: Ambev(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      hintColor: Color(0xff004349).withOpacity(0.90),
      primaryColor: Colors.deepPurple,
      inputDecorationTheme: InputDecorationTheme(
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.deepPurple)),
        focusedBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.orange)),
        hintStyle: TextStyle(color: Colors.orange),
      ),
    ),
    initialRoute: "/",
    routes: {
      "/Home": (context) => Home(),
    },
  ));
}

class Ambev extends StatefulWidget {
  @override
  _AmbevState createState() => _AmbevState();
}

class _AmbevState extends State<Ambev> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 33, 64, 154),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.34,
                bottom: MediaQuery.of(context).size.height * 0.1),
            child: Center(
              child: Image.asset(
                "images/ambev2.png",
                fit: BoxFit.contain,
                height: MediaQuery.of(context).size.height * 0.23,
              ),
            ),
          ),
          Container(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.07),
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.2,
              height: MediaQuery.of(context).size.width * 0.2,
              child: FlareActor(
                'assets/logotipo2.flr',
                animation: "logo",
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.04),
              child: Column(
                children: [
                  Text(
                    "from",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.04,
                        fontFamily: 'Open Sans Extra Bold',
                        color: Colors.black,
                        shadows: [
                          Shadow(
                            blurRadius: 3,
                            color: Colors.black,
                          )
                        ]),
                  ),
                  Text(
                    "TIME 7",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.06,
                        fontFamily: 'Open Sans Extra Bold',
                        color: Colors.black,
                        shadows: [
                          Shadow(
                            blurRadius: 3,
                            color: Colors.black,
                          )
                        ]),
                  ),
                ],
              ))
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 4)).then((_) async {
      Navigator.pushNamed(context, "/Home");
      Navigator.pushNamed(context, "/Dashboard");
      Navigator.pushNamed(context, "/Menu");
    });
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();
  bool _exibirSenha = false;
  GlobalKey<FormState> _formKey1 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var sizeWidth = MediaQuery.of(context).size.width;
    var sizeHeight = MediaQuery.of(context).size.height;
    var sizecard = sizeHeight * 0.867;

    return Scaffold(
        backgroundColor: Color.fromARGB(255, 33, 64, 154),
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
          Container(
              height: sizecard,
              child: Column(children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                      top: sizecard * 0.12, bottom: sizecard * 0.04),
                  child: Center(
                    child: Image.asset(
                      "images/ambev2.png",
                      fit: BoxFit.contain,
                      height: sizeHeight * 0.20,
                    ),
                  ),
                ),
                Form(
                  key: _formKey1,
                  child: Padding(
                      padding: EdgeInsets.only(
                          top: sizecard * 0.04,
                          bottom: sizecard * 0.01,
                          left: sizeWidth * 0.03),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: sizecard * 0.02),
                                padding:
                                    EdgeInsets.only(left: sizeWidth * 0.04),
                                height: sizecard * 0.1,
                                width: sizeWidth * 0.900,
                                child: TextFormField(
                                  style: TextStyle(color: Colors.white),
                                  keyboardType: TextInputType.text,
                                  textAlign: TextAlign.center,
                                  controller: emailController,
                                  decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white)),
                                      prefixIcon: Icon(Icons.email,
                                          color: Colors.white),
                                      border: OutlineInputBorder(),
                                      hintText: "EMAIL",
                                      hintStyle: TextStyle(
                                          fontFamily: 'Open Sans',
                                          fontStyle: FontStyle.italic,
                                          fontSize: sizeWidth * 0.04,
                                          color: Colors.white)),
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return 'Insira o seu e-mail!';
                                    }
                                    //if (!EmailValidator.validate(value)) {
                                    //return "E-mail inválido!";
                                    //}
                                  },
                                ),
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.only(left: sizecard * 0.01),
                          ),

                          Container(
                            padding: EdgeInsets.only(top: sizecard * 0.01),
                          ), // ----------------------------------------------------

                          Row(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(top: sizecard * 0.02),
                                padding:
                                    EdgeInsets.only(left: sizeWidth * 0.035),
                                height: sizecard * 0.1,
                                width: sizeWidth * 0.900,
                                child: TextFormField(
                                  style: TextStyle(color: Colors.white),
                                  keyboardType: TextInputType.text,
                                  textAlign: TextAlign.center,
                                  controller: senhaController,
                                  decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white)),
                                      prefixIcon:
                                          Icon(Icons.lock, color: Colors.white),
                                      border: OutlineInputBorder(),
                                      hintText: "             SENHA",
                                      hintStyle: TextStyle(
                                          fontFamily: 'Open Sans',
                                          fontStyle: FontStyle.italic,
                                          fontSize: sizeWidth * 0.04,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255)),
                                      suffixIcon: GestureDetector(
                                        child: Icon(
                                          _exibirSenha == false
                                              ? Icons.visibility_off
                                              : Icons.visibility,
                                          color: Colors.grey,
                                        ),
                                        onTap: () {
                                          setState(() {
                                            _exibirSenha = !_exibirSenha;
                                          });
                                        },
                                      )),
                                  obscureText:
                                      _exibirSenha == false ? true : false,
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return 'Insira a sua Senha!';
                                    }
                                  },
                                ),
                              ),
                            ],
                          ),

                          // ESQUECI A MINHA SENHA
                          // ---------------------------------------------
                          Row(
                            children: <Widget>[
                              Container(
                                  margin: EdgeInsets.only(
                                      left: sizeWidth * 0.086,
                                      top: sizeHeight * 0.025),
                                  child: Container(
                                    height: sizeHeight * 0.08,
                                    width: sizeWidth * 0.75,
                                    child: RaisedButton(
                                      onPressed: () async {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Dashboard()));
                                        /*if (_formKey1.currentState.validate()) {
                                bool teste = await _recuperarDados();
                                if (teste == true) {
                                  FirebaseAuth auth = FirebaseAuth.instance;
                                  auth
                                      .signInWithEmailAndPassword(
                                          email: emailController.text,
                                          password: senhaController.text)
                                      .then((firebaseUser) {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                MenuInicial()));
                                  }).catchError((erro) {});
                                } else {
                                  showDialog(
                                      context: context,
                                      builder: (_) =>
                                          janelaPopUp(sizeWidth, sizeHeight));
                                }
                              }*/
                                      },
                                      textColor:
                                          Color.fromARGB(255, 33, 64, 154),
                                      splashColor: Colors.white,
                                      color: Colors.grey,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                          side:
                                              BorderSide(color: Colors.black)),
                                      child: Text(
                                        "ENTRAR",
                                        style: TextStyle(
                                          fontFamily: 'Open Sans Extra Bold',
                                          fontSize: (sizeWidth * 0.35) * 0.18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ))
                            ],
                          ),
                          Container(
                            child: Container(
                              margin: EdgeInsets.only(right: sizeWidth * 0.04),
                              height: sizeHeight * 0.08,
                              width: sizeWidth * 0.75,
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                    side: BorderSide(color: Colors.white)),
                                color: Color.fromARGB(255, 33, 64, 154),
                                onPressed: () {
                                  /*Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => null));*/
                                },
                                /*color: Color.fromARGB(255, 33, 64, 154),
                                splashColor: Color.fromARGB(255, 33, 64, 154),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                    side: BorderSide(color: Colors.black)),*/
                                child: Text(
                                  "ESQUECEU A SENHA?",
                                  style: TextStyle(
                                    fontFamily: 'Open Sans Extra Bold',
                                    color: Colors.white,
                                    fontSize: (sizeWidth * 0.56) * 0.07,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            padding: EdgeInsets.only(top: sizecard * 0.03),
                          ),
                        ],
                      )),
                ),
              ]))
        ])));
  }
}
