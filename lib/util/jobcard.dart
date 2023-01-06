import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class JobCard extends StatelessWidget {
  final String companyName;
  final String logoImage;
  final int hourlyRate;

  const JobCard(
      {required this.companyName,
      required this.logoImage,
      required this.hourlyRate});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Container(
        padding: EdgeInsets.all(8),

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
            color: Colors.grey[200], border: Border.all(color: Colors.white, width: 3)),
        width: 200,
        //
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  child: Image.asset(logoImage),
                ),
                Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey[300],
                        border: Border.all(color: Colors.white)),
                    child: Text(
                      companyName,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ))
              ],
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Цена :",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(' ${hourlyRate.toString()} money')
              ],
            )
          ],
        ),
      ),
    );
  }
}
