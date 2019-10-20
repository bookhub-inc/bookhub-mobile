import "package:flutter/material.dart";

class TelaPerfil extends StatelessWidget{
  TextStyle _style() {
    return TextStyle(
        fontWeight: FontWeight.bold
    );
  }
  @override
  final String perfilimg = 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRyywga5sMBaxlUA09PmJzhbL9ZGmujLug1LqDqWdxSciDXdZuK';

  Widget build(BuildContext context) {
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
    child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Divider(),
            GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {},
                  child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                      boxShadow: [BoxShadow(
                      color: Color(0xff2A236E),
                      blurRadius: 20,
                      offset: Offset(0, 0),
                      ),
                      ],
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage (perfilimg),
                      ),
              ),
            ),
              ),
            ListTile(
            title: Text("Nome da Pessoa", style: TextStyle(fontSize:30.0), textAlign: TextAlign.center,),
              subtitle: Text("Descrição", style: TextStyle(fontSize:15.0), textAlign: TextAlign.center,),
                trailing: Icon(Icons.more_vert),
              onTap: (){

              },
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
            Divider(color: Colors.grey,),
            Text("Email", style: _style(),),
            SizedBox(height: 4,),
            Text("milan@gmail.com"),
            SizedBox(height: 16,),

            Text("Cidade/País", style: _style(),),
            SizedBox(height: 4,),
            Text("New York, USA"),
            SizedBox(height: 16,),

            Text("Livro favorito", style: _style(),),
            SizedBox(height: 4,),
            Text("As Vantagens de Ser Invisível"),
            SizedBox(height: 16,),

            Text("Ultimo tópico", style: _style(),),
            SizedBox(height: 4,),
            Text("Será que o Harry Potter vira imortal?"),
            SizedBox(height: 16,),

            Divider(color: Colors.grey,)

          ],
        ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  child: Text("Sair", style: TextStyle(color: Colors.white),),
                  color: Color(0xff2A236E),
                  onPressed: (){

                  },
                )
              ],
            ),
        ],
      ),
      ),
      ),
    );
  }
}
