begin_hunk_0
@.str.8 = private unnamed_addr constant [51 x i8] c"OpenGEX: invalid data type for value in node name.\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"?mat.name\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"No parent node for name.\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"point\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"spot\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"infinite\00", align 1
@.str.15 = private unnamed_addr constant [45 x i8] c"Invalid number of data for transform matrix.\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"primitive\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"points\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"lines\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"triangles\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"quads\00", align 1
end_hunk_0
begin_hunk_1
  br i1 %i.bg, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread31

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit: ; preds = %bb.g
  %i.bh = load ptr, ptr %3, align 8
  %bcmp.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(9) %i.bh, ptr noundef nonnull dereferenceable(9) @.str.16, i64 9)
  %i.bi = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.bi, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread31

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit
end_hunk_1
begin_hunk_2
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit15: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread
  %i.bk = load ptr, ptr %4, align 8
  %bcmp.i.i14 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %i.bk, ptr noundef nonnull dereferenceable(6) @.str.17, i64 6)
  %i.bl = icmp eq i32 %bcmp.i.i14, 0
  br i1 %i.bl, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread31.sink.split, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit24.thread35

bb.h:                                             ; preds = %bb.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit24.thread35, %bb.f
end_hunk_2
begin_hunk_3
  store i8 0, ptr %i.bu, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.bv = load i64, ptr %i.bs, align 8            ; 4 uses
  %.pre53 = load ptr, ptr %5, align 8             ; 5 uses
  switch i64 %i.bv, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit35.thread51 [
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit33
end_hunk_3
begin_hunk_4
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit: ; preds = %bb.r
  %bcmp.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %.pre53, ptr noundef nonnull dereferenceable(5) @.str.12, i64 5)
  %i.bw = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.bw, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit35.thread51.sink.split, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit35.thread51

bb.s:                                             ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
end_hunk_4
