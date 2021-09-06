import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;
    double height = screenSize.height;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('my quiz app'),
          backgroundColor: Colors.deepPurple,
          leading: Container(),
          centerTitle: true,
        ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.all(width * 0.01)),
            Center(
              child: Image.asset(
                'images/quiz.jpeg',
                width: width * 0.8,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(width * 0.012),
            ),
            Text(
              'fluter quiz apps',
              style: TextStyle(
                fontSize: width * 0.065,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'notice before solve quiz\nRead all press quiz button',
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: EdgeInsets.all(width * 0.04),
            ),
            _buildStep(width, '1. random quiz 3'),
            _buildStep(width, '2. random quiz 3'),
            _buildStep(width, '3. random quiz 3'),
            Padding(padding: EdgeInsets.all(width * 0.018)),
            Container(
              padding: EdgeInsets.only(bottom: width * 0.018),
              child: Center(
                child: ButtonTheme(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      // minimumSize: MaterialStateProperty.all(
                      //     Size.fromWidth(width * 0.36)),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.deepPurple),
                    ),
                    child: Text(
                      'now solve quiz',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  minWidth: width * 0.8,
                  height: height * 0.05,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildStep(double width, String title) {
    return Container(
      padding: EdgeInsets.fromLTRB(
          width * 0.048, width * 0.024, width * 0.048, width * 0.024),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.check_box,
            size: width * 0.04,
          ),
          Padding(
            padding: EdgeInsets.only(right: width * 0.024),
          ),
          Text(title),
        ],
      ),
    );
  }
}
