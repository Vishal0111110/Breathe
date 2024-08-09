import 'package:companion_app/models/task_list_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class TaskListController extends GetxController {
  static TaskListController get to => Get.find();
  final TextEditingController task = TextEditingController();

  final getStorage = GetStorage();

  RxList<Task> tasks = <Task>[].obs;
  RxBool isLoading = false.obs;

  @override
  void onInit() {
    List? storedTasks = getStorage.read<List>('tasks');
    if (storedTasks != null) {
      tasks.assignAll(storedTasks.map<Task>((e) => Task.fromJson(e)));
    }
    ever(tasks, (_) async {
      await getStorage.write('tasks', tasks.toList());
    });

    super.onInit();
  }

  @override
  void onClose() {
    task.dispose();
    super.onClose();
  }
}
