inline.NumInlined: 39107
inline.NumDeleted: 7522
begin_hunk_0_@_ZN8facebook5velox10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS4_9CopyRangeEEE:bb.a
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i8, ptr %i.c, align 8, !tbaa !28
  %i.e = icmp eq i8 %i.d, 33
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS4_9CopyRangeEEE:bb.a
  br label %_ZN8facebook5velox10BaseVector9copyNullsEPmPKmRKN5folly5RangeIPKNS1_9CopyRangeEEE.exit

bb.t:                                             ; preds = %bb.r
  %i.cd = getelementptr inbounds nuw i8, ptr %i.m, i64 184
  %.sroa.0.0.copyload = load <2 x i64>, ptr %i.cd, align 8
  %i.ce = load ptr, ptr %2, align 8, !tbaa !886   ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !889 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS4_9CopyRangeEEE:bb.a
  %i.cp = load ptr, ptr %i.ch, align 8, !tbaa !1538
  %i.cq = sext i32 %i.co to i64
  %i.cr = getelementptr inbounds [16 x i8], ptr %i.cp, i64 %i.cq
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.cr, align 8
  %i.cs = add nuw nsw i32 %.015.i, 1              ; 2 uses
  %i.ct = load i32, ptr %i.ci, align 4, !tbaa !892
  %i.cu = icmp slt i32 %i.cs, %i.ct
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS4_9CopyRangeEEE:bb.a

_ZN8facebook5velox14applyToEachRowIZNS0_10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS5_9CopyRangeEEEEUlT_T0_E_EEvSF_RKSG_.exit: ; preds = %._crit_edge.i, %bb.t
  %.not20 = icmp eq ptr %.0.fr, null
  br i1 %.not20, label %_ZN8facebook5velox10BaseVector9copyNullsEPmPKmRKN5folly5RangeIPKNS1_9CopyRangeEEE.exit, label %bb.v

bb.v:                                             ; preds = %_ZN8facebook5velox14applyToEachRowIZNS0_10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS5_9CopyRangeEEEEUlT_T0_E_EEvSF_RKSG_.exit
  tail call void @_ZN8facebook5velox10BaseVector8setNullsEPmRKN5folly5RangeIPKNS1_9CopyRangeEEEb(ptr noundef nonnull %.0.fr, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext false)
  br label %_ZN8facebook5velox10BaseVector9copyNullsEPmPKmRKN5folly5RangeIPKNS1_9CopyRangeEEE.exit

bb.w:                                             ; preds = %bb.k
end_hunk_3
begin_hunk_4_@_ZN8facebook5velox10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS4_9CopyRangeEEE:bb.a
  %i.fi = icmp slt i32 %i.fg, %i.fh
  br i1 %i.fi, label %bb.x, label %._crit_edge.i29, !llvm.loop !11601

_ZN8facebook5velox10BaseVector9copyNullsEPmPKmRKN5folly5RangeIPKNS1_9CopyRangeEEE.exit: ; preds = %.lr.ph.i.i, %._crit_edge.i29, %._crit_edge.i29.us, %_ZN8facebook5velox14applyToEachRowIZNS0_10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS5_9CopyRangeEEEEUlT_T0_E_EEvSF_RKSG_.exit, %bb.v, %bb.s, %_ZN8facebook5velox16applyToEachRangeIZNS0_10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS5_9CopyRangeEEEEUlT_T0_T1_E_EEvSF_RKSG_.exit, %bb.q, %bb.m, %bb.p, %bb.w, %bb.b
  ret void
}

end_hunk_4
