import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

Column buildBtnPopularCourses(IconData icon, String course) {
  return Column(
    children: [
      Icon(icon),

      Text(course)
    ],
  );
}

Widget popularCoursesSection = Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text(
      'Popular Courses :',
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    ),

    Container(
      margin: EdgeInsets.only(top: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildBtnPopularCourses(Icons.calendar_today, 'Science'),
          buildBtnPopularCourses(Icons.coffee, 'Cooking'),
          buildBtnPopularCourses(Icons.architecture, 'Math'),
          buildBtnPopularCourses(Icons.motorcycle, 'Biology'),
          buildBtnPopularCourses(Icons.star, 'Design')
        ],
      ),
    )
  ],
);

BottomNavigationBarItem buildPartBottomNavBarItem(IconData icon, String label) {
  return BottomNavigationBarItem(
    icon: Icon(icon),
    label: label
  );
}

Row buildTimeCourse(String time) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Icon(
        Icons.alarm,
        size: 14,
      ),

      Container(
        margin: EdgeInsets.symmetric(horizontal: 4.0),
        child: Text(
          time,
          style: TextStyle(fontSize: 10),
        ),
      )
    ],
  );
}

Container buildCardContinueLearning(IconData icon, String course, String chapter, String time) {
  return Container(
    padding: EdgeInsets.all(16.0),
    margin: EdgeInsets.only(right: 16.0),
    color: Color.fromARGB(255, 147, 255, 203),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon),

        Container(
          margin: EdgeInsets.symmetric(vertical: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                course,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),

              Text(
                chapter,
                style: TextStyle(fontSize: 12)
              )
            ],
          ),
        ),

        buildTimeCourse(time)
      ],
    ),
  );
}

Widget continueLearningSection = Container(
  margin: EdgeInsets.only(top: 28.0),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Continue Courses :',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),

      Container(
        margin: EdgeInsets.only(top: 16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildCardContinueLearning(Icons.calendar_today, 'Science', 'Chapter 4', '27 Mins'),
            buildCardContinueLearning(Icons.star, 'Design', 'Chapter 5', '30 Mins'),
            buildCardContinueLearning(Icons.motorcycle, 'Biology', 'Chapter 1', '25 Mins'),
            buildCardContinueLearning(Icons.coffee, 'Cooking', 'Chapter 3', '18 Mins'),
          ],
        ),
      )
    ],
  )
);

Container buildCardLastSeenCourses(IconData icon, String course, String time) {
  return Container(
    height: 70,
    margin: EdgeInsets.symmetric(vertical: 8.0),
    padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 227, 116, 247),
      borderRadius: BorderRadius.circular(16.0)
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(icon),

            Container(
              margin: EdgeInsets.only(left: 28.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    course,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),

                  Text(
                    time,
                    style: TextStyle(fontSize: 13),
                  ),

                ],
              ),
            ),
          ],
        ),

        Icon(Icons.play_circle_fill_outlined)
      ],
    ),
  );
}

Widget lastSeenCoursesSection = Container(
  margin: EdgeInsets.only(top: 28.0),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Last Seen Courses :',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),

      Container(
        margin: EdgeInsets.only(top: 8.0),
        child: Column(
          children: [
            buildCardLastSeenCourses(Icons.inventory_2_outlined, 'Basics of Designing', '1 hour, 25 mins'),
            buildCardLastSeenCourses(Icons.summarize, 'Human Respiratory', '4 hour, 10 mins'),
            buildCardLastSeenCourses(Icons.folder, 'Integration & Differentiation', '2 hour, 37 mins')
          ],
        ),
      )
      
    ],
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test 1 - C14190016',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Test 1 - C14190016'),
        ),
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(28.0),
              child: Column(
                children: [
                  popularCoursesSection,
                  continueLearningSection,
                  lastSeenCoursesSection
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          items: [
            buildPartBottomNavBarItem(Icons.home, 'Home'),
            buildPartBottomNavBarItem(Icons.explore, 'Explore'),
            buildPartBottomNavBarItem(Icons.chat, 'Chat'),
          ],
        ),
      ),
    );
  }
}