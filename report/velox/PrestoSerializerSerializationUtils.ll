inline.NumInlined: 33059
inline.NumDeleted: 6234
begin_hunk_0_@_ZN8facebook5velox10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS4_9CopyRangeEEE:bb.a
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i8, ptr %i.c, align 8, !tbaa !54
  %i.e = icmp eq i8 %i.d, 33
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS4_9CopyRangeEEE:bb.a
  br label %_ZN8facebook5velox14applyToEachRowIZNS0_10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS5_9CopyRangeEEEEUlT_T0_E0_EEvSF_RKSG_.exit

bb.t:                                             ; preds = %bb.r
  %i.bu = getelementptr inbounds nuw i8, ptr %i.m, i64 184
  %.sroa.0.0.copyload = load <2 x i64>, ptr %i.bu, align 8
  %i.bv = load ptr, ptr %2, align 8, !tbaa !749   ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !752 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS4_9CopyRangeEEE:bb.a
  %i.cg = load ptr, ptr %i.by, align 8, !tbaa !698
  %i.ch = sext i32 %i.cf to i64
  %i.ci = getelementptr inbounds [16 x i8], ptr %i.cg, i64 %i.ch
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.ci, align 8
  %i.cj = add nuw nsw i32 %.015.i, 1              ; 2 uses
  %i.ck = load i32, ptr %i.bz, align 4, !tbaa !748
  %i.cl = icmp slt i32 %i.cj, %i.ck
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS4_9CopyRangeEEE:bb.a

_ZN8facebook5velox14applyToEachRowIZNS0_10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS5_9CopyRangeEEEEUlT_T0_E_EEvSF_RKSG_.exit: ; preds = %._crit_edge.i, %bb.t
  %.not20 = icmp eq ptr %.0.fr, null
  br i1 %.not20, label %_ZN8facebook5velox14applyToEachRowIZNS0_10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS5_9CopyRangeEEEEUlT_T0_E0_EEvSF_RKSG_.exit, label %bb.v

bb.v:                                             ; preds = %_ZN8facebook5velox14applyToEachRowIZNS0_10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS5_9CopyRangeEEEEUlT_T0_E_EEvSF_RKSG_.exit
  tail call void @_ZN8facebook5velox10BaseVector8setNullsEPmRKN5folly5RangeIPKNS1_9CopyRangeEEEb(ptr noundef nonnull %.0.fr, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext false)
  br label %_ZN8facebook5velox14applyToEachRowIZNS0_10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS5_9CopyRangeEEEEUlT_T0_E0_EEvSF_RKSG_.exit

bb.w:                                             ; preds = %bb.k
end_hunk_3
begin_hunk_4_@_ZN8facebook5velox10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS4_9CopyRangeEEE:bb.a
  %i.ez = icmp slt i32 %i.ex, %i.ey
  br i1 %i.ez, label %bb.x, label %._crit_edge.i29, !llvm.loop !6715

_ZN8facebook5velox14applyToEachRowIZNS0_10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS5_9CopyRangeEEEEUlT_T0_E0_EEvSF_RKSG_.exit: ; preds = %._crit_edge.i29, %._crit_edge.i29.us, %_ZN8facebook5velox14applyToEachRowIZNS0_10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS5_9CopyRangeEEEEUlT_T0_E_EEvSF_RKSG_.exit, %bb.v, %bb.s, %_ZN8facebook5velox16applyToEachRangeIZNS0_10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS5_9CopyRangeEEEEUlT_T0_T1_E_EEvSF_RKSG_.exit, %bb.q, %bb.p, %bb.m, %bb.w, %bb.b
  ret void
}

end_hunk_4
