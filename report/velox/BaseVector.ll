inline.NumInlined: 39107
inline.NumDeleted: 7522
begin_hunk_0_@_ZN8facebook5velox10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS4_9CopyRangeEEE:bb.a
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"struct.facebook::velox::Timestamp", align 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i8, ptr %i.c, align 8, !tbaa !28
  %i.e = icmp eq i8 %i.d, 33
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS4_9CopyRangeEEE:bb.a
  br label %_ZN8facebook5velox10BaseVector9copyNullsEPmPKmRKN5folly5RangeIPKNS1_9CopyRangeEEE.exit

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.m, i64 184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i64 16, i1 false), !tbaa.struct !5355
  %i.ce = load ptr, ptr %2, align 8, !tbaa !886   ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !889 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS4_9CopyRangeEEE:bb.a
  %i.cp = load ptr, ptr %i.ch, align 8, !tbaa !1538
  %i.cq = sext i32 %i.co to i64
  %i.cr = getelementptr inbounds [16 x i8], ptr %i.cp, i64 %i.cq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cr, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !5355
  %i.cs = add nuw nsw i32 %.015.i, 1              ; 2 uses
  %i.ct = load i32, ptr %i.ci, align 4, !tbaa !892
  %i.cu = icmp slt i32 %i.cs, %i.ct
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS4_9CopyRangeEEE:bb.a

_ZN8facebook5velox14applyToEachRowIZNS0_10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS5_9CopyRangeEEEEUlT_T0_E_EEvSF_RKSG_.exit: ; preds = %._crit_edge.i, %bb.t
  %.not20 = icmp eq ptr %.0.fr, null
  br i1 %.not20, label %6, label %bb.v

bb.v:                                             ; preds = %_ZN8facebook5velox14applyToEachRowIZNS0_10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS5_9CopyRangeEEEEUlT_T0_E_EEvSF_RKSG_.exit
  tail call void @_ZN8facebook5velox10BaseVector8setNullsEPmRKN5folly5RangeIPKNS1_9CopyRangeEEEb(ptr noundef nonnull %.0.fr, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext false)
  br label %6

6:                                                ; preds = %bb.v, %_ZN8facebook5velox14applyToEachRowIZNS0_10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS5_9CopyRangeEEEEUlT_T0_E_EEvSF_RKSG_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZN8facebook5velox10BaseVector9copyNullsEPmPKmRKN5folly5RangeIPKNS1_9CopyRangeEEE.exit

bb.w:                                             ; preds = %bb.k
end_hunk_3
begin_hunk_4_@_ZN8facebook5velox10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS4_9CopyRangeEEE:bb.a
  %i.fi = icmp slt i32 %i.fg, %i.fh
  br i1 %i.fi, label %bb.x, label %._crit_edge.i29, !llvm.loop !11600

_ZN8facebook5velox10BaseVector9copyNullsEPmPKmRKN5folly5RangeIPKNS1_9CopyRangeEEE.exit: ; preds = %.lr.ph.i.i, %._crit_edge.i29, %._crit_edge.i29.us, %bb.s, %6, %_ZN8facebook5velox16applyToEachRangeIZNS0_10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS5_9CopyRangeEEEEUlT_T0_T1_E_EEvSF_RKSG_.exit, %bb.q, %bb.m, %bb.p, %bb.w, %bb.b
  ret void
}

end_hunk_4
