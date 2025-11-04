import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:provider/provider.dart';
import '../providers/auth_provider.dart';
import '../widgets/stats_card.dart';
import '../widgets/navigation_drawer.dart';

class RadiologistDashboard extends StatelessWidget {
  const RadiologistDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Radiologist Dashboard'), actions: [IconButton(onPressed: authProvider.logout, icon: const Icon(Icons.logout))]),
      drawer: const NavigationDrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: const [
                Expanded(child: StatsCard(title: 'Pending Services', value: '6')),
                Expanded(child: StatsCard(title: 'Completed Scans', value: '10')),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: PieChart(
                PieChartData(
                  sections: [
                    PieChartSectionData(value: 50, color: Colors.blue, title: 'Normal'),
                    PieChartSectionData(value: 25, color: Colors.yellow, title: 'Abnormal'),
                    PieChartSectionData(value: 25, color: Colors.red, title: 'Critical'),
                  ],
                ),
              ),
            ),
            ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/upload_result'), child: const Text('Upload Result')),
            // TODO: View requests
          ],
        ),
      ),
    );
  }
}