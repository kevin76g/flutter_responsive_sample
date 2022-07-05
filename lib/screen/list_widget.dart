import 'package:flutter_responsive_sample/common/importer.dart';

typedef ItemSelectedCallback = void Function(int value);

class ListWidget extends StatefulWidget {
  final ItemSelectedCallback onItemSelected;

  const ListWidget({required this.onItemSelected, Key? key}) : super(key: key);

  @override
  ListWidgetState createState() => ListWidgetState();
}

class ListWidgetState extends State<ListWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: fruitRawData.length,
      itemBuilder: (context, position) {
        Map<String, Object?> map = fruitRawData[position];
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: InkWell(
              onTap: () {
                widget.onItemSelected(position);
              },
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      map['name'].toString(),
                      style: const TextStyle(fontSize: 22.0),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
