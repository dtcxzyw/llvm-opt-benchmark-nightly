inline.NumInlined: 722
inline.NumDeleted: 36
begin_hunk_0_@_ZN11duckdb_zstdL38HUF_decompress1X2_usingDTable_internalEPvmPKvmPKji:bb.a
  %.val.i.i.i = load i64, ptr %.ptr188.i, align 1, !tbaa !25 ; 2 uses
  %i.av = zext i8 %i.g to i32
  %i.aw = tail call noundef range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.av, i1 true)
  %6 = add nsw i32 %i.aw, -23                     ; 6 uses
  %i.ax = icmp ult i64 %3, -119
  br i1 %i.ax, label %bb.n, label %_ZN11duckdb_zstdL46HUF_decompress1X2_usingDTable_internal_defaultEPvmPKvmPKj.exit

end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstdL38HUF_decompress1X2_usingDTable_internalEPvmPKvmPKji:bb.a
  %.sroa.0.0.copyload.i300.i = phi i32 [ %.sroa.0.0.copyload.i291.i, %.thread.i ], [ %.sroa.0.0.copyload.i.i, %bb.n ]
  %i.bm = phi ptr [ %i.bi, %.thread.i ], [ %i.az, %bb.n ] ; 6 uses
  %i.bn = phi ptr [ %i.bh, %.thread.i ], [ %i.ay, %bb.n ] ; 8 uses
  %.sroa.31.12173298.i = phi i32 [ %i.bg, %.thread.i ], [ %6, %bb.n ] ; 2 uses
  %.sroa.0.10174295.i = phi i64 [ %.sroa.0.9.i, %.thread.i ], [ %.val.i.i.i, %bb.n ] ; 2 uses
  %.sroa.9788.9175.idx294.i = phi i64 [ 0, %.thread.i ], [ %.add.i, %bb.n ] ; 2 uses
  %i.bo = and i32 %.sroa.0.0.copyload.i300.i, 16515072
end_hunk_1
begin_hunk_2_@_ZN11duckdb_zstdL38HUF_decompress1X2_usingDTable_internalEPvmPKvmPKji:bb.a
  br i1 %.not.i23.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.hs = lshr i32 %6, 3
  %i.ht = zext nneg i32 %i.hs to i64
  %i.hu = sub nsw i64 0, %i.ht
  %i.hv = getelementptr inbounds i8, ptr %.ptr188.i, i64 %i.hu ; 2 uses
  %i.hw = and i32 %6, 7
  %.val.i.i34.i = load i64, ptr %i.hv, align 1, !tbaa !25
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit29.i

end_hunk_2
begin_hunk_3_@_ZN11duckdb_zstdL38HUF_decompress1X2_usingDTable_internalEPvmPKvmPKji:bb.a
  br i1 %i.hx, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit29.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hy = lshr i32 %6, 3
  %i.hz = zext nneg i32 %i.hy to i64
  %.021.i25189.i = tail call i64 @llvm.smin.i64(i64 %.add.i, i64 %i.hz) ; 2 uses
  %.021.i25.i = trunc i64 %.021.i25189.i to i32
end_hunk_3
begin_hunk_4_@_ZN11duckdb_zstdL38HUF_decompress1X2_usingDTable_internalEPvmPKvmPKji:bb.a
  %i.ib = sub nsw i64 0, %i.ia
  %i.ic = getelementptr inbounds i8, ptr %.ptr188.i, i64 %i.ib ; 2 uses
  %i.id = shl i32 %.021.i25.i, 3
  %i.ie = sub i32 %6, %i.id
  %.val.i35.i = load i64, ptr %i.ic, align 1, !tbaa !25
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit29.i

