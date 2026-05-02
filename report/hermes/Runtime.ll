inline.NumInlined: 3789
inline.NumDeleted: 2145
begin_hunk_0_@_ZN6hermes3hbc28BytecodeInstructionGenerator22emitLoadConstUndefinedEl:bb.a
  %.pre.i.i = phi ptr [ %i.k, %bb.b ], [ %i.u, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %i.x = icmp ugt i64 %1, 255
  %i.y = load i8, ptr %i.g, align 8, !tbaa !972, !range !123, !noundef !124
  %2 = trunc nuw i8 %i.y to i1
  %3 = or i1 %i.x, %2
  %4 = zext i1 %3 to i8
  store i8 %4, ptr %i.g, align 8, !tbaa !972
  %i.z = trunc i64 %1 to i8                       ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, %i.w
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h
end_hunk_0
begin_hunk_1_@_ZN6hermes3hbc28BytecodeInstructionGenerator7emitRetEl:bb.a
  %.pre.i.i = phi ptr [ %i.k, %bb.b ], [ %i.u, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %i.x = icmp ugt i64 %1, 255
  %i.y = load i8, ptr %i.g, align 8, !tbaa !972, !range !123, !noundef !124
  %2 = trunc nuw i8 %i.y to i1
  %3 = or i1 %i.x, %2
  %4 = zext i1 %3 to i8
  store i8 %4, ptr %i.g, align 8, !tbaa !972
  %i.z = trunc i64 %1 to i8                       ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, %i.w
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h
end_hunk_1
begin_hunk_2_@_ZN6hermes3hbc28BytecodeInstructionGenerator19emitGetGlobalObjectEl:bb.a
  %.pre.i.i = phi ptr [ %i.k, %bb.b ], [ %i.u, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i ] ; 2 uses
  %i.x = icmp ugt i64 %1, 255
  %i.y = load i8, ptr %i.g, align 8, !tbaa !972, !range !123, !noundef !124
  %2 = trunc nuw i8 %i.y to i1
  %3 = or i1 %i.x, %2
  %4 = zext i1 %3 to i8
  store i8 %4, ptr %i.g, align 8, !tbaa !972
  %i.z = trunc i64 %1 to i8                       ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i, %i.w
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h
end_hunk_2
