import 'package:flutter/material.dart';

import 'card_item.dart';

//EventsPage

class EventsPage extends StatelessWidget {
  static final String title = 'Opacity Example';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.purple),
        home: MainPage(title: title),
      );
}

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({
    required this.title,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<CardItem> items = <CardItem>[
    CardItem(
      title: 'Винни-Пух',
      color: Colors.orange,
      urlImage:
          'https://avatars.mds.yandex.net/i?id=b42f47c21f1fa4fd9cccf0824d04c2f138287391-7663592-images-thumbs&n=13',
    ),
    CardItem(
      title: 'Джерри',
      color: Colors.blue,
      urlImage: 'https://st.weblancer.net/download/894720_935xp.jpg',
    ),
    CardItem(
      title: 'Белоснежка',
      color: Colors.deepPurple,
      urlImage:
          'https://avatars.mds.yandex.net/i?id=e30c509ba27ed1ab0d528b6606286f02f14173e4-7751470-images-thumbs&n=13',
    ),
    CardItem(
      title: 'Дональд-Дак',
      color: Colors.green,
      urlImage:
          'https://avatars.mds.yandex.net/i?id=fec4c8e8d74c1692881cfcc593a1d06b67c560fd-8194230-images-thumbs&n=13',
    ),
    CardItem(
      title: 'Фея',
      color: Colors.red,
      urlImage:
          'https://static.wikia.nocookie.net/disney/images/a/af/Rosetta.png/revision/latest?cb=20160623172108&path-prefix=ru',
    ),
    CardItem(
      title: 'Симба',
      color: Colors.greenAccent,
      urlImage:
          'https://avatars.mds.yandex.net/i?id=c4256b4db63987a5b3b710a18e7941ae-4291891-images-thumbs&n=13',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final double padding = 8;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(padding),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: padding,
          mainAxisSpacing: padding,
          childAspectRatio: 3 / 4,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];

          return buildCard(item: item);
        },
      ),
    );
  }

  Widget buildCard({required CardItem item}) => GestureDetector(
        onTapDown: (_) => setTapped(item, isTapped: true),
        onTapUp: (_) => setTapped(item, isTapped: false),
        onTapCancel: () => setTapped(item, isTapped: false),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Container(
                color: item.color,
                child: AnimatedOpacity(
                  duration: Duration(milliseconds: 500),
                  opacity: item.isTapped ? 1 : 0.5,
                  child: Image.network(item.urlImage, fit: BoxFit.cover),
                ),
              ),
              if (!item.isTapped)
                Center(
                  child: Text(
                    item.title,
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ),
            ],
          ),
        ),
      );

  void setTapped(CardItem item, {required bool isTapped}) {
    setState(() {
      this.items = items
          .map((otherItem) =>
              item == otherItem ? item.copy(isTapped: isTapped) : otherItem)
          .toList();
    });
  }
}
