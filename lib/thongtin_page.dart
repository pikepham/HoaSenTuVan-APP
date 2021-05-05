import 'package:flutter/material.dart';
import 'package:hoasentuvan/reusable_card.dart';

import 'contents.dart';

class ThongTinPage extends StatefulWidget {
  @override
  _ThongTinPageState createState() => _ThongTinPageState();
}

class _ThongTinPageState extends State<ThongTinPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Thông tin tuyển sinh'),
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
                        'Thong tin ${index + 1}',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                          'Khoa Kinh tế và Quản trị thông báo đến các bạn Sinh viên lịch nộp Đề án/ Báo cáo/ Khóa luận học kỳ 20.2A như sau:'),
                    ],
                  ),
                ),
              );
            }));
  }
}
