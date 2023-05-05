// top stories

List ngoNames = [
  'Sightline Institute',
  'Housing Matters',
  'World Food Programme',
  'Direct Relief',
  'Wikimedia Forum',
  'Autism New Jersey',
  'Climate works',
  'Clean Air Task Force',
  'Feed the Children',
  'Heart to Heart'
];

List ngoImages = [
  'sightline_icon',
  'housing_matters_icon',
  'world_food_program_icon',
  'direct_relief_icon',
  'wikimedia_icon',
  'autism_new_jersey_icon',
  'climateworks_icon',
  'clean_air task_force_icon',
  'feed_the_children_icon',
  'heart_to_heart_icon'
];

// posts
class NgoUpdatePost {
  String ngoName;
  String ngoIcon;
  String? image;
  String? caption;
  List<String> categoryIcons;
  bool isLike;
  bool isSupport;
  bool isClap;
  NgoUpdatePost({
    required this.ngoName,
    required this.ngoIcon,
    this.image,
    this.caption,
    required this.categoryIcons,
    required this.isLike,
    required this.isSupport,
    required this.isClap,
  });
}

List<NgoUpdatePost> posts = [
  NgoUpdatePost(
      ngoName: "Climateworks \nFoundation",
      ngoIcon: 'climateworks_icon',
      categoryIcons: ['climate'],
      caption:
          "Equity and justice are central to our collective work to stop dangerous climate change and to adapt to the climate disruption that has already arrived. This has been broadly acknowledged in the Paris Agreement and in the design of the...",
      isLike: true,
      isSupport: false,
      isClap: false),
  NgoUpdatePost(
      ngoName: "Wikimedia Foundation",
      ngoIcon: 'wikimedia_icon',
      image: 'wikimedia_post_image',
      categoryIcons: ['education', 'drama', 'laptop'],
      isLike: true,
      isSupport: false,
      isClap: false),
  NgoUpdatePost(
      ngoName: "Heart to Heart\nInternational",
      ngoIcon: 'heart_to_heart_icon',
      categoryIcons: ['protection', 'love'],
      image: 'climateworks_post_image',
      caption:
          'Abdul Raman lived in a refugee camp in Syria after bombings destroyed his home. The bombing also took his lower legs and killed his mother and brother. Abdul had to adjust to this new life without his family and without the...',
      isLike: false,
      isSupport: true,
      isClap: true),
];

String getCtegoryIcon(String name) => 'assets/ngo_category_icons/$name.png';
String getNgoIcon(String name) => 'assets/ngos_logos/$name.png';
String getPostImage(String name) => 'assets/posts/$name.png';

///
/// search page data

class SearchTile {
  String title;
  String image;
  SearchTile({
    required this.title,
    required this.image,
  });
}

List categoryIcons = [
  'climate',
  'drama',
  'education',
  'laptop',
  'love',
  'peace',
  'pet',
  'protection',
];

List<SearchTile> searchTiles = [
  SearchTile(title: 'Education', image: 'education'),
  SearchTile(title: 'Environment', image: 'climate'),
  SearchTile(title: 'Health', image: 'protection'),
  SearchTile(title: 'Humanity', image: 'peace'),
  SearchTile(title: 'Animals', image: 'pet')
];

class SearchPageItem {
  String name;
  List categoryIcons;
  String description;
  String image;
  SearchPageItem({
    required this.name,
    required this.categoryIcons,
    required this.description,
    required this.image,
  });
}

