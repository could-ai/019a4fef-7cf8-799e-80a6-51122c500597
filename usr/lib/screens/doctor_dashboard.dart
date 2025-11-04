import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:provider/provider.dart';
import '../providers/auth_provider.dart';
import '../widgets/stats_card.dart';
import '../widgets/navigation_drawer.dart';

class DoctorDashboard extends StatelessWidget {
  const DoctorDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Doctor Dashboard'), actions: [IconButton(onPressed: authProvider.logout, icon: const Icon(Icons.logout))]),
      drawer: const NavigationDrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: const [
                Expanded(child: StatsCard(title: 'Today\'s Consultations', value: '15')),
                Expanded(child: StatsCard(title: 'Admissions', value: '3')),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: BarChart(
                BarChartData(
                  barGroups: [
                    BarChartGroupData(x: 0, barRods: [BarChartRodData(toY: 10, color: Colors.blue)]),
                    BarChartGroupData(x: 1, barRods: [BarChartRodData(toY: 5, color: Colors.green)]),
                  ],
                ),
              ),
            ),
            ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/diagnose_patient'), child: const Text('Diagnose Patient')),
            // TODO: Admit patients, request tests
          ],
        ),
      ),
    );
  }
}