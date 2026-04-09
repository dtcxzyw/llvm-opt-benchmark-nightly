inline.NumInlined: 440
inline.NumDeleted: 31
begin_hunk_0_@_ZN11duckdb_zstdL35HUF_compress1X_usingCTable_internalEPvmPKvmPKmi:bb.a
  %i.l = icmp ult i64 %1, %i.k
  %i.m = icmp samesign ugt i32 %i.c, 11
  %or.cond.i.i = select i1 %i.l, i1 true, i1 %i.m
  %i.n = trunc i64 %3 to i32                      ; 14 uses
  br i1 %or.cond.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.o = srem i32 %i.n, 4                         ; 5 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.preheader582.preheader.i, label %_ZN11duckdb_zstdL13HUF_flushBitsEPNS_13HUF_CStream_tEi.exit.i

end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstdL35HUF_compress1X_usingCTable_internalEPvmPKvmPKmi:bb.a
  %i.aa = and i64 %i.x, -256
  %i.ab = or i64 %i.z, %i.aa
  %i.ac = add i64 %i.x, %.sroa.264.6726.i
  %indvars.iv.next923.i.1 = add nsw i64 %indvars.iv922.i, -2 ; 4 uses
  %i.ad = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.next923.i.1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !7
  %i.af = zext i8 %i.ae to i64
end_hunk_1
begin_hunk_2_@_ZN11duckdb_zstdL35HUF_compress1X_usingCTable_internalEPvmPKvmPKmi:bb.a
  %.sroa.264.6726.i.epil.init = phi i64 [ 0, %.preheader582.preheader.i ], [ %i.am, %.unr-lcssa264 ]
  %lcmp.mod270 = trunc i32 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod270)
  %indvars.iv.next923.i.epil = add nsw i64 %indvars.iv922.i.epil.init, -1 ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.next923.i.epil
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !7
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ap
end_hunk_2
begin_hunk_3_@_ZN11duckdb_zstdL35HUF_compress1X_usingCTable_internalEPvmPKvmPKmi:bb.a
  br label %bb.g

bb.g:                                             ; preds = %.unr-lcssa264, %.preheader582.i.epil.preheader
  %indvars.iv.next923.i.lcssa = phi i64 [ %indvars.iv.next923.i.1, %.unr-lcssa264 ], [ %indvars.iv.next923.i.epil, %.preheader582.i.epil.preheader ]
  %.lcssa178 = phi i64 [ %i.al, %.unr-lcssa264 ], [ %i.av, %.preheader582.i.epil.preheader ] ; 2 uses
  %.lcssa177 = phi i64 [ %i.am, %.unr-lcssa264 ], [ %i.aw, %.preheader582.i.epil.preheader ] ; 2 uses
  %6 = trunc nsw i64 %indvars.iv.next923.i.lcssa to i32
  %i.ax = and i64 %.lcssa177, 255                 ; 2 uses
  %i.ay = lshr i64 %i.ax, 3
  %i.az = sub nsw i64 64, %i.ax
end_hunk_3
begin_hunk_4_@_ZN11duckdb_zstdL35HUF_compress1X_usingCTable_internalEPvmPKvmPKmi:bb.a
  %.sroa.264.1.i = phi i64 [ 0, %bb.f ], [ %i.bb, %bb.g ] ; 2 uses
  %.sroa.458.1.i = phi ptr [ %0, %bb.f ], [ %spec.select.i, %bb.g ] ; 3 uses
  %.sroa.0.1.i = phi i64 [ 0, %bb.f ], [ %.lcssa178, %bb.g ] ; 2 uses
  %.173.i.i = phi i32 [ %i.n, %bb.f ], [ %6, %bb.g ] ; 4 uses
  %i.be = and i32 %.173.i.i, 7
  %.not.i4.i = icmp eq i32 %i.be, 0
  br i1 %.not.i4.i, label %_ZN11duckdb_zstdL13HUF_flushBitsEPNS_13HUF_CStream_tEi.exit68.i, label %.preheader581.preheader.i
end_hunk_4
begin_hunk_5_@_ZN11duckdb_zstdL35HUF_compress1X_usingCTable_internalEPvmPKvmPKmi:bb.a
  ]

bb.i:                                             ; preds = %bb.h
  %i.gp = srem i32 %i.n, 5                        ; 5 uses
  %i.gq = icmp sgt i32 %i.gp, 0
  br i1 %i.gq, label %.preheader590.preheader.i, label %bb.k

end_hunk_5
begin_hunk_6_@_ZN11duckdb_zstdL35HUF_compress1X_usingCTable_internalEPvmPKvmPKmi:bb.a
  %i.hb = and i64 %i.gy, -256
  %i.hc = or i64 %i.ha, %i.hb
  %i.hd = add i64 %i.gy, %.sroa.264.18686.i
  %indvars.iv.next893.i.1 = add nsw i64 %indvars.iv892.i, -2 ; 4 uses
  %i.he = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.next893.i.1
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !7
  %i.hg = zext i8 %i.hf to i64
end_hunk_6
begin_hunk_7_@_ZN11duckdb_zstdL35HUF_compress1X_usingCTable_internalEPvmPKvmPKmi:bb.a
  %.sroa.264.18686.i.epil.init = phi i64 [ 0, %.preheader590.preheader.i ], [ %i.hn, %.unr-lcssa246 ]
  %lcmp.mod252 = trunc i32 %i.gp to i1
  tail call void @llvm.assume(i1 %lcmp.mod252)
  %indvars.iv.next893.i.epil = add nsw i64 %indvars.iv892.i.epil.init, -1 ; 2 uses
  %i.ho = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.next893.i.epil
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !7
  %i.hq = zext i8 %i.hp to i64
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.hq
end_hunk_7
begin_hunk_8_@_ZN11duckdb_zstdL35HUF_compress1X_usingCTable_internalEPvmPKvmPKmi:bb.a
  br label %bb.j

bb.j:                                             ; preds = %.unr-lcssa246, %.preheader590.i.epil.preheader
  %indvars.iv.next893.i.lcssa = phi i64 [ %indvars.iv.next893.i.1, %.unr-lcssa246 ], [ %indvars.iv.next893.i.epil, %.preheader590.i.epil.preheader ]
  %.lcssa190 = phi i64 [ %i.hm, %.unr-lcssa246 ], [ %i.hw, %.preheader590.i.epil.preheader ] ; 2 uses
  %.lcssa189 = phi i64 [ %i.hn, %.unr-lcssa246 ], [ %i.hx, %.preheader590.i.epil.preheader ] ; 2 uses
  %7 = trunc nsw i64 %indvars.iv.next893.i.lcssa to i32
  %i.hy = and i64 %.lcssa189, 255                 ; 2 uses
  %i.hz = lshr i64 %i.hy, 3
  %i.ia = sub nsw i64 64, %i.hy
