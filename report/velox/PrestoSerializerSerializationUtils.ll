begin_hunk_0
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i8, ptr %i.c, align 8, !tbaa !54
  %i.e = icmp eq i8 %i.d, 33
end_hunk_0
begin_hunk_1
  br label %_ZN8facebook5velox14applyToEachRowIZNS0_10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS5_9CopyRangeEEEEUlT_T0_E0_EEvSF_RKSG_.exit

bb.t:                                             ; preds = %bb.r
  %i.bu = getelementptr inbounds nuw i8, ptr %i.m, i64 184
  %.sroa.0.0.copyload = load <2 x i64>, ptr %i.bu, align 8
  %i.bv = load ptr, ptr %2, align 8, !tbaa !684   ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !687 ; 2 uses
end_hunk_1
begin_hunk_2
  %i.cg = load ptr, ptr %i.by, align 8, !tbaa !636
  %i.ch = sext i32 %i.cf to i64
  %i.ci = getelementptr inbounds [16 x i8], ptr %i.cg, i64 %i.ch
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.ci, align 8
  %i.cj = add nuw nsw i32 %.015.i, 1              ; 2 uses
  %i.ck = load i32, ptr %i.bz, align 4, !tbaa !683
  %i.cl = icmp slt i32 %i.cj, %i.ck
end_hunk_2
begin_hunk_3

_ZN8facebook5velox14applyToEachRowIZNS0_10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS5_9CopyRangeEEEEUlT_T0_E_EEvSF_RKSG_.exit: ; preds = %._crit_edge.i, %bb.t
  %.not20 = icmp eq ptr %.0.fr, null
  br i1 %.not20, label %_ZN8facebook5velox14applyToEachRowIZNS0_10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS5_9CopyRangeEEEEUlT_T0_E0_EEvSF_RKSG_.exit, label %bb.v

bb.v:                                             ; preds = %_ZN8facebook5velox14applyToEachRowIZNS0_10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS5_9CopyRangeEEEEUlT_T0_E_EEvSF_RKSG_.exit
  tail call void @_ZN8facebook5velox10BaseVector8setNullsEPmRKN5folly5RangeIPKNS1_9CopyRangeEEEb(ptr noundef nonnull %.0.fr, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext false)
  br label %_ZN8facebook5velox14applyToEachRowIZNS0_10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS5_9CopyRangeEEEEUlT_T0_E0_EEvSF_RKSG_.exit

bb.w:                                             ; preds = %bb.k
end_hunk_3
begin_hunk_4
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 384
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.df(ptr noundef nonnull align 8 dereferenceable(152) %i.m, i32 noundef %i.cx)
  %.sroa.0.0.copyload.i.i.us.us = load <2 x i64>, ptr %i.dg, align 8
  %i.dh = load ptr, ptr %i.cp, align 8, !tbaa !636
  %i.di = sext i32 %i.dc to i64
  %i.dj = getelementptr inbounds [16 x i8], ptr %i.dh, i64 %i.di
  store <2 x i64> %.sroa.0.0.copyload.i.i.us.us, ptr %i.dj, align 8
  %i.dk = add nuw nsw i32 %.015.i32.us.us, 1      ; 2 uses
  %i.dl = load i32, ptr %i.cq, align 4, !tbaa !683
  %i.dm = icmp slt i32 %i.dk, %i.dl
end_hunk_4
begin_hunk_5
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 384
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.ec(ptr noundef nonnull align 8 dereferenceable(152) %i.m, i32 noundef %i.dv)
  %.sroa.0.0.copyload.i.i = load <2 x i64>, ptr %i.ed, align 8
  %i.ee = load ptr, ptr %i.cp, align 8, !tbaa !636
  %i.ef = sext i32 %i.dt to i64
  %i.eg = getelementptr inbounds [16 x i8], ptr %i.ee, i64 %i.ef
  store <2 x i64> %.sroa.0.0.copyload.i.i, ptr %i.eg, align 8
  %i.eh = trunc i32 %i.dt to i8
  %i.ei = and i8 %i.eh, 7
  %i.ej = shl nuw i8 1, %i.ei
end_hunk_5
begin_hunk_6
  %i.ez = icmp slt i32 %i.ex, %i.ey
  br i1 %i.ez, label %bb.x, label %._crit_edge.i29, !llvm.loop !6505

_ZN8facebook5velox14applyToEachRowIZNS0_10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS5_9CopyRangeEEEEUlT_T0_E0_EEvSF_RKSG_.exit: ; preds = %._crit_edge.i29, %._crit_edge.i29.us, %bb.s, %_ZN8facebook5velox16applyToEachRangeIZNS0_10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS5_9CopyRangeEEEEUlT_T0_T1_E_EEvSF_RKSG_.exit, %bb.q, %bb.p, %bb.m, %bb.v, %_ZN8facebook5velox14applyToEachRowIZNS0_10FlatVectorINS0_9TimestampEE10copyRangesEPKNS0_10BaseVectorERKN5folly5RangeIPKNS5_9CopyRangeEEEEUlT_T0_E_EEvSF_RKSG_.exit, %bb.w, %bb.b
  ret void
}

end_hunk_6
