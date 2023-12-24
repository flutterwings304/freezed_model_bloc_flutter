import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meelance_fllutter_assignment/cubit/employee_cubit.dart';

class AddEmployeeScreen extends StatefulWidget {
  const AddEmployeeScreen({super.key});

  @override
  State<AddEmployeeScreen> createState() => _AddEmployeeScreenState();
}

class _AddEmployeeScreenState extends State<AddEmployeeScreen> {
  String name = "";
  String salary = "";
  String age = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Add Employee")),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          children: [
            TextFormField(
              onChanged: (val) {
                setState(() {
                  name = val;
                });
              },
              decoration: const InputDecoration(hintText: "Employee Name"),
            ),
            TextFormField(
              onChanged: (val) {
                setState(() {
                  age = (val);
                });
              },
              decoration: const InputDecoration(hintText: "Employee Age"),
            ),
            TextFormField(
              onChanged: (val) {
                setState(() {
                  salary = val;
                });
              },
              decoration: const InputDecoration(hintText: "Employee Salary"),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  //

                  final cubit = context.read<EmployeeCubit>();
                  cubit.createEmployee(
                      {"name": name, "salary": salary, "age": age});
                },
                child: const Text("Add Employee"))
          ],
        ),
      ),
    );
  }
}