end_hunk_8
begin_hunk_9_@_ZN11duckdb_zstdL35HUF_compress1X_usingCTable_internalEPvmPKvmPKmi:bb.a
  %.sroa.264.13.i = phi i64 [ %i.ic, %bb.j ], [ 0, %bb.i ] ; 2 uses
  %.sroa.458.7.i = phi ptr [ %i.id, %bb.j ], [ %0, %bb.i ] ; 3 uses
  %.sroa.0.13.i = phi i64 [ %.lcssa190, %bb.j ], [ 0, %bb.i ] ; 2 uses
  %.173.i16.i = phi i32 [ %7, %bb.j ], [ %i.n, %bb.i ] ; 4 uses
  %i.ie = srem i32 %.173.i16.i, 10
  %.not.i17.i = icmp eq i32 %i.ie, 0
  br i1 %.not.i17.i, label %bb.l, label %.preheader589.preheader.i
end_hunk_9
begin_hunk_10_@_ZN11duckdb_zstdL35HUF_compress1X_usingCTable_internalEPvmPKvmPKmi:bb.a
  br i1 %i.om, label %.preheader587.i, label %_ZN11duckdb_zstdL45HUF_compress1X_usingCTable_internal_body_loopEPNS_13HUF_CStream_tEPKhmPKmiii.exit.i, !llvm.loop !74

bb.m:                                             ; preds = %bb.h
  %i.on = srem i32 %i.n, 5                        ; 5 uses
  %i.oo = icmp sgt i32 %i.on, 0
  br i1 %i.oo, label %.preheader594.preheader.i, label %bb.o

end_hunk_10
begin_hunk_11_@_ZN11duckdb_zstdL35HUF_compress1X_usingCTable_internalEPvmPKvmPKmi:bb.a
  %i.oz = and i64 %i.ow, -256
  %i.pa = or i64 %i.oy, %i.oz
  %i.pb = add i64 %i.ow, %.sroa.264.24666.i
  %indvars.iv.next878.i.1 = add nsw i64 %indvars.iv877.i, -2 ; 4 uses
  %i.pc = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.next878.i.1
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !7
  %i.pe = zext i8 %i.pd to i64
end_hunk_11
begin_hunk_12_@_ZN11duckdb_zstdL35HUF_compress1X_usingCTable_internalEPvmPKvmPKmi:bb.a
  %.sroa.264.24666.i.epil.init = phi i64 [ 0, %.preheader594.preheader.i ], [ %i.pl, %.unr-lcssa237 ]
  %lcmp.mod243 = trunc i32 %i.on to i1
  tail call void @llvm.assume(i1 %lcmp.mod243)
  %indvars.iv.next878.i.epil = add nsw i64 %indvars.iv877.i.epil.init, -1 ; 2 uses
  %i.pm = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.next878.i.epil
  %i.pn = load i8, ptr %i.pm, align 1, !tbaa !7
  %i.po = zext i8 %i.pn to i64
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.po
end_hunk_12
begin_hunk_13_@_ZN11duckdb_zstdL35HUF_compress1X_usingCTable_internalEPvmPKvmPKmi:bb.a
  br label %bb.n

bb.n:                                             ; preds = %.unr-lcssa237, %.preheader594.i.epil.preheader
  %indvars.iv.next878.i.lcssa = phi i64 [ %indvars.iv.next878.i.1, %.unr-lcssa237 ], [ %indvars.iv.next878.i.epil, %.preheader594.i.epil.preheader ]
  %.lcssa196 = phi i64 [ %i.pk, %.unr-lcssa237 ], [ %i.pu, %.preheader594.i.epil.preheader ] ; 2 uses
  %.lcssa195 = phi i64 [ %i.pl, %.unr-lcssa237 ], [ %i.pv, %.preheader594.i.epil.preheader ] ; 2 uses
  %8 = trunc nsw i64 %indvars.iv.next878.i.lcssa to i32
  %i.pw = and i64 %.lcssa195, 255                 ; 2 uses
  %i.px = lshr i64 %i.pw, 3
  %i.py = sub nsw i64 64, %i.pw
end_hunk_13
begin_hunk_14_@_ZN11duckdb_zstdL35HUF_compress1X_usingCTable_internalEPvmPKvmPKmi:bb.a
  %.sroa.264.19.i = phi i64 [ %i.qa, %bb.n ], [ 0, %bb.m ] ; 2 uses
  %.sroa.458.10.i = phi ptr [ %i.qb, %bb.n ], [ %0, %bb.m ] ; 3 uses
  %.sroa.0.19.i = phi i64 [ %.lcssa196, %bb.n ], [ 0, %bb.m ] ; 2 uses
  %.173.i26.i = phi i32 [ %8, %bb.n ], [ %i.n, %bb.m ] ; 4 uses
  %i.qc = srem i32 %.173.i26.i, 10
  %.not.i27.i = icmp eq i32 %i.qc, 0
  br i1 %.not.i27.i, label %bb.p, label %.preheader593.preheader.i
end_hunk_14
begin_hunk_15_@_ZN11duckdb_zstdL35HUF_compress1X_usingCTable_internalEPvmPKvmPKmi:bb.a
  br i1 %i.wh, label %.preheader591.i, label %_ZN11duckdb_zstdL45HUF_compress1X_usingCTable_internal_body_loopEPNS_13HUF_CStream_tEPKhmPKmiii.exit.i, !llvm.loop !74

bb.q:                                             ; preds = %bb.h
  %i.wi = srem i32 %i.n, 6                        ; 5 uses
  %i.wj = icmp sgt i32 %i.wi, 0
  br i1 %i.wj, label %.preheader598.preheader.i, label %bb.s

end_hunk_15
begin_hunk_16_@_ZN11duckdb_zstdL35HUF_compress1X_usingCTable_internalEPvmPKvmPKmi:bb.a
  %i.wu = and i64 %i.wr, -256
  %i.wv = or i64 %i.wt, %i.wu
  %i.ww = add i64 %i.wr, %.sroa.264.30646.i
  %indvars.iv.next863.i.1 = add nsw i64 %indvars.iv862.i, -2 ; 4 uses
  %i.wx = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.next863.i.1
  %i.wy = load i8, ptr %i.wx, align 1, !tbaa !7
  %i.wz = zext i8 %i.wy to i64
end_hunk_16
begin_hunk_17_@_ZN11duckdb_zstdL35HUF_compress1X_usingCTable_internalEPvmPKvmPKmi:bb.a
  %.sroa.264.30646.i.epil.init = phi i64 [ 0, %.preheader598.preheader.i ], [ %i.xg, %.unr-lcssa228 ]
  %lcmp.mod234 = trunc i32 %i.wi to i1
  tail call void @llvm.assume(i1 %lcmp.mod234)
  %indvars.iv.next863.i.epil = add nsw i64 %indvars.iv862.i.epil.init, -1 ; 2 uses
  %i.xh = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.next863.i.epil
  %i.xi = load i8, ptr %i.xh, align 1, !tbaa !7
  %i.xj = zext i8 %i.xi to i64
  %i.xk = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.xj
end_hunk_17
begin_hunk_18_@_ZN11duckdb_zstdL35HUF_compress1X_usingCTable_internalEPvmPKvmPKmi:bb.a
  br label %bb.r

