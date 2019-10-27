import 'package:flutter/material.dart';
import 'package:Bookhub/drawertile.dart';
import 'package:Bookhub/main.dart';
import 'package:Bookhub/tela_perfil.dart';
import 'package:Bookhub/login.dart';

class CadastroLivros extends StatelessWidget {
TextEditingController livroController = TextEditingController();
TextEditingController autorController = TextEditingController();
TextEditingController editoraController = TextEditingController();
TextEditingController generoController = TextEditingController();
TextEditingController tagsController = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

TextFormField inputText(String campo, dynamic controller, String mensagem){
return TextFormField(
  keyboardType: TextInputType.text,
decoration: InputDecoration(labelText: campo, labelStyle: TextStyle(color: Colors.white)),
style: TextStyle(fontSize: 15.0, color: Colors.white),
textAlign: TextAlign.center,
controller: controller,
validator: (value) {
if (value.isEmpty) {
return mensagem;
return null;
}
},
);
}
    @override
    Widget build(BuildContext context){
    IconButton iconBottom(IconData simbolo, Widget page) {
      return IconButton(
        icon: Icon(simbolo),
        color: Colors.white,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          );
        },
      );
    }
    _buildDrawerBack() =>
        Container( //criando uma função e dando o nome de build Drawer Back
          decoration: BoxDecoration( //dentro de um container eu defino um boxdecoration
              gradient: LinearGradient( //em seguida um gradiente linear
                colors: [
                  Color(0xff2A236E),
                  Color(0xff836FFF), //definindo cores em hexadecimal

                ],
                begin: Alignment.topLeft, //definindo onde começa
                end: Alignment.bottomRight, //definindo onde termina
              )
          ),
        );
    void _showDialog() {
      // flutter defined function
      showDialog(
        context: context,
        builder: (BuildContext context) {
          // return object of type Dialog
          return AlertDialog(
            title: new Text("Livro registrado!"),
            content: new Text("Obrigado por sua colaboração!"),
            actions: <Widget>[
              // usually buttons at the bottom of the dialog
              new FlatButton(
                child: new Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Bookhub"),
        backgroundColor: Color(0xff2A236E),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              print("elas que lutem");
            },
          ),
        ],
      ),
      drawer: Drawer( //criando a classe drawer
        child: Stack( //como o filho um stack para aparecer por cima da home tab
          children: <Widget>[
            _buildDrawerBack(), //chamando a função dentro do widget
            ListView( // criando listview para exibição de itens
              padding: EdgeInsets.only(left: 32.0, top: 0.0),
              //definindo espaçamento na borda a esquerda e no top do drawer
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 0.0),
                  //definindo espaçamento entre o próximo conteudo listado
                  padding: EdgeInsets.fromLTRB(0.0, 8.0, 16.0, 0.0),
                  //defindo margens dentro do container
                  height: 250.0,
                  child: Stack( // criando um stack para que o texto exibido venha por cima do container caso futurammente precise colocar algo no container
                    children: <Widget>[
                      DrawerHeader(
                        child: Container(
                          alignment: Alignment.center,
                          child: Column(
                            children: <Widget>[
                              Material(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(50.0)),
                                child: Image.network(
                                  TelaPerfil().perfilimg, width: 120.0,
                                  height: 120.0,),
                              )
                            ],
                          ),
                        ),
                      ),

                      Container(
                        padding: EdgeInsets.only(
                          top: 165, left: 50, right: 30,), //defindo margem
                        child: Column(
                          children: <Widget>[
                            Text("Nome da Pessoa",
                              style: TextStyle(fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text("@username",
                              style: TextStyle(
                                  fontSize: 15.0, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(top: 0, left: 0, right: 30,),
                    //defindo margem
                    child: Column(
                      children: <Widget>[
                        DrawerTile(Icons.book, "Cadastro de Livros", Home()),
                        DrawerTile(Icons.chat, "Chat", Home()),
                        //defindo os icones ddo drawer
                        DrawerTile(Icons.settings, "Configuração", Home()),
                        DrawerTile(Icons.help, "Ajuda", Home()),
                        DrawerTile(Icons.exit_to_app, "Sair", LoginScreen()),
                      ],
                    )
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xff2A236E),
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            iconBottom(Icons.person, TelaPerfil()),
            iconBottom(Icons.bookmark_border, Home()),
            iconBottom(Icons.menu, Home()),
            iconBottom(Icons.location_on, Home()),
            iconBottom(Icons.toc, Home()),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
      children: <Widget>[
        Image.network("https://i.pinimg.com/originals/31/f2/60/31f260f5ec53ec1506a2ca87c96946d8.jpg",
      fit: BoxFit.fill,
          height: 600,
      ),
        Padding(
          padding: EdgeInsets.fromLTRB(5.0, 40.0, 5.0, 20.0),
          child: Container(
          color: Color.fromRGBO(1, 1, 1, 0.5),
        child: Form(
          key: _formKey,
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Divider(),
        Text("Cadastro de Livros", textAlign: TextAlign.center ,style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: "Tahoma", fontWeight: FontWeight.bold)),
        Text("Preencha os campos corretamente e aguarde a aprovação de um administrador.", style: TextStyle(color: Colors.white, fontSize: 15, fontFamily: "Tahoma")),
        inputText("Nome do Livro", livroController, "Insira seu livro"),
        inputText("Autor", autorController, "Insira o autor do livro"),
        inputText("Editora", editoraController, "Insira a editora."),
        inputText("Gênero", generoController, "Insira o gênero do livro"),
        TextFormField(
          cursorColor: Colors.white,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(labelText: "Tags", labelStyle: TextStyle(color: Colors.white)),
          style: TextStyle(fontSize: 15.0, color: Colors.white),
          textAlign: TextAlign.center,
          controller: tagsController,
          validator: (value) {
            if (value.isEmpty) {
              return "Insira suas tags";
              return null;
            }
              if (value.contains(" ")){
                return "Insira suas tags separadas por virgula";
              }

          },
        ),
        Divider(),
          RaisedButton(
            onPressed: () {
              if (_formKey.currentState.validate()) {
               _showDialog();
              }
            },
            child: Text(
              "Registrar",
              style: TextStyle(color: Colors.white, fontSize: 15.0),
            ),
            color: Color(0xff2A236E),
          ),
          ],
        ),
      ),
      ),
      ),
      ),
        ),
        ],
      ),
      ),
      );
  }
}

