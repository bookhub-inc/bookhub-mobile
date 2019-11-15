class Post {

  final String idUsuario;
  final int id;
  final String titulo;
  final String descricao;
  final bool Spoiler;

  Post({this.idUsuario, this.id, this.titulo, this.descricao, this.Spoiler});

  factory Post.fromJson(Map<Map, dynamic> json) {
    return Post(
      idUsuario: json['idUsuario'],
      id: json['id'],
      titulo: json['titulo'],
      descricao: json['descricao'],
      Spoiler: json['spoiler'],
    );
  }

  Map toMap() {
    var map = new Map<String, dynamic>();
    map["idUsuario"] = idUsuario;
    map["titulo"] = titulo;
    map["descricao"] = descricao;
    map["spoiler"] = Spoiler;

    return map;
  }
}