import 'package:flutter/material.dart';
import 'package:reignite_social/assets.dart';
import 'package:reignite_social/common_components.dart';
import 'package:reignite_social/data.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: searchTiles.length,
      child: Scaffold(
        backgroundColor: kCreambackgroundColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          toolbarHeight: h * 0.1,
          centerTitle: true,
          title: SizedBox(
            width: w * 0.9,
            child: const TextField(
              style: TextStyle(fontSize: 22),
              textAlign: TextAlign.left,
              decoration: InputDecoration(
                hintText: "Search",
                alignLabelWithHint: true,
                hintStyle: TextStyle(fontSize: 18),
                fillColor: kDarkCreme,
                labelStyle: TextStyle(color: Colors.green),
                filled: true,
                prefixIcon: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: ImageIcon(
                    AssetImage(btbSearch),
                    size: 25,
                    color: kSlateColor,
                  ),
                ),
                // prefixIconConstraints: BoxConstraints(maxHeight: 35, maxWidth: 35),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide:
                      BorderSide(width: 2, color: kSlateColor), //<-- SEE HERE
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),

                  borderSide:
                      BorderSide(width: 2, color: kOrangeCOlor), //<-- SEE HERE
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),

                  borderSide:
                      BorderSide(width: 2, color: kSlateColor), //<-- SEE HERE
                ),
                isDense: true, // Added this
                contentPadding: EdgeInsets.all(10), //
              ),
            ),
          ),
          bottom: TabBar(
              isScrollable: true,
              labelPadding: EdgeInsetsDirectional.zero,
              indicatorColor: kCreambackgroundColor,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 1),
              tabs: searchTiles
                  .map((e) => Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 5),
                        padding: const EdgeInsets.symmetric(
                            vertical: 7, horizontal: 5),
                        decoration: BoxDecoration(
                            border: Border.all(color: kOrangeCOlor, width: 1.5),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(12),
                            ),
                            color: Colors.white),
                        child: Row(
                          children: [
                            ImageIcon(
                              AssetImage(getCtegoryIcon(e.image)),
                              color: kOrangeCOlor,
                            ),
                            Text(
                              " ${e.title}",
                              style: const TextStyle(
                                color: kOrangeCOlor,
                              ),
                            ),
                          ],
                        ),
                      ))
                  .toList()),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Divider(
                  thickness: 2,
                  color: kSlateColor,
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Text(
                    "Best Match For You",
                    textScaleFactor: 1.5,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: bestMatchForYou
                          .map((e) => SearchpageCard(item: e))
                          .toList(),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Text(
                    "Friends Have Donated To",
                    textScaleFactor: 1.5,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: friendsHaveDonatedTo
                          .map((e) => SearchpageCard(item: e))
                          .toList(),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Text(
                    "Trending",
                    textScaleFactor: 1.5,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children:
                          trending.map((e) => SearchpageCard(item: e)).toList(),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Text(
                    "Most Popular",
                    textScaleFactor: 1.5,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: mostPopular
                          .map((e) => SearchpageCard(item: e))
                          .toList(),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ]),
        ),
      ),
    );
  }
}

class SearchpageCard extends StatelessWidget {
  final SearchPageItem item;
  const SearchpageCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    return Container(
      width: w * 0.75,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        border: Border.all(color: kSlateColor, width: 2),
      ),
      clipBehavior: Clip.hardEdge,
      height: h * 0.55,
      child: Column(children: [
        Expanded(
            child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Colors.white,
          ),
          child: Image.asset(item.image),
        )),
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: kDarkCreme,
            ),
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                        child: Text(
                      item.name,
                      textScaleFactor: 1.6,
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    )),
                    Row(
                      children: item.categoryIcons
                          .map((e) => Container(
                                margin: const EdgeInsets.only(right: 8),
                                child: ImageIcon(
                                  AssetImage(getCtegoryIcon(e)),
                                  color: kSlateColor,
                                ),
                              ))
                          .toList(),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    item.description,
                    textScaleFactor: 1.1,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(height: 1.5),
                  ),
                ),
                const Spacer(),
                Row(
                  children: const [
                    Spacer(),
                    LearnMoreButton(isFilled: true),
                  ],
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
