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
  Container myNews( String imageVal, String heading, String subheading){
    return Container(
      width: 160.0,
      child: Card(
        child: Wrap(
          children: <Widget>[
            Image.network(imageVal),
            ListTile(
              title: Text(heading
              ),
              subtitle: Text(
                  subheading),
            ),
          ],
        ),
      ),
    );
  }

  GestureDetector myTopic (Color color, String titulo) {
    return new GestureDetector(
      onTap: () {
        print("LAIS OBRIGADO POR TUDO TE AMOOOO");
      },
      child: Container(
        color: color,
        padding: EdgeInsets.all(20.0),
        child: Text(
          titulo,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
    /* Color(0xff2A236E), */
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bookhub"),
        backgroundColor: Color(0xff2A236E),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {print("elas que lutem");},
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
   child: Column(
     crossAxisAlignment: CrossAxisAlignment.stretch,
     mainAxisSize: MainAxisSize.min,
    children: <Widget> [
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            height: 250,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                myNews("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQJWz7PeZmcNQp_svDznslTjfal2Oksb2j4VFwv3lzMw8WBWt3E", "Teste1", "Teste2"),
                myNews("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTluY_u--YSm9Yi5k10bdzdoL0nKKcpC8Nxvs7T9rH2mfz8b_-v", "Teste1", "Teste2"),
                myNews("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ1bKS_TTRyr8UryRNVN4OBQRdYkIQSwoPlDsPy8RysIRFX5w-B", "Teste1", "Teste2"),
                myNews("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTWXpbiJWEeEGPuiqRuviFxjFJPrDB8UkmXsKHDsg_ATnh1rC4o", "Teste1", "Teste2"),
                myNews("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRQkTQNBFPFC1e7qcXBgXXT-n4ToahKMj4I20I44AfbBAYgktzA", "Teste1", "Teste2"),
      ],
                    ),
                  ),

                              Text("Tópicos", textAlign: TextAlign.center,),
                              Divider(),
                              myTopic(Colors.blue, "Qual o segredo da bíblia?"),
      myTopic(Color(0xff2A236E), "Quando sai a sequência de Game of Thrones?"),
      myTopic(Colors.blue, "Netflix comprará Percy Jackson?"),
      myTopic(Color(0xff2A236E), "SPOILER ALERT: Esse personagem vive ou morre?"),
      FlatButton(
        color: Color(0xff2A236E),
        textColor: Colors.white,
        disabledColor: Colors.grey,
        disabledTextColor: Colors.black,
        padding: EdgeInsets.all(8.0),
        splashColor: Colors.blueAccent,
        onPressed: () {
          /*...*/
        },
        child: Text("Veja mais"),
      ),
      Divider(),
      Text("Loja", textAlign: TextAlign.center,),
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
      Row(
        children: <Widget>[
          Expanded(
      child: TextField(
        textAlign: TextAlign.center,
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Escreva o nome do livro"
          ),
      ),
    ),
          IconButton(
            icon: Icon(Icons.send),
            color: Colors.blue,
            onPressed: () {},
          )
    ],
   ),
      ],
    ),
      ),
    );
  }
}
