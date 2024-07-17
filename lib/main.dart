import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'NavBar.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(HomeApp());
}

class HomeApp extends StatefulWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  static const String _title = 'Dhaan';
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: const Text(
          'Dhaan',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 60,
        color: Colors.black87,
        child: InkWell(
          onTap: () {
            Clipboard.setData(ClipboardData());
            HapticFeedback.vibrate();
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DonatePage()),
            );
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Column(
              children: const <Widget>[
                Icon(
                  Icons.volunteer_activism,
                  color: Colors.white,
                ),
                Text(
                  'Donate',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // CarouselSlider(
            //   options: CarouselOptions(scrollDirection: Axis.horizontal),
            //   items: [1, 2, 3, 4, 5].map(
            //     (i) {
            //       return Builder(
            //         builder: (BuildContext context) {
            //           return Container(
            //             width: MediaQuery.of(context).size.width,
            //             margin: const EdgeInsets.symmetric(horizontal: 5.0),
            //             decoration: const BoxDecoration(color: Colors.amber),
            //             child: const Image(
            //               image: AssetImage(
            //                 'images/afternoon.jpg',
            //               ),
            //             ),,
            //           );
            //         },
            //       );
            //     },
            //   ).toList(),
            // ),
            // CarouselSlider(
            //     items: items,
            //     options: CarouselOptions(
            //       height: 400,
            //       aspectRatio: 16/9,
            //       viewportFraction: 0.8,
            //       initialPage: 0,
            //       enableInfiniteScroll: true,
            //       reverse: false,
            //       autoPlay: true,
            //       autoPlayInterval: Duration(seconds: 3),
            //       autoPlayAnimationDuration: Duration(milliseconds: 800),
            //       autoPlayCurve: Curves.fastOutSlowIn,
            //       enlargeCenterPage: true,
            //       scrollDirection: Axis.horizontal,
            //     )
            // ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
              child: CarouselSlider(
                options: CarouselOptions(
                  enableInfiniteScroll: true,
                  autoPlay: true,
                  initialPage: 0,
                  enlargeCenterPage: true,
                  viewportFraction: 0.85,
                ),
                items: <Widget>[
                  Image.asset(
                    'images/slide1.jpg',
                    fit: BoxFit.fill,
                  ),
                  Image.asset(
                    'images/slide2.jpg',
                    fit: BoxFit.fill,
                  ),
                  Image.asset(
                    'images/slide3.jpg',
                    fit: BoxFit.fill,
                  ),
                  Image.asset(
                    'images/slide4.jpg',
                    fit: BoxFit.fill,
                  ),
                ],
              ),
            ),
            // ImageSlideshow(
            //   height: 250,
            //   initialPage: 0,
            //   indicatorColor: Colors.blue,
            //   indicatorBackgroundColor: Colors.grey,
            //   onPageChanged: (value) {
            //     print('Page changed: $value');
            //   },
            //   autoPlayInterval: 3000,
            //   isLoop: true,
            //   children: [
            //     Image.asset(
            //       'images/slide1.jpg',
            //       fit: BoxFit.fill,
            //     ),
            //     Image.asset(
            //       'images/slide2.jpg',
            //       fit: BoxFit.fill,
            //     ),
            //     Image.asset(
            //       'images/slide3.jpg',
            //       fit: BoxFit.fill,
            //     ),
            //     Image.asset(
            //       'images/slide4.jpg',
            //       fit: BoxFit.fill,
            //     ),
            //   ],
            // ),
            const Divider(),
            Container(
              color: Color(0xFFDEFCFD),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.volunteer_activism,
                    size: 50.0,
                  ),
                  Text(
                    'Donations Recieved So Far-',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  Text(
                    "'XX'",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                color: const Color(0xFFDEFCFD),
                child: Column(
                  children: const [
                    Text(
                      "Our Mission:",
                      style: TextStyle(
                        fontSize: 45.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      '"To Reduce Hunger Deaths By Making Your Donations Reach The People In Need"',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Divider(),
            Container(
              color: const Color(0xFFDEFCFD),
              child: const Text(
                '- FAO estimates that at least 435 million people are seriously undernourished in the world today.'
                'Every Year, 15 million children die of hunger-related causes',
                style: TextStyle(
                  fontSize: 25.0,
                  fontFamily: 'EduQLDBeginner',
                ),
                textAlign: TextAlign.center,
              ),
            ),
            // Container(
            //   width: 1000,
            //   child: ElevatedButton(
            //     style: ElevatedButton.styleFrom(
            //       primary: Colors.grey[900],
            //     ),
            //     onPressed: () {
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(builder: (context) => const DonatePage()),
            //       );
            //     },
            //     child: const Text(
            //       'Donate',
            //       style: TextStyle(color: Colors.white, fontSize: 20),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

class DonatePage extends StatefulWidget {
  const DonatePage({Key? key}) : super(key: key);

  @override
  State<DonatePage> createState() => _DonatePageState();
}

class _DonatePageState extends State<DonatePage> {
  static const String _title = 'Dhaan';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_rounded,
            ),
            onPressed: () {
              Clipboard.setData(ClipboardData());
              HapticFeedback.vibrate();
              Navigator.pop(context);
            },
          ),
          backgroundColor: Colors.grey[900],
          title: const Text(
            'Donate',
          ),
        ),
        body: Donate(),
      ),
    );
  }
}

class Donate extends StatelessWidget {
  const Donate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        // Container(
        //   height: 47.5,
        //   width: 350,
        //   child: ElevatedButton(
        //     style: ElevatedButton.styleFrom(
        //       primary: Colors.indigoAccent,
        //     ),
        //     child: const Text(
        //       'Morning',
        //       style: TextStyle(color: Colors.white, fontSize: 20),
        //     ),
        //     onPressed: () {
        //       Navigator.push(
        //         context,
        //         MaterialPageRoute(builder: (context) => const MorningPage()),
        //       );
        //     },
        //   ),
        // ),
        // Container(
        //   child: ConstrainedBox(
        //     constraints: BoxConstraints.tightForFinite(double width: double.infinity, double height: double.infinity),
        //     child: FlatButton(
        //       onPressed: null,
        //       padding: EdgeInsets.all(100.0),
        //       child: Image.asset('images/slide1.jpg'),
        //     ),
        //   ),
        // ),
        Expanded(
          child: InkWell(
            onTap: () {
              Clipboard.setData(ClipboardData());
              HapticFeedback.vibrate();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MorningPage()),
              );
            }, // Handle your callback.
            splashColor: Colors.brown.withOpacity(0.5),
            child: Ink(
              // height: 175,
              // width: 500,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/morning.jpg'),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 2,
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              Clipboard.setData(ClipboardData());
              HapticFeedback.vibrate();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Afternoon()),
              );
            }, // Handle your callback.
            splashColor: Colors.brown.withOpacity(0.5),
            child: Ink(
              // height: 175,
              // width: 500,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/afternoon.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 2,
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              Clipboard.setData(ClipboardData());
              HapticFeedback.vibrate();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const NightPage()),
              );
            }, // Handle your callback.
            splashColor: Colors.brown.withOpacity(0.5),
            child: Ink(
              // height: 175,
              // width: 500,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/night.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ),
        // Container(
        //   height: 47.5,
        //   width: 350,
        //   padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        //   child: ElevatedButton(
        //     style: ElevatedButton.styleFrom(
        //       primary: Colors.indigoAccent[400],
        //     ),
        //     child: const Text(
        //       'Afternoon',
        //       style: TextStyle(color: Colors.white, fontSize: 20),
        //     ),
        //     onPressed: () {
        //       Navigator.push(
        //         context,
        //         MaterialPageRoute(builder: (context) => const Afternoon()),
        //       );
        //     },
        //   ),
        // ),
        // Container(
        //   height: 47.5,
        //   width: 350,
        //   padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        //   child: ElevatedButton(
        //     style: ElevatedButton.styleFrom(
        //       primary: Colors.blueAccent,
        //     ),
        //     child: const Text(
        //       'Night',
        //       style: TextStyle(color: Colors.white, fontSize: 20),
        //     ),
        //     onPressed: () {
        //       Navigator.push(
        //         context,
        //         MaterialPageRoute(builder: (context) => const NightPage()),
        //       );
        //     },
        //   ),
        // ),
      ],
    );
  }
}

