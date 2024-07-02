import 'package:flutter/material.dart';
import 'package:gym1/homepage.dart';

class AddPersonalDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title:
            Text('Add Personal Details', style: TextStyle(color: Colors.white)),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.04,
          vertical: screenHeight * 0.02,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Helps to verify your identity during account recovery',
              style: TextStyle(
                fontSize: screenWidth * 0.04,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 1.0),
                  borderRadius: BorderRadius.circular(screenWidth * 0.02),
                ),
                labelText: 'Display Name',
                hintText: 'Enter your display name',
                suffixIcon: Icon(
                  Icons.close,
                  size: screenWidth * 0.04,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.01),
            Text(
              'Visible to everyone',
              style: TextStyle(
                fontSize: screenWidth * 0.03,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: screenHeight * 0.01),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 1.0),
                  borderRadius: BorderRadius.circular(screenWidth * 0.02),
                ),
                labelText: 'Date of Birth',
                hintText: 'Enter your date of birth',
              ),
            ),
            SizedBox(height: screenHeight * 0.01),
            Text(
              'dd-mm-yyyy',
              style: TextStyle(
                fontSize: screenWidth * 0.03,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: screenHeight * 0.01),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 1.0),
                  borderRadius: BorderRadius.circular(screenWidth * 0.02),
                ),
                labelText: 'Gender',
                hintText: 'Enter your gender',
              ),
            ),
            SizedBox(height: screenHeight * 0.3),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: Text('Agree and Continue',
                    style: TextStyle(
                      fontSize: screenWidth * 0.04,
                      color: Colors.white,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
