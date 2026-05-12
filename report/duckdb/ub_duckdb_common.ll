inline.NumInlined: 29985
inline.NumDeleted: 10454
begin_hunk_0_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm:bb.a
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2592
  %i.l = ptrtoint ptr %i.k to i64
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm:bb.a
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.o)
  %2 = xor i64 %i.g, 1152921504606846975          ; 2 uses
  %i.p = icmp ule i64 %i.n, %2
  tail call void @llvm.assume(i1 %i.p)
  %.not28.i = icmp ult i64 %i.n, %i.i
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm:bb.a
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %3 = icmp ult i64 %2, %i.i
  br i1 %3, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_21ColumnDataAppendStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
end_hunk_2
begin_hunk_3_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm:bb.a
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !750
  %i.l = ptrtoint ptr %i.k to i64
end_hunk_3
begin_hunk_4_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm:bb.a
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.o)
  %2 = xor i64 %i.g, 1152921504606846975          ; 2 uses
  %i.p = icmp ule i64 %i.n, %2
  tail call void @llvm.assume(i1 %i.p)
  %.not28.i = icmp ult i64 %i.n, %i.i
end_hunk_4
begin_hunk_5_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm:bb.a
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %3 = icmp ult i64 %2, %i.i
  br i1 %3, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
end_hunk_5
begin_hunk_6_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm:bb.a
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2626
  %i.l = ptrtoint ptr %i.k to i64
end_hunk_6
begin_hunk_7_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm:bb.a
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.o)
  %2 = xor i64 %i.g, 1152921504606846975          ; 2 uses
  %i.p = icmp ule i64 %i.n, %2
  tail call void @llvm.assume(i1 %i.p)
  %.not28.i = icmp ult i64 %i.n, %i.i
end_hunk_7
begin_hunk_8_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm:bb.a
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %3 = icmp ult i64 %2, %i.i
  br i1 %3, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
end_hunk_8
begin_hunk_9_@_ZN6duckdb10StringUtil11TopNStringsENS_6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdELb1ESaIS9_EEEmd:bb.a
  %i.i = sdiv exact i64 %i.h, 40
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.i, i1 true)
  %i.k = shl nuw nsw i64 %i.j, 1
  %4 = xor i64 %i.k, 126
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZN6duckdb10StringUtil11TopNStringsENSH_6vectorIS9_Lb1ESC_EEmdE3$_0EEEvT_SN_T0_T1_"(ptr %i.b, ptr %i.d, i64 noundef %4)
  %i.l = icmp sgt i64 %i.h, 640
  br i1 %i.l, label %bb.d, label %bb.e
end_hunk_9
begin_hunk_10_@_ZNSt6vectorImSaImEE17_M_default_appendEm:bb.a
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %2 = xor i64 %i.g, 1152921504606846975          ; 2 uses
  %i.n = icmp ule i64 %i.l, %2
  tail call void @llvm.assume(i1 %i.n)
  %.not28 = icmp ult i64 %i.l, %1
end_hunk_10
begin_hunk_11_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_default_appendEm:bb.a
  %i.l = ashr exact i64 %i.k, 5                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 288230376151711744
  tail call void @llvm.assume(i1 %i.m)
  %2 = xor i64 %i.g, 288230376151711743           ; 2 uses
  %i.n = icmp ule i64 %i.l, %2
  tail call void @llvm.assume(i1 %i.n)
  %.not28 = icmp ult i64 %i.l, %1
end_hunk_11
begin_hunk_12_@_ZNSt6vectorIN6duckdb16HivePartitionKeyESaIS1_EE17_M_default_appendEm:bb.a
  %i.l = ashr exact i64 %i.k, 5                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 288230376151711744
  tail call void @llvm.assume(i1 %i.m)
  %2 = xor i64 %i.g, 288230376151711743           ; 2 uses
  %i.n = icmp ule i64 %i.l, %2
  tail call void @llvm.assume(i1 %i.n)
  %.not28 = icmp ult i64 %i.l, %1
end_hunk_12
begin_hunk_13_@_ZNSt6vectorIN6duckdb5ValueESaIS1_EE17_M_default_appendEm:bb.a
  %i.l = ashr exact i64 %i.k, 6                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 144115188075855872
  tail call void @llvm.assume(i1 %i.m)
  %2 = xor i64 %i.g, 144115188075855871           ; 2 uses
  %i.n = icmp ule i64 %i.l, %2
  tail call void @llvm.assume(i1 %i.n)
  %.not28 = icmp ult i64 %i.l, %1
end_hunk_13
begin_hunk_14_@_ZNSt6vectorIN19duckdb_jaro_winkler6common16BitvectorHashmapESaIS2_EE6resizeEm:bb.a
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !6943
  %i.l = ptrtoint ptr %i.k to i64
end_hunk_14
begin_hunk_15_@_ZNSt6vectorIN19duckdb_jaro_winkler6common16BitvectorHashmapESaIS2_EE6resizeEm:bb.a
  %i.n = ashr exact i64 %i.m, 11                  ; 2 uses
  %i.o = icmp ult i64 %i.g, 4503599627370496
  tail call void @llvm.assume(i1 %i.o)
  %2 = xor i64 %i.g, 4503599627370495             ; 2 uses
  %i.p = icmp ule i64 %i.n, %2
  tail call void @llvm.assume(i1 %i.p)
  %.not28.i = icmp ult i64 %i.n, %i.i
end_hunk_15
begin_hunk_16_@_ZNSt6vectorIN19duckdb_jaro_winkler6common16BitvectorHashmapESaIS2_EE6resizeEm:bb.a
  br label %_ZNSt6vectorIN19duckdb_jaro_winkler6common16BitvectorHashmapESaIS2_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %3 = icmp ult i64 %2, %i.i
  br i1 %3, label %bb.d, label %_ZNKSt6vectorIN19duckdb_jaro_winkler6common16BitvectorHashmapESaIS2_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
end_hunk_16
