import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pengaduan_mobile/features/persetujuan/persetujuan_controller.dart';
import 'package:pengaduan_mobile/widgets/pop_up_widget.dart';

class PersetujuanPage extends StatelessWidget {
  const PersetujuanPage({super.key});

  @override
  Widget build(BuildContext context) {
    final PersetujuanController controller = Get.find();

    return SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
              horizontal: 16, vertical: 24
          ),
          children: [
            Center(
              child: Text(
                  'Persetujuan',
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
              itemCount: controller.totalPersetujuan,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    PopUpWidget.acceptAndRejectPopUp(
                      context: context,
                      titleString: 'Setuju?',
                      middleText: 'Setujui pengaduan ini jika anda sebagai admin sudah melakukan verifikasi.',
                      buttonText: 'Submit',
                      isSuccess: true,
                    );
                  },
                  child: Container(
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
                  ),
                );
              },
            )
          ],
        )
    );
  }
}
