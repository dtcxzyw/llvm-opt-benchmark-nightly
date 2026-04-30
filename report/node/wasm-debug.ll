inline.NumInlined: 2477
inline.NumDeleted: 1488
begin_hunk_0_@_ZN2v88internal4wasm13DebugInfoImpl31RecompileLiftoffWithBreakpointsEiNS_4base6VectorIKiEEi:bb.a
  store i32 %i.ey, ptr %i.ex, align 4, !noalias !85
  br label %_ZN2v84base11OwnedVectorIKiEC2IiQsr3stdE16is_convertible_vISt10unique_ptrITL0__St14default_deleteIS6_EES5_IT_S7_ISA_EEEEEONS1_ISA_EE.exit

_ZN2v84base11OwnedVectorIKiEC2IiQsr3stdE16is_convertible_vISt10unique_ptrITL0__St14default_deleteIS6_EES5_IT_S7_ISA_EEEEEONS1_ISA_EE.exit: ; preds = %bb.s, %bb.t, %bb.u
  %.sroa.0.0 = phi ptr [ %i.ex, %bb.t ], [ %i.ex, %bb.u ], [ null, %bb.s ]
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %.sroa.0.0, ptr %i.es, align 8
  store i64 %3, ptr %15, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i32 %4, ptr %i.ez, align 8
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN2v88internal4wasm13DebugInfoImpl19CachedDebuggingCodeESaIS4_EE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEOS4_:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %.not = icmp eq ptr %i.f, %i.h
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %1, %i.f
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt12construct_atIN2v88internal4wasm13DebugInfoImpl19CachedDebuggingCodeEJS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit, label %bb.c

_ZSt12construct_atIN2v88internal4wasm13DebugInfoImpl19CachedDebuggingCodeEJS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit: ; preds = %bb.b
  %3 = load i32, ptr %2, align 8
  store i32 %3, ptr %i.f, align 8
  %4 = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %6 = load ptr, ptr %5, align 8
  store ptr null, ptr %5, align 8
  store ptr %6, ptr %4, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8
  store i64 %i.k, ptr %i.i, align 8
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN2v88internal4wasm13DebugInfoImpl19CachedDebuggingCodeESaIS4_EE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEOS4_:bb.a
  store ptr %i.o, ptr %i.e, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 4 uses
  %i.q = getelementptr inbounds i8, ptr %i.f, i64 -40
  %i.r = load i32, ptr %i.q, align 8
  store i32 %i.r, ptr %i.f, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.t = getelementptr inbounds i8, ptr %i.f, i64 -32 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %8 = load ptr, ptr %i.t, align 8
  store ptr null, ptr %i.t, align 8
  store ptr %8, ptr %i.s, align 8
  %i.u = getelementptr inbounds i8, ptr %i.f, i64 -24 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8
  store i64 %i.v, ptr %7, align 8
  store i64 0, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.x = getelementptr inbounds i8, ptr %i.f, i64 -16
end_hunk_2
begin_hunk_3_@_ZNSt6vectorIN2v88internal4wasm13DebugInfoImpl19CachedDebuggingCodeESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_:bb.a
  store i32 %i.r, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %4 = load ptr, ptr %i.t, align 8
  store ptr null, ptr %i.t, align 8
  store ptr %4, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8
  store i64 %i.v, ptr %3, align 8
  store i64 0, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 24
end_hunk_3
begin_hunk_4_@_ZNSt6vectorIN2v88internal4wasm13DebugInfoImpl19CachedDebuggingCodeESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_:bb.a
  store i32 %i.y, ptr %.012.i.i.i, align 8, !alias.scope !98, !noalias !101
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %6 = load ptr, ptr %i.aa, align 8, !alias.scope !101, !noalias !98
  store ptr null, ptr %i.aa, align 8, !alias.scope !101, !noalias !98
  store ptr %6, ptr %i.z, align 8, !alias.scope !98, !noalias !101
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !101, !noalias !98
  store i64 %i.ac, ptr %5, align 8, !alias.scope !98, !noalias !101
  store i64 0, ptr %i.ab, align 8, !alias.scope !101, !noalias !98
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
end_hunk_4
begin_hunk_5_@_ZNSt6vectorIN2v88internal4wasm13DebugInfoImpl19CachedDebuggingCodeESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_:bb.a
  store i32 %i.ai, ptr %.012.i.i.i18, align 8, !alias.scope !105, !noalias !108
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16
  %8 = load ptr, ptr %i.ak, align 8, !alias.scope !108, !noalias !105
  store ptr null, ptr %i.ak, align 8, !alias.scope !108, !noalias !105
  store ptr %8, ptr %i.aj, align 8, !alias.scope !105, !noalias !108
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !108, !noalias !105
  store i64 %i.am, ptr %7, align 8, !alias.scope !105, !noalias !108
  store i64 0, ptr %i.al, align 8, !alias.scope !108, !noalias !105
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24
end_hunk_5
