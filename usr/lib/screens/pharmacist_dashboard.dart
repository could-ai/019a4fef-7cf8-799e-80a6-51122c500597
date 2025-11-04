import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:provider/provider.dart';
import '../providers/auth_provider.dart';
import '../widgets/stats_card.dart';
import '../widgets/navigation_drawer.dart';

class PharmacistDashboard extends StatelessWidget {
  const PharmacistDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Pharmacist Dashboard'), actions: [IconButton(onPressed: authProvider.logout, icon: const Icon(Icons.logout))]),
      drawer: const NavigationDrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: const [
                Expanded(child: StatsCard(title: 'Inventory Items', value: '200')),
                Expanded(child: StatsCard(title: 'Dispensed Today', value: '25')),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: BarChart(
                BarChartData(
                  barGroups: [
                    BarChartGroupData(x: 0, barRods: [BarChartRodData(toY: 150, color: Colors.blue)]),
                    BarChartGroupData(x: 1, barRods: [BarChartRodData(toY: 50, color: Colors.green)]),
                  ],
                ),
              ),
            ),
            ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/manage_inventory'), child: const Text('Manage Inventory')),
            // TODO: Issue medications, update prices
          ],
        ),
      ),
    );
  }
}