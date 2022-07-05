import 'package:flutter_responsive_sample/common/importer.dart';

class DetailWidget extends StatefulWidget {
  final int data;

  // const DetailWidget(this.data);

  const DetailWidget({required this.data, Key? key}) : super(key: key);

  @override
  DetailWidgetState createState() => DetailWidgetState();
}

class DetailWidgetState extends State<DetailWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              widget.data.toString(),
              style: const TextStyle(fontSize: 36.0, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