end_hunk_4
begin_hunk_5_@_ZN11duckdb_zstdL38HUF_decompress1X2_usingDTable_internalEPvmPKvmPKji:bb.a
  %.sroa.3.0.extract.shift.i302.i = phi i32 [ %.sroa.3.0.extract.shift.i.i, %bb.ab ], [ %.sroa.3.0.extract.shift.i.i, %bb.aa ], [ %.sroa.3.0.extract.shift.i301.i, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit29.i.loopexit.split.loop.exit ], [ %.sroa.3.0.extract.shift.i.i, %bb.ac ], [ %.sroa.3.0.extract.shift.i292.i, %.thread.i ], [ %.sroa.3.0.extract.shift.i301.i, %bb.t ], [ %.sroa.3.0.extract.shift.i301.i, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit29.i.loopexit73.split.loop.exit ], [ %.sroa.3.0.extract.shift.i301.i, %bb.r ], [ %.sroa.3.0.extract.shift.i301.i, %bb.w ], [ %.sroa.3.0.extract.shift.i301.i, %bb.y ] ; 2 uses
  %i.ig = phi ptr [ %i.az, %bb.ab ], [ %i.az, %bb.aa ], [ %i.bm, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit29.i.loopexit.split.loop.exit ], [ %i.az, %bb.ac ], [ %i.bi, %.thread.i ], [ %i.bm, %bb.t ], [ %i.bm, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit29.i.loopexit73.split.loop.exit ], [ %i.bm, %bb.r ], [ %i.bm, %bb.w ], [ %i.bm, %bb.y ] ; 3 uses
  %i.ih = phi ptr [ %i.ay, %bb.ab ], [ %i.ay, %bb.aa ], [ %i.bn, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit29.i.loopexit.split.loop.exit ], [ %i.ay, %bb.ac ], [ %i.bh, %.thread.i ], [ %i.bn, %bb.t ], [ %i.bn, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit29.i.loopexit73.split.loop.exit ], [ %i.bn, %bb.r ], [ %i.bn, %bb.w ], [ %i.bn, %bb.y ] ; 2 uses
  %.sroa.31.0.i = phi i32 [ %6, %bb.ab ], [ %i.hw, %bb.aa ], [ %.sroa.31.7.i, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit29.i.loopexit.split.loop.exit ], [ %i.ie, %bb.ac ], [ %i.bg, %.thread.i ], [ %i.ev, %bb.t ], [ %.sroa.31.8.i, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit29.i.loopexit73.split.loop.exit ], [ %.sroa.31.5234.i, %bb.r ], [ %i.hm, %bb.y ], [ %.sroa.31.4217.i, %bb.w ] ; 4 uses
  %.sroa.0.0.i = phi i64 [ %.val.i.i.i, %bb.ab ], [ %.val.i.i34.i, %bb.aa ], [ %.sroa.0.5.i, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit29.i.loopexit.split.loop.exit ], [ %.val.i35.i, %bb.ac ], [ %.sroa.0.9.i, %.thread.i ], [ %.sroa.0.5.i, %bb.t ], [ %.sroa.0.6.i, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit29.i.loopexit73.split.loop.exit ], [ %.sroa.0.4235.i, %bb.r ], [ %.sroa.0.6.i, %bb.y ], [ %.sroa.0.3218.i, %bb.w ] ; 3 uses
  %.sroa.9788.0.i = phi ptr [ %.ptr188.i, %bb.ab ], [ %i.hv, %bb.aa ], [ %.sroa.9788.5.i.le, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit29.i.loopexit.split.loop.exit ], [ %i.ic, %bb.ac ], [ %2, %.thread.i ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.t ], [ %.sroa.9788.6.i.le, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit29.i.loopexit73.split.loop.exit ], [ %2, %bb.r ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.y ], [ %2, %bb.w ] ; 2 uses
  %.4.i.i = phi ptr [ %0, %bb.ab ], [ %0, %bb.aa ], [ %.0.i237.i, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit29.i.loopexit.split.loop.exit ], [ %0, %bb.ac ], [ %0, %.thread.i ], [ %i.ez, %bb.t ], [ %.1.i5220.i, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit29.i.loopexit73.split.loop.exit ], [ %.0.i237.i, %bb.r ], [ %i.hq, %bb.y ], [ %.1.i5220.i, %bb.w ] ; 4 uses
end_hunk_5
begin_hunk_6_@_ZN11duckdb_zstdL38HUF_decompress1X1_usingDTable_internalEPvmPKvmPKji:bb.a
  %.val.i.i.i = load i64, ptr %.ptr84.i, align 1, !tbaa !25 ; 2 uses
  %i.ax = zext i8 %i.i to i32
  %i.ay = tail call noundef range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.ax, i1 true)
  %6 = add nsw i32 %i.ay, -23                     ; 6 uses
  %i.az = icmp ult i64 %3, -119
  br i1 %i.az, label %bb.n, label %_ZN11duckdb_zstdL46HUF_decompress1X1_usingDTable_internal_defaultEPvmPKvmPKj.exit

end_hunk_6
begin_hunk_7_@_ZN11duckdb_zstdL38HUF_decompress1X1_usingDTable_internalEPvmPKvmPKji:bb.a
  br i1 %i.bg, label %.lr.ph.i, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i

.lr.ph.i:                                         ; preds = %.thread.i, %bb.n
  %.sroa.20.573140.i = phi i32 [ %i.bf, %.thread.i ], [ %6, %bb.n ]
  %.sroa.0.574137.i = phi i64 [ %.sroa.0.4.i, %.thread.i ], [ %.val.i.i.i, %bb.n ]
  %.sroa.5028.475.idx136.i = phi i64 [ 0, %.thread.i ], [ %.add.i, %bb.n ]
  %i.bh = getelementptr inbounds i8, ptr %i.d, i64 -3
end_hunk_7
begin_hunk_8_@_ZN11duckdb_zstdL38HUF_decompress1X1_usingDTable_internalEPvmPKvmPKji:bb.a
  br i1 %.not.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dq = lshr i32 %6, 3
  %i.dr = zext nneg i32 %i.dq to i64
  %i.ds = sub nsw i64 0, %i.dr
  %i.dt = getelementptr inbounds i8, ptr %.ptr84.i, i64 %i.ds ; 2 uses
  %i.du = and i32 %6, 7
  %.val.i.i6.i = load i64, ptr %i.dt, align 1, !tbaa !25
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i

end_hunk_8
begin_hunk_9_@_ZN11duckdb_zstdL38HUF_decompress1X1_usingDTable_internalEPvmPKvmPKji:bb.a
  br i1 %i.dv, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dw = lshr i32 %6, 3
  %i.dx = zext nneg i32 %i.dw to i64
  %.021.i.i85.i = tail call i64 @llvm.smin.i64(i64 %.add.i, i64 %i.dx) ; 2 uses
  %.021.i.i.i = trunc i64 %.021.i.i85.i to i32
end_hunk_9
begin_hunk_10_@_ZN11duckdb_zstdL38HUF_decompress1X1_usingDTable_internalEPvmPKvmPKji:bb.a
  %i.dz = sub nsw i64 0, %i.dy
  %i.ea = getelementptr inbounds i8, ptr %.ptr84.i, i64 %i.dz ; 2 uses
  %i.eb = shl i32 %.021.i.i.i, 3
  %i.ec = sub i32 %6, %i.eb
  %.val.i7.i = load i64, ptr %i.ea, align 1, !tbaa !25
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i

end_hunk_10
begin_hunk_11_@_ZN11duckdb_zstdL38HUF_decompress1X1_usingDTable_internalEPvmPKvmPKji:bb.a
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i

