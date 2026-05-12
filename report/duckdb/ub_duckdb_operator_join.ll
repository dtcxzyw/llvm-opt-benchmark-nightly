inline.NumInlined: 13952
inline.NumDeleted: 6687
begin_hunk_0_@_ZN6duckdb21AsOfGlobalSourceState14CreateTaskListERNS_13ClientContextE:bb.a
  %i.r = ashr exact i64 %i.q, 4
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %4 = xor i64 %i.t, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterISt7greaterIS3_EEEEvT_SE_T0_T1_(ptr %i.l, ptr %i.n, i64 noundef %4)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt7greaterIS3_EEEEvT_SE_T0_(ptr %i.l, ptr %i.n)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEESt7greaterIS3_EEvT_SB_T0_.exit
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_13JoinHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm:bb.a
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1223
  %i.l = ptrtoint ptr %i.k to i64
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_13JoinHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm:bb.a
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.o)
  %2 = xor i64 %i.g, 1152921504606846975          ; 2 uses
  %i.p = icmp ule i64 %i.n, %2
  tail call void @llvm.assume(i1 %i.p)
  %.not28.i = icmp ult i64 %i.n, %i.i
end_hunk_2
begin_hunk_3_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_13JoinHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm:bb.a
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13JoinHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %3 = icmp ult i64 %2, %i.i
  br i1 %3, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_13JoinHashTableESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
end_hunk_3
begin_hunk_4_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEESaIS6_EE6resizeEm:bb.a
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2945
  %i.l = ptrtoint ptr %i.k to i64
end_hunk_4
begin_hunk_5_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEESaIS6_EE6resizeEm:bb.a
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.o)
  %2 = xor i64 %i.g, 1152921504606846975          ; 2 uses
  %i.p = icmp ule i64 %i.n, %2
  tail call void @llvm.assume(i1 %i.p)
  %.not28.i = icmp ult i64 %i.n, %i.i
end_hunk_5
begin_hunk_6_@_ZNSt6vectorIN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEESaIS6_EE6resizeEm:bb.a
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %3 = icmp ult i64 %2, %i.i
  br i1 %3, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_17PhysicalRangeJoin17GlobalSortedTableESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
end_hunk_6
begin_hunk_7_@_ZNSt6vectorImSaImEE17_M_default_appendEm:bb.a
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %2 = xor i64 %i.g, 1152921504606846975          ; 2 uses
  %i.n = icmp ule i64 %i.l, %2
  tail call void @llvm.assume(i1 %i.n)
  %.not28 = icmp ult i64 %i.l, %1
end_hunk_7
