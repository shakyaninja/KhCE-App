import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:khwopa_app/res/assests.dart';
import 'package:khwopa_app/widget/pagination.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:khwopa_app/widget/department/teachers.dart';
import 'package:khwopa_app/widget/department/departmentIndex.dart';

class DepartmentInfo extends StatefulWidget {
  static final String path = "lib/widget/onboard.dart";
  @override
  _DepartmentInfoState createState() => _DepartmentInfoState();
}

class _DepartmentInfoState extends State<DepartmentInfo> {
  final SwiperController _swiperController = SwiperController();
  final int _pageCount = 4;
  int _currentIndex = 0;
  final List<String> titles = [
    "Khwopa College of Engineering",
    "Aliquam eget justo \n nec arcu ultricies elementum \n id at metus. ",
  ];
  final List<Color> pageBgs = [
    Colors.blue.shade300,
    Colors.grey.shade600,
    Colors.cyan.shade300
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Center(
            child: Container(
              height: 300,
              margin: const EdgeInsets.only(left: 8.0, right: 8.0),
              decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.circular(5.0)),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                  child: Swiper(
                index: _currentIndex,
                controller: _swiperController,
                itemCount: _pageCount,
                onIndexChanged: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                loop: false,
                itemBuilder: (context, index) {
                  switch (index) {
                    case 0:
                      return DepartmentIndex();
                      break;
                    case 1:
                      return ProfileEightPage(
                          name: 'Shiva Kumar Shrestha',
                          post: 'Head of Department',
                          location: 'Tanahun',
                          email: 'ersks@gmail.com',
                          phone: '9849761940',
                          specialization: 'M.E. Computer (Running)');
                      break;
                    case 2:
                      return ProfileEightPage(
                          name: 'Dinesh Gothe',
                          post: 'Deputy Head of Department',
                          location: 'Bhaktapur',
                          email: 'diligent.dinesh@gmail.com',
                          phone: '9841495760',
                          specialization: 'M.E. Computer (Running)');
                      break;
                    case 3:
                      return ProfileEightPage(
                          name: 'Bindu Bhandari',
                          post: 'Assistant Lecturer',
                          location: 'Kathmandu',
                          email: 'bindu.bhandari.520@gmail.com',
                          phone: '9843******',
                          specialization: 'B.E. Computer');
                      break;
                    default:
                      return _buildPage(
                          title: titles[index],
                          icon: images[index],
                          pageBg: pageBgs[index]);
                  }
                },
                pagination: SwiperPagination(
                    builder: CustomPaginationBuilder(
                        activeSize: Size(10.0, 20.0),
                        size: Size(10.0, 15.0),
                        color: Colors.grey.shade600)),
              )),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPage({String title, String icon, Color pageBg}) {
    final TextStyle titleStyle = TextStyle(
        fontWeight: FontWeight.w500, fontSize: 20.0, color: Colors.white);
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(16.0, 50.0, 16.0, 40.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0), color: pageBg),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 20.0),
          Text(
            title,
            textAlign: TextAlign.center,
            style: titleStyle,
          ),
          SizedBox(height: 30.0),
          Expanded(
            child: ClipOval(
                child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: CachedNetworkImageProvider(icon),
                      fit: BoxFit.cover)),
            )),
          ),
          SizedBox(height: 50.0),
        ],
      ),
    );
  }
}
