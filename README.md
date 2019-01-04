# Avionics Engineering

![](/assets/rocket.gif)

Các hệ thống điều khiển máy bay như hệ thống điện tử hàng không (avionics), hệ thống điện tử hàng không tích hợp (integrated avionics), hệ thống máy tính trên máy bay nói chung là những hệ thống được kết hợp bởi vô số hệ thống độc lập và phụ thuộc lẫn nhau, cho các chức năng khác nhau (điều khiển chuyến bay, tránh va chạm, thời tiết, thông tin liên lạc, hộp đen,...)

Mỗi bộ điều khiển thường là một mô-đun độc lập (phần cứng và phần mềm) vì lý do an toàn: Chúng là các hệ thống giám sát và kiểm soát quan trọng và nếu một trong số chúng bị hỏng, thì đó là một **bất tiện** khá lớn đối với những người tùy thuộc vào máy bay. Độ tin cậy có tất cả ý nghĩa của nó khi bạn ở trong máy bay. Vì vậy, thường là nó:

+ Tùy chỉnh xây dựng cho mục đích nhiệm vụ của chúng
+ Được xây dựng để hoạt động độc lập và giao diện với các hệ thống khác
+ Được chế tạo để có khả năng chịu lỗi đối với các lỗi của chính nó và các lỗi của các hệ thống khác mà nó gây ra (vì bạn không muốn hệ thống âm thanh của phi công mất kiểm soát động cơ, chẳng hạn).


Nó không phải là một máy tính lớn chạy mọi thứ. Nếu bạn nghĩ về nó từ một chiếc máy bay quân sự chứ không phải là một chiếc máy bay thương mại (mặc dù nó tương tự về mặt này): Nếu một phần bị bắn vào, ít nhất bạn sẽ có một số phần khác có thể để tiếp tục hoạt động (phần kiểm soát các hệ thống thông tin liên lạc và thiết bị hệ thống an toàn có thể để duy trì sự sống). Do đó, cũng có một loạt các nút lớn bạn thấy trong máy bay phản lực, để theo dõi trạng thái của các hệ thống khác nhau.

Chúng thường được xây dựng như các thành phần tùy chỉnh vận hành hệ thống của riêng chúng hoặc chúng được chạy và lên lịch bởi micro-kernel (trong hầu hết các trường hợp, có hỗ trợ cho các khả năng thời gian thực).

Rõ ràng, nó phụ thuộc vào các nhà cung cấp và quốc gia, nhưng ít nhất họ thường phải tuân theo các bộ quy định khá nghiêm ngặt, yêu cầu thiết kế và đặc thù giao thức, cho phép:

+ Sự kiểm soát tuân thủ nghiêm ngặt của họ đối với các tiêu chuẩn an ninh và an toàn
+ Việc liên lạc với các hệ thống khác (tốt hơn nhiều nếu chiếc máy bay mà bạn cất cánh ở Reykjavik có thể **nói chuyện** với thiết bị điều khiển mặt đất ở Tokyo,...)

Các hệ thống trên không như vậy thường là dạng phần mềm bespoke, nhưng các hệ thống sau được biết là được sử dụng trong một số máy bay:

+ VxWorks 6.4 POSIX PSE52
+ WinDriver của VxWorks 
+ QNX (thực sự không chắc chắn QNX được sử dụng trong máy bay, nhưng nó được sử dụng trong các hệ thống điều khiển mặt đất)

Các **phần mềm Bespoke** là phần mềm tùy chỉnh hoặc được thiết kế riêng. Giá trị của **phần mềm bespoke** so với phần mềm sẵn có là nó có thể được thiết kế dành riêng cho các mục tiêu kinh doanh hoặc lập pháp quan trọng. Trong các hệ thống quan trọng thì nhu cầu tùy chỉnh linh hoạt để có thể thiết kế và kết nối độc lập đến các hệ thống hoạt động khác là một vấn đề quan trọng. Các ngôn ngữ lập trình cho các hệ thống máy bay phải đảm bảo về mặt vận hành, tốc độ nhanh và phải tuân theo những tiêu chuẩn nghiêm ngặt của nghành Hàng Không. Và chỉ cần có một lỗi nhỏ cũng có thể nguy hiểm tính của hàng trăm người. Một vài ngôn ngữ được sử dụng ở những hãng sản xuất máy bay lớn như **[SCADE](http://www.esterel-technologies.com/products/scade-suite/) biên dịch ra mã C và Ada, JSF AV C++ (Joint Strike Fighter Air Vehicle C++), C, C++, MISRA C, ADA, Simulink mô phỏng và các ngôn ngữ dùng trong kỹ thuật hàng không khác (avionics programming languages).**