_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i: ; preds = %bb.s, %bb.q, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i.loopexit.split.loop.exit, %bb.w, %bb.v, %bb.u, %.thread.i
  %.sroa.20.1.i = phi i32 [ %6, %bb.v ], [ %i.ec, %bb.w ], [ %i.du, %bb.u ], [ %i.bf, %.thread.i ], [ %.sroa.20.4.i, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i.loopexit.split.loop.exit ], [ %i.dn, %bb.s ], [ %.sroa.20.3100.i, %bb.q ]
  %.sroa.0.1.i = phi i64 [ %.val.i.i.i, %bb.v ], [ %.val.i7.i, %bb.w ], [ %.val.i.i6.i, %bb.u ], [ %.sroa.0.4.i, %.thread.i ], [ %.sroa.0.3.i, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i.loopexit.split.loop.exit ], [ %.sroa.0.3.i, %bb.s ], [ %.sroa.0.2101.i, %bb.q ] ; 3 uses
  %.sroa.5028.1.i = phi ptr [ %.ptr84.i, %bb.v ], [ %i.ea, %bb.w ], [ %i.dt, %bb.u ], [ %2, %.thread.i ], [ %.sroa.5028.3.i.le, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i.loopexit.split.loop.exit ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.s ], [ %2, %bb.q ]
  %.3.i.i = phi ptr [ %0, %bb.v ], [ %0, %bb.w ], [ %0, %bb.u ], [ %0, %.thread.i ], [ %.0.i103.i, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.i.loopexit.split.loop.exit ], [ %i.do, %bb.s ], [ %.0.i103.i, %bb.q ] ; 6 uses
end_hunk_11
begin_hunk_12_@_ZN11duckdb_zstdL38HUF_decompress4X2_usingDTable_internalEPvmPKvmPKji:bb.a
  %.val.i.i.i = load i64, ptr %i.ai, align 1, !tbaa !25
  %i.aj = zext i8 %i.ah to i32
  %i.ak = tail call noundef range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.aj, i1 true)
  %7 = add nsw i32 %i.ak, -23
  br label %bb.q

bb.h:                                             ; preds = %bb.f
end_hunk_12
begin_hunk_13_@_ZN11duckdb_zstdL38HUF_decompress4X2_usingDTable_internalEPvmPKvmPKji:bb.a

bb.q:                                             ; preds = %bb.p, %.thread.i.i
  %.sroa.116430.11.i = phi ptr [ %i.q, %bb.p ], [ %i.ai, %.thread.i.i ] ; 2 uses
  %.sroa.36380.14.i = phi i32 [ %i.cc, %bb.p ], [ %7, %.thread.i.i ] ; 2 uses
  %.sroa.0364.12.i = phi i64 [ %.sroa.0364.11.i, %bb.p ], [ %.val.i.i.i, %.thread.i.i ] ; 2 uses
  %i.cd = icmp eq i16 %.val.i4.i, 0
  br i1 %i.cd, label %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread.i, label %bb.r
end_hunk_13
begin_hunk_14_@_ZN11duckdb_zstdL38HUF_decompress4X2_usingDTable_internalEPvmPKvmPKji:bb.a
  %.val.i.i9.i = load i64, ptr %i.ci, align 1, !tbaa !25
  %i.cj = zext i8 %i.ch to i32
  %i.ck = tail call noundef range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.cj, i1 true)
  %8 = add nsw i32 %i.ck, -23
  br label %bb.ac

bb.t:                                             ; preds = %bb.r
end_hunk_14
begin_hunk_15_@_ZN11duckdb_zstdL38HUF_decompress4X2_usingDTable_internalEPvmPKvmPKji:bb.a

bb.ac:                                            ; preds = %bb.ab, %.thread.i11.i
  %.sroa.0211.12.i = phi i64 [ %.sroa.0211.11.i, %bb.ab ], [ %.val.i.i9.i, %.thread.i11.i ] ; 2 uses
  %.sroa.36227.14.i = phi i32 [ %i.ec, %bb.ab ], [ %8, %.thread.i11.i ] ; 2 uses
  %.sroa.116277.11.i = phi ptr [ %i.r, %bb.ab ], [ %i.ci, %.thread.i11.i ] ; 2 uses
  %i.ed = icmp eq i16 %.val.i5.i, 0
  br i1 %i.ed, label %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread.i, label %bb.ad
end_hunk_15
begin_hunk_16_@_ZN11duckdb_zstdL38HUF_decompress4X2_usingDTable_internalEPvmPKvmPKji:bb.a
  %.val.i.i15.i = load i64, ptr %i.ei, align 1, !tbaa !25
  %i.ej = zext i8 %i.eh to i32
  %i.ek = tail call noundef range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.ej, i1 true)
  %9 = add nsw i32 %i.ek, -23
  br label %bb.ao

bb.af:                                            ; preds = %bb.ad
end_hunk_16
begin_hunk_17_@_ZN11duckdb_zstdL38HUF_decompress4X2_usingDTable_internalEPvmPKvmPKji:bb.a

bb.ao:                                            ; preds = %bb.an, %.thread.i17.i
  %.sroa.0.12.i = phi i64 [ %.sroa.0.11.i, %bb.an ], [ %.val.i.i15.i, %.thread.i17.i ] ; 2 uses
  %.sroa.36.14.i = phi i32 [ %i.gc, %bb.an ], [ %9, %.thread.i17.i ] ; 2 uses
  %.sroa.116126.11.i = phi ptr [ %i.s, %bb.an ], [ %i.ei, %.thread.i17.i ] ; 2 uses
  %i.gd = call fastcc noundef i64 @_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm(ptr noundef %6, ptr noundef nonnull %i.t, i64 noundef %i.p) ; 2 uses
  %i.ge = icmp ult i64 %i.gd, -119
