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
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 384
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.do(ptr noundef nonnull align 8 dereferenceable(152) %i.m, i32 noundef %i.dg), !inline_history !11599
  %i.dq = load ptr, ptr %i.cy, align 8, !tbaa !1538
  %i.dr = sext i32 %i.dl to i64
  %i.ds = getelementptr inbounds [16 x i8], ptr %i.dq, i64 %i.dr
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ds, ptr noundef nonnull align 8 dereferenceable(16) %i.dp, i64 16, i1 false)
  %i.dt = add nuw nsw i32 %.015.i32.us.us, 1      ; 2 uses
  %i.du = load i32, ptr %i.cz, align 4, !tbaa !892
  %i.dv = icmp slt i32 %i.dt, %i.du
end_hunk_4
begin_hunk_5_@_ZN8facebook5velox10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS4_9CopyRangeEEE:bb.a
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 384
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.el(ptr noundef nonnull align 8 dereferenceable(152) %i.m, i32 noundef %i.ee), !inline_history !11599
  %i.en = load ptr, ptr %i.cy, align 8, !tbaa !1538
  %i.eo = sext i32 %i.ec to i64
  %i.ep = getelementptr inbounds [16 x i8], ptr %i.en, i64 %i.eo
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ep, ptr noundef nonnull align 8 dereferenceable(16) %i.em, i64 16, i1 false)
  %i.eq = trunc i32 %i.ec to i8
  %i.er = and i8 %i.eq, 7
  %i.es = shl nuw i8 1, %i.er
end_hunk_5
begin_hunk_6_@_ZN8facebook5velox10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS4_9CopyRangeEEE:bb.a
  %i.fi = icmp slt i32 %i.fg, %i.fh
  br i1 %i.fi, label %bb.x, label %._crit_edge.i29, !llvm.loop !11600

_ZN8facebook5velox10BaseVector9copyNullsEPmPKmRKN5folly5RangeIPKNS1_9CopyRangeEEE.exit: ; preds = %.lr.ph.i.i, %._crit_edge.i29, %._crit_edge.i29.us, %bb.s, %6, %_ZN8facebook5velox16applyToEachRangeIZNS0_10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS5_9CopyRangeEEEEUlT_T0_T1_E_EEvSF_RKSG_.exit, %bb.q, %bb.m, %bb.p, %bb.w, %bb.b
  ret void
}

end_hunk_6
