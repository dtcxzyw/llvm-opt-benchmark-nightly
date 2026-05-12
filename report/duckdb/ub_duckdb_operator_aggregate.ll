inline.NumInlined: 10453
inline.NumDeleted: 5814
begin_hunk_0_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_19AggregateFilterDataESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm:bb.a
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !194
  %i.l = ptrtoint ptr %i.k to i64
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_19AggregateFilterDataESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm:bb.a
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.o)
  %2 = xor i64 %i.g, 1152921504606846975          ; 2 uses
  %i.p = icmp ule i64 %i.n, %2
  tail call void @llvm.assume(i1 %i.p)
  %.not28.i = icmp ult i64 %i.n, %i.i
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_19AggregateFilterDataESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm:bb.a
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19AggregateFilterDataESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %3 = icmp ult i64 %2, %i.i
  br i1 %3, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_19AggregateFilterDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
end_hunk_2
begin_hunk_3_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm:bb.a
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !304
  %i.l = ptrtoint ptr %i.k to i64
end_hunk_3
begin_hunk_4_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm:bb.a
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.o)
  %2 = xor i64 %i.g, 1152921504606846975          ; 2 uses
  %i.p = icmp ule i64 %i.n, %2
  tail call void @llvm.assume(i1 %i.p)
  %.not28.i = icmp ult i64 %i.n, %i.i
end_hunk_4
begin_hunk_5_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm:bb.a
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %3 = icmp ult i64 %2, %i.i
  br i1 %3, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15GlobalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
end_hunk_5
begin_hunk_6_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm:bb.a
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !325
  %i.l = ptrtoint ptr %i.k to i64
end_hunk_6
begin_hunk_7_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm:bb.a
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.o)
  %2 = xor i64 %i.g, 1152921504606846975          ; 2 uses
  %i.p = icmp ule i64 %i.n, %2
  tail call void @llvm.assume(i1 %i.p)
  %.not28.i = icmp ult i64 %i.n, %i.i
end_hunk_7
begin_hunk_8_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm:bb.a
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %3 = icmp ult i64 %2, %i.i
  br i1 %3, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9DataChunkESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
end_hunk_8
begin_hunk_9_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_20GroupedAggregateDataESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm:bb.a
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !369
  %i.l = ptrtoint ptr %i.k to i64
end_hunk_9
begin_hunk_10_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_20GroupedAggregateDataESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm:bb.a
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.o)
  %2 = xor i64 %i.g, 1152921504606846975          ; 2 uses
  %i.p = icmp ule i64 %i.n, %2
  tail call void @llvm.assume(i1 %i.p)
  %.not28.i = icmp ult i64 %i.n, %i.i
end_hunk_10
begin_hunk_11_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_20GroupedAggregateDataESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm:bb.a
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20GroupedAggregateDataESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %3 = icmp ult i64 %2, %i.i
  br i1 %3, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_20GroupedAggregateDataESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
end_hunk_11
begin_hunk_12_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_25RadixPartitionedHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm:bb.a
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !385
  %i.l = ptrtoint ptr %i.k to i64
end_hunk_12
begin_hunk_13_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_25RadixPartitionedHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm:bb.a
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.o)
  %2 = xor i64 %i.g, 1152921504606846975          ; 2 uses
  %i.p = icmp ule i64 %i.n, %2
  tail call void @llvm.assume(i1 %i.p)
  %.not28.i = icmp ult i64 %i.n, %i.i
end_hunk_13
begin_hunk_14_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_25RadixPartitionedHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm:bb.a
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_25RadixPartitionedHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %3 = icmp ult i64 %2, %i.i
  br i1 %3, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_25RadixPartitionedHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
end_hunk_14
begin_hunk_15_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_14LocalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm:bb.a
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !466
  %i.l = ptrtoint ptr %i.k to i64
end_hunk_15
begin_hunk_16_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_14LocalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm:bb.a
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.o)
  %2 = xor i64 %i.g, 1152921504606846975          ; 2 uses
  %i.p = icmp ule i64 %i.n, %2
  tail call void @llvm.assume(i1 %i.p)
  %.not28.i = icmp ult i64 %i.n, %i.i
end_hunk_16
begin_hunk_17_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_14LocalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm:bb.a
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14LocalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %3 = icmp ult i64 %2, %i.i
  br i1 %3, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14LocalSinkStateESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
end_hunk_17
begin_hunk_18_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_15WindowHashGroupESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm:bb.a
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1543
  %i.l = ptrtoint ptr %i.k to i64
