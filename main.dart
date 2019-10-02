import "package:flutter/material.dart";

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bookhub"),
        backgroundColor: Color(0xff2A236E),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {},
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xff2A236E),
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.menu),
              color: Colors.white,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.person),
              color: Colors.white,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.search),
              color: Colors.white,
              onPressed: () {},
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.book),
                  title: Text(
                      'O segundo livro de "Quem é você, Alasca? é anunciado'),
                  subtitle: Text(
                      'John Green está vivo! O escritor anunciou nesta Segunda-feira que seu livro mais popular'
                      ' terá uma sequência.'),
                ),
                ButtonTheme.bar(
                  // make buttons use the appropriate styles for cards
                  child: ButtonBar(
                    children: <Widget>[
                      FlatButton(
                        child: const Text('VER MAIS'),
                        onPressed: () {},
                      ),
                      FlatButton(
                        child: const Text('SALVAR'),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                Text("Tópicos"),
                Divider(),
        new GestureDetector(
          onTap: (){
            print("Container clicked");
          },
                child: Container(
                    color: Color(0xff2A236E),
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      "O que está acontecendo com J.K Rowling?",
                      style: TextStyle(color: Colors.white),
                    ),
                ),
        ),
        new GestureDetector(
          onTap: (){
            print("Container clicked");
          },
          child: Container(
                    color: Colors.blue,
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      "Como será a continuação de Mar de Monstros?",
                      style: TextStyle(color: Colors.white),
                    ),
          ),
        ),
        new GestureDetector(
          onTap: (){
            print("Container clicked");
          },
          child: Container(
                    color: Color(0xff2A236E),
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      "Seria a Bíblia uma mentira?",
                      style: TextStyle(color: Colors.white),
                    ),
          ),
        ),
        new GestureDetector(
          onTap: (){
            print("LAIS OBRIGADO POR TUDO TE AMOOOO");
          },
          child: Container(
                  color: Colors.blue,
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "Por que Game of Thrones é tão bom no livro?",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
        ),
                Divider(),
                Text("Loja"),
                ButtonBar(
                  mainAxisSize: MainAxisSize.max,
                  alignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    OutlineButton(
                      onPressed: () {},
                      child: Text("Novo"),
                      borderSide: BorderSide(color: Colors.blue),
                      shape: StadiumBorder(),
                    ),
                    OutlineButton(
                      onPressed: () {},
                      child: Text("Recomendado"),
                      borderSide: BorderSide(color: Colors.blue),
                      shape: StadiumBorder(),
                    ),
                    OutlineButton(
                      onPressed: () {},
                      child: Text("Menor Preço"),
                      borderSide: BorderSide(color: Colors.blue),
                      shape: StadiumBorder(),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
