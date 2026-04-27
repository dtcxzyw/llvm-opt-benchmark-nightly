inline.NumInlined: 10729
inline.NumDeleted: 3679
begin_hunk_0_@_ZNK6duckdb19TupleDataCollection19GetRowBlockPointersEv:bb.a
  br i1 %.not47, label %_ZNSt6vectorIPhSaIS0_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIPhSaIS0_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIPhSaIS0_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = shl nuw nsw i64 %i.k, 3
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #30 ; 4 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !812
  store ptr %i.o, ptr %2, align 8, !tbaa !815
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.k
end_hunk_0
begin_hunk_1_@_ZNK6duckdb19TupleDataCollection6GatherERNS_6VectorERKNS_15SelectionVectorEmRNS_9DataChunkES5_RNS_6vectorINS_10unique_ptrIS1_St14default_deleteIS1_ELb1EEELb1ESaISC_EEE:bb.a
  br i1 %.not71, label %_ZNSt6vectorImSaImEE7reserveEm.exit, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i: ; preds = %bb.b
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.l = shl nuw nsw i64 %i.i, 3
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #30 ; 3 uses
  store ptr %i.m, ptr %8, align 8, !tbaa !453
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.i
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit
end_hunk_1
