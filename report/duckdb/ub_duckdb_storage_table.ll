inline.NumInlined: 22010
inline.NumDeleted: 8913
begin_hunk_0_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_12AnalyzeStateESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm:bb.a
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !870
  %i.l = ptrtoint ptr %i.k to i64
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_12AnalyzeStateESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm:bb.a
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.o)
  %2 = sub nuw nsw i64 1152921504606846975, %i.g
  %i.p = icmp ule i64 %i.n, %2
  tail call void @llvm.assume(i1 %i.p)
  %.not28.i = icmp ult i64 %i.n, %i.i
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_12AnalyzeStateESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm:bb.a
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12AnalyzeStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %3 = icmp ugt i64 %1, 1152921504606846975
  br i1 %3, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12AnalyzeStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
end_hunk_2
begin_hunk_3_@_ZN6duckdb13UpdateSegment6UpdateENS_15TransactionDataERNS_9DataTableEmRNS_6VectorEPlmS5_m:bb.a
  %i.be = ptrtoint ptr %i.ah to i64
  %i.bf = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.h, i1 true)
  %i.bg = shl nuw nsw i64 %i.bf, 1
  %27 = sub nuw nsw i64 126, %i.bg
  call fastcc void @"_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_comp_iterIZN6duckdbL19SortSelectionVectorERNS4_15SelectionVectorEmPlE3$_0EEEvT_SA_T0_T1_"(ptr noundef nonnull %i.ah, ptr noundef nonnull %i.bd, i64 noundef %27, ptr nonnull readonly %i.a)
  %i.bh = icmp ugt i64 %i.h, 16
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.ah, i64 4 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN6duckdb18RowGroupCollection17RemoveFromIndexesERKNS_12QueryContextERNS_14TableIndexListERNS_6VectorEmNS_16IndexRemovalTypeENS_12optional_idxE:bb.a
  %i.bv = sdiv exact i64 %i.bu, 104
  %i.bw = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bv, i1 true)
  %i.bx = shl nuw nsw i64 %i.bw, 1
  %44 = sub nuw nsw i64 126, %i.bx
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6duckdb12StorageIndexESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_(ptr %.pre, ptr %.pre412, i64 noundef %44)
          to label %.noexc163 unwind label %.loopexit.split-lp341

end_hunk_4
begin_hunk_5_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_14RowGroupWriterESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm:bb.a
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !4819
  %i.l = ptrtoint ptr %i.k to i64
end_hunk_5
begin_hunk_6_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_14RowGroupWriterESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm:bb.a
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.o)
  %2 = sub nuw nsw i64 1152921504606846975, %i.g
  %i.p = icmp ule i64 %i.n, %2
  tail call void @llvm.assume(i1 %i.p)
  %.not28.i = icmp ult i64 %i.n, %i.i
end_hunk_6
begin_hunk_7_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_14RowGroupWriterESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm:bb.a
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14RowGroupWriterESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %3 = icmp ugt i64 %1, 1152921504606846975
  br i1 %3, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14RowGroupWriterESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
end_hunk_7
begin_hunk_8_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEESaIS7_EE6resizeEm:bb.a
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !3263
  %i.l = ptrtoint ptr %i.k to i64
end_hunk_8
begin_hunk_9_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEESaIS7_EE6resizeEm:bb.a
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.o)
  %2 = sub nuw nsw i64 1152921504606846975, %i.g
  %i.p = icmp ule i64 %i.n, %2
  tail call void @llvm.assume(i1 %i.p)
  %.not28.i = icmp ult i64 %i.n, %i.i
end_hunk_9
begin_hunk_10_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEESaIS7_EE6resizeEm:bb.a
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEESaIS7_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %3 = icmp ugt i64 %1, 1152921504606846975
  br i1 %3, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11SegmentNodeINS0_8RowGroupEEESt14default_deleteIS4_ELb1EEESaIS7_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
end_hunk_10
begin_hunk_11_@_ZNSt6vectorIN6duckdb23CheckpointAnalyzeResultESaIS1_EE17_M_default_appendEm:bb.a
  %i.l = ashr exact i64 %i.k, 4                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 576460752303423488
  tail call void @llvm.assume(i1 %i.m)
  %2 = sub nuw nsw i64 576460752303423487, %i.g   ; 2 uses
  %i.n = icmp ule i64 %i.l, %2
  tail call void @llvm.assume(i1 %i.n)
  %.not28 = icmp ult i64 %i.l, %1
end_hunk_11
begin_hunk_12_@_ZNSt6vectorIN6duckdb10shared_ptrINS0_10ColumnDataELb1EEESaIS3_EE17_M_default_appendEm:bb.a
  %i.l = ashr exact i64 %i.k, 4                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 576460752303423488
  tail call void @llvm.assume(i1 %i.m)
  %2 = sub nuw nsw i64 576460752303423487, %i.g   ; 2 uses
  %i.n = icmp ule i64 %i.l, %2
  tail call void @llvm.assume(i1 %i.n)
  %.not28 = icmp ult i64 %i.l, %1
end_hunk_12
