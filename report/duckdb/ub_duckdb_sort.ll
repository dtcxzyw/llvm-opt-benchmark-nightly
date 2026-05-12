inline.NumInlined: 29521
inline.NumDeleted: 7045
begin_hunk_0_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_15HashedSortGroupESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm:bb.a
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !735
  %i.l = ptrtoint ptr %i.k to i64
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_15HashedSortGroupESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm:bb.a
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.o)
  %2 = xor i64 %i.g, 1152921504606846975          ; 2 uses
  %i.p = icmp ule i64 %i.n, %2
  tail call void @llvm.assume(i1 %i.p)
  %.not28.i = icmp ult i64 %i.n, %i.i
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_15HashedSortGroupESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm:bb.a
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15HashedSortGroupESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %3 = icmp ult i64 %2, %i.i
  br i1 %3, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15HashedSortGroupESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
end_hunk_2
begin_hunk_3_@_ZN6duckdb4SortC2ERNS_13ClientContextERKNS_6vectorINS_16BoundOrderByNodeELb1ESaIS4_EEERKNS3_INS_11LogicalTypeELb1ESaIS9_EEENS3_ImLb1ESaImEEEb:bb.a
  %i.ahj = sdiv exact i64 %i.ahi, 24
  %i.ahk = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ahj, i1 true)
  %i.ahl = shl nuw nsw i64 %i.ahk, 1
  %65 = xor i64 %i.ahl, 126
  call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6duckdb20SortProjectionColumnESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_4SortC1ERNS2_13ClientContextERKNS2_6vectorINS2_16BoundOrderByNodeELb1ESaISF_EEERKNSE_INS2_11LogicalTypeELb1ESaISK_EEENSE_ImLb1ESaImEEEbE3$_1EEEvT_ST_T0_T1_"(ptr %i.ahd, ptr %i.ahf, i64 noundef %65)
  %i.ahm = icmp sgt i64 %i.ahi, 384
  br i1 %i.ahm, label %.lr.ph.i.i.i.i438, label %.preheader.i34.i.i.i
end_hunk_3
begin_hunk_4_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_9SortedRunESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm:bb.a
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1079
  %i.l = ptrtoint ptr %i.k to i64
end_hunk_4
begin_hunk_5_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_9SortedRunESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm:bb.a
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.o)
  %2 = xor i64 %i.g, 1152921504606846975          ; 2 uses
  %i.p = icmp ule i64 %i.n, %2
  tail call void @llvm.assume(i1 %i.p)
  %.not28.i = icmp ult i64 %i.n, %i.i
end_hunk_5
begin_hunk_6_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_9SortedRunESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm:bb.a
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9SortedRunESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %3 = icmp ult i64 %2, %i.i
  br i1 %3, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9SortedRunESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
end_hunk_6
begin_hunk_7_@_ZNSt6vectorIcSaIcEE6resizeEm:bb.a
  br i1 %i.g, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.h = sub nuw i64 %1, %i.f                     ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !11127
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = sub i64 %i.k, %i.d                       ; 2 uses
  %i.m = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.m)
  %2 = xor i64 %i.f, 9223372036854775807          ; 2 uses
  %i.n = icmp ule i64 %i.l, %2
  tail call void @llvm.assume(i1 %i.n)
  %.not28.i = icmp ult i64 %i.l, %i.h
end_hunk_7
begin_hunk_8_@_ZNSt6vectorIcSaIcEE6resizeEm:bb.a
  br label %_ZNSt6vectorIcSaIcEE17_M_default_appendEm.exit

bb.e:                                             ; preds = %bb.b
  %3 = icmp ult i64 %2, %i.h
  br i1 %3, label %bb.f, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i

bb.f:                                             ; preds = %bb.e
end_hunk_8
begin_hunk_9_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_23SortedRunMergePartitionESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm:bb.a
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !11881
  %i.l = ptrtoint ptr %i.k to i64
end_hunk_9
begin_hunk_10_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_23SortedRunMergePartitionESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm:bb.a
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.o)
  %2 = xor i64 %i.g, 1152921504606846975          ; 2 uses
  %i.p = icmp ule i64 %i.n, %2
  tail call void @llvm.assume(i1 %i.p)
  %.not28.i = icmp ult i64 %i.n, %i.i
end_hunk_10
begin_hunk_11_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_23SortedRunMergePartitionESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm:bb.a
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_23SortedRunMergePartitionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %3 = icmp ult i64 %2, %i.i
  br i1 %3, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_23SortedRunMergePartitionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
end_hunk_11
begin_hunk_12_@_ZNSt6vectorIN6duckdb26SortedRunPartitionBoundaryESaIS1_EE17_M_default_appendEm:bb.a
  %i.l = ashr exact i64 %i.k, 4                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 576460752303423488
  tail call void @llvm.assume(i1 %i.m)
  %2 = xor i64 %i.g, 576460752303423487           ; 2 uses
  %i.n = icmp ule i64 %i.l, %2
  tail call void @llvm.assume(i1 %i.n)
  %.not28 = icmp ult i64 %i.l, %1
end_hunk_12