bb.r:                                             ; preds = %.unr-lcssa228, %.preheader598.i.epil.preheader
  %indvars.iv.next863.i.lcssa = phi i64 [ %indvars.iv.next863.i.1, %.unr-lcssa228 ], [ %indvars.iv.next863.i.epil, %.preheader598.i.epil.preheader ]
  %.lcssa202 = phi i64 [ %i.xf, %.unr-lcssa228 ], [ %i.xp, %.preheader598.i.epil.preheader ] ; 2 uses
  %.lcssa201 = phi i64 [ %i.xg, %.unr-lcssa228 ], [ %i.xq, %.preheader598.i.epil.preheader ] ; 2 uses
  %9 = trunc nsw i64 %indvars.iv.next863.i.lcssa to i32
  %i.xr = and i64 %.lcssa201, 255                 ; 2 uses
  %i.xs = lshr i64 %i.xr, 3
  %i.xt = sub nsw i64 64, %i.xr
end_hunk_18
begin_hunk_19_@_ZN11duckdb_zstdL35HUF_compress1X_usingCTable_internalEPvmPKvmPKmi:bb.a
  %.sroa.264.25.i = phi i64 [ %i.xv, %bb.r ], [ 0, %bb.q ] ; 2 uses
  %.sroa.458.13.i = phi ptr [ %i.xw, %bb.r ], [ %0, %bb.q ] ; 3 uses
  %.sroa.0.25.i = phi i64 [ %.lcssa202, %bb.r ], [ 0, %bb.q ] ; 2 uses
  %.173.i36.i = phi i32 [ %9, %bb.r ], [ %i.n, %bb.q ] ; 4 uses
  %i.xx = srem i32 %.173.i36.i, 12
  %.not.i37.i = icmp eq i32 %i.xx, 0
  br i1 %.not.i37.i, label %bb.t, label %.preheader597.preheader.i
end_hunk_19
begin_hunk_20_@_ZN11duckdb_zstdL35HUF_compress1X_usingCTable_internalEPvmPKvmPKmi:bb.a
  br i1 %i.afg, label %.preheader595.i, label %_ZN11duckdb_zstdL45HUF_compress1X_usingCTable_internal_body_loopEPNS_13HUF_CStream_tEPKhmPKmiii.exit.i, !llvm.loop !74

bb.u:                                             ; preds = %bb.h
  %i.afh = srem i32 %i.n, 7                       ; 5 uses
  %i.afi = icmp sgt i32 %i.afh, 0
  br i1 %i.afi, label %.preheader602.preheader.i, label %bb.w

end_hunk_20
begin_hunk_21_@_ZN11duckdb_zstdL35HUF_compress1X_usingCTable_internalEPvmPKvmPKmi:bb.a
  %i.aft = and i64 %i.afq, -256
  %i.afu = or i64 %i.afs, %i.aft
  %i.afv = add i64 %i.afq, %.sroa.264.36626.i
  %indvars.iv.next848.i.1 = add nsw i64 %indvars.iv847.i, -2 ; 4 uses
  %i.afw = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.next848.i.1
  %i.afx = load i8, ptr %i.afw, align 1, !tbaa !7
  %i.afy = zext i8 %i.afx to i64
end_hunk_21
begin_hunk_22_@_ZN11duckdb_zstdL35HUF_compress1X_usingCTable_internalEPvmPKvmPKmi:bb.a
  %.sroa.264.36626.i.epil.init = phi i64 [ 0, %.preheader602.preheader.i ], [ %i.agf, %.unr-lcssa219 ]
  %lcmp.mod225 = trunc i32 %i.afh to i1
  tail call void @llvm.assume(i1 %lcmp.mod225)
  %indvars.iv.next848.i.epil = add nsw i64 %indvars.iv847.i.epil.init, -1 ; 2 uses
  %i.agg = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.next848.i.epil
  %i.agh = load i8, ptr %i.agg, align 1, !tbaa !7
  %i.agi = zext i8 %i.agh to i64
  %i.agj = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.agi
end_hunk_22
begin_hunk_23_@_ZN11duckdb_zstdL35HUF_compress1X_usingCTable_internalEPvmPKvmPKmi:bb.a
  br label %bb.v

bb.v:                                             ; preds = %.unr-lcssa219, %.preheader602.i.epil.preheader
  %indvars.iv.next848.i.lcssa = phi i64 [ %indvars.iv.next848.i.1, %.unr-lcssa219 ], [ %indvars.iv.next848.i.epil, %.preheader602.i.epil.preheader ]
  %.lcssa208 = phi i64 [ %i.age, %.unr-lcssa219 ], [ %i.ago, %.preheader602.i.epil.preheader ] ; 2 uses
  %.lcssa207 = phi i64 [ %i.agf, %.unr-lcssa219 ], [ %i.agp, %.preheader602.i.epil.preheader ] ; 2 uses
  %10 = trunc nsw i64 %indvars.iv.next848.i.lcssa to i32
  %i.agq = and i64 %.lcssa207, 255                ; 2 uses
  %i.agr = lshr i64 %i.agq, 3
  %i.ags = sub nsw i64 64, %i.agq
end_hunk_23
begin_hunk_24_@_ZN11duckdb_zstdL35HUF_compress1X_usingCTable_internalEPvmPKvmPKmi:bb.a
  %.sroa.264.31.i = phi i64 [ %i.agu, %bb.v ], [ 0, %bb.u ] ; 2 uses
  %.sroa.458.16.i = phi ptr [ %i.agv, %bb.v ], [ %0, %bb.u ] ; 3 uses
  %.sroa.0.31.i = phi i64 [ %.lcssa208, %bb.v ], [ 0, %bb.u ] ; 2 uses
  %.173.i46.i = phi i32 [ %10, %bb.v ], [ %i.n, %bb.u ] ; 4 uses
  %i.agw = srem i32 %.173.i46.i, 14
  %.not.i47.i = icmp eq i32 %i.agw, 0
  br i1 %.not.i47.i, label %bb.x, label %.preheader601.preheader.i
end_hunk_24
begin_hunk_25_@_ZN11duckdb_zstdL35HUF_compress1X_usingCTable_internalEPvmPKvmPKmi:bb.a
  br i1 %i.apg, label %.preheader599.i, label %_ZN11duckdb_zstdL45HUF_compress1X_usingCTable_internal_body_loopEPNS_13HUF_CStream_tEPKhmPKmiii.exit.i, !llvm.loop !74

bb.y:                                             ; preds = %bb.h
  %i.aph = srem i32 %i.n, 8                       ; 5 uses
  %i.api = icmp sgt i32 %i.aph, 0
  br i1 %i.api, label %.preheader606.preheader.i, label %bb.aa

end_hunk_25
begin_hunk_26_@_ZN11duckdb_zstdL35HUF_compress1X_usingCTable_internalEPvmPKvmPKmi:bb.a
  %i.apt = and i64 %i.apq, -256
  %i.apu = or i64 %i.aps, %i.apt
  %i.apv = add i64 %i.apq, %.sroa.264.42607.i
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 4 uses
  %i.apw = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.next.i.1
  %i.apx = load i8, ptr %i.apw, align 1, !tbaa !7
  %i.apy = zext i8 %i.apx to i64
