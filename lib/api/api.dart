import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:portal_berita/api/detail_berita_response/DetailBeritaResponse.dart';
import 'package:portal_berita/api/list_berita_response/ListBeritaResponse.dart';

const BASE_URL = "http://192.168.18.196/backend-ci/api/";

class Api {
  static Future<ListBeritaResponse> getListBerita() async {
    String url = BASE_URL + "Berita/listBerita";
    //melakukan request dengan method get
    //await = proses selanjutnya akan dijeda sampai proses request selessai
    final response = await http.get(Uri.parse(url));

    //cek jika status code 200, maka kembalikan data list berita
    if (response.statusCode == 200) {
      return ListBeritaResponse.fromJson(jsonDecode(response.body));
    }

    //jika tidak, maka lempar exception berupa pesan error
    throw "Unable to get List Berita";
  }

  static Future<DetailBeritaResponse> getDetailBerita(String idBerita) async {
    String url = BASE_URL + "Berita/detailBerita/$idBerita";

    //melakukan request dengan method get
    //await = proses selanjutnya akan dijeda sampai proses request selessai
    final response = await http.get(Uri.parse(url));

    //cek jika status code 200, maka kembalikan data list berita
    if (response.statusCode == 200) {
      return DetailBeritaResponse.fromJson(jsonDecode(response.body));
    }

    //jika tidak, maka lempar exception berupa pesan error
    throw "Unable to get Detail Berita";
  }
}