end_hunk_17
begin_hunk_18_@_ZN11duckdb_zstdL38HUF_decompress4X1_usingDTable_internalEPvmPKvmPKji:bb.a
  %.val.i.i.i = load i64, ptr %i.ai, align 1, !tbaa !25
  %i.aj = zext i8 %i.ah to i32
  %i.ak = tail call noundef range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.aj, i1 true)
  %7 = add nsw i32 %i.ak, -23
  br label %bb.q

bb.h:                                             ; preds = %bb.f
end_hunk_18
begin_hunk_19_@_ZN11duckdb_zstdL38HUF_decompress4X1_usingDTable_internalEPvmPKvmPKji:bb.a

bb.q:                                             ; preds = %bb.p, %.thread.i.i
  %.sroa.69244.6.i = phi ptr [ %i.r, %bb.p ], [ %i.ai, %.thread.i.i ] ; 2 uses
  %.sroa.25217.7.i = phi i32 [ %i.cc, %bb.p ], [ %7, %.thread.i.i ] ; 2 uses
  %.sroa.0208.7.i = phi i64 [ %.sroa.0208.6.i, %bb.p ], [ %.val.i.i.i, %.thread.i.i ] ; 2 uses
  %i.cd = icmp eq i16 %.val.i4.i, 0
  br i1 %i.cd, label %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread.i, label %bb.r
end_hunk_19
begin_hunk_20_@_ZN11duckdb_zstdL38HUF_decompress4X1_usingDTable_internalEPvmPKvmPKji:bb.a
  %.val.i.i9.i = load i64, ptr %i.ci, align 1, !tbaa !25
  %i.cj = zext i8 %i.ch to i32
  %i.ck = tail call noundef range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.cj, i1 true)
  %8 = add nsw i32 %i.ck, -23
  br label %bb.ac

bb.t:                                             ; preds = %bb.r
end_hunk_20
begin_hunk_21_@_ZN11duckdb_zstdL38HUF_decompress4X1_usingDTable_internalEPvmPKvmPKji:bb.a

bb.ac:                                            ; preds = %bb.ab, %.thread.i11.i
  %.sroa.0125.7.i = phi i64 [ %.sroa.0125.6.i, %bb.ab ], [ %.val.i.i9.i, %.thread.i11.i ] ; 2 uses
  %.sroa.25134.7.i = phi i32 [ %i.ec, %bb.ab ], [ %8, %.thread.i11.i ] ; 2 uses
  %.sroa.69161.6.i = phi ptr [ %i.s, %bb.ab ], [ %i.ci, %.thread.i11.i ] ; 2 uses
  %i.ed = icmp eq i16 %.val.i5.i, 0
  br i1 %i.ed, label %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread.i, label %bb.ad
end_hunk_21
begin_hunk_22_@_ZN11duckdb_zstdL38HUF_decompress4X1_usingDTable_internalEPvmPKvmPKji:bb.a
  %.val.i.i15.i = load i64, ptr %i.ei, align 1, !tbaa !25
  %i.ej = zext i8 %i.eh to i32
  %i.ek = tail call noundef range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.ej, i1 true)
  %9 = add nsw i32 %i.ek, -23
  br label %bb.ao

bb.af:                                            ; preds = %bb.ad
end_hunk_22
begin_hunk_23_@_ZN11duckdb_zstdL38HUF_decompress4X1_usingDTable_internalEPvmPKvmPKji:bb.a

bb.ao:                                            ; preds = %bb.an, %.thread.i17.i
  %.sroa.0.7.i = phi i64 [ %.sroa.0.6.i, %bb.an ], [ %.val.i.i15.i, %.thread.i17.i ] ; 2 uses
  %.sroa.25.7.i = phi i32 [ %i.gc, %bb.an ], [ %9, %.thread.i17.i ] ; 2 uses
  %.sroa.6980.6.i = phi ptr [ %i.t, %bb.an ], [ %i.ei, %.thread.i17.i ] ; 2 uses
  %i.gd = call fastcc noundef i64 @_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm(ptr noundef %6, ptr noundef nonnull %i.u, i64 noundef %i.q) ; 2 uses
  %i.ge = icmp ult i64 %i.gd, -119
end_hunk_23
begin_hunk_24_@_ZN11duckdb_zstdL43HUF_decompress1X2_usingDTable_internal_bmi2EPvmPKvmPKj:bb.a
  %.val.i.i = load i64, ptr %.ptr188, align 1, !tbaa !25 ; 2 uses
  %i.at = zext i8 %i.e to i32
  %i.au = tail call noundef range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.at, i1 true)
  %5 = add nsw i32 %i.au, -23                     ; 6 uses
  %i.av = icmp ult i64 %3, -119
  br i1 %i.av, label %bb.l, label %_ZN11duckdb_zstdL43HUF_decompress1X2_usingDTable_internal_bodyEPvmPKvmPKj.exit

end_hunk_24
begin_hunk_25_@_ZN11duckdb_zstdL43HUF_decompress1X2_usingDTable_internal_bmi2EPvmPKvmPKj:bb.a
  %.sroa.0.0.copyload.i300 = phi i32 [ %.sroa.0.0.copyload.i291, %.thread ], [ %.sroa.0.0.copyload.i, %bb.l ]
  %i.bk = phi ptr [ %i.bg, %.thread ], [ %i.ax, %bb.l ] ; 6 uses
  %i.bl = phi ptr [ %i.bf, %.thread ], [ %i.aw, %bb.l ] ; 8 uses
  %.sroa.31.12173298 = phi i32 [ %i.be, %.thread ], [ %5, %bb.l ] ; 2 uses
  %.sroa.0.10174295 = phi i64 [ %.sroa.0.9, %.thread ], [ %.val.i.i, %bb.l ] ; 2 uses
  %.sroa.9788.9175.idx294 = phi i64 [ 0, %.thread ], [ %.add, %bb.l ] ; 2 uses
  %i.bm = and i32 %.sroa.0.0.copyload.i300, 16515072
