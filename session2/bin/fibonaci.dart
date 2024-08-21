int fibonacci(int i) {
  if (i < 0) {
    return -1;
  } else if (i == 0) {
    return 0;
  } else if (i == 1) {
    return 1;
  } else {
    return fibonacci(i - 1) + fibonacci(i - 2);
  }
}

void main() {
  // Thay đổi giá trị của `i` để kiểm tra
  int i = 5;
  print('Fibonacci của $i là ${fibonacci(i)}');
}
