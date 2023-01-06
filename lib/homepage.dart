import 'package:companies_ratkum/util/jobcard.dart';
import 'package:companies_ratkum/util/joblist.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
//List Интересные работы
  final List intJob = [
    ['Halyk', 'assets/1.png', 60],
    ['CentrCredit', 'assets/2.png', 60],
    ['Kaspi', 'assets/4.png', 60],
  ];
   final List newJob = [
    ['Halyk', 'assets/3.png', 60],
    ['CentrCredit','assets/5.png', 60],
    ['Kaspi', 'assets/6.png', 60],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
          height: 50,
        ),
//custom appbar
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.white)),
            child: Icon(
              Icons.menu_sharp,
              size: 40,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            'Вакансии ',
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
        ),

        SizedBox(
          height: 25,
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Container(
                          height: 30,
                          child: Icon(
                            Icons.search,
                            size: 30,
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Поиск вакансии'),
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(9),
                      border: Border.all(color: Colors.white)),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 42, 41, 41),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.white)),
                height: 50,
                width: 50,
                child: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),

        SizedBox(
          height: 20,
        ),

        Padding(
          padding: const EdgeInsets.only(left: 20, bottom: 10),
          child: Text(
            'Интересные вакансии',
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
        ),
        //discover a new path
        Container(
            height: 150,
            child: ListView.builder(
              itemCount: intJob.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return JobCard(
                    companyName: intJob[index][0],
                    logoImage: intJob[index][1],
                    hourlyRate: intJob[index][2]);
              },
            )),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: Text(
            'Новые вакансии',
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
        ),

        Container(
          height: 220,
            child: ListView.builder(
              itemCount: newJob.length,
              scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  return JobList(
                    companyName: newJob[index][0],
                    logoImage: newJob[index][1],
                    hourlyRate: newJob[index][2]

                  );
                },
                ),
                ),
      ]),

      //recent
    );
  }
}