end_hunk_25
begin_hunk_26_@_ZN11duckdb_zstdL43HUF_decompress1X2_usingDTable_internal_bmi2EPvmPKvmPKj:bb.a
  br i1 %.not.i23, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hy = lshr i32 %5, 3
  %i.hz = zext nneg i32 %i.hy to i64
  %i.ia = sub nsw i64 0, %i.hz
  %i.ib = getelementptr inbounds i8, ptr %.sroa.9788.9175.ptr.ptr.ptr, i64 %i.ia ; 2 uses
  %i.ic = and i32 %5, 7
  %.val.i.i34 = load i64, ptr %i.ib, align 1, !tbaa !25
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit29

end_hunk_26
begin_hunk_27_@_ZN11duckdb_zstdL43HUF_decompress1X2_usingDTable_internal_bmi2EPvmPKvmPKj:bb.a
  br i1 %i.id, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit29, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ie = lshr i32 %5, 3
  %i.if = zext nneg i32 %i.ie to i64
  %.021.i25189 = tail call i64 @llvm.smin.i64(i64 %.add, i64 %i.if) ; 2 uses
  %.021.i25 = trunc i64 %.021.i25189 to i32
end_hunk_27
begin_hunk_28_@_ZN11duckdb_zstdL43HUF_decompress1X2_usingDTable_internal_bmi2EPvmPKvmPKj:bb.a
  %i.ih = sub nsw i64 0, %i.ig
  %i.ii = getelementptr inbounds i8, ptr %.sroa.9788.9175.ptr.ptr.ptr, i64 %i.ih ; 2 uses
  %i.ij = shl i32 %.021.i25, 3
  %i.ik = sub i32 %5, %i.ij
  %.val.i35 = load i64, ptr %i.ii, align 1, !tbaa !25
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit29

end_hunk_28
begin_hunk_29_@_ZN11duckdb_zstdL43HUF_decompress1X2_usingDTable_internal_bmi2EPvmPKvmPKj:bb.a
  %.sroa.3.0.extract.shift.i302 = phi i32 [ %.sroa.3.0.extract.shift.i, %bb.z ], [ %.sroa.3.0.extract.shift.i, %bb.y ], [ %.sroa.3.0.extract.shift.i301, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit29.loopexit.split.loop.exit ], [ %.sroa.3.0.extract.shift.i, %bb.aa ], [ %.sroa.3.0.extract.shift.i292, %.thread ], [ %.sroa.3.0.extract.shift.i301, %bb.p ], [ %.sroa.3.0.extract.shift.i301, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit29.loopexit329.split.loop.exit ], [ %.sroa.3.0.extract.shift.i301, %bb.r ], [ %.sroa.3.0.extract.shift.i301, %bb.w ], [ %.sroa.3.0.extract.shift.i301, %bb.u ] ; 2 uses
  %i.im = phi ptr [ %i.ax, %bb.z ], [ %i.ax, %bb.y ], [ %i.bk, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit29.loopexit.split.loop.exit ], [ %i.ax, %bb.aa ], [ %i.bg, %.thread ], [ %i.bk, %bb.p ], [ %i.bk, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit29.loopexit329.split.loop.exit ], [ %i.bk, %bb.r ], [ %i.bk, %bb.w ], [ %i.bk, %bb.u ] ; 3 uses
  %i.in = phi ptr [ %i.aw, %bb.z ], [ %i.aw, %bb.y ], [ %i.bl, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit29.loopexit.split.loop.exit ], [ %i.aw, %bb.aa ], [ %i.bf, %.thread ], [ %i.bl, %bb.p ], [ %i.bl, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit29.loopexit329.split.loop.exit ], [ %i.bl, %bb.r ], [ %i.bl, %bb.w ], [ %i.bl, %bb.u ] ; 2 uses
  %.sroa.31.0 = phi i32 [ %5, %bb.z ], [ %i.ic, %bb.y ], [ %.sroa.31.7, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit29.loopexit.split.loop.exit ], [ %i.ik, %bb.aa ], [ %i.be, %.thread ], [ %.sroa.31.5234, %bb.p ], [ %.sroa.31.8, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit29.loopexit329.split.loop.exit ], [ %i.fb, %bb.r ], [ %.sroa.31.4217, %bb.u ], [ %i.hs, %bb.w ] ; 4 uses
  %.sroa.0.0 = phi i64 [ %.val.i.i, %bb.z ], [ %.val.i.i34, %bb.y ], [ %.sroa.0.5, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit29.loopexit.split.loop.exit ], [ %.val.i35, %bb.aa ], [ %.sroa.0.9, %.thread ], [ %.sroa.0.4235, %bb.p ], [ %.sroa.0.6, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit29.loopexit329.split.loop.exit ], [ %.sroa.0.5, %bb.r ], [ %.sroa.0.3218, %bb.u ], [ %.sroa.0.6, %bb.w ] ; 3 uses
  %.sroa.9788.0 = phi ptr [ %.sroa.9788.9175.ptr.ptr.ptr, %bb.z ], [ %i.ib, %bb.y ], [ %.sroa.9788.5.le, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit29.loopexit.split.loop.exit ], [ %i.ii, %bb.aa ], [ %2, %.thread ], [ %2, %bb.p ], [ %.sroa.9788.6.le, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit29.loopexit329.split.loop.exit ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.r ], [ %2, %bb.u ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.w ] ; 2 uses
  %.4.i = phi ptr [ %0, %bb.z ], [ %0, %bb.y ], [ %.0.i237, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit29.loopexit.split.loop.exit ], [ %0, %bb.aa ], [ %0, %.thread ], [ %.0.i237, %bb.p ], [ %.1.i5220, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit29.loopexit329.split.loop.exit ], [ %i.ff, %bb.r ], [ %.1.i5220, %bb.u ], [ %i.hw, %bb.w ] ; 4 uses
