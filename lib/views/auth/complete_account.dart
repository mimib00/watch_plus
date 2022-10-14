import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:watch_plus/meta/widgets/watch_input.dart';
import 'package:watch_plus/views/auth/components/selectable_chip.dart';
import 'package:watch_plus/views/auth/contoller/auth_controller.dart';

class CompleteAccount extends GetView<AuthController> {
  const CompleteAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Complete Account"),
      ),
      body: Column(
        children: [
          const SizedBox(height: 40),
          Expanded(
            child: TabBarView(
              controller: controller.tabController.value,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                Column(
                  children: [
                    Form(
                      child: Column(
                        children: [
                          WatchInput(
                            controller: controller.username,
                            hintText: "Username",
                            keybowrdType: TextInputType.name,
                            icon: Icons.person,
                            validator: (value) {
                              if (value == null || value.isEmpty) return "Please enter a username";
                              return null;
                            },
                          ),
                          WatchInput(
                            controller: controller.phone,
                            hintText: "Phone number",
                            keybowrdType: TextInputType.phone,
                            icon: Icons.phone,
                            validator: (value) {
                              if (value == null || value.isEmpty) return "Please enter a email";
                              return null;
                            },
                          ),
                          WatchInput(
                            controller: controller.country,
                            hintText: "Counrty",
                            keybowrdType: TextInputType.text,
                            icon: Icons.location_pin,
                            validator: (value) {
                              if (value == null || value.isEmpty) return "Please enter a email";
                              return null;
                            },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Genres you may like",
                            style: Theme.of(context).textTheme.labelSmall!.copyWith(letterSpacing: 0),
                          ),
                          const SizedBox(height: 10),
                          Wrap(
                            children: [
                              SelectableChip(onTap: (value) {}, title: "Action"),
                              SelectableChip(onTap: (value) {}, title: "Adventure"),
                              SelectableChip(onTap: (value) {}, title: "Animated"),
                              SelectableChip(onTap: (value) {}, title: "Biographical"),
                              SelectableChip(onTap: (value) {}, title: "Comedy"),
                              SelectableChip(onTap: (value) {}, title: "Crime"),
                              SelectableChip(onTap: (value) {}, title: "Drama"),
                              SelectableChip(onTap: (value) {}, title: "Fantasy"),
                              SelectableChip(onTap: (value) {}, title: "Fiction"),
                              SelectableChip(onTap: (value) {}, title: "Mystry"),
                              SelectableChip(onTap: (value) {}, title: "Romance"),
                              SelectableChip(onTap: (value) {}, title: "Sci-Fi"),
                              SelectableChip(onTap: (value) {}, title: "Thriller"),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "You can edit later from profile section",
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                    const SizedBox(height: 40),
                    // Expanded(
                    //   child: Obx(
                    //     () => GridView.builder(
                    //         padding: const EdgeInsets.symmetric(horizontal: 20),
                    //         itemCount: controller.avatarList.length,
                    //         gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    //             maxCrossAxisExtent: 150, mainAxisSpacing: 5, crossAxisSpacing: 5),
                    //         itemBuilder: (context, index) {
                    //           return Obx(
                    //             () => GestureDetector(
                    //               onTap: () => controller.avatarIndex.value = index,
                    //               child: Container(
                    //                 padding: const EdgeInsets.all(5),
                    //                 decoration: ShapeDecoration(
                    //                     shape: CircleBorder(
                    //                         side: BorderSide(
                    //                             color: controller.avatarIndex.value == index
                    //                                 ? kBlackColor
                    //                                 : Colors.transparent,
                    //                             width: 2))),
                    //                 child: CachedNetworkImage(
                    //                   imageUrl: controller.avatarList[index],
                    //                   fit: BoxFit.cover,
                    //                 ),
                    //               ),
                    //             ),
                    //           );
                    //         }),
                    //   ),
                    // ),
                  ],
                ),
                Column(
                  children: const [
                    //  const SizedBox(height: 40),
                    // Obx(
                    //   () => Text("Type in the six digit code sent to ${controller.phoneCode.value}${controller.phoneController.value.text}",
                    //       style: style: Theme.of(context).textTheme.labelSmall,),
                    // ),
                    // const SizedBox(height: 40),
                    // Pinput(
                    //   length: 6,
                    //   defaultPinTheme: controller.defaultPinTheme,
                    //   focusedPinTheme: controller.focusedPinTheme,
                    //   submittedPinTheme: controller.submittedPinTheme,
                    //   validator: (s) {},
                    //   pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                    //   showCursor: true,
                    //   onCompleted: (pin) {
                    //     controller.otp.value = pin;
                    //   },
                    // )
                    //   ],
                    // ),
                  ],
                ),
                Column(
                  children: const [
                    // Text(
                    //   "Hey,",
                    //   style: Theme.of(context).textTheme.titleSmall,
                    // ),
                    // Obx(() => Text(controller.usernameController.value.text,
                    //     style: fontCatamaran(color: kSecondaryColor, fontSize: 50))),
                    // const SizedBox(height: 30),
                    // const Divider(height: 100, color: Colors.grey),
                    // Text("You account setup is almost done. Please accept our terms of use\nand you are all set!",
                    //     textAlign: TextAlign.center, style: fontInter(fontSize: 18, color: kBlackColor)),
                    // const SizedBox(height: 50),
                    // Obx(
                    //   () => CheckboxListTile(
                    //       activeColor: context.theme.primaryColor,
                    //       value: controller.tacAccepted.value,
                    //       title: RichText(
                    //         text: TextSpan(
                    //           children: [
                    //             TextSpan(
                    //               text: 'Accept our ',
                    //               style: fontInter(fontSize: 15, color: kBlackColor),
                    //             ),
                    //             TextSpan(
                    //               text: 'terms',
                    //               style: fontInter(fontSize: 15, color: kPrimaryColor),
                    //               recognizer: TapGestureRecognizer()
                    //                 ..onTap = () {
                    //                   launchUrl(Uri.parse(""));
                    //                 },
                    //             ),
                    //             TextSpan(
                    //               text: ' and ',
                    //               style: fontInter(fontSize: 15, color: kBlackColor),
                    //             ),
                    //             TextSpan(
                    //               text: 'privacy policy',
                    //               style: fontInter(fontSize: 15, color: kPrimaryColor),
                    //               recognizer: TapGestureRecognizer()
                    //                 ..onTap = () {
                    //                   launchUrl(Uri.parse(""));
                    //                 },
                    //             ),
                    //           ],
                    //         ),
                    //       ),
                    //       onChanged: (value) {
                    //         controller.tacAccepted.value = value!;
                    //       }),
                    // ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ElevatedButton(
              onPressed: () {
                controller.tabController.value.animateTo(controller.tabController.value.index + 1);
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Next"),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 15,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
