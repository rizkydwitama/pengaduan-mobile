import 'package:flutter/material.dart';
import 'package:pengaduan_mobile/features/dashboard/dashboard_controller.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final DashBoardController controller = DashBoardController();

    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: 16, vertical: 24
          ),
          children: [
            Center(
              child: Text(
                  'Dashboard',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: Colors.black
                  )
              ),
            ),
            const SizedBox(height: 12,),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: controller.totalPengaduan,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.approval,
                        color: Colors.black,
                        size: 32,
                      ),
                      const SizedBox(width: 12,),
                      Column(
                        children: [
                          Text(
                            'PNGNDN001X',
                            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                                color: Colors.black
                            ),
                          ),
                          const SizedBox(height: 4,),
                          Text(
                            '24 Januari 2025',
                            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                              color: Colors.grey
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                );
              },
            )
          ],
        )
      ),
    );
  }
}