end_hunk_29
begin_hunk_30_@_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm:bb.a
.thread:                                          ; preds = %bb.d
  %i.k = zext i8 %i.j to i32
  %i.l = tail call noundef range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.k, i1 true)
  %3 = add nsw i32 %i.l, -23
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %3, ptr %i.m, align 8, !tbaa !129
  br label %bb.p

bb.e:                                             ; preds = %bb.d
end_hunk_30
begin_hunk_31_@_ZN11duckdb_zstdL43HUF_decompress1X1_usingDTable_internal_bmi2EPvmPKvmPKj:bb.a
  %.val.i.i = load i64, ptr %.ptr84, align 1, !tbaa !25 ; 2 uses
  %i.av = zext i8 %i.g to i32
  %i.aw = tail call noundef range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.av, i1 true)
  %5 = add nsw i32 %i.aw, -23                     ; 6 uses
  %i.ax = icmp ult i64 %3, -119
  br i1 %i.ax, label %bb.l, label %_ZN11duckdb_zstdL43HUF_decompress1X1_usingDTable_internal_bodyEPvmPKvmPKj.exit

end_hunk_31
begin_hunk_32_@_ZN11duckdb_zstdL43HUF_decompress1X1_usingDTable_internal_bmi2EPvmPKvmPKj:bb.a
  br i1 %i.be, label %.lr.ph, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i

.lr.ph:                                           ; preds = %.thread, %bb.l
  %.sroa.20.573140 = phi i32 [ %i.bd, %.thread ], [ %5, %bb.l ]
  %.sroa.0.574137 = phi i64 [ %.sroa.0.4, %.thread ], [ %.val.i.i, %bb.l ]
  %.sroa.5028.475.idx136 = phi i64 [ 0, %.thread ], [ %.add, %bb.l ]
  %i.bf = getelementptr inbounds i8, ptr %i.b, i64 -3
end_hunk_32
begin_hunk_33_@_ZN11duckdb_zstdL43HUF_decompress1X1_usingDTable_internal_bmi2EPvmPKvmPKj:bb.a
  br i1 %.not.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.do = lshr i32 %5, 3
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = sub nsw i64 0, %i.dp
  %i.dr = getelementptr inbounds i8, ptr %.sroa.5028.475.ptr.ptr, i64 %i.dq ; 2 uses
  %i.ds = and i32 %5, 7
  %.val.i.i6 = load i64, ptr %i.dr, align 1, !tbaa !25
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i

end_hunk_33
begin_hunk_34_@_ZN11duckdb_zstdL43HUF_decompress1X1_usingDTable_internal_bmi2EPvmPKvmPKj:bb.a
  br i1 %i.dt, label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.du = lshr i32 %5, 3
  %i.dv = zext nneg i32 %i.du to i64
  %.021.i.i85 = tail call i64 @llvm.smin.i64(i64 %.add, i64 %i.dv) ; 2 uses
  %.021.i.i = trunc i64 %.021.i.i85 to i32
end_hunk_34
begin_hunk_35_@_ZN11duckdb_zstdL43HUF_decompress1X1_usingDTable_internal_bmi2EPvmPKvmPKj:bb.a
  %i.dx = sub nsw i64 0, %i.dw
  %i.dy = getelementptr inbounds i8, ptr %.sroa.5028.475.ptr.ptr, i64 %i.dx ; 2 uses
  %i.dz = shl i32 %.021.i.i, 3
  %i.ea = sub i32 %5, %i.dz
  %.val.i7 = load i64, ptr %i.dy, align 1, !tbaa !25
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i

end_hunk_35
begin_hunk_36_@_ZN11duckdb_zstdL43HUF_decompress1X1_usingDTable_internal_bmi2EPvmPKvmPKj:bb.a
  br label %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i

_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i: ; preds = %bb.o, %bb.q, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.loopexit.split.loop.exit, %.thread, %bb.t, %bb.s, %bb.u
  %.sroa.20.1 = phi i32 [ %5, %bb.t ], [ %i.ea, %bb.u ], [ %i.ds, %bb.s ], [ %i.bd, %.thread ], [ %.sroa.20.4, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.loopexit.split.loop.exit ], [ %.sroa.20.3100, %bb.o ], [ %i.dl, %bb.q ]
  %.sroa.0.1 = phi i64 [ %.val.i.i, %bb.t ], [ %.val.i7, %bb.u ], [ %.val.i.i6, %bb.s ], [ %.sroa.0.4, %.thread ], [ %.sroa.0.3, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.loopexit.split.loop.exit ], [ %.sroa.0.2101, %bb.o ], [ %.sroa.0.3, %bb.q ] ; 3 uses
  %.sroa.5028.1 = phi ptr [ %.sroa.5028.475.ptr.ptr, %bb.t ], [ %i.dy, %bb.u ], [ %i.dr, %bb.s ], [ %2, %.thread ], [ %.sroa.5028.3.le, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.loopexit.split.loop.exit ], [ %2, %bb.o ], [ @_ZZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tEE10zeroFilled, %bb.q ]
  %.3.i = phi ptr [ %0, %bb.t ], [ %0, %bb.u ], [ %0, %bb.s ], [ %0, %.thread ], [ %.0.i103, %_ZN11duckdb_zstdL17BIT_reloadDStreamEPNS_13BIT_DStream_tE.exit.i.loopexit.split.loop.exit ], [ %.0.i103, %bb.o ], [ %i.dm, %bb.q ] ; 6 uses
