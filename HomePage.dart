

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  bool _isScrolled = false;
  double searchBarWidth = 1.0;
  double searchBarTranslationX = 0.0;
  double searchBarTranslationY = 0.0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    if (_scrollController.offset > 0 && !_isScrolled) {
      setState(() {
        _isScrolled = true;
        searchBarWidth = 0.75;
        searchBarTranslationX = 50.0;
        searchBarTranslationY = -35.0;
      });
    } else if (_scrollController.offset <= 0 && _isScrolled) {
      setState(() {
        _isScrolled = false;
        searchBarWidth = 1.0;
        searchBarTranslationX = 0.0;
        searchBarTranslationY = 0.0;
      });
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xffE01E89),
        centerTitle: true,
        title: Flexible(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'خصومات و شحن مجاني بترقية حسابك الى كوينا',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.85,
                      fontFamily: 'Lama Sans',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                  TextSpan(
                    text: ' ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.85,
                      fontFamily: 'Lama Sans',
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline,
                      height: 0,
                    ),
                  ),
                  TextSpan(
                    text: 'سجلي الان',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.85,
                      fontFamily: 'Lama Sans',
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline,
                      height: 0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.menu,
                      size: 35,
                    ),
                    Spacer(),
                    Icon(
                      Icons.favorite_border,
                      size: 35,
                    ),
                    Icon(
                      Icons.person_outline,
                      size: 35,
                    ),
                    Icon(
                      Icons.shopping_bag_outlined,
                      size: 35,
                    ),
                  ],
                ),
                AnimatedContainer(
                  height: 44,
                  padding: EdgeInsets.symmetric(
                    horizontal: 5,
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  width: MediaQuery.of(context).size.width * searchBarWidth,
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  transform: Matrix4.translationValues(
                    _isScrolled ? 20.0 : 10.0,
                    searchBarTranslationY,
                    _isScrolled ? -20.0 : 0,
                  ),
                  child: TextField(
                    style: TextStyle(
                      fontFamily: 'TheSansArabic',
                    ),
                    decoration: InputDecoration(
                      prefix: SizedBox(width: 20),
                      hintText: 'إبحث عن منتج أو ماركة',
                      hintStyle: TextStyle(
                        color: Color(0xFF868686),
                        fontSize: 16.59,
                        fontFamily: 'TheSansArabic',
                        fontWeight: FontWeight.w300,
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 7.0),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(39),
                        borderSide: BorderSide(
                          color: Color(0xFFF5F5F6),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(39),
                        borderSide: BorderSide(
                          color: Color(0xFFF5F5F6),
                        ),
                      ),
                      fillColor: Color(0xFFF5F5F6),
                      filled: true,
                    ),
                    maxLines: 1,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Container(
              width: kScreenWidth,
              height: 271.99,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://via.placeholder.com/433x272"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              height: 100.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount:
                    10, // You can change this number based on your requirement
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 85.03,
                      height: 92.03,
                      decoration: ShapeDecoration(
                        image: DecorationImage(
                          image:
                              NetworkImage("https://via.placeholder.com/92x92"),
                          fit: BoxFit.fill,
                        ),
                        shape: OvalBorder(),
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              height: 350,
              child: SizedBox(
                height: 350,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: 280,
                      child: Card(
                        elevation: 4.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              width: 262.45,
                              height: 262.45,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://via.placeholder.com/262x262"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Container(
                              width: 262.45,
                              height: 77.59,
                              decoration:
                                  BoxDecoration(color: Color(0xFFDE0F7E)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'اخفاء كلي للعيوب، تحديد، نحت وتوحيد لون بتغطية كاملة يحققها كونسيلر سوبر فكس من ريفلوشن.',
                                  textAlign: TextAlign.right,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 3,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13.10,
                                    fontFamily: 'Lama Sans',
                                    fontWeight: FontWeight.w700,
                                    height: 1.5,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 40, // Your existing ListView.builder height
              // ListView.builder code here
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'وصل حديثا',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFFDE0F7E),
                      fontSize: 21,
                      fontFamily: 'Lama Sans',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                  Text(
                    'عرض الكل',
                    style: TextStyle(
                      color: Color(0xFFDE0F7E),
                      fontSize: 18,
                      fontFamily: 'Lama Sans',
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.underline,
                      height: 0,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 30.0),
                    child: Container(
                      color: Color(0xFFEAEAEA),
                      width: kScreenWidth,
                      height: 300.38,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomCardWidget(),
                      CustomCardWidget(),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 16), // Adjust the padding as needed
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'العروض والهاديا',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFFDE0F7E),
                      fontSize: 21,
                      fontFamily: 'TheSans',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                  Text(
                    'عرض الكل',
                    style: TextStyle(
                      color: Color(0xFFDE0F7E),
                      fontSize: 18,
                      fontFamily: 'TheSans',
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.underline,
                      height: 0,
                    ),
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                Container(
                  width: kScreenWidth,
                  height: 202.23,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:
                          NetworkImage("https://via.placeholder.com/431x202"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 150),
                    width: Get.width * 0.8,
                    height: 181.04,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(32, 0, 0, 0),
                          blurRadius: 28,
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'هدية مجانية من لانكوم',
                          style: TextStyle(
                            color: Color(0xFFDE0F7E),
                            fontSize: 18,
                            fontFamily: 'Lama Sans',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          width: 250.94,
                          child: Text(
                            'احصلي على هدية مجانية من أرقى ماركات الميك اب العالمية يوم الجمعة',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF393336),
                              height: 2,
                              fontSize: 14,
                              fontFamily: 'Lama Sans',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Container(
                          width: 109.71,
                          height: 37.93,
                          decoration: ShapeDecoration(
                            color: Color(0xFFDE0F7E),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.69),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'تسوقي الأن',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.83,
                                fontFamily: 'Lama Sans',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            CustomCircleStack(),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 430.28,
              height: 179.28,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://via.placeholder.com/430x179"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 430.28,
              height: 179.28,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://via.placeholder.com/430x179"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: 430.24,
              height: 467.76,
              decoration: BoxDecoration(color: Color(0xFFF4C6DD)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'التخفيضات',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFFDE0F7E),
                            fontSize: 21,
                            fontFamily: 'Lama Sans',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                        Text(
                          'كل التخفيضات',
                          style: TextStyle(
                            color: Color(0xFFDE0F7E),
                            fontSize: 18,
                            fontFamily: 'Lama Sans',
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.underline,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomCardWidget(),
                      CustomCardWidget(),
                    ],
                  ),
                ],
              ),
            ),
            CustomCircleStack(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'الماركات المميزة',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFFDE0F7E),
                      fontSize: 21,
                      fontFamily: 'TheSans',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                  Text(
                    'جميع الماركات',
                    style: TextStyle(
                      color: Color(0xFFDE0F7E),
                      fontSize: 18,
                      fontFamily: 'TheSans',
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.underline,
                      height: 0,
                    ),
                  )
                ],
              ),
            ),
            ScrollableContainerList(),
            Container(
              height: 650,
              child: Stack(
                children: [
                  Container(
                    width: 705.83,
                    height: 281.30,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image:
                            NetworkImage("https://via.placeholder.com/706x281"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 230,
                    left: 15,
                    child: Row(
                      children: [
                        CustomCardWidget(),
                        CustomCardWidget(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: Get.width,
                    height: 448.0,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 257.0,
                          height: 448.0,
                          margin: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Container(
                                width: 257.0,
                                height: 258.56,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      "https://via.placeholder.com/257x259",
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              // Pink Container
                              Container(
                                width: 257.0,
                                height: 189.38,
                                color: Color(0xFFDE0F7E),
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 18.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Text(
                                        'سحر الازهار والحلوى الابدي',
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 19.18,
                                          fontFamily: 'Lama Sans',
                                          fontWeight: FontWeight.w700,
                                          height: 0.05,
                                          letterSpacing: -0.19,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 29,
                                      ),
                                      SizedBox(
                                        width: 226.11,
                                        child: Text(
                                          'انجرفي بعيدًا مع سحر هذا العطر الذي يفوح بمزيج راقي من تفاح بينك ليدي والياسمين المكرمل والعنبر وخشب الصندل.',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 13.18,
                                            fontFamily: 'Lama Sans',
                                            fontWeight: FontWeight.w400,
                                            height: 1.5,
                                            letterSpacing: 0.13,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 20.0),
                                        child: Text(
                                          'تسوقي الأن',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14.63,
                                            fontFamily: 'TheSans',
                                            fontWeight: FontWeight.w400,
                                            decoration:
                                                TextDecoration.underline,
                                            height: 0.08,
                                            letterSpacing: -0.15,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ))
              ],
            ),
            Text(
              'إكتشفي أيضاً',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Color(0xFFDE0F7E),
                fontSize: 21,
                fontFamily: 'TheSans',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
            Container(
                width: Get.width / 2,
                height: 311.79,
                child: Container(
                  width: 183.26,
                  height: 311.79,
                  margin: EdgeInsets.only(bottom: 16.0),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 183.26,
                          height: 183.26,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://via.placeholder.com/183x183"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0.53,
                        top: 183.26,
                        child: Container(
                          width: 182.74,
                          height: 128.53,
                          decoration: BoxDecoration(color: Color(0xFFF4C6DD)),
                        ),
                      ),
                      Positioned(
                        left: 5.71,
                        top: 201.82,
                        child: SizedBox(
                          width: 169.07,
                          child: Text(
                            'تخلصي من جفاف وخشونة الوجه والجسم بخلاصة عسل المانوكا الغني الفيتامينات والمرطبات الطبيعية الدسمة',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 11.85,
                              fontFamily: 'Lama Sans',
                              fontWeight: FontWeight.w100,
                              height: 1.3,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 61.68,
                        top: 283.83,
                        child: Text(
                          'تسوقي الأن',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFF201C1C),
                            fontSize: 13,
                            fontFamily: 'Lama Sans',
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.underline,
                            height: 0.11,
                            letterSpacing: -0.13,
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
