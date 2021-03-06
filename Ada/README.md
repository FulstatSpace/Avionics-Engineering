Contain a tutorial about ADA programming

Ada là ngôn ngữ lập trình xuất xứ từ Bộ quốc phòng Mỹ vào khoảng nửa đầu thập niên 80 của thế kỷ 20. Ngôn ngữ này được đặt tên theo Ada Augusta nữ bá tước xứ Lovelace, nhà toán học với ý tưởng tiên phong coi phần cứng và phần mềm là hai mặt khác nhau đã đi vào lịch sử như lập trình viên đầu tiên của loài người. Ngày nay được dùng trong thiết kế và lập trình các loại máy bay quân sự

### Chapter 1 - Getting Started
### Chapter 2 - Program Structure

```
    procedure <program name> is
       <declarative part>
    begin 
       <executable part>
    end <optional repeat of program name>;

```

Example:

```ada
  with Ada.Text_IO; 
  use Ada.Text_IO;
  procedure UglyForm is 
  begin 
    Put("Good form ");
    Put("can aid in ");
    Put  ("understanding a program,");
    New_Line;
    Put("and bad form ");
    Put("can make a program ");Put("unreadable.");
    New_Line;
  end UglyForm;
```
### Chapter 3 - The Integer Type Variable
### Chapter 4 - Logical Compares & precedence

Độ ưu tiên toán tử trong Ada 95

```
     **     not    abs      -- Highest precedence
 
     *      /      mod rem  -- Multiplying operators
 
     +      -               -- Unary operators
 
     +      -      &        -- Binary adding operators
 
     =      /=     <        -- Relational operators 
     <=     >      >=       -- Relational operators 
     in     not in          -- (same precedence)
 
     and    or     xor      -- Logical operators 
     and then      or else  -- (same precedence)
```

### Chapter 5 - Control Structures
### Chapter 6 - Additional Scalar Types
### Chapter 7 - Derived Types

_**Enumeration**_:
+ type State is (Idle, Waiting, Active);

_**Signed integer**_:
+ type Age is range 0..125;

_**Modular integer**_:
+ type Hash_Index is mod Hash_Size;

_**Floating point**_:
+ type Length is digits 5 range 0.0 .. 4.0E6;

_**Binary fixed point**_:
+ type Voltage is delta 0.1 range 0.0 .. 100.0;

_**Decimal**_:
+ type Euros is delta 0.01 digits 11;

### Chapter 8 - Subprograms
### Chapter 9 - Blocks and Scope of variables
### Chapter 10 - Arrays
### Chapter 11 - The Character & String Type
### Chapter 12 - Records
### Chapter 13 - The Access Type Variable
### Chapter 14 - Input/Output
### Chapter 15 - Packages
### Chapter 16 - Example Programs
### Chapter 17 - Exceptions
### Chapter 18 - Advanced Subprogram Topics
### Chapter 19 - Advanced Array Topics
### Chapter 20 - Advanced Record Topics
### Chapter 21 - Advanced Packages & Private Types
### Chapter 22 - Object Oriented Programming
### Chapter 23 - More Object Oriented Programming
### Chapter 24 - Binary Input/Output
### Chapter 25 - Dynamic Allocation
### Chapter 26 - Tasking
### Chapter 27 - The Simple Rendezvous
### Chapter 28 - The Conditional Rendezvous
### Chapter 29 - Additional Tasking Topics
### Chapter 30 - Generic Subprograms
### Chapter 31 - Generic Packages
### Chapter 32 - Control of Representation
### Chapter 33 - More Example Programs
### Chapter 34 - Unique Ada
+ AWS (Ada Web Server)

  A complete web development framework

+ ASIS (Ada Semantic Interface Specification)

  Makes it easy to write tools to process and analyze Ada sources

+ Bindings are available for most usual components
  
  _Posix, Win32, X, Motif, Gtk, Qt, Tcl, Python, Lua, Ncurses, Bignums, Corba, MySQL, PostGres,..._
  
+ Components, APIs, tutorials…
  
  _http://docs.adacore.com/live/wave/libadalang/html/libadalang_ug/index.html, adapower.com, adaworld.com_