end_hunk_18
begin_hunk_19_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_15WindowHashGroupESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm:bb.a
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.o)
  %2 = xor i64 %i.g, 1152921504606846975          ; 2 uses
  %i.p = icmp ule i64 %i.n, %2
  tail call void @llvm.assume(i1 %i.p)
  %.not28.i = icmp ult i64 %i.n, %i.i
end_hunk_19
begin_hunk_20_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_15WindowHashGroupESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm:bb.a
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15WindowHashGroupESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %3 = icmp ult i64 %2, %i.i
  br i1 %3, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15WindowHashGroupESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
end_hunk_20
begin_hunk_21_@_ZN6duckdb23WindowGlobalSourceState14CreateTaskListEv:bb.a
  %i.r = ashr exact i64 %i.q, 4
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %3 = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterISt7greaterIS3_EEEEvT_SE_T0_T1_(ptr %i.l, ptr %i.n, i64 noundef %3)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt7greaterIS3_EEEEvT_SE_T0_(ptr %i.l, ptr %i.n)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEESt7greaterIS3_EEvT_SB_T0_.exit
end_hunk_21
begin_hunk_22_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm:bb.a
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2069
  %i.l = ptrtoint ptr %i.k to i64
end_hunk_22
begin_hunk_23_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm:bb.a
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.o)
  %2 = xor i64 %i.g, 1152921504606846975          ; 2 uses
  %i.p = icmp ule i64 %i.n, %2
  tail call void @llvm.assume(i1 %i.p)
  %.not28.i = icmp ult i64 %i.n, %i.i
end_hunk_23
begin_hunk_24_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm:bb.a
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %3 = icmp ult i64 %2, %i.i
  br i1 %3, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
end_hunk_24
begin_hunk_25_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_20StreamingWindowState14AggregateStateESt14default_deleteIS3_ELb1EEESaIS6_EE6resizeEm:bb.a
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2085
  %i.l = ptrtoint ptr %i.k to i64
end_hunk_25
begin_hunk_26_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_20StreamingWindowState14AggregateStateESt14default_deleteIS3_ELb1EEESaIS6_EE6resizeEm:bb.a
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.o)
  %2 = xor i64 %i.g, 1152921504606846975          ; 2 uses
  %i.p = icmp ule i64 %i.n, %2
  tail call void @llvm.assume(i1 %i.p)
  %.not28.i = icmp ult i64 %i.n, %i.i
end_hunk_26
begin_hunk_27_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_20StreamingWindowState14AggregateStateESt14default_deleteIS3_ELb1EEESaIS6_EE6resizeEm:bb.a
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20StreamingWindowState14AggregateStateESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %3 = icmp ult i64 %2, %i.i
  br i1 %3, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_20StreamingWindowState14AggregateStateESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
end_hunk_27
begin_hunk_28_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_20StreamingWindowState12LeadLagStateESt14default_deleteIS3_ELb1EEESaIS6_EE6resizeEm:bb.a
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2101
  %i.l = ptrtoint ptr %i.k to i64
end_hunk_28
begin_hunk_29_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_20StreamingWindowState12LeadLagStateESt14default_deleteIS3_ELb1EEESaIS6_EE6resizeEm:bb.a
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.o)
  %2 = xor i64 %i.g, 1152921504606846975          ; 2 uses
  %i.p = icmp ule i64 %i.n, %2
  tail call void @llvm.assume(i1 %i.p)
  %.not28.i = icmp ult i64 %i.n, %i.i
end_hunk_29
begin_hunk_30_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_20StreamingWindowState12LeadLagStateESt14default_deleteIS3_ELb1EEESaIS6_EE6resizeEm:bb.a
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20StreamingWindowState12LeadLagStateESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %3 = icmp ult i64 %2, %i.i
  br i1 %3, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_20StreamingWindowState12LeadLagStateESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
end_hunk_30
begin_hunk_31_@_ZNSt6vectorIhSaIhEE6resizeEm:bb.a
  br i1 %i.g, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.h = sub nuw i64 %1, %i.f                     ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2129
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = sub i64 %i.k, %i.d                       ; 2 uses
  %i.m = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.m)
  %2 = xor i64 %i.f, 9223372036854775807          ; 2 uses
  %i.n = icmp ule i64 %i.l, %2
  tail call void @llvm.assume(i1 %i.n)
  %.not28.i = icmp ult i64 %i.l, %i.h
end_hunk_31
begin_hunk_32_@_ZNSt6vectorIhSaIhEE6resizeEm:bb.a
  br label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

bb.e:                                             ; preds = %bb.b
  %3 = icmp ult i64 %2, %i.h
  br i1 %3, label %bb.f, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i

bb.f:                                             ; preds = %bb.e
end_hunk_32
