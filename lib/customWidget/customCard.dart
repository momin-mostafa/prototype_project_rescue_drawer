import 'package:flutter/material.dart';
import 'package:prototype_project_rescue_drawer/color/uiColor.dart';
import 'package:intl/intl.dart';

class CustomCard extends StatelessWidget {
  final double cost;
  final String title;
  final DateTime date;
  CustomCard({
    required this.cost,
    required this.date,
    required this.title,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          color: UIColor.customCard,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: Stack(
                  children: [
                    Container(
                      width: 70,
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: UIColor.customCardCost,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          width: 1,
                          color: UIColor.customCardCost,
                        ),
                      ),
                      child: Text(
                        '\$ ' + cost.toString(),
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: UIColor.customCardCostText,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: UIColor.customCardTitleColor,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        DateFormat().format(date),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: UIColor.customCardDate,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
