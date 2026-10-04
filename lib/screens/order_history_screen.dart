import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import '../providers/app_providers.dart';

class OrderHistoryScreen extends StatelessWidget {
  const OrderHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ordersProvider = Provider.of<OrderProvider>(context);
    final orders = ordersProvider.orders;

    return Scaffold(
      appBar: AppBar(title: const Text('Order History')),
      body: orders.isEmpty
          ? const Center(child: Text('No previous orders found.'))
          : ListView.builder(
              itemCount: orders.length,
              itemBuilder: (ctx, i) {
                final order = orders[i];
                return Card(
                  margin: const EdgeInsets.all(8),
                  child: ExpansionTile(
                    title: Text('\$${order.totalAmount.toStringAsFixed(2)}'),
                    subtitle: Text(DateFormat('dd/MM/yyyy hh:mm a').format(order.date)),
                    trailing: Chip(
                      label: Text(order.status),
                      backgroundColor: Colors.green.withOpacity(0.1),
                      labelStyle: const TextStyle(color: Colors.green),
                    ),
                    children: order.items.map((item) {
                      return ListTile(
                        title: Text(item.food.name),
                        trailing: Text('${item.quantity}x \$${item.food.price}'),
                      );
                    }).toList(),
                  ),
                );
              },
            ),
    );
  }
}
