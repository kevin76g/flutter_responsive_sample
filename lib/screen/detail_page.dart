import 'package:flutter_responsive_sample/common/importer.dart';

class DetailPage extends StatefulWidget {
  final int data;

  const DetailPage({required this.data, Key? key}) : super(key: key);

  @override
  DetailPageState createState() => DetailPageState();
}

class DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: DetailWidget(data: widget.data),
    );
  }
}
