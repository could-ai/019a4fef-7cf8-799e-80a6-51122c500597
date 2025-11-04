import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:provider/provider.dart';
import '../providers/auth_provider.dart';
import '../widgets/stats_card.dart';
import '../widgets/navigation_drawer.dart';

class NurseDashboard extends StatelessWidget {
  const NurseDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Nurse Dashboard'), actions: [IconButton(onPressed: authProvider.logout, icon: const Icon(Icons.logout))]),
      drawer: const NavigationDrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: const [
                Expanded(child: StatsCard(title: 'Patients with Vitals', value: '30')),
                Expanded(child: StatsCard(title: 'Pending Prescriptions', value: '10')),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: PieChart(
                PieChartData(
                  sections: [
                    PieChartSectionData(value: 40, color: Colors.blue, title: 'Normal'),
                    PieChartSectionData(value: 30, color: Colors.red, title: 'Critical'),
                    PieChartSectionData(value: 30, color: Colors.green, title: 'Stable'),
                  ],
                ),
              ),
            ),
            ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/record_vitals'), child: const Text('Record Vitals')),
            // TODO: View prescriptions
          ],
        ),
      ),
    );
  }
}