end_hunk_26
begin_hunk_27_@_ZN11duckdb_zstdL35HUF_compress1X_usingCTable_internalEPvmPKvmPKmi:bb.a
  %.sroa.264.42607.i.epil.init = phi i64 [ 0, %.preheader606.preheader.i ], [ %i.aqf, %.unr-lcssa ]
  %lcmp.mod218 = trunc i32 %i.aph to i1
  tail call void @llvm.assume(i1 %lcmp.mod218)
  %indvars.iv.next.i.epil = add nsw i64 %indvars.iv.i.epil.init, -1 ; 2 uses
  %i.aqg = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.next.i.epil
  %i.aqh = load i8, ptr %i.aqg, align 1, !tbaa !7
  %i.aqi = zext i8 %i.aqh to i64
  %i.aqj = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.aqi
end_hunk_27
begin_hunk_28_@_ZN11duckdb_zstdL35HUF_compress1X_usingCTable_internalEPvmPKvmPKmi:bb.a
  br label %bb.z

bb.z:                                             ; preds = %.unr-lcssa, %.preheader606.i.epil.preheader
  %indvars.iv.next.i.lcssa = phi i64 [ %indvars.iv.next.i.1, %.unr-lcssa ], [ %indvars.iv.next.i.epil, %.preheader606.i.epil.preheader ]
  %.lcssa214 = phi i64 [ %i.aqe, %.unr-lcssa ], [ %i.aqo, %.preheader606.i.epil.preheader ] ; 2 uses
  %.lcssa213 = phi i64 [ %i.aqf, %.unr-lcssa ], [ %i.aqp, %.preheader606.i.epil.preheader ] ; 2 uses
  %11 = trunc nsw i64 %indvars.iv.next.i.lcssa to i32
  %i.aqq = and i64 %.lcssa213, 255                ; 2 uses
  %i.aqr = lshr i64 %i.aqq, 3
  %i.aqs = sub nsw i64 64, %i.aqq
end_hunk_28
begin_hunk_29_@_ZN11duckdb_zstdL35HUF_compress1X_usingCTable_internalEPvmPKvmPKmi:bb.a
  %.sroa.264.37.i = phi i64 [ %i.aqu, %bb.z ], [ 0, %bb.y ] ; 2 uses
  %.sroa.458.19.i = phi ptr [ %i.aqv, %bb.z ], [ %0, %bb.y ] ; 3 uses
  %.sroa.0.37.i = phi i64 [ %.lcssa214, %bb.z ], [ 0, %bb.y ] ; 2 uses
  %.173.i56.i = phi i32 [ %11, %bb.z ], [ %i.n, %bb.y ] ; 4 uses
  %i.aqw = and i32 %.173.i56.i, 15
  %.not.i57.i = icmp eq i32 %i.aqw, 0
  br i1 %.not.i57.i, label %bb.ab, label %.preheader605.preheader.i
end_hunk_29
begin_hunk_30_@_ZN11duckdb_zstdL35HUF_compress1X_usingCTable_internalEPvmPKvmPKmi:bb.a
  br i1 %i.bah, label %.preheader603.i, label %_ZN11duckdb_zstdL45HUF_compress1X_usingCTable_internal_body_loopEPNS_13HUF_CStream_tEPKhmPKmiii.exit.i, !llvm.loop !74

bb.ac:                                            ; preds = %bb.h
  %i.bai = srem i32 %i.n, 9                       ; 5 uses
  %i.baj = icmp sgt i32 %i.bai, 0
  br i1 %i.baj, label %.preheader586.preheader.i, label %bb.ae

end_hunk_30
begin_hunk_31_@_ZN11duckdb_zstdL35HUF_compress1X_usingCTable_internalEPvmPKvmPKmi:bb.a
  %i.bau = and i64 %i.bar, -256
  %i.bav = or i64 %i.bat, %i.bau
  %i.baw = add i64 %i.bar, %.sroa.264.12706.i
  %indvars.iv.next908.i.1 = add nsw i64 %indvars.iv907.i, -2 ; 4 uses
  %i.bax = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.next908.i.1
  %i.bay = load i8, ptr %i.bax, align 1, !tbaa !7
  %i.baz = zext i8 %i.bay to i64
end_hunk_31
begin_hunk_32_@_ZN11duckdb_zstdL35HUF_compress1X_usingCTable_internalEPvmPKvmPKmi:bb.a
  %.sroa.264.12706.i.epil.init = phi i64 [ 0, %.preheader586.preheader.i ], [ %i.bbg, %.unr-lcssa255 ]
  %lcmp.mod261 = trunc i32 %i.bai to i1
  tail call void @llvm.assume(i1 %lcmp.mod261)
  %indvars.iv.next908.i.epil = add nsw i64 %indvars.iv907.i.epil.init, -1 ; 2 uses
  %i.bbh = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.next908.i.epil
  %i.bbi = load i8, ptr %i.bbh, align 1, !tbaa !7
  %i.bbj = zext i8 %i.bbi to i64
  %i.bbk = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.bbj
end_hunk_32
begin_hunk_33_@_ZN11duckdb_zstdL35HUF_compress1X_usingCTable_internalEPvmPKvmPKmi:bb.a
  br label %bb.ad

bb.ad:                                            ; preds = %.unr-lcssa255, %.preheader586.i.epil.preheader
  %indvars.iv.next908.i.lcssa = phi i64 [ %indvars.iv.next908.i.1, %.unr-lcssa255 ], [ %indvars.iv.next908.i.epil, %.preheader586.i.epil.preheader ]
  %.lcssa184 = phi i64 [ %i.bbf, %.unr-lcssa255 ], [ %i.bbp, %.preheader586.i.epil.preheader ] ; 2 uses
  %.lcssa183 = phi i64 [ %i.bbg, %.unr-lcssa255 ], [ %i.bbq, %.preheader586.i.epil.preheader ] ; 2 uses
  %12 = trunc nsw i64 %indvars.iv.next908.i.lcssa to i32
  %i.bbr = and i64 %.lcssa183, 255                ; 2 uses
  %i.bbs = lshr i64 %i.bbr, 3
  %i.bbt = sub nsw i64 64, %i.bbr
end_hunk_33
begin_hunk_34_@_ZN11duckdb_zstdL35HUF_compress1X_usingCTable_internalEPvmPKvmPKmi:bb.a
  %.sroa.264.7.i = phi i64 [ %i.bbv, %bb.ad ], [ 0, %bb.ac ] ; 2 uses
  %.sroa.458.4.i = phi ptr [ %i.bbw, %bb.ad ], [ %0, %bb.ac ] ; 3 uses
  %.sroa.0.7.i = phi i64 [ %.lcssa184, %bb.ad ], [ 0, %bb.ac ] ; 2 uses
  %.173.i6.i = phi i32 [ %12, %bb.ad ], [ %i.n, %bb.ac ] ; 4 uses
  %i.bbx = srem i32 %.173.i6.i, 18
  %.not.i7.i = icmp eq i32 %i.bbx, 0
  br i1 %.not.i7.i, label %bb.af, label %.preheader585.preheader.i
