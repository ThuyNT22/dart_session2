void bubbleSortAscending(List<int> arr) {
  int n = arr.length;
  for (int i = 0; i < n - 1; i++) {
    // Flag để kiểm tra nếu không có sự hoán đổi nào xảy ra trong lượt lặp này
    bool swapped = false;
    for (int j = 0; j < n - i - 1; j++) {
      if (arr[j] > arr[j + 1]) {
        // Hoán đổi các phần tử nếu chúng không đúng thứ tự
        int temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
        swapped = true;
      }
    }
    // Nếu không có sự hoán đổi nào, mảng đã được sắp xếp
    if (!swapped) break;
  }
}

void bubbleSortDescending(List<int> arr) {
  int n = arr.length;
  for (int i = 0; i < n - 1; i++) {
    // Flag để kiểm tra nếu không có sự hoán đổi nào xảy ra trong lượt lặp này
    bool swapped = false;
    for (int j = 0; j < n - i - 1; j++) {
      if (arr[j] < arr[j + 1]) {
        // Hoán đổi các phần tử nếu chúng không đúng thứ tự
        int temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
        swapped = true;
      }
    }
    // Nếu không có sự hoán đổi nào, mảng đã được sắp xếp
    if (!swapped) break;
  }
}

void main() {
  List<int> numbers = [64, 34, 25, 12, 22, 11, 90];
  print('Mảng trước khi sắp xếp: $numbers');
  bubbleSortAscending(numbers);
  print('Mảng sau khi sắp xếp tăng dần: $numbers');
  bubbleSortDescending(numbers);
  print('Mảng sau khi sắp xếp giảm dần: $numbers');
}
