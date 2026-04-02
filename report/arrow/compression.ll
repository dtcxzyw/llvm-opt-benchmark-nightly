begin_hunk_0
@_ZZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE4zstdB5cxx11 = internal constant { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, { <{ i8, i8, i8, i8, [12 x i8] }> } } { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider" { ptr getelementptr (i8, ptr @_ZZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE4zstdB5cxx11, i64 16) }, i64 4, { <{ i8, i8, i8, i8, [12 x i8] }> } { <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 122, i8 115, i8 116, i8 100, [12 x i8] zeroinitializer }> } }, align 8
@_ZZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE3bz2B5cxx11 = internal constant { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, { <{ i8, i8, i8, [13 x i8] }> } } { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider" { ptr getelementptr (i8, ptr @_ZZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE3bz2B5cxx11, i64 16) }, i64 3, { <{ i8, i8, i8, [13 x i8] }> } { <{ i8, i8, i8, [13 x i8] }> <{ i8 98, i8 122, i8 50, [13 x i8] zeroinitializer }> } }, align 8
@_ZZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE7unknownB5cxx11 = internal constant { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, { <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> } } { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider" { ptr getelementptr (i8, ptr @_ZZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeEE7unknownB5cxx11, i64 16) }, i64 7, { <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> } { <{ i8, i8, i8, i8, i8, i8, i8, [9 x i8] }> <{ i8 117, i8 110, i8 107, i8 110, i8 111, i8 119, i8 110, [9 x i8] zeroinitializer }> } }, align 8
@.str = private unnamed_addr constant [13 x i8] c"uncompressed\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"gzip\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"snappy\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"lzo\00", align 1
end_hunk_0
begin_hunk_1
@.str.9 = private unnamed_addr constant [4 x i8] c"bz2\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"Unrecognized compression type: \00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"LZO codec not implemented\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"Unrecognized codec\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"Support for codec '\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"' not built\00", align 1
end_hunk_1
begin_hunk_2
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !19
  %bcmp.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(12) %i.c, ptr noundef nonnull dereferenceable(12) @.str, i64 12)
  %i.d = icmp eq i32 %bcmp.i, 0
  br i1 %i.d, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.thread35

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
end_hunk_2
begin_hunk_3
  br i1 %i.u, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread54

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.v = load ptr, ptr %6, align 8, !tbaa !19
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %i.v, ptr noundef nonnull dereferenceable(7) @.str.12, i64 7)
  %i.w = icmp eq i32 %bcmp.i, 0
  br i1 %i.w, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread54

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
end_hunk_3
