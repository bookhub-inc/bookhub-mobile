import 'package:flutter/material.dart';
import 'package:Bookhub/api.dart';
import 'package:Bookhub/topicos.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NewPost extends StatefulWidget {
  @override
  _NewPostState createState() => _NewPostState();
}

class _NewPostState extends State<NewPost>{
  String _nome = "";
  String _sobrenome = "";
  String _user = "";
  int _idUser;
  int _idAvatar;

  Future<String> getNamePreference() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String name = prefs.getString("nome");
    return name;
  }

  Future<String> getSobrenomePreference() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String sobrenome = prefs.getString("sobrenome");
    return sobrenome;
  }

  Future<String> getUserPreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String user = prefs.getString("login");
    return user;
  }

  Future<int> getIdPreference() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int id = prefs.getInt("id");
    return id;
  }
  Future<int> getIdAvatarPreference() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int id = prefs.getInt("idAvatar");
    return id;
  }

  void initState(){
    getNamePreference().then(updateName);
    getSobrenomePreference().then(updateSobrenome);
    getUserPreference().then(updateUser);
    getIdPreference().then(updateId);
    getIdAvatarPreference().then(updateAvatar);
    super.initState();
  }

  bool _isLoading = false;
  bool _isChecked = false;
  final _titleController = TextEditingController();
  final _bodyController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(title: Text("Novo Tópico")),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Tópico novo de ${_nome} ${_sobrenome}"),
              TextField(
                  controller: _titleController,
                  decoration: InputDecoration(hintText: 'Titulo')
              ),
              TextField(
                  controller: _bodyController,
                  decoration: InputDecoration(hintText: 'Descrição')
              ),
              Row(
                children: <Widget>[
                  Text("Spoiler?"),
              Checkbox(
                onChanged: (bool spoiler){
setState(() {
   _isChecked = spoiler;
  });
                },
                value: _isChecked,),
              ],
              ),
              Container(height: 20,),
              _isLoading ? CircularProgressIndicator():
              SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: RaisedButton(
                    color: Colors.blue,
                    child: Text("Submit",style: TextStyle(color: Colors.white)),
                    onPressed: (){
                      if  (_titleController.text.isEmpty || _bodyController.text.isEmpty){
                        showDialog(
                            builder: (context) => AlertDialog(
                              title: Text("Failure"),
                              content: Text("You need to input the title and the body of the post"),
                              actions: <Widget>[FlatButton(
                                onPressed: (){Navigator.pop(context);},
                                child: Text("Ok"),
                              )],
                            ),
                            context: context
                        );
                        return;
                      }
                      setState(() {
                        _isLoading = true;
                      });
                      ApiService.addPost(_titleController.text, _bodyController.text, _isChecked, _idUser).then((sucess){
                        setState(() {
                          _isLoading = false;
                        });
                        String title, text;
                        if(sucess){
                          title = "Sucess";
                          text = "Your post has been successful submitted";
                        }else{
                          title = "Error";
                          text = "An error occurred while submitting your post";
                        }
                        showDialog(
                            builder: (context) => AlertDialog(
                              title: Text(title),
                              content: Text(text),
                              actions: <Widget>[
                                FlatButton(
                                  onPressed: (){
                                    Navigator.pop(context);
                                  },
                                  child: Text("Ok"),
                                )
                              ],
                            ),
                            context: context
                        );
                      });
                    },
                  )
              )
            ],
          ),
        )
    );
  }
  void updateName(String nome){

    setState((){
      this._nome = nome;
    });
  }
  void updateSobrenome(String sobrenome){

    setState((){
      this._sobrenome = sobrenome;
    });
  }
  void updateUser (String user){

    setState((){
      this._user = user;
    });
  }

  void updateId(int id){

    setState((){
      this._idUser = id;
    });
  }

  void updateAvatar(int idAvatar){

    setState((){
      this._idAvatar = idAvatar;
    });
  }
}