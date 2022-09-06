import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:dotted_border/dotted_border.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0Xff1C1F2E),
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: ((context, isScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                toolbarHeight: 100,
                actions: [
                  Padding(
                    padding: EdgeInsets.only(right: 17),
                    child: Icon(Icons.menu_sharp),
                  ),
                ],
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(10),
                  child: Container(
                    height: 14,
                    decoration: BoxDecoration(
                      color: Color(0Xff1C1F2E),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                    ),
                  ),
                ),
                backgroundColor: Color(0Xff1C1F2E),
                expandedHeight: 180,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    'images/item5.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: _getHeaderProfile(),
              ),
              SliverToBoxAdapter(
                child: _getBioProfile(),
              ),
              SliverPersistentHeader(
                pinned: true,
                floating: true,
                delegate: TabBarViewDelegate(
                  TabBar(
                    indicatorColor: Color(0xffF35383),
                    indicatorWeight: 4,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    tabs: [
                      Tab(
                        icon: Image.asset('images/icon_tab_posts.png'),
                      ),
                      Tab(
                        icon: Image.asset('images/icon_tab_bookmark.png'),
                      )
                    ],
                  ),
                ),
              ),
            ];
          }),
          body: TabBarView(children: [
            _getPostView(),
            _getPostView(),
          ]),
        ),
      ),
    );
  }

  Widget _getHeaderProfile() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 17),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Color(0xffF35383),
              ),
              borderRadius: BorderRadius.circular(17),
            ),
            child: Padding(
              padding: EdgeInsets.all(2),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(17),
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: Image.asset('images/profile.png'),
                ),
              ),
            ),
          ),
          SizedBox(width: 15),
          Container(
            height: 65,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'امیراحمد ادیبی',
                    style: TextStyle(
                        fontSize: 14, fontFamily: 'SM', color: Colors.white),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'amirahmadadibi',
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'GB',
                        color: Color(0xffC5C5C5)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _getBioProfile() {
    return Padding(
      padding: EdgeInsets.only(left: 17, right: 17, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            """برنامه‌نویسی فلاتر و اندروید ، مدرس محبوب‌ترین دوره 
مـکتب خونـه و بـرنـامـه نـویـس سـابـق زریـن پـال           
تـخـصـص بـرنـامـه‌نـویسی یعنی اینده و تاثیر گذاری     
آموزش رایگان 👇""",
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Colors.white,
              fontSize: 10,
              fontFamily: 'SM',
            ),
          ),
          SizedBox(height: 7),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "images/link.png",
                width: 20,
                height: 20,
              ),
              SizedBox(width: 5),
              Text(
                "zil.ink/Amirahmad",
                style: TextStyle(
                    color: Colors.blue, fontSize: 12, fontFamily: 'GB'),
              ),
            ],
          ),
          SizedBox(height: 14),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "images/Group.png",
                width: 20,
                height: 20,
              ),
              SizedBox(width: 5),
              Text(
                "developer",
                style: TextStyle(
                    color: Color(0xffC5C5C5), fontSize: 12, fontFamily: 'GB'),
              ),
              SizedBox(width: 15),
              Image.asset(
                "images/location.png",
                width: 20,
                height: 20,
              ),
              SizedBox(width: 5),
              Text(
                "IRAN",
                style: TextStyle(
                    color: Color(0xffC5C5C5), fontSize: 12, fontFamily: 'GM'),
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            children: [
              Text(
                "32",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontFamily: 'GB',
                ),
              ),
              SizedBox(width: 5),
              Text(
                "Posts",
                style: TextStyle(
                    color: Colors.white, fontSize: 10, fontFamily: 'GM'),
              ),
              SizedBox(width: 15),
              Text(
                "16.2K",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontFamily: 'GB',
                ),
              ),
              SizedBox(width: 5),
              Text(
                "Followers",
                style: TextStyle(
                    color: Colors.white, fontSize: 10, fontFamily: 'GM'),
              ),
              SizedBox(width: 15),
              Text(
                "280",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontFamily: 'GB',
                ),
              ),
              SizedBox(width: 5),
              Text(
                "Following",
                style: TextStyle(
                    color: Colors.white, fontSize: 10, fontFamily: 'GM'),
              ),
            ],
          ),
          SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 160,
                height: 46,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Fllow'),
                ),
              ),
              // Spacer(),
              SizedBox(
                width: 160,
                height: 46,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff1C1F2E),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  onPressed: () {},
                  child: Text('Massage'),
                ),
              ),
            ],
          ),
          _getHighlightProfile(),
        ],
      ),
    );
  }
}

Widget _getPostView() {
  return CustomScrollView(
    slivers: [
      SliverPadding(
        padding: EdgeInsets.symmetric(horizontal: 17, vertical: 20),
        sliver: SliverGrid(
          delegate: SliverChildBuilderDelegate(
            ((context, index) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: Image.asset('images/item$index.png'),
                  ),
                ),
              );
            }),
            childCount: 10,
          ),
          gridDelegate: SliverQuiltedGridDelegate(
            crossAxisCount: 3,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            repeatPattern: QuiltedGridRepeatPattern.inverted,
            pattern: [
              QuiltedGridTile(1, 1),
              QuiltedGridTile(2, 2),
              QuiltedGridTile(1, 1),
              QuiltedGridTile(1, 1),
              QuiltedGridTile(1, 1),
            ],
          ),
        ),
      ),
    ],
  );
}

Container _getHighlightProfile() {
  return Container(
    height: 120,
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) => _getHighlightBox(index)),
  );
}

Widget _getHighlightBox(int index) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
    child: Column(
      children: [
        DottedBorder(
          borderType: BorderType.RRect,
          radius: Radius.circular(17),
          padding: EdgeInsets.all(4),
          color: Color(0xfff35383),
          strokeWidth: 2,
          dashPattern: [10, 10],
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            child: Container(
              height: 58,
              width: 58,
              child: Image.asset(_getDataFaceImage()[index]),
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          _getDataFaceName()[index],
          style: TextStyle(color: Colors.white),
        )
      ],
    ),
  );
}

List<String> _getDataFaceImage() {
  return [
    "images/highlight04.png",
    "images/highlight01.png",
    "images/highlight02.png",
    "images/highlight03.png",
    "images/highlight04.png",
  ];
}

List<String> _getDataFaceName() {
  return [
    "Flutter Vip",
    "Support",
    "Shoping",
    "Projects",
    "Projects",
  ];
}

class TabBarViewDelegate extends SliverPersistentHeaderDelegate {
  TabBarViewDelegate(this._tabBar);
  final TabBar _tabBar;
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      child: _tabBar,
    );
  }

  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  double get minExtent => _tabBar.preferredSize.height;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
