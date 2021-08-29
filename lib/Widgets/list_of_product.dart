import 'package:flutter/material.dart';
import '../utils/listing.dart';
import 'package:intl/intl.dart';
import '../color/uiColor.dart';

class ProductList extends StatelessWidget {
  final List<Listing> transactions;

  ProductList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      child: ListView.builder(
        itemBuilder: (ctx, index) {
          return Card(
            color: UIColor.customCard,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 70,
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
                    '\$${transactions[index].amount.toStringAsFixed(2)}',
                    style: TextStyle(
                      color: UIColor.customCardCostText,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      transactions[index].productname,
                    ),
                    Text(
                      DateFormat.yMMMd().format(transactions[index].date),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
        itemCount: transactions.length,
      ),
    );
  }
}
