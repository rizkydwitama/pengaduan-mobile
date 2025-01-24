import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pengaduan_mobile/features/pengaduan/pengaduan_controller.dart';
import 'package:pengaduan_mobile/widgets/text_form_field.dart';

class PengaduanPage extends StatelessWidget {
  const PengaduanPage({super.key});

  @override
  Widget build(BuildContext context) {
    final PengaduanController controller = Get.find();
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 24
          ),
          children: [
            Text(
              'NIK',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 8,),
            TextFormFieldWidget(
              name: 'NIK',
              hintText: 'NIK',
              enabled: true,
              onChanged: (String? value) {
                controller.nama = value?? '';
              },
            ),
            const SizedBox(height: 16,),
            Text(
              'Nama',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 8,),
            TextFormFieldWidget(
              name: 'Nama',
              hintText: 'Nama',
              enabled: true,
              onChanged: (String? value) {
                controller.nama = value?? '';
              },
            ),
            const SizedBox(height: 16,),
            Text(
              'Nomor HP',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 8,),
            TextFormFieldWidget(
              name: 'Nomor HP',
              hintText: 'Nomor Hp',
              enabled: true,
              onChanged: (String? value) {
                controller.nomorHP = value?? '';
              },
            ),
            const SizedBox(height: 16,),
            Text(
              'Email',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 8,),
            TextFormFieldWidget(
              name: 'Email',
              hintText: 'Email',
              enabled: true,
              onChanged: (String? value) {
                controller.email = value?? '';
              },
            ),
            const SizedBox(height: 16,),
            Text(
              'Alamat',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 8,),
            TextFormFieldWidget(
              name: 'Alamat',
              hintText: 'Alamat',
              enabled: true,
              onChanged: (String? value) {
                controller.alamat = value?? '';
              },
            ),
            const SizedBox(height: 48,),
            ElevatedButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black
                ),
                onPressed: () {},
                child: Text(
                  'Submit',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Colors.white
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}
