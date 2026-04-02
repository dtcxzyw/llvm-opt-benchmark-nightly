begin_hunk_0
@.str.8 = private unnamed_addr constant [51 x i8] c"OpenGEX: invalid data type for value in node name.\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"?mat.name\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"No parent node for name.\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"spot\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"infinite\00", align 1
@.str.15 = private unnamed_addr constant [45 x i8] c"Invalid number of data for transform matrix.\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"lines\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"triangles\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"quads\00", align 1
end_hunk_0
begin_hunk_1
  br i1 %i.bg, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread31

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit: ; preds = %bb.g
  %i.bh = load ptr, ptr %3, align 8               ; 2 uses
  %5 = load i64, ptr %i.bh, align 1
  %6 = xor i64 %5, 8532478965186130544
  %7 = getelementptr i8, ptr %i.bh, i64 8
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i64
  %10 = xor i64 %9, 101
  %11 = or i64 %6, %10
  %12 = icmp ne i64 %11, 0
  %13 = zext i1 %12 to i32
  %i.bi = icmp eq i32 %13, 0
  br i1 %i.bi, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread31

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit
end_hunk_1
begin_hunk_2
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit15: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread
  %i.bk = load ptr, ptr %4, align 8               ; 2 uses
  %14 = load i32, ptr %i.bk, align 1
  %15 = xor i32 %14, 1852403568
  %16 = getelementptr i8, ptr %i.bk, i64 4
  %17 = load i16, ptr %16, align 1
  %18 = zext i16 %17 to i32
  %19 = xor i32 %18, 29556
  %20 = or i32 %15, %19
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i32
  %i.bl = icmp eq i32 %22, 0
  br i1 %i.bl, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread31.sink.split, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit24.thread35

bb.h:                                             ; preds = %bb.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit24.thread35, %bb.f
end_hunk_2
begin_hunk_3
  store i8 0, ptr %i.bu, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.bv = load i64, ptr %i.bs, align 8            ; 4 uses
  %.pre53 = load ptr, ptr %5, align 8             ; 6 uses
  switch i64 %i.bv, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit35.thread51 [
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit33
end_hunk_3
begin_hunk_4
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit: ; preds = %bb.r
  %6 = load i32, ptr %.pre53, align 1
  %7 = xor i32 %6, 1852403568
  %8 = getelementptr i8, ptr %.pre53, i64 4
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = xor i32 %10, 116
  %12 = or i32 %7, %11
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i32
  %i.bw = icmp eq i32 %14, 0
  br i1 %i.bw, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit35.thread51.sink.split, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit35.thread51

bb.s:                                             ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
end_hunk_4
