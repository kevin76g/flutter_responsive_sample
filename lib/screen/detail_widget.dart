import 'package:flutter_responsive_sample/common/importer.dart';

class DetailWidget extends StatefulWidget {
  final int data;

  const DetailWidget({required this.data, Key? key}) : super(key: key);

  @override
  DetailWidgetState createState() => DetailWidgetState();
}

class DetailWidgetState extends State<DetailWidget> {
  @override
  Widget build(BuildContext context) {
    Map<String, Object?> map = fruitRawData[widget.data];

    return Container(
      padding: const EdgeInsets.all(30.0),
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '${map['name']}  ${map['author']}',
              style: const TextStyle(fontSize: 20.0),
            ),
            const SizedBox(
              height: 50.0,
            ),
            Flexible(child: Image.asset('assets/images/${map['name']}.jpg')),
          ],
        ),
      ),
    );
  }
}
