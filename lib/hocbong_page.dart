import 'package:flutter/material.dart';

class HocBongPage extends StatefulWidget {
  @override
  _HocBongPageState createState() => _HocBongPageState();
}

class _HocBongPageState extends State<HocBongPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Học bổng'),
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
                        'Hoc bong ${index + 1}',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                          'Trường Đại học Hoa Sen công bố chương trình học bổng tuyển sinh Đại học (ĐH) chính quy năm 2021 với phương thức xét cấp học bổng như sau:'),
                    ],
                  ),
                ),
              );
            }));
  }
}
