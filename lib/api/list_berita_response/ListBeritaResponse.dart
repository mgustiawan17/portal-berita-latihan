/// data : [{"id_berita":"34427","judul":"Biaya Kuliah Universitas Mercubuana Yogyakarta 2023 dan Cara Daftar Ulangnya","gambar":"1687336518.png","tanggal_post":"2023-06-21 15:35:18"}]
/// status : 200
/// error : "OK"
/// message : "Fetched all data"

class ListBeritaResponse {
  ListBeritaResponse({
      List<Data>? data, 
      int? status, 
      String? error, 
      String? message,}){
    _data = data;
    _status = status;
    _error = error;
    _message = message;
}

  ListBeritaResponse.fromJson(dynamic json) {
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
    _status = json['status'];
    _error = json['error'];
    _message = json['message'];
  }
  List<Data>? _data;
  int? _status;
  String? _error;
  String? _message;

  List<Data>? get data => _data;
  int? get status => _status;
  String? get error => _error;
  String? get message => _message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
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

class Data {
  Data({
      String? idBerita, 
      String? judul, 
      String? gambar, 
      String? tanggalPost,}){
    _idBerita = idBerita;
    _judul = judul;
    _gambar = gambar;
    _tanggalPost = tanggalPost;
}

  Data.fromJson(dynamic json) {
    _idBerita = json['id_berita'];
    _judul = json['judul'];
    _gambar = json['gambar'];
    _tanggalPost = json['tanggal_post'];
  }
  String? _idBerita;
  String? _judul;
  String? _gambar;
  String? _tanggalPost;

  String? get idBerita => _idBerita;
  String? get judul => _judul;
  String? get gambar => _gambar;
  String? get tanggalPost => _tanggalPost;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id_berita'] = _idBerita;
    map['judul'] = _judul;
    map['gambar'] = _gambar;
    map['tanggal_post'] = _tanggalPost;
    return map;
  }

}