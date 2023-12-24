import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/employee_cubit.dart';
import '../models/employee_model.dart';
import '../screens/employee_add.dart';

class EmployeeListScreen extends StatefulWidget {
  const EmployeeListScreen({super.key});

  @override
  State<EmployeeListScreen> createState() => _EmployeeListScreenState();
}

class _EmployeeListScreenState extends State<EmployeeListScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final cubit = context.read<EmployeeCubit>();
      cubit.fetchEmployee();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Get Employee List"),
      ),
      body:
          BlocBuilder<EmployeeCubit, EmployeeState>(builder: (context, state) {
      
        if (state is InitEmployeeState || state is LoadingEmployeeState) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is ResponseEmployeeState) {
          final employees = state.employee;
          
          return ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: employees.length,
            itemBuilder: (BuildContext context, int index) {
              EmployeeModel myEmployee = employees[index];
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Name :${myEmployee.employee_name}"),
                          Text("Salary :${myEmployee.employee_salary}"),
                          Text("Age :${myEmployee.employee_age}"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // IconButton(
                          //     onPressed: () {

                          //     },
                          //     icon: const Icon(Icons.edit)),
                          IconButton(
                              onPressed: () {
                                context
                                    .read<EmployeeCubit>()
                                    .deleteEmployee(myEmployee.id);
                              },
                              icon: const Icon(Icons.delete))
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        } else if (state is ErrorEmployeeState) {
          return Text(state.message);
        }
        return Center(
          child: Text(state.toString()),
        );
      }),
      floatingActionButton: FloatingActionButton(
          child: const Text("Add Employee"),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const AddEmployeeScreen()));
          }),
    );
  }
}
