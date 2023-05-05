import 'package:flutter/material.dart';
import 'package:reignite_social/assets.dart';
import 'package:reignite_social/common_components.dart';
import 'package:reignite_social/data.dart';

class HomeSection extends StatefulWidget {
  const HomeSection({super.key});

  @override
  State<HomeSection> createState() => _HomeSectionState();
}

class _HomeSectionState extends State<HomeSection> {
  int section = 0;

  toggleSection(int newIndex) {
    if (newIndex != section) {
      setState(() {
        section = newIndex;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          toolbarHeight: 80,
          centerTitle: true,
          title: Image.asset(
            appbarIcon,
            fit: BoxFit.contain,
            height: 60,
          ),
          bottom: TabBar(
            indicatorPadding:
                const EdgeInsets.symmetric(horizontal: 40, vertical: 8),
            indicatorColor: kOrangeCOlor,
            onTap: (value) {
              toggleSection(value);
            },
            tabs: [
              Tab(
                child: Text(
                  'NPO Updates',
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: section == 0 ? kOrangeCOlor : kSlateColor,
                    fontWeight:
                        section == 0 ? FontWeight.w500 : FontWeight.w400,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Friends',
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: section == 1 ? kOrangeCOlor : kSlateColor,
                    fontWeight:
                        section == 1 ? FontWeight.w500 : FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  const Divider(
                    indent: 0,
                    height: 1,
                    color: kSlateColor,
                    thickness: 1,
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    // height: h * 0.2,
                    width: w,
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          for (int i = 0; i < ngoImages.length; i++) ...[
                            Container(
                              width: 75,
                              margin: const EdgeInsets.symmetric(horizontal: 7),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 75,
                                    width: 75,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage(
                                          getNgoIcon(
                                            ngoImages[i],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 7),
                                  Text(
                                    ngoNames[i],
                                    textAlign: TextAlign.center,
                                    maxLines: 1,
                                    textScaleFactor: 0.9,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.8)),
                                  )
                                ],
                              ),
                            )
                          ]
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  for (final post in posts) ...[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FeedPost(post: post),
                    )
                  ],
                  const SizedBox(height: 100),
                ],
              ),
            ),
            const Placeholder(),
          ],
        ),
      ),
    );
  }
}

class FeedPost extends StatelessWidget {
  final NgoUpdatePost post;
  const FeedPost({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: Column(
        children: [
          SizedBox(
            height: 85,
            child: Row(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  margin: const EdgeInsets.only(right: 20),
                  padding: const EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    border: Border.all(color: kSlateColor, width: 1),
                  ),
                  child: Image.asset(getNgoIcon(post.ngoIcon)),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      post.ngoName,
                      textScaleFactor: 1.7,
                      style: const TextStyle(fontWeight: FontWeight.w700),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: post.categoryIcons
                          .map(
                            (e) => Container(
                              margin: const EdgeInsets.only(right: 8),
                              child: ImageIcon(
                                AssetImage(
                                  getCtegoryIcon(e),
                                ),
                                color: kSlateColor,
                              ),
                            ),
                          )
                          .toList(),
                    )
                  ],
                ),
              ],
            ),
          ),
          if (post.caption != null) ...[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
              child: Text(
                post.caption!,
                textScaleFactor: 1.2,
                style:
                    const TextStyle(height: 1.3, fontWeight: FontWeight.w400),
              ),
            ),
          ],
          if (post.image != null) ...[
            Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                child: Image.asset(getPostImage(post.image!))),
          ],
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  post.isLike
                      ? Container(
                          margin: const EdgeInsets.symmetric(horizontal: 7),
                          child: const ImageIcon(
                            AssetImage(reactionLikeActive),
                            color: kOrangeCOlor,
                            size: 35,
                          ),
                        )
                      : Container(
                          margin: const EdgeInsets.symmetric(horizontal: 7),
                          child: const ImageIcon(
                            AssetImage(reactionLike),
                            color: kSlateColor,
                            size: 35,
                          ),
                        ),
                  post.isSupport
                      ? Container(
                          margin: const EdgeInsets.symmetric(horizontal: 7),
                          child: const ImageIcon(
                            AssetImage(reactionSupportActive),
                            color: kOrangeCOlor,
                            size: 35,
                          ),
                        )
                      : Container(
                          margin: const EdgeInsets.symmetric(horizontal: 7),
                          child: const ImageIcon(
                            AssetImage(reactionSupport),
                            color: kSlateColor,
                            size: 35,
                          ),
                        ),
                  post.isClap
                      ? Container(
                          margin: const EdgeInsets.symmetric(horizontal: 7),
                          child: const ImageIcon(
                            AssetImage(reactionClapActive),
                            color: kOrangeCOlor,
                            size: 35,
                          ),
                        )
                      : Container(
                          margin: const EdgeInsets.symmetric(horizontal: 7),
                          child: const ImageIcon(
                            AssetImage(reactionclap),
                            color: kSlateColor,
                            size: 35,
                          ),
                        ),
                ],
              ),
              const LearnMoreButton(isFilled: false)
            ],
          ),
        ],
      ),
    );
  }
}
