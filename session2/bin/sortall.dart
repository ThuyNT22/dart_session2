import 'dart:io';

// Hàm sắp xếp theo thứ tự tăng dần
void bubbleSortAscending(List<int> arr) {
  int n = arr.length;
  for (int i = 0; i < n - 1; i++) {
    bool swapped = false;
    for (int j = 0; j < n - i - 1; j++) {
      if (arr[j] > arr[j + 1]) {
        int temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
        swapped = true;
      }
    }
    if (!swapped) break;
  }
}

// Hàm sắp xếp theo thứ tự giảm dần
void bubbleSortDescending(List<int> arr) {
  int n = arr.length;
  for (int i = 0; i < n - 1; i++) {
    bool swapped = false;
    for (int j = 0; j < n - i - 1; j++) {
      if (arr[j] < arr[j + 1]) {
        int temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
        swapped = true;
      }
    }
    if (!swapped) break;
  }
}

void main() {
  print('Nhập dãy số nguyên (cách nhau bởi khoảng trắng):');
  String? input = stdin.readLineSync();

  if (input != null) {
    List<int> numbers = input.split(' ').map(int.parse).toList();

    print('Chọn loại sắp xếp:');
    print('1. Sắp xếp tăng dần');
    print('2. Sắp xếp giảm dần');
    String? choice = stdin.readLineSync();

    if (choice != null) {
      switch (choice) {
        case '1':
          print('Mảng trước khi sắp xếp: $numbers');
          bubbleSortAscending(numbers);
          print('Mảng sau khi sắp xếp tăng dần: $numbers');
          break;
        case '2':
          print('Mảng trước khi sắp xếp: $numbers');
          bubbleSortDescending(numbers);
          print('Mảng sau khi sắp xếp giảm dần: $numbers');
          break;
        default:
          print('Lựa chọn không hợp lệ.');
      }
    } else {
      print('Không có dữ liệu đầu vào.');
    }
  } else {
    print('Không có dữ liệu đầu vào.');
  }
}
