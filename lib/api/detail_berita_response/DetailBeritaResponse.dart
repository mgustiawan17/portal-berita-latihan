/// data : {"id_berita":"34427","judul":"Biaya Kuliah Universitas Mercubuana Yogyakarta 2023 dan Cara Daftar Ulangnya","gambar":"1687336518.png","tanggal_post":"2023-06-21 15:35:18","content":"Nemo nostrum istius generis asotos iucunde putat vivere. Contineo me ab exemplis. Nunc vides, quid faciat. Contemnit enim disserendi elegantiam, confuse loquitur. In schola desinis. Idem adhuc; Itaque hic ipse iam pridem est reiectus; "}
/// status : 200
/// error : "OK"
/// message : "Fetched all data"

class DetailBeritaResponse {
  DetailBeritaResponse({
      Data? data, 
      int? status, 
      String? error, 
      String? message,}){
    _data = data;
    _status = status;
    _error = error;
    _message = message;
}

  DetailBeritaResponse.fromJson(dynamic json) {
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _status = json['status'];
    _error = json['error'];
    _message = json['message'];
  }
  Data? _data;
  int? _status;
  String? _error;
  String? _message;

  Data? get data => _data;
  int? get status => _status;
  String? get error => _error;
  String? get message => _message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    map['status'] = _status;
    map['error'] = _error;
    map['message'] = _message;
    return map;
  }

}

/// id_berita : "34427"
/// judul : "Biaya Kuliah Universitas Mercubuana Yogyakarta 2023 dan Cara Daftar Ulangnya"
/// gambar : "1687336518.png"
/// tanggal_post : "2023-06-21 15:35:18"
/// content : "Nemo nostrum istius generis asotos iucunde putat vivere. Contineo me ab exemplis. Nunc vides, quid faciat. Contemnit enim disserendi elegantiam, confuse loquitur. In schola desinis. Idem adhuc; Itaque hic ipse iam pridem est reiectus; "

class Data {
  Data({
      String? idBerita, 
      String? judul, 
      String? gambar, 
      String? tanggalPost, 
      String? content,}){
    _idBerita = idBerita;
    _judul = judul;
    _gambar = gambar;
    _tanggalPost = tanggalPost;
    _content = content;
}

  Data.fromJson(dynamic json) {
    _idBerita = json['id_berita'];
    _judul = json['judul'];
    _gambar = json['gambar'];
    _tanggalPost = json['tanggal_post'];
    _content = json['content'];
  }
  String? _idBerita;
  String? _judul;
  String? _gambar;
  String? _tanggalPost;
  String? _content;

  String? get idBerita => _idBerita;
  String? get judul => _judul;
  String? get gambar => _gambar;
  String? get tanggalPost => _tanggalPost;
  String? get content => _content;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id_berita'] = _idBerita;
    map['judul'] = _judul;
    map['gambar'] = _gambar;
    map['tanggal_post'] = _tanggalPost;
    map['content'] = _content;
    return map;
  }

}