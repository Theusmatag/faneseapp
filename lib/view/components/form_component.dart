import 'package:app_fanese/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormComponent extends StatelessWidget {
  const FormComponent({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formkey = GlobalKey<FormState>();
    HomeController homecontroller = Get.find();

    final sized = MediaQuery.of(context).size;

    homecontroller.playanimation();
    return Obx(
      () => AnimatedOpacity(
        duration: const Duration(seconds: 2),
        opacity: homecontroller.opc.value,
        child: Form(
          key: formkey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      size: 18,
                      Icons.abc,
                    ),
                    labelText: 'Nome do MEI',
                  ),
                  controller: homecontroller.email.value,
                ),
                SizedBox(
                  height: sized.height * 0.030,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      size: 18,
                      Icons.people,
                    ),
                    labelText: 'CNPJ',
                  ),
                  controller: homecontroller.email.value,
                ),
                SizedBox(
                  height: sized.height * 0.030,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      size: 18,
                      Icons.email,
                    ),
                    labelText: 'E-mail',
                  ),
                  controller: homecontroller.email.value,
                ),
                SizedBox(
                  height: sized.height * 0.030,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      size: 18,
                      Icons.monetization_on,
                    ),
                    labelText: 'Faturamento Anual',
                  ),
                  controller: homecontroller.email.value,
                ),
                SizedBox(
                  height: sized.height * 0.030,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      size: 18,
                      Icons.location_on,
                    ),
                    labelText: 'Endereço',
                  ),
                  controller: homecontroller.email.value,
                ),
                SizedBox(
                  height: sized.height * 0.030,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      size: 18,
                      Icons.phone,
                    ),
                    labelText: 'Telefone',
                  ),
                  controller: homecontroller.email.value,
                ),
                SizedBox(
                  height: sized.height * 0.030,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      size: 18,
                      Icons.send_time_extension_rounded,
                    ),
                    labelText: 'Site ou aplicativo',
                  ),
                  controller: homecontroller.email.value,
                ),
                SizedBox(
                  height: sized.height * 0.030,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      size: 18,
                      Icons.location_city_rounded,
                    ),
                    labelText: 'Tipo de ocupação',
                  ),
                  controller: homecontroller.email.value,
                ),
                SizedBox(
                  height: sized.height * 0.030,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      size: 18,
                      Icons.pageview_sharp,
                    ),
                    labelText: 'Forma de atuação',
                  ),
                  controller: homecontroller.email.value,
                ),
                SizedBox(
                  height: sized.height * 0.030,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      size: 18,
                      Icons.edit_document,
                    ),
                    labelText: 'CCMEI',
                  ),
                  controller: homecontroller.email.value,
                ),
                SizedBox(
                  height: sized.height * 0.090,
                ),
                SizedBox(
                  height: sized.height * 0.060,
                  width: sized.width,
                  child: ElevatedButton(
                    child: Text('Cadastrar',
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.onPrimary)),
                    onPressed: () {
                      if (formkey.currentState!.validate()) {
                        homecontroller.email.value.text.trim();
                        homecontroller.password.value.text.trim();
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
