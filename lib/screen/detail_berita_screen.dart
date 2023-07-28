import 'package:flutter/material.dart';
import 'package:portal_berita/api/api.dart';
import 'package:portal_berita/api/detail_berita_response/DetailBeritaResponse.dart';
import 'package:shimmer/shimmer.dart';

class DetailBeritaScreen extends StatefulWidget {
  final String idBerita;
  const DetailBeritaScreen({super.key, required this.idBerita});

  @override
  State<DetailBeritaScreen> createState() => _DetailBeritaScreenState();
}

class _DetailBeritaScreenState extends State<DetailBeritaScreen> {
  Data detailData = Data();

  getDetail() {
    Api.getDetailBerita(widget.idBerita).then((value) {
      setState(() {
        detailData = value.data!;
      });
    });
  }

  @override
  void initState() {
    getDetail();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //?? "" = kosong
        title: (detailData.judul != null)
            ? Text(detailData.judul!)
            : Shimmer.fromColors(
                baseColor: Colors.grey.shade500,
                highlightColor: Colors.grey.shade300,
                child: Container(
                  color: Colors.red,
                  width: 150,
                  height: 30,
                ),
              ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: detailData.gambar != null
                    ? Image.network(
                        detailData.gambar!,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        height: 200,
                      )
                    : Shimmer.fromColors(
                        baseColor: Colors.grey.shade500,
                        highlightColor: Colors.grey.shade300,
                        child: Container(
                          color: Colors.red,
                          width: double.infinity,
                          height: 200,
                        ),
                      ),
              ),
              SizedBox(
                height: 15,
              ),
              (detailData.judul != null)
                  ? Text(
                      detailData.judul!,
                      style: Theme.of(context).textTheme.headlineLarge,
                    )
                  : Shimmer.fromColors(
                      baseColor: Colors.grey.shade500,
                      highlightColor: Colors.grey.shade300,
                      child: Container(
                        color: Colors.red,
                        width: 150,
                        height: 30,
                      ),
                    ),
              SizedBox(
                height: 5,
              ),
              (detailData.tanggalPost != null)
                  ? RichText(
                      text: TextSpan(
                        children: [
                          WidgetSpan(
                            child: Icon(Icons.calendar_month, size: 20),
                          ),
                          TextSpan(
                              text: detailData.tanggalPost!,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16))
                        ],
                      ),
                    )
                  : Shimmer.fromColors(
                      baseColor: Colors.grey.shade500,
                      highlightColor: Colors.grey.shade300,
                      child: Container(
                        color: Colors.red,
                        width: 150,
                        height: 30,
                      ),
                    ),
              SizedBox(
                height: 10,
              ),
              (detailData.content != null)
                  ? Text(detailData.content!)
                  : Shimmer.fromColors(
                      baseColor: Colors.grey.shade500,
                      highlightColor: Colors.grey.shade300,
                      child: Container(
                        color: Colors.red,
                        width: 150,
                        height: 30,
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