List<SearchPageItem> bestMatchForYou = [
  SearchPageItem(
      name: "accessSOS",
      categoryIcons: ['protection', 'laptop'],
      description:
          'A tech nonprofit organization on a mission to make emergency help accessible. Our vision is communica...',
      image: 'assets/search_page_images/bestforyou/1.png'),
  SearchPageItem(
      name: "Empowr",
      categoryIcons: ['laptop', 'education'],
      description:
          'A nonprofit (501c3) that uplifts the black community by creating the school-to-career pipeline. We unders...',
      image: 'assets/search_page_images/bestforyou/2.png'),
  SearchPageItem(
      name: "Tech by Choice",
      categoryIcons: ['laptop', 'education'],
      description:
          'We’re a nonprofit passionate about helping people interested in technology, no matter their experienc...',
      image: 'assets/search_page_images/bestforyou/3.png'),
  SearchPageItem(
      name: "Unity is Strength",
      categoryIcons: ['protection', 'laptop'],
      description:
          'A network of online communities where Israelis, Palestinians, and others with interest in the Israel-Palestine re...',
      image: 'assets/search_page_images/bestforyou/4.png'),
];

List<SearchPageItem> friendsHaveDonatedTo = [
  SearchPageItem(
      name: "Do It For The Love",
      categoryIcons: ['protection', 'drama'],
      description:
          'Our mission is to inspire hope and healing through the power of music by supporting clinical and community ...',
      image: 'assets/search_page_images/friendshavedonated/1.png'),
  SearchPageItem(
      name: "Equal Justice Society",
      categoryIcons: ['peace'],
      description:
          'Transforming the nation’s consciousness on race through law, social science, and the arts. Our legal ...',
      image: 'assets/search_page_images/friendshavedonated/2.png'),
  SearchPageItem(
      name: "Save The Bay",
      categoryIcons: ['climate'],
      description:
          'Our mission is to protect and restore San Francisco Bay for people and wildlife.',
      image: 'assets/search_page_images/friendshavedonated/3.png'),
  SearchPageItem(
      name: "Impact Fund",
      categoryIcons: ['peace', 'love'],
      description:
          'Our mission is to provide grants, advocacy, and education to support impact litigation on behalf of comm...',
      image: 'assets/search_page_images/friendshavedonated/4.png'),
];

List<SearchPageItem> trending = [
  SearchPageItem(
      name: "Save The Children",
      categoryIcons: ['peace', 'education'],
      description:
          'Save the Children believes every child deserves a future. Our founder Eglantyne Jebb saw children dying ...',
      image: 'assets/search_page_images/trending/1.png'),
  SearchPageItem(
      name: "MapLight",
      categoryIcons: ['laptop'],
      description:
          'We believe that everyone deserves an equal voice in our democracy. We support reducing the influence of  ...',
      image: 'assets/search_page_images/trending/2.png'),
  SearchPageItem(
      name: "The Grubbio Project",
      categoryIcons: ['love'],
      description:
          'We provide a clean, beautiful, quiet, and safe space for people to rest during the day',
      image: 'assets/search_page_images/trending/3.png'),
  SearchPageItem(
      name: "Rebuild Together",
      categoryIcons: ['love'],
      description:
          'We provide emergency repairs year-round to qualified applicants to address critical problems in areas suc...',
      image: 'assets/search_page_images/trending/4.png'),
];

List<SearchPageItem> mostPopular = [
  SearchPageItem(
      name: "Shanti Project",
      categoryIcons: ['protection'],
      description:
          'We build human connections to reduce isolation, enhance health and well-being, and improve quality of life.',
      image: 'assets/search_page_images/popular/1.png'),
  SearchPageItem(
      name: "Seacology",
      categoryIcons: ['pet'],
      description:
          'Our mission is to protect threatened island ecosystems all over the world. We do that by working directly with ...',
      image: 'assets/search_page_images/popular/2.png'),
  SearchPageItem(
      name: "Hands On Bay Area",
      categoryIcons: ['education', 'laptop'],
      description:
          'We connect companies and people with high-quality volunteer projects through our extensive network of loc...',
      image: 'assets/search_page_images/popular/3.png'),
  SearchPageItem(
      name: "Sewa Organization",
      categoryIcons: ['protection'],
      description:
          'We work with local communities around the world to develop self-sustaining programs that preserve ...',
      image: 'assets/search_page_images/popular/4.png'),
];

////////////