end_hunk_34
begin_hunk_35_@_ZN11duckdb_zstdL40HUF_compress1X_usingCTable_internal_bmi2EPvmPKvmPKm:bb.a
  br i1 %or.cond.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = srem i32 %i.l, 4                         ; 5 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.preheader582.preheader, label %_ZN11duckdb_zstdL13HUF_flushBitsEPNS_13HUF_CStream_tEi.exit

end_hunk_35
begin_hunk_36_@_ZN11duckdb_zstdL40HUF_compress1X_usingCTable_internal_bmi2EPvmPKvmPKm:bb.a
  %i.y = and i64 %i.v, -256
  %i.z = or i64 %i.x, %i.y
  %i.aa = add i64 %i.v, %.sroa.264.6726
  %indvars.iv.next923.1 = add nsw i64 %indvars.iv922, -2 ; 4 uses
  %i.ab = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.next923.1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !7
  %i.ad = zext i8 %i.ac to i64
end_hunk_36
begin_hunk_37_@_ZN11duckdb_zstdL40HUF_compress1X_usingCTable_internal_bmi2EPvmPKvmPKm:bb.a
  %.sroa.264.6726.epil.init = phi i64 [ 0, %.preheader582.preheader ], [ %i.ak, %.unr-lcssa1117 ]
  %lcmp.mod1123 = trunc i32 %i.m to i1
  tail call void @llvm.assume(i1 %lcmp.mod1123)
  %indvars.iv.next923.epil = add nsw i64 %indvars.iv922.epil.init, -1 ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.next923.epil
  %i.am = load i8, ptr %i.al, align 1, !tbaa !7
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.an
end_hunk_37
begin_hunk_38_@_ZN11duckdb_zstdL40HUF_compress1X_usingCTable_internal_bmi2EPvmPKvmPKm:bb.a
  br label %bb.e

bb.e:                                             ; preds = %.unr-lcssa1117, %.preheader582.epil.preheader
  %indvars.iv.next923.lcssa = phi i64 [ %indvars.iv.next923.1, %.unr-lcssa1117 ], [ %indvars.iv.next923.epil, %.preheader582.epil.preheader ]
  %.lcssa1031 = phi i64 [ %i.aj, %.unr-lcssa1117 ], [ %i.at, %.preheader582.epil.preheader ] ; 2 uses
  %.lcssa1030 = phi i64 [ %i.ak, %.unr-lcssa1117 ], [ %i.au, %.preheader582.epil.preheader ] ; 2 uses
  %i.av = trunc nsw i64 %indvars.iv.next923.lcssa to i32
  %i.aw = and i64 %.lcssa1030, 255                ; 2 uses
  %i.ax = lshr i64 %i.aw, 3
  %i.ay = sub nsw i64 64, %i.aw
end_hunk_38
begin_hunk_39_@_ZN11duckdb_zstdL40HUF_compress1X_usingCTable_internal_bmi2EPvmPKvmPKm:bb.a
  %.sroa.264.1 = phi i64 [ 0, %bb.d ], [ %i.ba, %bb.e ] ; 2 uses
  %.sroa.458.1 = phi ptr [ %0, %bb.d ], [ %spec.select, %bb.e ] ; 3 uses
  %.sroa.0.1 = phi i64 [ 0, %bb.d ], [ %.lcssa1031, %bb.e ] ; 2 uses
  %.173.i = phi i32 [ %i.l, %bb.d ], [ %i.av, %bb.e ] ; 4 uses
  %i.bd = and i32 %.173.i, 7
  %.not.i4 = icmp eq i32 %i.bd, 0
  br i1 %.not.i4, label %_ZN11duckdb_zstdL13HUF_flushBitsEPNS_13HUF_CStream_tEi.exit68, label %.preheader581.preheader
end_hunk_39
begin_hunk_40_@_ZN11duckdb_zstdL40HUF_compress1X_usingCTable_internal_bmi2EPvmPKvmPKm:bb.a
  ]

bb.g:                                             ; preds = %bb.f
  %i.gx = srem i32 %i.l, 5                        ; 5 uses
  %i.gy = icmp sgt i32 %i.gx, 0
  br i1 %i.gy, label %.preheader590.preheader, label %bb.i

end_hunk_40
begin_hunk_41_@_ZN11duckdb_zstdL40HUF_compress1X_usingCTable_internal_bmi2EPvmPKvmPKm:bb.a
  %i.hj = and i64 %i.hg, -256
  %i.hk = or i64 %i.hi, %i.hj
  %i.hl = add i64 %i.hg, %.sroa.264.18686
  %indvars.iv.next893.1 = add nsw i64 %indvars.iv892, -2 ; 4 uses
  %i.hm = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.next893.1
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !7
  %i.ho = zext i8 %i.hn to i64
end_hunk_41
begin_hunk_42_@_ZN11duckdb_zstdL40HUF_compress1X_usingCTable_internal_bmi2EPvmPKvmPKm:bb.a
  %.sroa.264.18686.epil.init = phi i64 [ 0, %.preheader590.preheader ], [ %i.hv, %.unr-lcssa1099 ]
  %lcmp.mod1105 = trunc i32 %i.gx to i1
  tail call void @llvm.assume(i1 %lcmp.mod1105)
  %indvars.iv.next893.epil = add nsw i64 %indvars.iv892.epil.init, -1 ; 2 uses
  %i.hw = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.next893.epil
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !7
  %i.hy = zext i8 %i.hx to i64
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.hy
end_hunk_42
begin_hunk_43_@_ZN11duckdb_zstdL40HUF_compress1X_usingCTable_internal_bmi2EPvmPKvmPKm:bb.a
  br label %bb.h

bb.h:                                             ; preds = %.unr-lcssa1099, %.preheader590.epil.preheader
  %indvars.iv.next893.lcssa = phi i64 [ %indvars.iv.next893.1, %.unr-lcssa1099 ], [ %indvars.iv.next893.epil, %.preheader590.epil.preheader ]
  %.lcssa1043 = phi i64 [ %i.hu, %.unr-lcssa1099 ], [ %i.ie, %.preheader590.epil.preheader ] ; 2 uses
  %.lcssa1042 = phi i64 [ %i.hv, %.unr-lcssa1099 ], [ %i.if, %.preheader590.epil.preheader ] ; 2 uses
  %i.ig = trunc nsw i64 %indvars.iv.next893.lcssa to i32
  %i.ih = and i64 %.lcssa1042, 255                ; 2 uses
  %i.ii = lshr i64 %i.ih, 3
  %i.ij = sub nsw i64 64, %i.ih
