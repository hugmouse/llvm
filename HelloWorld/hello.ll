; ModuleID = hello
declare  i32 @puts(i8*)
@string = constant [20 x i8] c"Привет, LLVM!\00"

define i32 @main() {
  %ptr = getelementptr [20 x i8], [20 x i8]* @string, i64 0, i64 0
  call i32 @puts(i8* %ptr)
  ret i32 0
}