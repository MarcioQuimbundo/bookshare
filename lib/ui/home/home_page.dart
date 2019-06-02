import 'package:flutter/material.dart';

Color accentColor = Color(0xFFB965D3);

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  final List<String> _categories = [
    'Matemática',
    'Geografia',
    'Química',
    'Física',
    'Romance',
    'Programação'
  ];

  TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController =
        TabController(vsync: this, initialIndex: 0, length: _categories.length);
  }

  @override
  void dispose() {
    _tabController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "Book Share",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.grey,
            ),
            onPressed: () {
              //TODO: call search page
            },
          )
        ],
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          indicatorColor: accentColor,
          indicatorSize: TabBarIndicatorSize.label,
          onTap: (index) {
            setState(() {
              _tabController.index = index;
            });
          },
          tabs: _categories.map((name) {
            final index = _categories.indexOf(name);

            return Container(
              padding: EdgeInsets.all(8),
              child: Text(
                name,
                maxLines: 1,
                style: TextStyle(
                    color: index == _tabController.index
                        ? accentColor
                        : Colors.grey),
              ),
            );
          }).toList(),
        ),
      ),
      drawer: Container(
        width: 280,
        color: Colors.black,
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: _categories.length,
        itemBuilder: (context, index) {
          return _BookListItem(
            data: index,
            onTap: () => Navigator.pushNamed(context, "/bookdetails"),
          );
        },
      ),
    );
  }
}

class _BookListItem extends StatefulWidget {
  final int data;
  final Function onTap;

  const _BookListItem({Key key, this.data, this.onTap}) : super(key: key);

  @override
  __BookListItemState createState() => __BookListItemState();
}

String url =
    "https://bayareaanarchistbookfair.com/wp-content/uploads/2017/02/Bookfair2017_poster.jpg";

class __BookListItemState extends State<_BookListItem> {
  int get data => widget.data;
  Function get onTap => widget.onTap;

  bool wasStarred = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: accentColor,
      onTap: onTap,
      child: Container(
        height: 150,
        key: ObjectKey(data),
        margin: EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  border: Border.all(color: Colors.grey, width: 0.2),
                  image: DecorationImage(
                      fit: BoxFit.fitWidth, image: NetworkImage(url))),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "This is the Book title",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: List.generate(5, (i) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 4, bottom: 16),
                          child:
                              Icon(Icons.star, size: 18, color: Colors.amber),
                        );
                      }).toList(),
                    ),
                    Text(
                      "Description $data",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            IconButton(
              icon: Icon(
                wasStarred ? Icons.favorite : Icons.favorite_border,
                color: wasStarred ? accentColor : Colors.grey,
              ),
              onPressed: () {
                setState(() {
                  wasStarred = !wasStarred;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