end_hunk_43
begin_hunk_44_@_ZN11duckdb_zstdL40HUF_compress1X_usingCTable_internal_bmi2EPvmPKvmPKm:bb.a
  %.sroa.264.13 = phi i64 [ %i.il, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %.sroa.458.7 = phi ptr [ %i.im, %bb.h ], [ %0, %bb.g ] ; 3 uses
  %.sroa.0.13 = phi i64 [ %.lcssa1043, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %.173.i16 = phi i32 [ %i.ig, %bb.h ], [ %i.l, %bb.g ] ; 4 uses
  %i.in = srem i32 %.173.i16, 10
  %.not.i17 = icmp eq i32 %i.in, 0
  br i1 %.not.i17, label %bb.j, label %.preheader589.preheader
end_hunk_44
begin_hunk_45_@_ZN11duckdb_zstdL40HUF_compress1X_usingCTable_internal_bmi2EPvmPKvmPKm:bb.a
  br i1 %i.ph, label %.preheader587, label %_ZN11duckdb_zstdL45HUF_compress1X_usingCTable_internal_body_loopEPNS_13HUF_CStream_tEPKhmPKmiii.exit, !llvm.loop !74

bb.k:                                             ; preds = %bb.f
  %i.pi = srem i32 %i.l, 5                        ; 5 uses
  %i.pj = icmp sgt i32 %i.pi, 0
  br i1 %i.pj, label %.preheader594.preheader, label %bb.m

end_hunk_45
begin_hunk_46_@_ZN11duckdb_zstdL40HUF_compress1X_usingCTable_internal_bmi2EPvmPKvmPKm:bb.a
  %i.pu = and i64 %i.pr, -256
  %i.pv = or i64 %i.pt, %i.pu
  %i.pw = add i64 %i.pr, %.sroa.264.24666
  %indvars.iv.next878.1 = add nsw i64 %indvars.iv877, -2 ; 4 uses
  %i.px = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.next878.1
  %i.py = load i8, ptr %i.px, align 1, !tbaa !7
  %i.pz = zext i8 %i.py to i64
end_hunk_46
begin_hunk_47_@_ZN11duckdb_zstdL40HUF_compress1X_usingCTable_internal_bmi2EPvmPKvmPKm:bb.a
  %.sroa.264.24666.epil.init = phi i64 [ 0, %.preheader594.preheader ], [ %i.qg, %.unr-lcssa1090 ]
  %lcmp.mod1096 = trunc i32 %i.pi to i1
  tail call void @llvm.assume(i1 %lcmp.mod1096)
  %indvars.iv.next878.epil = add nsw i64 %indvars.iv877.epil.init, -1 ; 2 uses
  %i.qh = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.next878.epil
  %i.qi = load i8, ptr %i.qh, align 1, !tbaa !7
  %i.qj = zext i8 %i.qi to i64
  %i.qk = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.qj
end_hunk_47
begin_hunk_48_@_ZN11duckdb_zstdL40HUF_compress1X_usingCTable_internal_bmi2EPvmPKvmPKm:bb.a
  br label %bb.l

bb.l:                                             ; preds = %.unr-lcssa1090, %.preheader594.epil.preheader
  %indvars.iv.next878.lcssa = phi i64 [ %indvars.iv.next878.1, %.unr-lcssa1090 ], [ %indvars.iv.next878.epil, %.preheader594.epil.preheader ]
  %.lcssa1049 = phi i64 [ %i.qf, %.unr-lcssa1090 ], [ %i.qp, %.preheader594.epil.preheader ] ; 2 uses
  %.lcssa1048 = phi i64 [ %i.qg, %.unr-lcssa1090 ], [ %i.qq, %.preheader594.epil.preheader ] ; 2 uses
  %i.qr = trunc nsw i64 %indvars.iv.next878.lcssa to i32
  %i.qs = and i64 %.lcssa1048, 255                ; 2 uses
  %i.qt = lshr i64 %i.qs, 3
  %i.qu = sub nsw i64 64, %i.qs
end_hunk_48
begin_hunk_49_@_ZN11duckdb_zstdL40HUF_compress1X_usingCTable_internal_bmi2EPvmPKvmPKm:bb.a
  %.sroa.264.19 = phi i64 [ %i.qw, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %.sroa.458.10 = phi ptr [ %i.qx, %bb.l ], [ %0, %bb.k ] ; 3 uses
  %.sroa.0.19 = phi i64 [ %.lcssa1049, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %.173.i26 = phi i32 [ %i.qr, %bb.l ], [ %i.l, %bb.k ] ; 4 uses
  %i.qy = srem i32 %.173.i26, 10
  %.not.i27 = icmp eq i32 %i.qy, 0
  br i1 %.not.i27, label %bb.n, label %.preheader593.preheader
end_hunk_49
begin_hunk_50_@_ZN11duckdb_zstdL40HUF_compress1X_usingCTable_internal_bmi2EPvmPKvmPKm:bb.a
  br i1 %i.xp, label %.preheader591, label %_ZN11duckdb_zstdL45HUF_compress1X_usingCTable_internal_body_loopEPNS_13HUF_CStream_tEPKhmPKmiii.exit, !llvm.loop !74

bb.o:                                             ; preds = %bb.f
  %i.xq = srem i32 %i.l, 6                        ; 5 uses
  %i.xr = icmp sgt i32 %i.xq, 0
  br i1 %i.xr, label %.preheader598.preheader, label %bb.q

end_hunk_50
begin_hunk_51_@_ZN11duckdb_zstdL40HUF_compress1X_usingCTable_internal_bmi2EPvmPKvmPKm:bb.a
  %i.yc = and i64 %i.xz, -256
  %i.yd = or i64 %i.yb, %i.yc
  %i.ye = add i64 %i.xz, %.sroa.264.30646
  %indvars.iv.next863.1 = add nsw i64 %indvars.iv862, -2 ; 4 uses
  %i.yf = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.next863.1
  %i.yg = load i8, ptr %i.yf, align 1, !tbaa !7
  %i.yh = zext i8 %i.yg to i64
end_hunk_51
begin_hunk_52_@_ZN11duckdb_zstdL40HUF_compress1X_usingCTable_internal_bmi2EPvmPKvmPKm:bb.a
  %.sroa.264.30646.epil.init = phi i64 [ 0, %.preheader598.preheader ], [ %i.yo, %.unr-lcssa1081 ]
  %lcmp.mod1087 = trunc i32 %i.xq to i1
  tail call void @llvm.assume(i1 %lcmp.mod1087)
  %indvars.iv.next863.epil = add nsw i64 %indvars.iv862.epil.init, -1 ; 2 uses
  %i.yp = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.next863.epil
  %i.yq = load i8, ptr %i.yp, align 1, !tbaa !7
  %i.yr = zext i8 %i.yq to i64
  %i.ys = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.yr
end_hunk_52
begin_hunk_53_@_ZN11duckdb_zstdL40HUF_compress1X_usingCTable_internal_bmi2EPvmPKvmPKm:bb.a
  br label %bb.p

bb.p:                                             ; preds = %.unr-lcssa1081, %.preheader598.epil.preheader
  %indvars.iv.next863.lcssa = phi i64 [ %indvars.iv.next863.1, %.unr-lcssa1081 ], [ %indvars.iv.next863.epil, %.preheader598.epil.preheader ]
  %.lcssa1055 = phi i64 [ %i.yn, %.unr-lcssa1081 ], [ %i.yx, %.preheader598.epil.preheader ] ; 2 uses
  %.lcssa1054 = phi i64 [ %i.yo, %.unr-lcssa1081 ], [ %i.yy, %.preheader598.epil.preheader ] ; 2 uses
  %i.yz = trunc nsw i64 %indvars.iv.next863.lcssa to i32
  %i.za = and i64 %.lcssa1054, 255                ; 2 uses
  %i.zb = lshr i64 %i.za, 3
  %i.zc = sub nsw i64 64, %i.za
end_hunk_53
begin_hunk_54_@_ZN11duckdb_zstdL40HUF_compress1X_usingCTable_internal_bmi2EPvmPKvmPKm:bb.a
  %.sroa.264.25 = phi i64 [ %i.ze, %bb.p ], [ 0, %bb.o ] ; 2 uses
  %.sroa.458.13 = phi ptr [ %i.zf, %bb.p ], [ %0, %bb.o ] ; 3 uses
  %.sroa.0.25 = phi i64 [ %.lcssa1055, %bb.p ], [ 0, %bb.o ] ; 2 uses
  %.173.i36 = phi i32 [ %i.yz, %bb.p ], [ %i.l, %bb.o ] ; 4 uses
  %i.zg = srem i32 %.173.i36, 12
  %.not.i37 = icmp eq i32 %i.zg, 0
  br i1 %.not.i37, label %bb.r, label %.preheader597.preheader
end_hunk_54
begin_hunk_55_@_ZN11duckdb_zstdL40HUF_compress1X_usingCTable_internal_bmi2EPvmPKvmPKm:bb.a
  br i1 %i.ahe, label %.preheader595, label %_ZN11duckdb_zstdL45HUF_compress1X_usingCTable_internal_body_loopEPNS_13HUF_CStream_tEPKhmPKmiii.exit, !llvm.loop !74

bb.s:                                             ; preds = %bb.f
  %i.ahf = srem i32 %i.l, 7                       ; 5 uses
  %i.ahg = icmp sgt i32 %i.ahf, 0
  br i1 %i.ahg, label %.preheader602.preheader, label %bb.u

end_hunk_55
begin_hunk_56_@_ZN11duckdb_zstdL40HUF_compress1X_usingCTable_internal_bmi2EPvmPKvmPKm:bb.a
  %i.ahr = and i64 %i.aho, -256
  %i.ahs = or i64 %i.ahq, %i.ahr
  %i.aht = add i64 %i.aho, %.sroa.264.36626
  %indvars.iv.next848.1 = add nsw i64 %indvars.iv847, -2 ; 4 uses
  %i.ahu = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.next848.1
  %i.ahv = load i8, ptr %i.ahu, align 1, !tbaa !7
  %i.ahw = zext i8 %i.ahv to i64
end_hunk_56
begin_hunk_57_@_ZN11duckdb_zstdL40HUF_compress1X_usingCTable_internal_bmi2EPvmPKvmPKm:bb.a
  %.sroa.264.36626.epil.init = phi i64 [ 0, %.preheader602.preheader ], [ %i.aid, %.unr-lcssa1072 ]
  %lcmp.mod1078 = trunc i32 %i.ahf to i1
  tail call void @llvm.assume(i1 %lcmp.mod1078)
  %indvars.iv.next848.epil = add nsw i64 %indvars.iv847.epil.init, -1 ; 2 uses
  %i.aie = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.next848.epil
  %i.aif = load i8, ptr %i.aie, align 1, !tbaa !7
  %i.aig = zext i8 %i.aif to i64
  %i.aih = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.aig
end_hunk_57
begin_hunk_58_@_ZN11duckdb_zstdL40HUF_compress1X_usingCTable_internal_bmi2EPvmPKvmPKm:bb.a
  br label %bb.t

bb.t:                                             ; preds = %.unr-lcssa1072, %.preheader602.epil.preheader
  %indvars.iv.next848.lcssa = phi i64 [ %indvars.iv.next848.1, %.unr-lcssa1072 ], [ %indvars.iv.next848.epil, %.preheader602.epil.preheader ]
  %.lcssa1061 = phi i64 [ %i.aic, %.unr-lcssa1072 ], [ %i.aim, %.preheader602.epil.preheader ] ; 2 uses
  %.lcssa1060 = phi i64 [ %i.aid, %.unr-lcssa1072 ], [ %i.ain, %.preheader602.epil.preheader ] ; 2 uses
  %i.aio = trunc nsw i64 %indvars.iv.next848.lcssa to i32
  %i.aip = and i64 %.lcssa1060, 255               ; 2 uses
  %i.aiq = lshr i64 %i.aip, 3
  %i.air = sub nsw i64 64, %i.aip
end_hunk_58
begin_hunk_59_@_ZN11duckdb_zstdL40HUF_compress1X_usingCTable_internal_bmi2EPvmPKvmPKm:bb.a
  %.sroa.264.31 = phi i64 [ %i.ait, %bb.t ], [ 0, %bb.s ] ; 2 uses
  %.sroa.458.16 = phi ptr [ %i.aiu, %bb.t ], [ %0, %bb.s ] ; 3 uses
  %.sroa.0.31 = phi i64 [ %.lcssa1061, %bb.t ], [ 0, %bb.s ] ; 2 uses
  %.173.i46 = phi i32 [ %i.aio, %bb.t ], [ %i.l, %bb.s ] ; 4 uses
  %i.aiv = srem i32 %.173.i46, 14
  %.not.i47 = icmp eq i32 %i.aiv, 0
  br i1 %.not.i47, label %bb.v, label %.preheader601.preheader
end_hunk_59
begin_hunk_60_@_ZN11duckdb_zstdL40HUF_compress1X_usingCTable_internal_bmi2EPvmPKvmPKm:bb.a
  br i1 %i.arx, label %.preheader599, label %_ZN11duckdb_zstdL45HUF_compress1X_usingCTable_internal_body_loopEPNS_13HUF_CStream_tEPKhmPKmiii.exit, !llvm.loop !74

bb.w:                                             ; preds = %bb.f
  %i.ary = srem i32 %i.l, 8                       ; 5 uses
  %i.arz = icmp sgt i32 %i.ary, 0
  br i1 %i.arz, label %.preheader606.preheader, label %bb.y

end_hunk_60
begin_hunk_61_@_ZN11duckdb_zstdL40HUF_compress1X_usingCTable_internal_bmi2EPvmPKvmPKm:bb.a
  %i.ask = and i64 %i.ash, -256
  %i.asl = or i64 %i.asj, %i.ask
  %i.asm = add i64 %i.ash, %.sroa.264.42607
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 4 uses
  %i.asn = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.next.1
  %i.aso = load i8, ptr %i.asn, align 1, !tbaa !7
  %i.asp = zext i8 %i.aso to i64
end_hunk_61
begin_hunk_62_@_ZN11duckdb_zstdL40HUF_compress1X_usingCTable_internal_bmi2EPvmPKvmPKm:bb.a
  %.sroa.264.42607.epil.init = phi i64 [ 0, %.preheader606.preheader ], [ %i.asw, %.unr-lcssa ]
  %lcmp.mod1071 = trunc i32 %i.ary to i1
  tail call void @llvm.assume(i1 %lcmp.mod1071)
  %indvars.iv.next.epil = add nsw i64 %indvars.iv.epil.init, -1 ; 2 uses
  %i.asx = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.next.epil
  %i.asy = load i8, ptr %i.asx, align 1, !tbaa !7
  %i.asz = zext i8 %i.asy to i64
  %i.ata = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.asz
end_hunk_62
begin_hunk_63_@_ZN11duckdb_zstdL40HUF_compress1X_usingCTable_internal_bmi2EPvmPKvmPKm:bb.a
  br label %bb.x

bb.x:                                             ; preds = %.unr-lcssa, %.preheader606.epil.preheader
  %indvars.iv.next.lcssa = phi i64 [ %indvars.iv.next.1, %.unr-lcssa ], [ %indvars.iv.next.epil, %.preheader606.epil.preheader ]
  %.lcssa1067 = phi i64 [ %i.asv, %.unr-lcssa ], [ %i.atf, %.preheader606.epil.preheader ] ; 2 uses
  %.lcssa1066 = phi i64 [ %i.asw, %.unr-lcssa ], [ %i.atg, %.preheader606.epil.preheader ] ; 2 uses
  %i.ath = trunc nsw i64 %indvars.iv.next.lcssa to i32
  %i.ati = and i64 %.lcssa1066, 255               ; 2 uses
  %i.atj = lshr i64 %i.ati, 3
  %i.atk = sub nsw i64 64, %i.ati
end_hunk_63
begin_hunk_64_@_ZN11duckdb_zstdL40HUF_compress1X_usingCTable_internal_bmi2EPvmPKvmPKm:bb.a
  %.sroa.264.37 = phi i64 [ %i.atm, %bb.x ], [ 0, %bb.w ] ; 2 uses
  %.sroa.458.19 = phi ptr [ %i.atn, %bb.x ], [ %0, %bb.w ] ; 3 uses
  %.sroa.0.37 = phi i64 [ %.lcssa1067, %bb.x ], [ 0, %bb.w ] ; 2 uses
  %.173.i56 = phi i32 [ %i.ath, %bb.x ], [ %i.l, %bb.w ] ; 4 uses
  %i.ato = and i32 %.173.i56, 15
  %.not.i57 = icmp eq i32 %i.ato, 0
  br i1 %.not.i57, label %bb.z, label %.preheader605.preheader
end_hunk_64
begin_hunk_65_@_ZN11duckdb_zstdL40HUF_compress1X_usingCTable_internal_bmi2EPvmPKvmPKm:bb.a
  br i1 %i.bdu, label %.preheader603, label %_ZN11duckdb_zstdL45HUF_compress1X_usingCTable_internal_body_loopEPNS_13HUF_CStream_tEPKhmPKmiii.exit, !llvm.loop !74

bb.aa:                                            ; preds = %bb.f
  %i.bdv = srem i32 %i.l, 9                       ; 5 uses
  %i.bdw = icmp sgt i32 %i.bdv, 0
  br i1 %i.bdw, label %.preheader586.preheader, label %bb.ac

end_hunk_65
begin_hunk_66_@_ZN11duckdb_zstdL40HUF_compress1X_usingCTable_internal_bmi2EPvmPKvmPKm:bb.a
  %i.beh = and i64 %i.bee, -256
  %i.bei = or i64 %i.beg, %i.beh
  %i.bej = add i64 %i.bee, %.sroa.264.12706
  %indvars.iv.next908.1 = add nsw i64 %indvars.iv907, -2 ; 4 uses
  %i.bek = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.next908.1
  %i.bel = load i8, ptr %i.bek, align 1, !tbaa !7
  %i.bem = zext i8 %i.bel to i64
end_hunk_66
begin_hunk_67_@_ZN11duckdb_zstdL40HUF_compress1X_usingCTable_internal_bmi2EPvmPKvmPKm:bb.a
  %.sroa.264.12706.epil.init = phi i64 [ 0, %.preheader586.preheader ], [ %i.bet, %.unr-lcssa1108 ]
  %lcmp.mod1114 = trunc i32 %i.bdv to i1
  tail call void @llvm.assume(i1 %lcmp.mod1114)
  %indvars.iv.next908.epil = add nsw i64 %indvars.iv907.epil.init, -1 ; 2 uses
  %i.beu = getelementptr inbounds i8, ptr %2, i64 %indvars.iv.next908.epil
  %i.bev = load i8, ptr %i.beu, align 1, !tbaa !7
  %i.bew = zext i8 %i.bev to i64
  %i.bex = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bew
end_hunk_67
begin_hunk_68_@_ZN11duckdb_zstdL40HUF_compress1X_usingCTable_internal_bmi2EPvmPKvmPKm:bb.a
  br label %bb.ab

bb.ab:                                            ; preds = %.unr-lcssa1108, %.preheader586.epil.preheader
  %indvars.iv.next908.lcssa = phi i64 [ %indvars.iv.next908.1, %.unr-lcssa1108 ], [ %indvars.iv.next908.epil, %.preheader586.epil.preheader ]
  %.lcssa1037 = phi i64 [ %i.bes, %.unr-lcssa1108 ], [ %i.bfc, %.preheader586.epil.preheader ] ; 2 uses
  %.lcssa1036 = phi i64 [ %i.bet, %.unr-lcssa1108 ], [ %i.bfd, %.preheader586.epil.preheader ] ; 2 uses
  %i.bfe = trunc nsw i64 %indvars.iv.next908.lcssa to i32
  %i.bff = and i64 %.lcssa1036, 255               ; 2 uses
  %i.bfg = lshr i64 %i.bff, 3
  %i.bfh = sub nsw i64 64, %i.bff
end_hunk_68
begin_hunk_69_@_ZN11duckdb_zstdL40HUF_compress1X_usingCTable_internal_bmi2EPvmPKvmPKm:bb.a
  %.sroa.264.7 = phi i64 [ %i.bfj, %bb.ab ], [ 0, %bb.aa ] ; 2 uses
  %.sroa.458.4 = phi ptr [ %i.bfk, %bb.ab ], [ %0, %bb.aa ] ; 3 uses
  %.sroa.0.7 = phi i64 [ %.lcssa1037, %bb.ab ], [ 0, %bb.aa ] ; 2 uses
  %.173.i6 = phi i32 [ %i.bfe, %bb.ab ], [ %i.l, %bb.aa ] ; 4 uses
  %i.bfl = srem i32 %.173.i6, 18
  %.not.i7 = icmp eq i32 %i.bfl, 0
  br i1 %.not.i7, label %bb.ad, label %.preheader585.preheader
end_hunk_69