end_hunk_36
begin_hunk_37_@_ZN11duckdb_zstdL43HUF_decompress4X2_usingDTable_internal_bmi2EPvmPKvmPKj:bb.a
  %.val.i.i = load i64, ptr %i.ag, align 1, !tbaa !25
  %i.ah = zext i8 %i.af to i32
  %i.ai = tail call noundef range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.ah, i1 true)
  %6 = add nsw i32 %i.ai, -23
  br label %bb.o

bb.f:                                             ; preds = %bb.d
end_hunk_37
begin_hunk_38_@_ZN11duckdb_zstdL43HUF_decompress4X2_usingDTable_internal_bmi2EPvmPKvmPKj:bb.a

bb.o:                                             ; preds = %bb.n, %.thread.i
  %.sroa.116430.11 = phi ptr [ %i.o, %bb.n ], [ %i.ag, %.thread.i ] ; 2 uses
  %.sroa.36380.14 = phi i32 [ %i.ca, %bb.n ], [ %6, %.thread.i ] ; 2 uses
  %.sroa.0364.12 = phi i64 [ %.sroa.0364.11, %bb.n ], [ %.val.i.i, %.thread.i ] ; 2 uses
  %i.cb = icmp eq i16 %.val.i4, 0
  br i1 %i.cb, label %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread, label %bb.p
end_hunk_38
begin_hunk_39_@_ZN11duckdb_zstdL43HUF_decompress4X2_usingDTable_internal_bmi2EPvmPKvmPKj:bb.a
  %.val.i.i9 = load i64, ptr %i.cg, align 1, !tbaa !25
  %i.ch = zext i8 %i.cf to i32
  %i.ci = tail call noundef range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.ch, i1 true)
  %7 = add nsw i32 %i.ci, -23
  br label %bb.aa

bb.r:                                             ; preds = %bb.p
end_hunk_39
begin_hunk_40_@_ZN11duckdb_zstdL43HUF_decompress4X2_usingDTable_internal_bmi2EPvmPKvmPKj:bb.a

bb.aa:                                            ; preds = %bb.z, %.thread.i11
  %.sroa.0211.12 = phi i64 [ %.sroa.0211.11, %bb.z ], [ %.val.i.i9, %.thread.i11 ] ; 2 uses
  %.sroa.36227.14 = phi i32 [ %i.ea, %bb.z ], [ %7, %.thread.i11 ] ; 2 uses
  %.sroa.116277.11 = phi ptr [ %i.p, %bb.z ], [ %i.cg, %.thread.i11 ] ; 2 uses
  %i.eb = icmp eq i16 %.val.i5, 0
  br i1 %i.eb, label %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread, label %bb.ab
end_hunk_40
begin_hunk_41_@_ZN11duckdb_zstdL43HUF_decompress4X2_usingDTable_internal_bmi2EPvmPKvmPKj:bb.a
  %.val.i.i15 = load i64, ptr %i.eg, align 1, !tbaa !25
  %i.eh = zext i8 %i.ef to i32
  %i.ei = tail call noundef range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.eh, i1 true)
  %8 = add nsw i32 %i.ei, -23
  br label %bb.am

bb.ad:                                            ; preds = %bb.ab
end_hunk_41
begin_hunk_42_@_ZN11duckdb_zstdL43HUF_decompress4X2_usingDTable_internal_bmi2EPvmPKvmPKj:bb.a

bb.am:                                            ; preds = %bb.al, %.thread.i17
  %.sroa.0.12 = phi i64 [ %.sroa.0.11, %bb.al ], [ %.val.i.i15, %.thread.i17 ] ; 2 uses
  %.sroa.36.14 = phi i32 [ %i.ga, %bb.al ], [ %8, %.thread.i17 ] ; 2 uses
  %.sroa.116126.11 = phi ptr [ %i.q, %bb.al ], [ %i.eg, %.thread.i17 ] ; 2 uses
  %i.gb = call fastcc noundef i64 @_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm(ptr noundef %5, ptr noundef nonnull %i.r, i64 noundef %i.n) ; 2 uses
  %i.gc = icmp ult i64 %i.gb, -119
end_hunk_42
begin_hunk_43_@_ZN11duckdb_zstdL27HUF_DecompressFastArgs_initEPNS_22HUF_DecompressFastArgsEPvmPKvmPKj:bb.a
  %.not.i = icmp eq i8 %i.au, 0
  %i.av = zext i8 %i.au to i32
  %i.aw = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.av, i1 true)
  %6 = add nsw i32 %i.aw, -23
  %i.ax = zext nneg i32 %6 to i64
  %i.ay = select i1 %.not.i, i64 0, i64 %i.ax
  %.val.i.i = load i64, ptr %i.ab, align 1, !tbaa !25
  %i.az = or i64 %.val.i.i, 1
end_hunk_43
begin_hunk_44_@_ZN11duckdb_zstdL27HUF_DecompressFastArgs_initEPNS_22HUF_DecompressFastArgsEPvmPKvmPKj:bb.a
  %.not.i83 = icmp eq i8 %i.bd, 0
  %i.be = zext i8 %i.bd to i32
  %i.bf = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.be, i1 true)
  %7 = add nsw i32 %i.bf, -23
  %i.bg = zext nneg i32 %7 to i64
  %i.bh = select i1 %.not.i83, i64 0, i64 %i.bg
  %.val.i.i84 = load i64, ptr %i.ac, align 1, !tbaa !25
  %i.bi = or i64 %.val.i.i84, 1
