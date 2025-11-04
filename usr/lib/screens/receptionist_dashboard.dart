import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:provider/provider.dart';
import '../providers/auth_provider.dart';
import '../widgets/stats_card.dart';
import '../widgets/navigation_drawer.dart';

class ReceptionistDashboard extends StatelessWidget {
  const ReceptionistDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Receptionist Dashboard'), actions: [IconButton(onPressed: authProvider.logout, icon: const Icon(Icons.logout))]),
      drawer: const NavigationDrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: const [
                Expanded(child: StatsCard(title: 'Today\'s Appointments', value: '20')),
                Expanded(child: StatsCard(title: 'New Patients', value: '5')),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: LineChart(
                LineChartData(
                  lineBarsData: [
                    LineChartBarData(
                      spots: [FlSpot(0, 10), FlSpot(1, 15), FlSpot(2, 20)],
                      isCurved: true,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
            ),
            ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/patient_registration'), child: const Text('Register Patient')),
            // TODO: Add appointment booking
          ],
        ),
      ),
    );
  }
}