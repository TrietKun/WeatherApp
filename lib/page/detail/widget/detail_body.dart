import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:wheatherapp/apps/utils/assets.dart';
import 'package:wheatherapp/models/weather.dart';

class DetailBody extends StatelessWidget {
  const DetailBody({super.key, required this.listdata});

  final List<WeatherDetail> listdata;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemBuilder: (context, index) {
        DateTime datetime = DateTime.parse(listdata[index].dt_txt);
        String day = DateFormat('EEEE').format(datetime);
        String time = DateFormat('hh:mm a').format(datetime);

        return Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white30,
          ),
          child: Center(
              child: Row(
            children: [
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      createTemp(listdata[index].main.temp, size: 30),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text('data',
                          style: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          )),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(day,
                      style: const TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      )),
                  const SizedBox(height: 8),
                  Text(time,
                      style: const TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      )),
                ],
              )),
              SizedBox(
                width: MediaQuery.sizeOf(context).width / 4,
                child: Image.asset(
                  'assets/${listdata[index].weather.icon}.png',
                  // 'assets/04n.png',
                  fit: BoxFit.cover,
                ),
              ),
            ],
          )),
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(height: 15);
      },
      itemCount: 12,
    );
  }
}