end_hunk_44
begin_hunk_45_@_ZN11duckdb_zstdL27HUF_DecompressFastArgs_initEPNS_22HUF_DecompressFastArgsEPvmPKvmPKj:bb.a
  %.not.i85 = icmp eq i8 %i.bm, 0
  %i.bn = zext i8 %i.bm to i32
  %i.bo = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.bn, i1 true)
  %8 = add nsw i32 %i.bo, -23
  %i.bp = zext nneg i32 %8 to i64
  %i.bq = select i1 %.not.i85, i64 0, i64 %i.bp
  %.val.i.i86 = load i64, ptr %i.ae, align 1, !tbaa !25
  %i.br = or i64 %.val.i.i86, 1
end_hunk_45
begin_hunk_46_@_ZN11duckdb_zstdL27HUF_DecompressFastArgs_initEPNS_22HUF_DecompressFastArgsEPvmPKvmPKj:bb.a
  %.not.i87 = icmp eq i8 %i.bv, 0
  %i.bw = zext i8 %i.bv to i32
  %i.bx = tail call range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.bw, i1 true)
  %9 = add nsw i32 %i.bx, -23
  %i.by = zext nneg i32 %9 to i64
  %i.bz = select i1 %.not.i87, i64 0, i64 %i.by
  %.val.i.i88 = load i64, ptr %i.ah, align 1, !tbaa !25
  %i.ca = or i64 %.val.i.i88, 1
end_hunk_46
begin_hunk_47_@_ZN11duckdb_zstdL43HUF_decompress4X1_usingDTable_internal_bmi2EPvmPKvmPKj:bb.a
  %.val.i.i = load i64, ptr %i.ag, align 1, !tbaa !25
  %i.ah = zext i8 %i.af to i32
  %i.ai = tail call noundef range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.ah, i1 true)
  %6 = add nsw i32 %i.ai, -23
  br label %bb.o

bb.f:                                             ; preds = %bb.d
end_hunk_47
begin_hunk_48_@_ZN11duckdb_zstdL43HUF_decompress4X1_usingDTable_internal_bmi2EPvmPKvmPKj:bb.a

bb.o:                                             ; preds = %bb.n, %.thread.i
  %.sroa.69244.6 = phi ptr [ %i.p, %bb.n ], [ %i.ag, %.thread.i ] ; 2 uses
  %.sroa.25217.7 = phi i32 [ %i.ca, %bb.n ], [ %6, %.thread.i ] ; 2 uses
  %.sroa.0208.7 = phi i64 [ %.sroa.0208.6, %bb.n ], [ %.val.i.i, %.thread.i ] ; 2 uses
  %i.cb = icmp eq i16 %.val.i4, 0
  br i1 %i.cb, label %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread, label %bb.p
end_hunk_48
begin_hunk_49_@_ZN11duckdb_zstdL43HUF_decompress4X1_usingDTable_internal_bmi2EPvmPKvmPKj:bb.a
  %.val.i.i9 = load i64, ptr %i.cg, align 1, !tbaa !25
  %i.ch = zext i8 %i.cf to i32
  %i.ci = tail call noundef range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.ch, i1 true)
  %7 = add nsw i32 %i.ci, -23
  br label %bb.aa

bb.r:                                             ; preds = %bb.p
end_hunk_49
begin_hunk_50_@_ZN11duckdb_zstdL43HUF_decompress4X1_usingDTable_internal_bmi2EPvmPKvmPKj:bb.a

bb.aa:                                            ; preds = %bb.z, %.thread.i11
  %.sroa.0125.7 = phi i64 [ %.sroa.0125.6, %bb.z ], [ %.val.i.i9, %.thread.i11 ] ; 2 uses
  %.sroa.25134.7 = phi i32 [ %i.ea, %bb.z ], [ %7, %.thread.i11 ] ; 2 uses
  %.sroa.69161.6 = phi ptr [ %i.q, %bb.z ], [ %i.cg, %.thread.i11 ] ; 2 uses
  %i.eb = icmp eq i16 %.val.i5, 0
  br i1 %i.eb, label %_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm.exit.thread, label %bb.ab
end_hunk_50
begin_hunk_51_@_ZN11duckdb_zstdL43HUF_decompress4X1_usingDTable_internal_bmi2EPvmPKvmPKj:bb.a
  %.val.i.i15 = load i64, ptr %i.eg, align 1, !tbaa !25
  %i.eh = zext i8 %i.ef to i32
  %i.ei = tail call noundef range(i32 24, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 256) %i.eh, i1 true)
  %8 = add nsw i32 %i.ei, -23
  br label %bb.am

bb.ad:                                            ; preds = %bb.ab
end_hunk_51
begin_hunk_52_@_ZN11duckdb_zstdL43HUF_decompress4X1_usingDTable_internal_bmi2EPvmPKvmPKj:bb.a

bb.am:                                            ; preds = %bb.al, %.thread.i17
  %.sroa.0.7 = phi i64 [ %.sroa.0.6, %bb.al ], [ %.val.i.i15, %.thread.i17 ] ; 2 uses
  %.sroa.25.7 = phi i32 [ %i.ga, %bb.al ], [ %8, %.thread.i17 ] ; 2 uses
  %.sroa.6980.6 = phi ptr [ %i.r, %bb.al ], [ %i.eg, %.thread.i17 ] ; 2 uses
  %i.gb = call fastcc noundef i64 @_ZN11duckdb_zstdL15BIT_initDStreamEPNS_13BIT_DStream_tEPKvm(ptr noundef %5, ptr noundef nonnull %i.s, i64 noundef %i.o) ; 2 uses
  %i.gc = icmp ult i64 %i.gb, -119
end_hunk_52
