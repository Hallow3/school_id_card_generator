import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:school_id_card_generator/pdf_generator/pdf_generator.dart';

class IdCardForm extends StatefulWidget {
  const IdCardForm({super.key});

  @override
  State<IdCardForm> createState() => _IdCardFormState();
}

class _IdCardFormState extends State<IdCardForm> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController schoolNameController = TextEditingController();
  TextEditingController schoolPlaceController = TextEditingController();
  TextEditingController schoolPinController = TextEditingController();
  TextEditingController schoolDistController = TextEditingController();
  TextEditingController schoolStateController = TextEditingController();
  TextEditingController schoolCountryController = TextEditingController();
  TextEditingController schoolMobileController = TextEditingController();
  TextEditingController admissionController = TextEditingController();
  TextEditingController imageController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController parentController = TextEditingController();
  TextEditingController standardController = TextEditingController();
  TextEditingController mobileOneController = TextEditingController();
  TextEditingController mobileTwoController = TextEditingController();
  TextEditingController houseNameController = TextEditingController();
  TextEditingController placeController = TextEditingController();
  TextEditingController pinController = TextEditingController();
  TextEditingController vehiclePointController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                TextFormField(
                  textInputAction: TextInputAction.next,
                  controller: schoolNameController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'This is required';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "School Name",
                      labelText: "School",
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.red))),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Flexible(
                      child: TextFormField(
                        textInputAction: TextInputAction.next,
                        controller: schoolPlaceController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'This is required';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            hintText: "School Place",
                            labelText: "School Place",
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    const BorderSide(color: Colors.red))),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Flexible(
                      child: TextFormField(
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.number,
                        controller: schoolPinController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'This is required';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            hintText: "School PinCode",
                            labelText: "School PinCode",
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    const BorderSide(color: Colors.red))),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  controller: schoolDistController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'This is required';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "School District",
                      labelText: "District",
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.red))),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Flexible(
                      child: TextFormField(
                        textInputAction: TextInputAction.next,
                        controller: schoolStateController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'This is required';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            hintText: "School State",
                            labelText: "State",
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    const BorderSide(color: Colors.red))),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Flexible(
                      child: TextFormField(
                        textInputAction: TextInputAction.next,
                        controller: schoolCountryController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'This is required';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            hintText: "School Country",
                            labelText: "Country",
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    const BorderSide(color: Colors.red))),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.number,
                  controller: schoolMobileController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'This is required';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "School Mobile",
                      labelText: "School Mobile",
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.red))),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  controller: admissionController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'This is required';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Admission Number",
                      labelText: "Admission",
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.red))),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  controller: imageController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'This is required';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Student Image",
                      labelText: "Image URL",
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.red))),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  controller: nameController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'This is required';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Student Name",
                      labelText: "Name",
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.red))),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  controller: parentController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'This is required';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Father's Name",
                      labelText: "S/O",
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.red))),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  controller: standardController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'This is required';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Standard",
                      labelText: "Standard",
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.red))),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Flexible(
                      child: TextFormField(
                        textInputAction: TextInputAction.next,
                        controller: mobileOneController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'This is required';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            hintText: "Mobile Number",
                            labelText: "Mobile",
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    const BorderSide(color: Colors.red))),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Flexible(
                      child: TextFormField(
                        textInputAction: TextInputAction.next,
                        controller: mobileTwoController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'This is required';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            hintText: "Phone Number",
                            labelText: "Phone",
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    const BorderSide(color: Colors.red))),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  controller: houseNameController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'This is required';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "House Name",
                      labelText: "House Name",
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.red))),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Flexible(
                      child: TextFormField(
                        textInputAction: TextInputAction.next,
                        controller: placeController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'This is required';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            hintText: "Place",
                            labelText: "Place",
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    const BorderSide(color: Colors.red))),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Flexible(
                      child: TextFormField(
                        textInputAction: TextInputAction.next,
                        controller: pinController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'This is required';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            hintText: "Pin",
                            labelText: "Pin",
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    const BorderSide(color: Colors.red))),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  controller: vehiclePointController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'This is required';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Vehicle Point",
                      labelText: "Vehicle Point",
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.red))),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        generatePdf();
                      },
                      child: const Text("Generate")),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  generatePdf() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      CachedNetworkImageProvider(imageController.text)
          .resolve(const ImageConfiguration())
          .addListener(ImageStreamListener((image, _) {
            if (mounted) {
              generateIdCard(
                  schoolNameController.text,
                  schoolPlaceController.text,
                  int.parse(schoolPinController.text),
                  schoolDistController.text,
                  schoolStateController.text,
                  schoolCountryController.text,
                  int.parse(schoolMobileController.text),
                  int.parse(admissionController.text),
                  imageController.text,
                  nameController.text,
                  parentController.text,
                  standardController.text,
                  int.parse(mobileOneController.text),
                  int.parse(mobileTwoController.text),
                  houseNameController.text,
                  placeController.text,
                  int.parse(pinController.text),
                  vehiclePointController.text);
            }
          }, onError: (dynamic exception, StackTrace? stacktrace) {
            showDialog(
                context: context,
                builder: (context) => AlertDialog(
                      title: const Text("Invalid Image URL"),
                      content: const Text("Please enter a valid URL"),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text("Ok"))
                      ],
                    ));
          }));
    }
  }
}
