import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:dotted_border/dotted_border.dart';

class MeProfile extends StatelessWidget {
  const MeProfile({Key? key}) : super(key: key);

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
              color: Color.fromARGB(255, 109, 185, 248),
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
                  child: Image.asset('images/profile.me.png'),
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
                    'امیررضا خسروی',
                    style: TextStyle(
                        fontSize: 14, fontFamily: 'SM', color: Colors.white),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'amirrezakhosravii',
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'GB',
                        color: Color(0xffC5C5C5)),
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
          Image.asset('images/icon_profile_edit.png'),
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
            """برنامه‌نویس فلاتر و موبایل 
جونیور دولوپر 
عاشق دنیای کامپیوتر و برنامه نویسی         
    
ارتباط با من👇""",
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
                "zil.ink/Amirreza.kh",
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
                "15",
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
                "10.2K",
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
                "200",
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
          SizedBox(height: 20),
          SizedBox(
            height: 46,
            width: 394,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Color(0Xff1C1F2E),
                  side: BorderSide(
                    width: 2,
                    color: Colors.white,
                  )),
              onPressed: () {},
              child: Text(
                'Insights',
                style: TextStyle(fontSize: 16, fontFamily: 'GB'),
              ),
            ),
          ),
          SizedBox(height: 10),
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
        itemBuilder: (context, index) =>
            index == 0 ? _getAddHighlightBox() : _getHighlightBox(index - 1)),
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

Widget _getAddHighlightBox() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
    child: Padding(
      padding: EdgeInsets.all(2),
      child: Column(
        children: [
          Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 2),
              color: Color(0xff1c1f2e),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Image.asset('images/icon_plus.png'),
          ),
          SizedBox(height: 10),
          Text(
            "New",
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
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
    "Work",
    "Me",
    "Flutter",
    "Books",
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
