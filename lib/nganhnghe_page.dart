import 'package:flutter/material.dart';

class NganhNghePage extends StatefulWidget {
  @override
  _NganhNghePageState createState() => _NganhNghePageState();
}

class _NganhNghePageState extends State<NganhNghePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Ngành nghề tuyển sinh'),
        ),
        body: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Nganh nghe ${index + 1}',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                          'Vào 14h, ngày 10 tháng 3 năm 2021, Tại phòng Hội thảo 901, Hội đồng đã tổ chức thẩm định chương trình đào tạo ngành Bất động sản, chuyên ngành Đầu tư và kinh doanh bất động sản, trình độ Đại học chính quy.'),
                    ],
                  ),
                ),
              );
            }));
  }
}
