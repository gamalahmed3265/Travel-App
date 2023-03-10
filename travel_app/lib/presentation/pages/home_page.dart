import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/presentation/resource/colors_manager.dart';
import 'package:travel_app/presentation/cubit/app_cubit_states.dart';
import 'package:travel_app/presentation/cubit/app_cubits.dart';
import 'package:travel_app/presentation/resource/image_manager.dart';
import 'package:travel_app/presentation/resource/string_manager.dart';
import 'package:travel_app/presentation/widgets/app_large_text.dart';
import 'package:travel_app/presentation/widgets/app_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  var images = {
    AssetsManager.imgHom1: StringManager.strHom1,
    AssetsManager.imgHom2: StringManager.strHom2,
    AssetsManager.imgHom3: StringManager.strHom3,
    AssetsManager.imgHom4: StringManager.strHom4
  };
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(body: BlocBuilder<AppCubits, CubitStates>(
      builder: (context, state) {
        if (state is LoadedState) {
          var info = state.places;
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //menu text
                Container(
                  padding: const EdgeInsets.only(top: 70, left: 20),
                  child: Row(
                    children: [
                      const Icon(Icons.menu, size: 30, color: Colors.black54),
                      Expanded(child: Container()),
                      Container(
                        margin: const EdgeInsets.only(right: 20),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.withOpacity(0.5),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                //discover text
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: AppLargeText(text: StringManager.discover),
                ),
                const SizedBox(
                  height: 20,
                ),
                //tabbar
                SizedBox(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: TabBar(
                        labelPadding:
                            const EdgeInsets.only(left: 20, right: 20),
                        controller: _tabController,
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.grey,
                        isScrollable: true,
                        indicatorSize: TabBarIndicatorSize.label,
                        indicator: CircleTabIndicator(
                            color: AppColors.mainColor, radius: 4),
                        tabs: const [
                          Tab(text: StringManager.places),
                          Tab(text: StringManager.inspiration),
                          Tab(text: StringManager.emotions),
                        ]),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  height: 300,
                  width: double.maxFinite,
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      ListView.builder(
                        itemCount: info.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {
                              BlocProvider.of<AppCubits>(context)
                                  .detailPage(info[index]);
                            },
                            child: Container(
                              margin: const EdgeInsets.only(right: 15, top: 10),
                              width: 200,
                              height: 300,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: NetworkImage(info[index].img),
                                      fit: BoxFit.cover)),
                            ),
                          );
                        },
                      ),
                      ListView.builder(itemBuilder: (context, index) {
                        return ListTile(
                          leading: const Icon(Icons.account_circle),
                          title:
                              Text(StringManager.line + (index + 1).toString()),
                          selectedTileColor: Colors.green[400],
                          onTap: () {
                            setState(() {});
                          },
                        );
                      }),
                      const Text(StringManager.bye)
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppLargeText(
                        text: StringManager.exploreMore,
                        size: 22,
                      ),
                      AppText(
                          text: StringManager.seeAll,
                          color: AppColors.textColor1)
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 120,
                  width: double.maxFinite,
                  margin: const EdgeInsets.only(left: 20),
                  child: ListView.builder(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, index) {
                        return Container(
                          margin: const EdgeInsets.only(right: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // margin: const EdgeInsets.only(right: 50),
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                    image: DecorationImage(
                                        image: AssetImage(
                                            images.keys.elementAt(index)),
                                        fit: BoxFit.cover)),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                child: AppText(
                                  text: images.values.elementAt(index),
                                  color: AppColors.textColor2,
                                ),
                              )
                            ],
                          ),
                        );
                      }),
                )
              ],
            ),
          );
        } else {
          return Container();
        }
      },
    ));
  }
}

class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;

  CircleTabIndicator({required this.color, required this.radius});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // TODO: implement createBoxPainter
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final Color color;
  double radius;

  _CirclePainter({required this.color, required this.radius});

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;
    final Offset circleOffset = Offset(
        configuration.size!.width / 2 - radius / 2,
        configuration.size!.height - radius);
    canvas.drawCircle(offset + circleOffset, radius, _paint);
  }
}
