begin_hunk_0
@_ZZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE4zstdB5cxx11 = internal constant { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, { <{ i8, i8, i8, i8, [12 x i8] }> } } { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider" { ptr getelementptr (i8, ptr @_ZZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE4zstdB5cxx11, i64 16) }, i64 4, { <{ i8, i8, i8, i8, [12 x i8] }> } { <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 122, i8 115, i8 116, i8 100, [12 x i8] zeroinitializer }> } }, align 8
@_ZZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE3bz2B5cxx11 = internal constant { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, { <{ i8, i8, i8, [13 x i8] }> } } { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider" { ptr getelementptr (i8, ptr @_ZZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE3bz2B5cxx11, i64 16) }, i64 3, { <{ i8, i8, i8, [13 x i8] }> } { <{ i8, i8, i8, [13 x i8] }> <{ i8 98, i8 122, i8 50, [13 x i8] zeroinitializer }> } }, align 8
@_ZZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE7unknownB5cxx11 = internal constant { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, { <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> } } { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider" { ptr getelementptr (i8, ptr @_ZZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE7unknownB5cxx11, i64 16) }, i64 7, { <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> } { <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 117, i8 110, i8 107, i8 110, i8 111, i8 119, i8 110, [9 x i8] zeroinitializer }> } }, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"gzip\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"snappy\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"lzo\00", align 1
end_hunk_0
begin_hunk_1
@.str.9 = private unnamed_addr constant [4 x i8] c"bz2\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"Unrecognized compression type: \00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"LZO codec not implemented\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"Unrecognized codec\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"Support for codec '\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"' not built\00", align 1
end_hunk_1
begin_hunk_2
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !19     ; 2 uses
  %3 = load i64, ptr %i.c, align 1
  %4 = xor i64 %3, 7310028760498269813
  %5 = getelementptr i8, ptr %i.c, i64 8
  %6 = load i32, ptr %5, align 1
  %7 = zext i32 %6 to i64
  %8 = xor i64 %7, 1684370291
  %9 = or i64 %4, %8
  %10 = icmp ne i64 %9, 0
  %11 = zext i1 %10 to i32
  %i.d = icmp eq i32 %11, 0
  br i1 %i.d, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.thread35

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
end_hunk_2
begin_hunk_3
  br i1 %i.u, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread54

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.v = load ptr, ptr %6, align 8, !tbaa !19     ; 2 uses
  %10 = load i32, ptr %i.v, align 1
  %11 = xor i32 %10, 1852534389
  %12 = getelementptr i8, ptr %i.v, i64 3
  %13 = load i32, ptr %12, align 1
  %14 = xor i32 %13, 1853321070
  %15 = or i32 %11, %14
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i32
  %i.w = icmp eq i32 %17, 0
  br i1 %i.w, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread54

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
end_hunk_3
