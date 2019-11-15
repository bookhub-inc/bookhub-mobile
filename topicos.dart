import 'package:Bookhub/api.dart';
import 'package:flutter/material.dart';
import 'package:Bookhub/newPost.dart';


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Post de dados",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
bool _isLoading = false;
bool _isChecked = true;
bool Spoiler;

class Topicos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_circle),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NewPost(),
              )

          );
        },
      ),
      appBar: AppBar(title: Text("Tópicos"),),
      body: FutureBuilder(
          future: ApiService.getPostList(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              final posts = snapshot.data;
              return ListView.separated(
                separatorBuilder: (context, index) {
                  return Divider(height: 2, color: Colors.black,);
                },
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      posts[index]['titulo'],
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(posts[index]['descricao']),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Posts(posts[index]['id']),
                          )
                      );
                    },
                  );
                },
                itemCount: posts.length,
              );
            }
            return Center(child: CircularProgressIndicator(),);
          }
      ),
    );
  }
}

class Posts extends StatelessWidget {
  final int _id;

  Posts(this._id);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Post"),),
      body: Column(
        children: <Widget>[
          FutureBuilder(
              future: ApiService.getPost(_id),
              builder: (context,snapshot){
                if (snapshot.connectionState == ConnectionState.done){
                  return Column(
                    children: <Widget>[
                      Text(
                        snapshot.data['titulo'],
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(snapshot.data['descricao']),
                    ],
                  );
                }
                return Center(child: CircularProgressIndicator(),);
              }
          ),
          Container(height: 20,),
          Divider(color: Colors.black, height: 3,),
          Container(height: 20,),
          FutureBuilder(
            future: ApiService.getCommentsForPost(_id),
            builder:  (context, snapshot){
              if (snapshot.connectionState == ConnectionState.done){
                final comments = snapshot.data;
                return Expanded(
                  child: ListView.separated(
                    separatorBuilder: (context,index) => Divider(
                      height: 2,
                      color: Colors.black,
                    ),
                    itemBuilder: (context, index){
                      return ListTile(
                        title: Text(
                          comments[index]['name'],
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(comments[index]['body']),
                      );
                    },
                    itemCount: comments.length,
                  ),
                );
              }
              return Center(child: CircularProgressIndicator(),);
            },
          )
        ],
      ),
    );
  }
}
