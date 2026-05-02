inline.NumInlined: 1651
inline.NumDeleted: 1097
begin_hunk_0_@_ZN6hermes3hbc28BytecodeInstructionGenerator13emitLoadParamEll:bb.a
  %.pre.i.i = phi ptr [ %i.k, %bb.b ], [ %i.u, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %i.x = icmp ugt i64 %1, 255
  %i.y = load i8, ptr %i.g, align 8, !tbaa !600, !range !547, !noundef !548
  %3 = zext i1 %i.x to i8
  %4 = or i8 %i.y, %3
  store i8 %4, ptr %i.g, align 8, !tbaa !600
  %i.z = trunc i64 %1 to i8                       ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, %i.w
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h
end_hunk_0
begin_hunk_1_@_ZN6hermes3hbc28BytecodeInstructionGenerator13emitLoadParamEll:bb.a
  %.pre.i.i3 = phi ptr [ %i.ab, %bb.h ], [ %i.ap, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %i.as = icmp ugt i64 %2, 255
  %i.at = load i8, ptr %i.g, align 8, !tbaa !600, !range !547, !noundef !548
  %5 = zext i1 %i.as to i8
  %6 = or i8 %i.at, %5
  store i8 %6, ptr %i.g, align 8, !tbaa !600
  %i.au = trunc i64 %2 to i8                      ; 2 uses
  %.not.i.i.i.i4 = icmp eq ptr %.pre.i.i3, %i.ar
  br i1 %.not.i.i.i.i4, label %bb.o, label %bb.n
end_hunk_1
begin_hunk_2_@_ZN6hermes3hbc28BytecodeInstructionGenerator12emitToNumberEll:bb.a
  %.pre.i.i = phi ptr [ %i.k, %bb.b ], [ %i.u, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %i.x = icmp ugt i64 %1, 255
  %i.y = load i8, ptr %i.g, align 8, !tbaa !600, !range !547, !noundef !548
  %3 = zext i1 %i.x to i8
  %4 = or i8 %i.y, %3
  store i8 %4, ptr %i.g, align 8, !tbaa !600
  %i.z = trunc i64 %1 to i8                       ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, %i.w
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h
end_hunk_2
begin_hunk_3_@_ZN6hermes3hbc28BytecodeInstructionGenerator12emitToNumberEll:bb.a
  %.pre.i.i3 = phi ptr [ %i.ab, %bb.h ], [ %i.ap, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %i.as = icmp ugt i64 %2, 255
  %i.at = load i8, ptr %i.g, align 8, !tbaa !600, !range !547, !noundef !548
  %5 = zext i1 %i.as to i8
  %6 = or i8 %i.at, %5
  store i8 %6, ptr %i.g, align 8, !tbaa !600
  %i.au = trunc i64 %2 to i8                      ; 2 uses
  %.not.i.i.i.i4 = icmp eq ptr %.pre.i.i3, %i.ar
  br i1 %.not.i.i.i.i4, label %bb.o, label %bb.n
end_hunk_3
begin_hunk_4_@_ZN6hermes3hbc28BytecodeInstructionGenerator8emitSubNElll:bb.a
  %.pre.i.i = phi ptr [ %i.k, %bb.b ], [ %i.u, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %i.x = icmp ugt i64 %1, 255
  %i.y = load i8, ptr %i.g, align 8, !tbaa !600, !range !547, !noundef !548
  %4 = zext i1 %i.x to i8
  %5 = or i8 %i.y, %4
  store i8 %5, ptr %i.g, align 8, !tbaa !600
  %i.z = trunc i64 %1 to i8                       ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, %i.w
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h
end_hunk_4
begin_hunk_5_@_ZN6hermes3hbc28BytecodeInstructionGenerator8emitSubNElll:bb.a
  %.pre.i.i4 = phi ptr [ %i.ab, %bb.h ], [ %i.ap, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %i.as = icmp ugt i64 %2, 255
  %i.at = load i8, ptr %i.g, align 8, !tbaa !600, !range !547, !noundef !548
  %6 = zext i1 %i.as to i8
  %7 = or i8 %i.at, %6
  store i8 %7, ptr %i.g, align 8, !tbaa !600
  %i.au = trunc i64 %2 to i8                      ; 2 uses
  %.not.i.i.i.i5 = icmp eq ptr %.pre.i.i4, %i.ar
  br i1 %.not.i.i.i.i5, label %bb.o, label %bb.n
end_hunk_5
begin_hunk_6_@_ZN6hermes3hbc28BytecodeInstructionGenerator8emitSubNElll:bb.a
  %.pre.i.i14 = phi ptr [ %i.aw, %bb.n ], [ %i.bk, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12 ] ; 2 uses
  %i.bn = icmp ugt i64 %3, 255
  %i.bo = load i8, ptr %i.g, align 8, !tbaa !600, !range !547, !noundef !548
  %8 = zext i1 %i.bn to i8
  %9 = or i8 %i.bo, %8
  store i8 %9, ptr %i.g, align 8, !tbaa !600
  %i.bp = trunc i64 %3 to i8                      ; 2 uses
  %.not.i.i.i.i15 = icmp eq ptr %.pre.i.i14, %i.bm
  br i1 %.not.i.i.i.i15, label %bb.u, label %bb.t
end_hunk_6
begin_hunk_7_@_ZN6hermes3hbc28BytecodeInstructionGenerator10emitJLessNElll:bb.a
  %i.x = add i64 %1, -128
  %i.y = icmp ult i64 %i.x, -256
  %i.z = load i8, ptr %i.g, align 8, !tbaa !600, !range !547, !noundef !548
  %4 = zext i1 %i.y to i8
  %5 = or i8 %i.z, %4
  store i8 %5, ptr %i.g, align 8, !tbaa !600
  %i.aa = trunc i64 %1 to i8                      ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, %i.w
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h
end_hunk_7
begin_hunk_8_@_ZN6hermes3hbc28BytecodeInstructionGenerator10emitJLessNElll:bb.a
  %.pre.i.i4 = phi ptr [ %i.ac, %bb.h ], [ %i.aq, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %i.at = icmp ugt i64 %2, 255
  %i.au = load i8, ptr %i.g, align 8, !tbaa !600, !range !547, !noundef !548
  %6 = zext i1 %i.at to i8
  %7 = or i8 %i.au, %6
  store i8 %7, ptr %i.g, align 8, !tbaa !600
  %i.av = trunc i64 %2 to i8                      ; 2 uses
  %.not.i.i.i.i5 = icmp eq ptr %.pre.i.i4, %i.as
  br i1 %.not.i.i.i.i5, label %bb.o, label %bb.n
end_hunk_8
begin_hunk_9_@_ZN6hermes3hbc28BytecodeInstructionGenerator10emitJLessNElll:bb.a
  %.pre.i.i13 = phi ptr [ %i.ax, %bb.n ], [ %i.bl, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12 ] ; 2 uses
  %i.bo = icmp ugt i64 %3, 255
  %i.bp = load i8, ptr %i.g, align 8, !tbaa !600, !range !547, !noundef !548
  %8 = zext i1 %i.bo to i8
  %9 = or i8 %i.bp, %8
  store i8 %9, ptr %i.g, align 8, !tbaa !600
  %i.bq = trunc i64 %3 to i8                      ; 2 uses
  %.not.i.i.i.i14 = icmp eq ptr %.pre.i.i13, %i.bn
  br i1 %.not.i.i.i.i14, label %bb.u, label %bb.t
end_hunk_9
begin_hunk_10_@_ZN6hermes3hbc28BytecodeInstructionGenerator7emitMovEll:bb.a
  %.pre.i.i = phi ptr [ %i.k, %bb.b ], [ %i.u, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %i.x = icmp ugt i64 %1, 255
  %i.y = load i8, ptr %i.g, align 8, !tbaa !600, !range !547, !noundef !548
  %3 = zext i1 %i.x to i8
  %4 = or i8 %i.y, %3
  store i8 %4, ptr %i.g, align 8, !tbaa !600
  %i.z = trunc i64 %1 to i8                       ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, %i.w
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h
end_hunk_10
begin_hunk_11_@_ZN6hermes3hbc28BytecodeInstructionGenerator7emitMovEll:bb.a
  %.pre.i.i3 = phi ptr [ %i.ab, %bb.h ], [ %i.ap, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %i.as = icmp ugt i64 %2, 255
  %i.at = load i8, ptr %i.g, align 8, !tbaa !600, !range !547, !noundef !548
  %5 = zext i1 %i.as to i8
  %6 = or i8 %i.at, %5
  store i8 %6, ptr %i.g, align 8, !tbaa !600
  %i.au = trunc i64 %2 to i8                      ; 2 uses
  %.not.i.i.i.i4 = icmp eq ptr %.pre.i.i3, %i.ar
  br i1 %.not.i.i.i.i4, label %bb.o, label %bb.n
end_hunk_11
begin_hunk_12_@_ZN6hermes3hbc28BytecodeInstructionGenerator15emitJLessEqualNElll:bb.a
  %i.x = add i64 %1, -128
  %i.y = icmp ult i64 %i.x, -256
  %i.z = load i8, ptr %i.g, align 8, !tbaa !600, !range !547, !noundef !548
  %4 = zext i1 %i.y to i8
  %5 = or i8 %i.z, %4
  store i8 %5, ptr %i.g, align 8, !tbaa !600
  %i.aa = trunc i64 %1 to i8                      ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, %i.w
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h
end_hunk_12
begin_hunk_13_@_ZN6hermes3hbc28BytecodeInstructionGenerator15emitJLessEqualNElll:bb.a
  %.pre.i.i4 = phi ptr [ %i.ac, %bb.h ], [ %i.aq, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %i.at = icmp ugt i64 %2, 255
  %i.au = load i8, ptr %i.g, align 8, !tbaa !600, !range !547, !noundef !548
  %6 = zext i1 %i.at to i8
  %7 = or i8 %i.au, %6
  store i8 %7, ptr %i.g, align 8, !tbaa !600
  %i.av = trunc i64 %2 to i8                      ; 2 uses
  %.not.i.i.i.i5 = icmp eq ptr %.pre.i.i4, %i.as
  br i1 %.not.i.i.i.i5, label %bb.o, label %bb.n
end_hunk_13
begin_hunk_14_@_ZN6hermes3hbc28BytecodeInstructionGenerator15emitJLessEqualNElll:bb.a
  %.pre.i.i13 = phi ptr [ %i.ax, %bb.n ], [ %i.bl, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12 ] ; 2 uses
  %i.bo = icmp ugt i64 %3, 255
  %i.bp = load i8, ptr %i.g, align 8, !tbaa !600, !range !547, !noundef !548
  %8 = zext i1 %i.bo to i8
  %9 = or i8 %i.bp, %8
  store i8 %9, ptr %i.g, align 8, !tbaa !600
  %i.bq = trunc i64 %3 to i8                      ; 2 uses
  %.not.i.i.i.i14 = icmp eq ptr %.pre.i.i13, %i.bn
  br i1 %.not.i.i.i.i14, label %bb.u, label %bb.t
end_hunk_14
begin_hunk_15_@_ZN6hermes3hbc28BytecodeInstructionGenerator7emitMulElll:bb.a
  %.pre.i.i = phi ptr [ %i.k, %bb.b ], [ %i.u, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %i.x = icmp ugt i64 %1, 255
  %i.y = load i8, ptr %i.g, align 8, !tbaa !600, !range !547, !noundef !548
  %4 = zext i1 %i.x to i8
  %5 = or i8 %i.y, %4
  store i8 %5, ptr %i.g, align 8, !tbaa !600
  %i.z = trunc i64 %1 to i8                       ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, %i.w
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h
end_hunk_15
begin_hunk_16_@_ZN6hermes3hbc28BytecodeInstructionGenerator7emitMulElll:bb.a
  %.pre.i.i4 = phi ptr [ %i.ab, %bb.h ], [ %i.ap, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %i.as = icmp ugt i64 %2, 255
  %i.at = load i8, ptr %i.g, align 8, !tbaa !600, !range !547, !noundef !548
  %6 = zext i1 %i.as to i8
  %7 = or i8 %i.at, %6
  store i8 %7, ptr %i.g, align 8, !tbaa !600
  %i.au = trunc i64 %2 to i8                      ; 2 uses
  %.not.i.i.i.i5 = icmp eq ptr %.pre.i.i4, %i.ar
  br i1 %.not.i.i.i.i5, label %bb.o, label %bb.n
end_hunk_16
begin_hunk_17_@_ZN6hermes3hbc28BytecodeInstructionGenerator7emitMulElll:bb.a
  %.pre.i.i14 = phi ptr [ %i.aw, %bb.n ], [ %i.bk, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12 ] ; 2 uses
  %i.bn = icmp ugt i64 %3, 255
  %i.bo = load i8, ptr %i.g, align 8, !tbaa !600, !range !547, !noundef !548
  %8 = zext i1 %i.bn to i8
  %9 = or i8 %i.bo, %8
  store i8 %9, ptr %i.g, align 8, !tbaa !600
  %i.bp = trunc i64 %3 to i8                      ; 2 uses
  %.not.i.i.i.i15 = icmp eq ptr %.pre.i.i14, %i.bm
  br i1 %.not.i.i.i.i15, label %bb.u, label %bb.t
end_hunk_17
begin_hunk_18_@_ZN6hermes3hbc28BytecodeInstructionGenerator13emitJGreaterNElll:bb.a
  %i.x = add i64 %1, -128
  %i.y = icmp ult i64 %i.x, -256
  %i.z = load i8, ptr %i.g, align 8, !tbaa !600, !range !547, !noundef !548
  %4 = zext i1 %i.y to i8
  %5 = or i8 %i.z, %4
  store i8 %5, ptr %i.g, align 8, !tbaa !600
  %i.aa = trunc i64 %1 to i8                      ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, %i.w
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h
end_hunk_18
begin_hunk_19_@_ZN6hermes3hbc28BytecodeInstructionGenerator13emitJGreaterNElll:bb.a
  %.pre.i.i4 = phi ptr [ %i.ac, %bb.h ], [ %i.aq, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %i.at = icmp ugt i64 %2, 255
  %i.au = load i8, ptr %i.g, align 8, !tbaa !600, !range !547, !noundef !548
  %6 = zext i1 %i.at to i8
  %7 = or i8 %i.au, %6
  store i8 %7, ptr %i.g, align 8, !tbaa !600
  %i.av = trunc i64 %2 to i8                      ; 2 uses
  %.not.i.i.i.i5 = icmp eq ptr %.pre.i.i4, %i.as
  br i1 %.not.i.i.i.i5, label %bb.o, label %bb.n
end_hunk_19
begin_hunk_20_@_ZN6hermes3hbc28BytecodeInstructionGenerator13emitJGreaterNElll:bb.a
  %.pre.i.i13 = phi ptr [ %i.ax, %bb.n ], [ %i.bl, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12 ] ; 2 uses
  %i.bo = icmp ugt i64 %3, 255
  %i.bp = load i8, ptr %i.g, align 8, !tbaa !600, !range !547, !noundef !548
  %8 = zext i1 %i.bo to i8
  %9 = or i8 %i.bp, %8
  store i8 %9, ptr %i.g, align 8, !tbaa !600
  %i.bq = trunc i64 %3 to i8                      ; 2 uses
  %.not.i.i.i.i14 = icmp eq ptr %.pre.i.i13, %i.bn
  br i1 %.not.i.i.i.i14, label %bb.u, label %bb.t
end_hunk_20
begin_hunk_21_@_ZN6hermes3hbc28BytecodeInstructionGenerator8emitAddNElll:bb.a
  %.pre.i.i = phi ptr [ %i.k, %bb.b ], [ %i.u, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %i.x = icmp ugt i64 %1, 255
  %i.y = load i8, ptr %i.g, align 8, !tbaa !600, !range !547, !noundef !548
  %4 = zext i1 %i.x to i8
  %5 = or i8 %i.y, %4
  store i8 %5, ptr %i.g, align 8, !tbaa !600
  %i.z = trunc i64 %1 to i8                       ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, %i.w
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h
end_hunk_21
begin_hunk_22_@_ZN6hermes3hbc28BytecodeInstructionGenerator8emitAddNElll:bb.a
  %.pre.i.i4 = phi ptr [ %i.ab, %bb.h ], [ %i.ap, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %i.as = icmp ugt i64 %2, 255
  %i.at = load i8, ptr %i.g, align 8, !tbaa !600, !range !547, !noundef !548
  %6 = zext i1 %i.as to i8
  %7 = or i8 %i.at, %6
  store i8 %7, ptr %i.g, align 8, !tbaa !600
  %i.au = trunc i64 %2 to i8                      ; 2 uses
  %.not.i.i.i.i5 = icmp eq ptr %.pre.i.i4, %i.ar
  br i1 %.not.i.i.i.i5, label %bb.o, label %bb.n
end_hunk_22
begin_hunk_23_@_ZN6hermes3hbc28BytecodeInstructionGenerator8emitAddNElll:bb.a
  %.pre.i.i14 = phi ptr [ %i.aw, %bb.n ], [ %i.bk, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12 ] ; 2 uses
  %i.bn = icmp ugt i64 %3, 255
  %i.bo = load i8, ptr %i.g, align 8, !tbaa !600, !range !547, !noundef !548
  %8 = zext i1 %i.bn to i8
  %9 = or i8 %i.bo, %8
  store i8 %9, ptr %i.g, align 8, !tbaa !600
  %i.bp = trunc i64 %3 to i8                      ; 2 uses
  %.not.i.i.i.i15 = icmp eq ptr %.pre.i.i14, %i.bm
  br i1 %.not.i.i.i.i15, label %bb.u, label %bb.t
end_hunk_23
begin_hunk_24_@_ZN6hermes3hbc28BytecodeInstructionGenerator18emitJGreaterEqualNElll:bb.a
  %i.x = add i64 %1, -128
  %i.y = icmp ult i64 %i.x, -256
  %i.z = load i8, ptr %i.g, align 8, !tbaa !600, !range !547, !noundef !548
  %4 = zext i1 %i.y to i8
  %5 = or i8 %i.z, %4
  store i8 %5, ptr %i.g, align 8, !tbaa !600
  %i.aa = trunc i64 %1 to i8                      ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, %i.w
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h
end_hunk_24
begin_hunk_25_@_ZN6hermes3hbc28BytecodeInstructionGenerator18emitJGreaterEqualNElll:bb.a
  %.pre.i.i4 = phi ptr [ %i.ac, %bb.h ], [ %i.aq, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %i.at = icmp ugt i64 %2, 255
  %i.au = load i8, ptr %i.g, align 8, !tbaa !600, !range !547, !noundef !548
  %6 = zext i1 %i.at to i8
  %7 = or i8 %i.au, %6
  store i8 %7, ptr %i.g, align 8, !tbaa !600
  %i.av = trunc i64 %2 to i8                      ; 2 uses
  %.not.i.i.i.i5 = icmp eq ptr %.pre.i.i4, %i.as
  br i1 %.not.i.i.i.i5, label %bb.o, label %bb.n
end_hunk_25
begin_hunk_26_@_ZN6hermes3hbc28BytecodeInstructionGenerator18emitJGreaterEqualNElll:bb.a
  %.pre.i.i13 = phi ptr [ %i.ax, %bb.n ], [ %i.bl, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i12 ] ; 2 uses
  %i.bo = icmp ugt i64 %3, 255
  %i.bp = load i8, ptr %i.g, align 8, !tbaa !600, !range !547, !noundef !548
  %8 = zext i1 %i.bo to i8
  %9 = or i8 %i.bp, %8
  store i8 %9, ptr %i.g, align 8, !tbaa !600
  %i.bq = trunc i64 %3 to i8                      ; 2 uses
  %.not.i.i.i.i14 = icmp eq ptr %.pre.i.i13, %i.bn
  br i1 %.not.i.i.i.i14, label %bb.u, label %bb.t
end_hunk_26
begin_hunk_27_@_ZN6hermes3hbc28BytecodeInstructionGenerator18emitAddEmptyStringEll:bb.a
  %.pre.i.i = phi ptr [ %i.k, %bb.b ], [ %i.u, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %i.x = icmp ugt i64 %1, 255
  %i.y = load i8, ptr %i.g, align 8, !tbaa !600, !range !547, !noundef !548
  %3 = zext i1 %i.x to i8
  %4 = or i8 %i.y, %3
  store i8 %4, ptr %i.g, align 8, !tbaa !600
  %i.z = trunc i64 %1 to i8                       ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, %i.w
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h
end_hunk_27
begin_hunk_28_@_ZN6hermes3hbc28BytecodeInstructionGenerator18emitAddEmptyStringEll:bb.a
  %.pre.i.i3 = phi ptr [ %i.ab, %bb.h ], [ %i.ap, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %i.as = icmp ugt i64 %2, 255
  %i.at = load i8, ptr %i.g, align 8, !tbaa !600, !range !547, !noundef !548
  %5 = zext i1 %i.as to i8
  %6 = or i8 %i.at, %5
  store i8 %6, ptr %i.g, align 8, !tbaa !600
  %i.au = trunc i64 %2 to i8                      ; 2 uses
  %.not.i.i.i.i4 = icmp eq ptr %.pre.i.i3, %i.ar
  br i1 %.not.i.i.i.i4, label %bb.o, label %bb.n
end_hunk_28
begin_hunk_29_@_ZN6hermes3hbc28BytecodeInstructionGenerator7emitRetEl:bb.a
  %.pre.i.i = phi ptr [ %i.k, %bb.b ], [ %i.u, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %i.x = icmp ugt i64 %1, 255
  %i.y = load i8, ptr %i.g, align 8, !tbaa !600, !range !547, !noundef !548
  %2 = zext i1 %i.x to i8
  %3 = or i8 %i.y, %2
  store i8 %3, ptr %i.g, align 8, !tbaa !600
  %i.z = trunc i64 %1 to i8                       ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, %i.w
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h
end_hunk_29
begin_hunk_30_@_ZN6hermes3hbc28BytecodeInstructionGenerator19emitLoadConstDoubleEll:bb.a
  %.pre.i.i = phi ptr [ %i.k, %bb.b ], [ %i.u, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %i.x = icmp ugt i64 %1, 255
  %i.y = load i8, ptr %i.g, align 8, !tbaa !600, !range !547, !noundef !548
  %3 = zext i1 %i.x to i8
  %4 = or i8 %i.y, %3
  store i8 %4, ptr %i.g, align 8, !tbaa !600
  %i.z = trunc i64 %1 to i8                       ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, %i.w
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h
end_hunk_30
