import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/driver_user.dart';

import 'smallColordContainer.dart';

class DriverCard extends StatelessWidget {
  const DriverCard({Key key, this.driverUser}) : super(key: key);
  final DriverUser driverUser;
  @override
  Widget build(BuildContext context) {
    List<String> s = ['ssd', 'sqw', 'asd', 'asd'];
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.19,
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(9, 9, 9, 0),
                    child: CircleAvatar(),
                  ),
                  Text(driverUser.gender ? 'ذكر' : 'انثى'),
                  Text(driverUser.age.toString()),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(driverUser.name, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: driverUser.languages.map((e) {
                      if (driverUser.languages.indexOf(e) > 3) {
                        return Container();
                      }
                      if (driverUser.languages.indexOf(e) == 3) {
                        return Padding(
                          padding: const EdgeInsets.fromLTRB(4, 4, 4, 4),
                          child: SmallColoredContainer(
                            text: '...',
                            color: Color(0x88FFBE00),
                          ),
                        );
                      }
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(4, 4, 4, 4),
                        child: SmallColoredContainer(
                          text: e,
                          color: Color(0x88FFBE00),
                        ),
                      );
                    }).toList(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: driverUser.expertise.map((e) {
                      if (driverUser.expertise.indexOf(e) > 3) {
                        return Container();
                      }
                      if (driverUser.expertise.indexOf(e) == 3) {
                        return Padding(
                          padding: const EdgeInsets.fromLTRB(4, 4, 4, 4),
                          child: SmallColoredContainer(
                            text: '...',
                            color: Color(0x88FF6584),
                          ),
                        );
                      }
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(4, 4, 4, 4),
                        child: SmallColoredContainer(
                          text: e,
                          color: Color(0x88FF6584),
                          height: 21,
                        ),
                      );
                    }).toList(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: driverUser.hobbies.map((e) {
                      if (driverUser.hobbies.indexOf(e) > 3) {
                        return Container();
                      }
                      if (driverUser.hobbies.indexOf(e) == 3) {
                        return Padding(
                          padding: const EdgeInsets.fromLTRB(4, 4, 4, 4),
                          child: SmallColoredContainer(
                            text: '...',
                            color: Color(0x8834A853),
                          ),
                        );
                      }
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(4, 4, 4, 4),
                        child: SmallColoredContainer(
                          text: e,
                          color: Color(0x8834A853),
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text('15 طلعة'),
                    Row(
                      children: [
                        Text(
                          driverUser.rating.toString(),
                          style: TextStyle(fontSize: 12),
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 16,
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