class MorningPage extends StatelessWidget {
  const MorningPage({Key? key}) : super(key: key);

  static const String _title = 'Dhaan';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Colors.grey[900],
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_rounded,
                color: Colors.white,
              ),
              onPressed: () {
                Clipboard.setData(ClipboardData());
                HapticFeedback.vibrate();
                Navigator.pop(context);
              },
            ),
            title: const Text('Morning')),
        body: const MorningPageStateful(),
      ),
    );
  }
}

class MorningPageStateful extends StatefulWidget {
  const MorningPageStateful({Key? key}) : super(key: key);

  @override
  State<MorningPageStateful> createState() => _MorningPageStatefulState();
}

class _MorningPageStatefulState extends State<MorningPageStateful> {
  TextEditingController nameController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController areaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Fill the details listed below',
                  style: TextStyle(fontSize: 20),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: mobileController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Mobile number',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: addressController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Address',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: areaController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Area',
                ),
              ),
            ),
            Container(
              height: 50,
              width: 175,
              child: ElevatedButton(
                child: Text('Submit'),
                onPressed: () {
                  Clipboard.setData(ClipboardData());
                  HapticFeedback.vibrate();
                  print(nameController.text);
                  print(mobileController.text);
                  print(addressController.text);
                  print(areaController.text);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SubmitPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey[900],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Afternoon extends StatelessWidget {
  const Afternoon({Key? key}) : super(key: key);
  static const String _title = 'Dhaan';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Colors.grey[900],
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_rounded,
                color: Colors.white,
              ),
              onPressed: () {
                Clipboard.setData(ClipboardData());
                HapticFeedback.vibrate();
                Navigator.pop(context);
              },
            ),
            title: const Text('Afternoon')),
        body: const AfternoonPageState(),
      ),
    );
  }
}

