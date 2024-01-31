/*
Việc sử dụng lớp MyObject cho phép bạn tạo ra 
một đối tượng với các thuộc tính và phương thức riêng
của nó. Điều này giúp bạn quản lý mã của mình một cách 
hiệu quả hơn, giúp mã của bạn dễ đọc và dễ bảo trì hơn
*/

class MyObject{
  int value ;
  int result  = 0;
  MyObject({
    required this.value,
  }) ;

  void increment(){
    value++;
  }

  void decrement (){
    value--;
  }

  int get getValue => value;

  set setValue(int valueNew){
    value  = valueNew;
  }

  num square(){
    return value*value;
  }
  
  int power(int exponent){
    result = 1;
    for(int i = 0 ; i< exponent ; i++){
      result *= value;
    }
    return result;

  }
}