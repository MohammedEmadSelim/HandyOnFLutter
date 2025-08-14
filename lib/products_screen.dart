import 'package:flutter/material.dart';

class ProductsScreen extends StatelessWidget {
  ProductsScreen({super.key});

  final TextEditingController searchController = TextEditingController();
  final List<String> imageUrls = [
    'https://picsum.photos/id/1015/600/400',
    'https://picsum.photos/id/1016/600/400',
    'https://picsum.photos/id/1018/600/400',
    'https://picsum.photos/id/1020/600/400',
    'https://picsum.photos/id/1024/600/400',
    'https://picsum.photos/id/1025/600/400',
    'https://picsum.photos/id/1033/600/400',
    'https://picsum.photos/id/1035/600/400',
    'https://picsum.photos/id/1039/600/400',
    'https://picsum.photos/id/1040/600/400',
  ];
  final List<String> titles = [
    "Data Insights Pro",
    "Ad Campaign Toolkit",
    "Creative Design Pack",
    "Email Automation Suite",
    "Social Media Manager",
    "Analytics Dashboard",
    "Marketing Tools",
    "Design Assets",
    "Email Marketing",
    "User Profiles",
  ];

  final List<String> subtitles = [
    "Advanced analytics for your business",
    "Tools for effective ad campaigns",
    "Design assets for your brand",
    "Automate your email marketing",
    "Manage your social media",
    "Track and visualize your data",
    "Reach more customers",
    "Professional design elements",
    "Grow your audience",
    "Manage and connect with users",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Marketly',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Icon(
              Icons.shopping_cart_outlined,
              color: Color(0xff1C140D),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: DefaultTabController(
          length: 3,
          child: Column(
            children: [
              TextFormField(
                controller: searchController,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color(0xff9C704A),
                  ),
                  hintText: 'Email',
                  // for fill color
                  fillColor: Color(0xffF5EDE8),
                  filled: true,
                  //======
                  //for border
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(12)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(12)),
                  //=======
                ),
                onChanged: (value) {
                  // print(value);
                },
                onTap: () {},
              ),
              SizedBox(
                height: 24,
              ),
              TabBar(
                indicatorColor: Color(0xffF28021),
                unselectedLabelColor: Colors.black,
                labelColor: Color(0xffF28021),
                dividerHeight: 0,
                tabs: [
                  Tab(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      decoration: BoxDecoration(
                        color: Color(0xffF5EDE8),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.analytics,
                            color: Color(0xff1C140D),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            'ads',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      decoration: BoxDecoration(
                        color: Color(0xffF5EDE8),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.analytics,
                            color: Color(0xff1C140D),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Expanded(
                            child: Text(
                              'Design Assets',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                              overflow: TextOverflow.ellipsis,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      decoration: BoxDecoration(
                        color: Color(0xffF5EDE8),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.analytics,
                            color: Color(0xff1C140D),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Expanded(
                            child: Text(
                              'Design Assets',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                              overflow: TextOverflow.ellipsis,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: TabBarView(children: [
                  Screen1(imageUrls: imageUrls, titles: titles),
                  Screen2(),
                  Screen3()
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Screen3 extends StatelessWidget {
  const Screen3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('third screen'),
    );
  }
}

class Screen2 extends StatelessWidget {
  const Screen2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('second screen'),
    );
  }
}

class Screen1 extends StatelessWidget {
  const Screen1({
    super.key,
    required this.imageUrls,
    required this.titles,
  });

  final List<String> imageUrls;
  final List<String> titles;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: .75,
          crossAxisCount: 3,
          crossAxisSpacing: 12),
      itemCount: imageUrls.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            ClipRRect(
              child: Image.network(imageUrls[index]),
              borderRadius: BorderRadius.circular(12),
            ),
            Text(
              titles[index],
              style: TextStyle(
                  fontWeight: FontWeight.w500, fontSize: 16),
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              titles[index],
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Color(0xff9C704A)),
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        );
      },
    );
  }
}