class AfternoonPageState extends StatefulWidget {
  const AfternoonPageState({Key? key}) : super(key: key);

  @override
  State<AfternoonPageState> createState() => _AfternoonPageStateState();
}

class _AfternoonPageStateState extends State<AfternoonPageState> {
  TextEditingController nameController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController areaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Fill the details listed below',
                  style: TextStyle(fontSize: 20),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: mobileController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Mobile number',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: addressController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Address',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: areaController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Area',
                ),
              ),
            ),
            Container(
              height: 50,
              width: 175,
              child: ElevatedButton(
                child: const Text('Submit'),
                onPressed: () {
                  Clipboard.setData(ClipboardData());
                  HapticFeedback.vibrate();
                  print(nameController.text);
                  print(mobileController.text);
                  print(addressController.text);
                  print(areaController.text);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SubmitPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey[900],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NightPage extends StatelessWidget {
  const NightPage({Key? key}) : super(key: key);
  static const String _title = 'Dhaan';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Colors.grey[900],
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_rounded,
                color: Colors.white,
              ),
              onPressed: () {
                Clipboard.setData(ClipboardData());
                HapticFeedback.vibrate();
                Navigator.pop(context);
              },
            ),
            title: const Text('Night')),
        body: const NightPageState(),
      ),
    );
  }
}

class NightPageState extends StatefulWidget {
  const NightPageState({Key? key}) : super(key: key);

  @override
  State<NightPageState> createState() => _NightPageStateState();
}

class _NightPageStateState extends State<NightPageState> {
  TextEditingController nameController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController areaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Fill the details listed below',
                  style: TextStyle(fontSize: 20),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: mobileController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Mobile number',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: addressController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Address',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: areaController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Area',
                ),
              ),
            ),
            Container(
              height: 50,
              width: 175,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                child: const Text('Submit'),
                onPressed: () {
                  Clipboard.setData(ClipboardData());
                  HapticFeedback.vibrate();
                  print(nameController.text);
                  print(mobileController.text);
                  print(addressController.text);
                  print(areaController.text);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SubmitPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey[900],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SubmitPage extends StatelessWidget {
  const SubmitPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.grey[900],
          leading: IconButton(
            icon: const Icon(
              Icons.home_filled,
              color: Colors.white,
            ),
            onPressed: () {
              Clipboard.setData(ClipboardData());
              HapticFeedback.vibrate();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeApp()),
              );
            },
          ),
          title: Text('Dhaan'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "'THANK YOU'",
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "You Will Help Us Bring A Change",
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 20.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(
                "(You Will Recieve A Call Shortly)",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
