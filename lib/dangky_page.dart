import 'package:flutter/material.dart';

import 'navigator.dart';

class DangKyPage extends StatefulWidget {
  @override
  _DangKyPageState createState() => _DangKyPageState();
}

class _DangKyPageState extends State<DangKyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Đăng ký tuyển sinh'),
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
                        'Dang ky ${index + 1}',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                          'Nhằm cung cấp thông tin và giải đáp những thắc mắc cho các học viên muốn tìm hiểu những chương trình đào tạo Thạc Sỹ chất lượng tại ĐH Hoa Sen, Nhà Trường tổ chức Hội thảo Giới thiệu về các chương trình đào tạo Thạc sĩ với 2 chuyên đề chính: - Chuyên đề 1: Chương trình Đào tạo thạc sĩ Trường ĐH Hoa Sen và những đổi mới - Chuyên đề 2: Translation & Culture'),
                    ],
                  ),
                ),
              );
            }));
  }
}
