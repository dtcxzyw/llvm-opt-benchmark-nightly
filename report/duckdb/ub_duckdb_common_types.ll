inline.NumInlined: 41205
inline.NumDeleted: 6297
begin_hunk_0_@_ZN6duckdb4Date22ExtractISODayOfTheWeekENS_6date_tE:bb.a
bb.b:                                             ; preds = %bb.a
  %.lhs.trunc = sub i32 3, %0
  %i.b = urem i32 %.lhs.trunc, 7
  %1 = xor i32 %i.b, 7
  br label %bb.d

bb.c:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_ZN6duckdb4Date22ExtractISODayOfTheWeekENS_6date_tE:bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %1, %bb.b ], [ %narrow4, %bb.c ]
  ret i32 %.0
}

end_hunk_1
begin_hunk_2_@_ZN6duckdb4Date24ExtractWeekNumberRegularENS_6date_tEb:bb.a
bb.e:                                             ; preds = %bb.d
  %.lhs.trunc.i = sub i32 3, %i.be
  %i.bg = urem i32 %.lhs.trunc.i, 7
  %2 = xor i32 %i.bg, 7
  br label %_ZN6duckdb4Date22ExtractISODayOfTheWeekENS_6date_tE.exit

bb.f:                                             ; preds = %bb.d
end_hunk_2
begin_hunk_3_@_ZN6duckdb4Date24ExtractWeekNumberRegularENS_6date_tEb:bb.a
  br label %_ZN6duckdb4Date22ExtractISODayOfTheWeekENS_6date_tE.exit

_ZN6duckdb4Date22ExtractISODayOfTheWeekENS_6date_tE.exit: ; preds = %bb.e, %bb.f
  %.0.i = phi i32 [ %2, %bb.e ], [ %narrow4.i, %bb.f ] ; 3 uses
  %i.bi = sub nuw nsw i32 7, %.0.i
  %i.bj = icmp eq i32 %.0.i, 1
  %i.bk = sub nuw nsw i32 8, %.0.i
end_hunk_3
begin_hunk_4_@_ZN6duckdb15SelectionVector4SortEm:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx ; 2 uses
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %1, i1 true)
  %i.d = shl nuw nsw i64 %i.c, 1
  %2 = xor i64 %i.d, 126
  tail call void @_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %i.a, ptr noundef nonnull %i.b, i64 noundef %2)
  tail call void @_ZSt22__final_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %i.a, ptr noundef nonnull %i.b)
  br label %_ZSt4sortIPjEvT_S1_.exit
end_hunk_4
begin_hunk_5_@_ZN6duckdb12_GLOBAL__N_119FromStringRecursiveERNS0_10TextReaderERNS0_10BlobWriterEjbb:bb.a
  %i.aos = ptrtoint ptr %i.aoq to i64             ; 2 uses
  %i.aot = ptrtoint ptr %i.aor to i64
  %i.aou = sub i64 %i.aos, %i.aot                 ; 9 uses
  %i.aov = add i64 %i.aou, 4                      ; 3 uses
  %i.aow = icmp ult i64 %i.aou, -4
  br i1 %i.aow, label %bb.hh, label %bb.hm

end_hunk_5
begin_hunk_6_@_ZN6duckdb12_GLOBAL__N_119FromStringRecursiveERNS0_10TextReaderERNS0_10BlobWriterEjbb:bb.a
  %i.aoz = sub i64 %i.aoy, %i.aos                 ; 2 uses
  %i.apa = icmp sgt i64 %i.aou, -1
  call void @llvm.assume(i1 %i.apa)
  %24 = xor i64 %i.aou, 9223372036854775807       ; 2 uses
  %i.apb = icmp ule i64 %i.aoz, %24
  call void @llvm.assume(i1 %i.apb)
  %.not28.i.i = icmp ult i64 %i.aoz, 4
end_hunk_6
begin_hunk_7_@_ZN6duckdb12_GLOBAL__N_119FromStringRecursiveERNS0_10TextReaderERNS0_10BlobWriterEjbb:bb.a
  br label %_ZNSt6vectorIcSaIcEE6resizeEm.exit

bb.hi:                                            ; preds = %bb.hh
  %25 = icmp samesign ult i64 %24, 4
  br i1 %25, label %bb.hj, label %_ZSt27__uninitialized_default_n_aIPcmcET_S1_T0_RSaIT1_E.exit31.i.i

bb.hj:                                            ; preds = %bb.hi
end_hunk_7
begin_hunk_8_@_ZNSt6vectorIhSaIhEE6resizeEm:bb.a
  br i1 %i.g, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.h = sub nuw i64 %1, %i.f                     ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2143
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = sub i64 %i.k, %i.d                       ; 2 uses
  %i.m = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.m)
  %2 = xor i64 %i.f, 9223372036854775807          ; 2 uses
  %i.n = icmp ule i64 %i.l, %2
  tail call void @llvm.assume(i1 %i.n)
  %.not28.i = icmp ult i64 %i.l, %i.h
end_hunk_8
begin_hunk_9_@_ZNSt6vectorIhSaIhEE6resizeEm:bb.a
  br label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

bb.e:                                             ; preds = %bb.b
  %3 = icmp ult i64 %2, %i.h
  br i1 %3, label %bb.f, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i

bb.f:                                             ; preds = %bb.e
end_hunk_9
begin_hunk_10_@_ZNSt6vectorIcSaIcEE6resizeEm:bb.a
  br i1 %i.g, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.h = sub nuw i64 %1, %i.f                     ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2788
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = sub i64 %i.k, %i.d                       ; 2 uses
  %i.m = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.m)
  %2 = xor i64 %i.f, 9223372036854775807          ; 2 uses
  %i.n = icmp ule i64 %i.l, %2
  tail call void @llvm.assume(i1 %i.n)
  %.not28.i = icmp ult i64 %i.l, %i.h
end_hunk_10
begin_hunk_11_@_ZNSt6vectorIcSaIcEE6resizeEm:bb.a
  br label %_ZNSt6vectorIcSaIcEE17_M_default_appendEm.exit

bb.e:                                             ; preds = %bb.b
  %3 = icmp ult i64 %2, %i.h
  br i1 %3, label %bb.f, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i

bb.f:                                             ; preds = %bb.e
end_hunk_11
