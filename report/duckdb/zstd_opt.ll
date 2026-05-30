inline.NumInlined: 262
inline.NumDeleted: 50
begin_hunk_0_@_ZN11duckdb_zstdL23ZSTD_compressBlock_opt0EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvmNS_15ZSTD_dictMode_eE:bb.a
  %.not497.i.us = icmp ult i32 %i.pd, %i.ny
  %indvar.next432 = add i32 %indvar431, 1
  br i1 %.not497.i.us, label %._crit_edge209, label %_ZN11duckdb_zstdL18ZSTD_getMatchPriceEjjPKNS_10optState_tEi.exit8.us, !llvm.loop !64

.lr.ph201.us:                                     ; preds = %.lr.ph201.us.prol.loopexit, %.lr.ph201.us
  %indvars.iv268 = phi i64 [ %indvars.iv.next269.3, %.lr.ph201.us ], [ %indvars.iv268.unr, %.lr.ph201.us.prol.loopexit ] ; 4 uses
  %i.pe = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv268 ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 28
  store i32 1073741824, ptr %i.pf, align 4, !tbaa !45
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pe, i64 40
  store i32 1, ptr %i.pg, align 4, !tbaa !40
  %i.ph = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv268 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 56
  store i32 1073741824, ptr %i.pi, align 4, !tbaa !45
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ph, i64 68
  store i32 1, ptr %i.pj, align 4, !tbaa !40
  %i.pk = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv268 ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 84
  store i32 1073741824, ptr %i.pl, align 4, !tbaa !45
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pk, i64 96
  store i32 1, ptr %i.pm, align 4, !tbaa !40
  %indvars.iv.next269.3 = add nuw nsw i64 %indvars.iv268, 4 ; 4 uses
  %i.pn = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv.next269.3 ; 2 uses
  store i32 1073741824, ptr %i.pn, align 4, !tbaa !45
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 12
  store i32 1, ptr %i.po, align 4, !tbaa !40
  %i.pp = icmp samesign ult i64 %indvars.iv.next269.3, %i.os
  br i1 %i.pp, label %.lr.ph201.us, label %._crit_edge202.us.loopexit, !llvm.loop !65

.lr.ph208.split:                                  ; preds = %.lr.ph208
  %i.pq = icmp samesign ugt i32 %i.oa, 19
  %i.pr = shl nuw nsw i32 %i.oa, 9
  %i.ps = add nsw i32 %i.pr, -9677
  %i.pt = select i1 %i.pq, i32 %i.ps, i32 51
  %i.pu = zext nneg i32 %i.oa to i64
  %i.pv = load i32, ptr %i.ba, align 4, !tbaa !52
  %i.pw = load ptr, ptr %i.bb, align 8, !tbaa !53
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.pw, i64 %i.pu
  %i.py = load i32, ptr %i.bc, align 8, !tbaa !54
  %i.pz = load ptr, ptr %i.bd, align 8, !tbaa !55
  %i.qa = add i32 %i.pt, %i.pv
  %invariant.op215 = add i32 %i.qa, %i.py
  %invariant.op379 = add i32 %invariant.op215, -7936
  %i.qb = add i32 %.3449.i222, %i.nt
  br label %bb.ao

bb.ao:                                            ; preds = %.lr.ph208.split, %._crit_edge202
  %indvar = phi i32 [ 0, %.lr.ph208.split ], [ %indvar.next, %._crit_edge202 ] ; 2 uses
  %.9.i206 = phi i32 [ %.8.i219, %.lr.ph208.split ], [ %.10.i.lcssa, %._crit_edge202 ] ; 4 uses
  %.0470.i205 = phi i32 [ %i.nt, %.lr.ph208.split ], [ %i.si, %._crit_edge202 ] ; 4 uses
  %i.qc = sub i32 %i.qb, %indvar
  %i.qd = zext i32 %i.qc to i64                   ; 2 uses
  %i.qe = add i32 %.0470.i205, %.3449.i222        ; 4 uses
  %i.qf = add i32 %.0470.i205, -3                 ; 3 uses
  %i.qg = load i32, ptr %i.px, align 4, !tbaa !3
  %i.qh = add i32 %i.qg, 1
  %i.qi = call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.qh, i1 true)
  %i.qj = icmp ugt i32 %i.qf, 127
  br i1 %i.qj, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.qk = call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.qf, i1 true)
  %i.ql = sub nuw nsw i32 67, %i.qk
  br label %_ZN11duckdb_zstdL11ZSTD_MLcodeEj.exit34

bb.aq:                                            ; preds = %bb.ao
  %i.qm = zext nneg i32 %i.qf to i64
  %i.qn = getelementptr inbounds nuw i8, ptr @_ZZN11duckdb_zstdL11ZSTD_MLcodeEjE7ML_Code, i64 %i.qm
  %i.qo = load i8, ptr %i.qn, align 1, !tbaa !44
  %i.qp = zext i8 %i.qo to i32
  br label %_ZN11duckdb_zstdL11ZSTD_MLcodeEj.exit34

_ZN11duckdb_zstdL11ZSTD_MLcodeEj.exit34:          ; preds = %bb.ap, %bb.aq
  %i.qq = phi i32 [ %i.ql, %bb.ap ], [ %i.qp, %bb.aq ]
  %i.qr = zext nneg i32 %i.qq to i64              ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr @_ZN11duckdb_zstdL7ML_bitsE, i64 %i.qr
  %i.qt = load i8, ptr %i.qs, align 1, !tbaa !44
  %i.qu = zext i8 %i.qt to i32
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %i.pz, i64 %i.qr
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !3
  %i.qx = add i32 %i.qw, 1
  %i.qy = call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.qx, i1 true)
  %i.qz = shl nuw nsw i32 %i.qy, 8
  %.neg = add nsw i32 %i.qz, -7936
  %reass.add179 = add nuw nsw i32 %i.oa, %i.qu
  %i.ra = add nuw nsw i32 %i.qi, %reass.add179
  %i.rb = shl nuw nsw i32 %i.ra, 8
  %i.rc = add i32 %i.rb, %invariant.op379
  %i.rd = add i32 %i.rc, %.neg
  %i.re = add nsw i32 %i.mx, %i.rd                ; 2 uses
  %i.rf = icmp ugt i32 %i.qe, %.9.i206
  br i1 %i.rf, label %.lr.ph201.preheader, label %bb.ar

bb.ar:                                            ; preds = %_ZN11duckdb_zstdL11ZSTD_MLcodeEj.exit34
  %i.rg = zext i32 %i.qe to i64
  %i.rh = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.rg
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !45
  %i.rj = icmp slt i32 %i.re, %i.ri
  br i1 %i.rj, label %.._crit_edge202_crit_edge, label %._crit_edge209

.._crit_edge202_crit_edge:                        ; preds = %bb.ar
  %.pre293 = zext i32 %i.qe to i64
  br label %._crit_edge202

.lr.ph201.preheader:                              ; preds = %_ZN11duckdb_zstdL11ZSTD_MLcodeEj.exit34
  %i.rk = zext i32 %.9.i206 to i64                ; 4 uses
  %i.rl = zext i32 %i.qe to i64                   ; 2 uses
  %i.rm = sub nsw i64 %i.qd, %i.rk
  %xtraiter429 = and i64 %i.rm, 3                 ; 2 uses
  %lcmp.mod430.not = icmp eq i64 %xtraiter429, 0
  br i1 %lcmp.mod430.not, label %.lr.ph201.prol.loopexit, label %.lr.ph201.prol

.lr.ph201.prol:                                   ; preds = %.lr.ph201.preheader, %.lr.ph201.prol
  %indvars.iv265.prol = phi i64 [ %indvars.iv.next266.prol, %.lr.ph201.prol ], [ %i.rk, %.lr.ph201.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph201.prol ], [ 0, %.lr.ph201.preheader ]
  %indvars.iv.next266.prol = add nuw nsw i64 %indvars.iv265.prol, 1 ; 4 uses
  %i.rn = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv.next266.prol ; 2 uses
  store i32 1073741824, ptr %i.rn, align 4, !tbaa !45
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 12
  store i32 1, ptr %i.ro, align 4, !tbaa !40
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter429
  br i1 %prol.iter.cmp.not, label %.lr.ph201.prol.loopexit, label %.lr.ph201.prol, !llvm.loop !66

.lr.ph201.prol.loopexit:                          ; preds = %.lr.ph201.prol, %.lr.ph201.preheader
  %indvars.iv265.unr = phi i64 [ %i.rk, %.lr.ph201.preheader ], [ %indvars.iv.next266.prol, %.lr.ph201.prol ]
  %indvars.iv.next266.lcssa.unr = phi i64 [ poison, %.lr.ph201.preheader ], [ %indvars.iv.next266.prol, %.lr.ph201.prol ]
  %i.rp = sub nsw i64 %i.rk, %i.qd
  %i.rq = icmp ugt i64 %i.rp, -4
  br i1 %i.rq, label %._crit_edge202.loopexit, label %.lr.ph201

.lr.ph201:                                        ; preds = %.lr.ph201.prol.loopexit, %.lr.ph201
  %indvars.iv265 = phi i64 [ %indvars.iv.next266.3, %.lr.ph201 ], [ %indvars.iv265.unr, %.lr.ph201.prol.loopexit ] ; 4 uses
  %i.rr = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv265 ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 28
  store i32 1073741824, ptr %i.rs, align 4, !tbaa !45
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rr, i64 40
  store i32 1, ptr %i.rt, align 4, !tbaa !40
  %i.ru = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv265 ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 56
  store i32 1073741824, ptr %i.rv, align 4, !tbaa !45
  %i.rw = getelementptr inbounds nuw i8, ptr %i.ru, i64 68
  store i32 1, ptr %i.rw, align 4, !tbaa !40
  %i.rx = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv265 ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 84
  store i32 1073741824, ptr %i.ry, align 4, !tbaa !45
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rx, i64 96
  store i32 1, ptr %i.rz, align 4, !tbaa !40
  %indvars.iv.next266.3 = add nuw nsw i64 %indvars.iv265, 4 ; 4 uses
  %i.sa = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv.next266.3 ; 2 uses
  store i32 1073741824, ptr %i.sa, align 4, !tbaa !45
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 12
  store i32 1, ptr %i.sb, align 4, !tbaa !40
  %i.sc = icmp samesign ult i64 %indvars.iv.next266.3, %i.rl
  br i1 %i.sc, label %.lr.ph201, label %._crit_edge202.loopexit, !llvm.loop !65

._crit_edge202.loopexit:                          ; preds = %.lr.ph201, %.lr.ph201.prol.loopexit
  %indvars.iv.next266.lcssa = phi i64 [ %indvars.iv.next266.lcssa.unr, %.lr.ph201.prol.loopexit ], [ %indvars.iv.next266.3, %.lr.ph201 ]
  %i.sd = trunc nuw i64 %indvars.iv.next266.lcssa to i32
  br label %._crit_edge202

._crit_edge202:                                   ; preds = %.._crit_edge202_crit_edge, %._crit_edge202.loopexit
  %.pre-phi294 = phi i64 [ %.pre293, %.._crit_edge202_crit_edge ], [ %i.rl, %._crit_edge202.loopexit ]
  %.10.i.lcssa = phi i32 [ %.9.i206, %.._crit_edge202_crit_edge ], [ %i.sd, %._crit_edge202.loopexit ] ; 2 uses
  %i.se = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %.pre-phi294 ; 4 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 8
  store i32 %.0470.i205, ptr %i.sf, align 4, !tbaa !38
  %i.sg = getelementptr inbounds nuw i8, ptr %i.se, i64 4
  store i32 %i.nr, ptr %i.sg, align 4, !tbaa !50
  %i.sh = getelementptr inbounds nuw i8, ptr %i.se, i64 12
  store i32 0, ptr %i.sh, align 4, !tbaa !40
  store i32 %i.re, ptr %i.se, align 4, !tbaa !45
  %i.si = add i32 %.0470.i205, -1                 ; 2 uses
  %.not497.i = icmp ult i32 %i.si, %i.ny
  %indvar.next = add i32 %indvar, 1
  br i1 %.not497.i, label %._crit_edge209, label %bb.ao, !llvm.loop !64

._crit_edge209:                                   ; preds = %._crit_edge202, %bb.ar, %._crit_edge202.us, %bb.an, %bb.am
  %.9.i.lcssa = phi i32 [ %.8.i219, %bb.am ], [ %.9.i206.us, %bb.an ], [ %.10.i.lcssa.us, %._crit_edge202.us ], [ %.9.i206, %bb.ar ], [ %.10.i.lcssa, %._crit_edge202 ] ; 3 uses
  %indvars.iv.next272 = add nuw nsw i64 %indvars.iv271, 1 ; 2 uses
  %exitcond275.not = icmp eq i64 %indvars.iv.next272, %wide.trip.count274
  br i1 %exitcond275.not, label %bb.as, label %bb.ak, !llvm.loop !67

bb.as:                                            ; preds = %._crit_edge209
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  %i.sj = add i32 %.9.i.lcssa, 1
  %i.sk = zext i32 %i.sj to i64
  %i.sl = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.sk
  store i32 1073741824, ptr %i.sl, align 4, !tbaa !45
  br label %.thread113

.thread113:                                       ; preds = %..thread113_crit_edge, %bb.ah, %bb.as, %.thread129
  %.pre-phi290 = phi i32 [ %.pre289, %..thread113_crit_edge ], [ %i.mi, %bb.ah ], [ %i.mi, %bb.as ], [ %i.mi, %.thread129 ] ; 2 uses
  %.15.i119 = phi i32 [ %.2453.i221, %..thread113_crit_edge ], [ %.2453.i221, %bb.ah ], [ %.9.i.lcssa, %bb.as ], [ %.2453.i221, %.thread129 ] ; 3 uses
  %.not491.i = icmp ugt i32 %.pre-phi290, %.15.i119
  br i1 %.not491.i, label %bb.at, label %.lr.ph224, !llvm.loop !68

bb.at:                                            ; preds = %bb.ag, %.thread113
  %.2453.i.lcssa.ph = phi i32 [ %.15.i119, %.thread113 ], [ %.3449.i222, %bb.ag ] ; 3 uses
  %i.sm = zext i32 %.2453.i.lcssa.ph to i64
  %i.sn = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.sm ; 4 uses
  %.sroa.0214.0.copyload.i = load i32, ptr %i.sn, align 4, !tbaa !3 ; 4 uses
  %.sroa.6217.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.sn, i64 4
  %.sroa.6217.0.copyload.i = load i32, ptr %.sroa.6217.0..sroa_idx.i, align 4, !tbaa !3 ; 3 uses
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.sn, i64 8
  %9 = load <2 x i32>, ptr %.sroa.9.0..sroa_idx.i, align 4, !tbaa !3 ; 3 uses
  %10 = extractelement <2 x i32> %9, i64 1        ; 4 uses
  %11 = extractelement <2 x i32> %9, i64 0        ; 4 uses
  %.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.sn, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.19.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.19.0..sroa_idx.i, i64 12, i1 false), !tbaa.struct !69
  %i.so = sub i32 %.2453.i.lcssa.ph, %11          ; 2 uses
  %i.sp = icmp eq i32 %11, 0
  br i1 %i.sp, label %bb.au, label %bb.av

.thread341:                                       ; preds = %bb.aj
  %i.sq = load i32, ptr %i.ni, align 4, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  %i.sr = icmp eq i32 %i.nk, 0
  br i1 %i.sr, label %bb.au, label %._crit_edge277

bb.au:                                            ; preds = %.thread341, %bb.at
  %.sroa.0214.1.i353 = phi i32 [ %.sroa.0214.0.i237, %.thread341 ], [ %.sroa.0214.0.copyload.i, %bb.at ]
  %.17.i348 = phi i32 [ %i.nm, %.thread341 ], [ %.2453.i.lcssa.ph, %bb.at ]
  %i.ss = zext i32 %.17.i348 to i64
  %i.st = getelementptr inbounds nuw i8, ptr %.0.i239, i64 %i.ss
  br label %bb.ca, !llvm.loop !70

bb.av:                                            ; preds = %bb.at
  %i.su = icmp eq i32 %10, 0
  br i1 %i.su, label %._crit_edge277, label %bb.bc

._crit_edge277:                                   ; preds = %.thread341, %bb.av
  %.4450.i349364 = phi i32 [ %i.so, %bb.av ], [ %.3449.i222, %.thread341 ] ; 2 uses
  %.sroa.9.7.i351363 = phi i32 [ %11, %bb.av ], [ %i.nk, %.thread341 ]
  %.sroa.6217.7.i352362 = phi i32 [ %.sroa.6217.0.copyload.i, %bb.av ], [ %i.sq, %.thread341 ]
  %.sroa.0214.1.i354361 = phi i32 [ %.sroa.0214.0.copyload.i, %bb.av ], [ %.sroa.0214.0.i237, %.thread341 ]
  %.phi.trans.insert278 = zext i32 %.4450.i349364 to i64
  %.phi.trans.insert279 = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %.phi.trans.insert278
  %.phi.trans.insert280 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert279, i64 12
  %.pre281 = load i32, ptr %.phi.trans.insert280, align 4, !tbaa !40
  br label %bb.aw

bb.aw:                                            ; preds = %._crit_edge277, %.thread147
  %i.sv = phi i32 [ %i.bw, %.thread147 ], [ %.pre281, %._crit_edge277 ]
  %.4450.i142161 = phi i32 [ 0, %.thread147 ], [ %.4450.i349364, %._crit_edge277 ] ; 3 uses
  %.sroa.9.7.i144158 = phi i32 [ %i.ds, %.thread147 ], [ %.sroa.9.7.i351363, %._crit_edge277 ]
  %.sroa.6217.7.i145156 = phi i32 [ %i.dt, %.thread147 ], [ %.sroa.6217.7.i352362, %._crit_edge277 ] ; 4 uses
  %.sroa.0214.1.i146154 = phi i32 [ %.sroa.0214.0.i237, %.thread147 ], [ %.sroa.0214.1.i354361, %._crit_edge277 ]
  %i.sw = zext i32 %.4450.i142161 to i64
  %i.sx = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.sw
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.sy, i64 12, i1 false)
  %i.sz = icmp ugt i32 %.sroa.6217.7.i145156, 3
  br i1 %i.sz, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.ta = load i32, ptr %i.bh, align 4, !tbaa !3
  %i.tb = load i32, ptr %6, align 8, !tbaa !3
  store i32 %i.tb, ptr %i.bh, align 4, !tbaa !3
  %i.tc = add i32 %.sroa.6217.7.i145156, -3
  br label %.sink.split.i.i38

bb.ay:                                            ; preds = %bb.aw
  %i.td = icmp eq i32 %i.sv, 0
  %i.te = zext i1 %i.td to i32
  %i.tf = add nsw i32 %.sroa.6217.7.i145156, -1
  %i.tg = add nsw i32 %i.tf, %i.te                ; 3 uses
  switch i32 %i.tg, label %bb.ba [
    i32 0, label %._ZN11duckdb_zstdL14ZSTD_updateRepEPjjj.exit_crit_edge.i45
    i32 3, label %bb.az
  ]

._ZN11duckdb_zstdL14ZSTD_updateRepEPjjj.exit_crit_edge.i45: ; preds = %bb.ay
  %.sroa.2.0.copyload.pre.i47 = load i32, ptr %.sroa.2.0..sroa_idx.phi.trans.insert.i46, align 8
  br label %.thread162

bb.az:                                            ; preds = %bb.ay
  %i.th = load i32, ptr %6, align 8, !tbaa !3     ; 2 uses
  %i.ti = add i32 %i.th, -1
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.tj = zext i32 %i.tg to i64
  %i.tk = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.tj
  %i.tl = load i32, ptr %i.tk, align 4, !tbaa !3
  %.pre.i.i48 = load i32, ptr %6, align 8, !tbaa !3
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.tm = phi i32 [ %i.th, %bb.az ], [ %.pre.i.i48, %bb.ba ]
  %i.tn = phi i32 [ %i.ti, %bb.az ], [ %i.tl, %bb.ba ]
  %.not22.i.i35 = icmp eq i32 %i.tg, 1
  %.val.i36 = load i32, ptr %.sroa.2.0..sroa_idx.phi.trans.insert.i46, align 8
  %.val2.i37 = load i32, ptr %i.bh, align 4
  %i.to = select i1 %.not22.i.i35, i32 %.val.i36, i32 %.val2.i37
  store i32 %i.tm, ptr %i.bh, align 4, !tbaa !3
  br label %.sink.split.i.i38

.sink.split.i.i38:                                ; preds = %bb.bb, %bb.ax
  %.sroa.2.0.copyload4.i39 = phi i32 [ %i.to, %bb.bb ], [ %i.ta, %bb.ax ]
  %.sink.i.i40 = phi i32 [ %i.tn, %bb.bb ], [ %i.tc, %bb.ax ]
  store i32 %.sink.i.i40, ptr %6, align 8, !tbaa !3
  br label %.thread162

.thread162:                                       ; preds = %.sink.split.i.i38, %._ZN11duckdb_zstdL14ZSTD_updateRepEPjjj.exit_crit_edge.i45
  %.sroa.2.0.copyload.i41 = phi i32 [ %.sroa.2.0.copyload.pre.i47, %._ZN11duckdb_zstdL14ZSTD_updateRepEPjjj.exit_crit_edge.i45 ], [ %.sroa.2.0.copyload4.i39, %.sink.split.i.i38 ]
  %.sroa.0.0.copyload.i42 = load i64, ptr %6, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  store i64 %.sroa.0.0.copyload.i42, ptr %2, align 4
  store i32 %.sroa.2.0.copyload.i41, ptr %.sroa.443.0..sroa_idx.i, align 4
  %i.tp = add i32 %.4450.i142161, 2               ; 2 uses
  %.pre285 = zext i32 %i.tp to i64
  br label %bb.bd

bb.bc:                                            ; preds = %bb.av
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.19.0..sroa_idx.i, i64 12, i1 false)
  %i.tq = sub i32 %i.so, %10                      ; 3 uses
  %i.tr = add i32 %i.tq, 2                        ; 2 uses
  %i.ts = zext i32 %i.tr to i64                   ; 2 uses
  %i.tt = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.ts ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 12
  store i32 %10, ptr %i.tu, align 4, !tbaa !40
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tt, i64 8
  store i32 0, ptr %i.tv, align 4, !tbaa !38
  %i.tw = add i32 %i.tq, 1
  %i.tx = zext i32 %i.tw to i64
  %i.ty = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.tx ; 4 uses
  store i32 %.sroa.0214.0.copyload.i, ptr %i.ty, align 4, !tbaa !3
  %.sroa.9.0..sroa_idx222.i.a = getelementptr inbounds nuw i8, ptr %i.ty, i64 4
  store i32 %.sroa.6217.0.copyload.i, ptr %.sroa.9.0..sroa_idx222.i.a, align 4, !tbaa !3
  %.sroa.13.0..sroa_idx227.i = getelementptr inbounds nuw i8, ptr %i.ty, i64 8
  store <2 x i32> %9, ptr %.sroa.13.0..sroa_idx227.i, align 4, !tbaa !3
  %.sroa.19.0..sroa_idx234.i = getelementptr inbounds nuw i8, ptr %i.ty, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.19.0..sroa_idx234.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.19.i, i64 12, i1 false), !tbaa.struct !69
  br label %bb.bd

bb.bd:                                            ; preds = %.thread162, %bb.bc
  %.pre-phi286 = phi i64 [ %.pre285, %.thread162 ], [ %i.ts, %bb.bc ]
  %i.tz = phi i32 [ %i.tp, %.thread162 ], [ %i.tr, %bb.bc ] ; 5 uses
  %.5.i172 = phi i32 [ %.4450.i142161, %.thread162 ], [ %i.tq, %bb.bc ] ; 2 uses
  %.sroa.0214.1.i146153171 = phi i32 [ %.sroa.0214.1.i146154, %.thread162 ], [ %.sroa.0214.0.copyload.i, %bb.bc ] ; 2 uses
  %.sroa.6217.7.i145155170 = phi i32 [ %.sroa.6217.7.i145156, %.thread162 ], [ %.sroa.6217.0.copyload.i, %bb.bc ]
  %.sroa.9.7.i144157169 = phi i32 [ %.sroa.9.7.i144158, %.thread162 ], [ %11, %bb.bc ]
  %.sroa.13.7.i143159168 = phi i32 [ 0, %.thread162 ], [ %10, %bb.bc ]
  %i.ua = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %.pre-phi286 ; 5 uses
  store i32 %.sroa.0214.1.i146153171, ptr %i.ua, align 4, !tbaa !3
  %.sroa.6217.0..sroa_idx220.i = getelementptr inbounds nuw i8, ptr %i.ua, i64 4
  store i32 %.sroa.6217.7.i145155170, ptr %.sroa.6217.0..sroa_idx220.i, align 4, !tbaa !3
  %.sroa.9.0..sroa_idx224.i = getelementptr inbounds nuw i8, ptr %i.ua, i64 8
  store i32 %.sroa.9.7.i144157169, ptr %.sroa.9.0..sroa_idx224.i, align 4, !tbaa !3
  %.sroa.13.0..sroa_idx229.i = getelementptr inbounds nuw i8, ptr %i.ua, i64 12
  store i32 %.sroa.13.7.i143159168, ptr %.sroa.13.0..sroa_idx229.i, align 4, !tbaa !3
  %.sroa.19.0..sroa_idx235.i = getelementptr inbounds nuw i8, ptr %i.ua, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.19.0..sroa_idx235.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.19.i, i64 12, i1 false), !tbaa.struct !69
  %i.ub = zext i32 %.5.i172 to i64                ; 2 uses
  %i.uc = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.ub ; 3 uses
  %i.ud = load i64, ptr %i.uc, align 4
  %.sroa.4.0..sroa_idx.i389 = getelementptr inbounds nuw i8, ptr %i.uc, i64 8
  %.sroa.4.0.copyload.i390 = load i32, ptr %.sroa.4.0..sroa_idx.i389, align 4, !tbaa !3 ; 2 uses
  %.sroa.6.0..sroa_idx.i391 = getelementptr inbounds nuw i8, ptr %i.uc, i64 12
  %.sroa.6.0.copyload.i392 = load i32, ptr %.sroa.6.0..sroa_idx.i391, align 4, !tbaa !3 ; 2 uses
  %i.ue = zext i32 %i.tz to i64
  %i.uf = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.ue
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 12
  store i32 %.sroa.6.0.copyload.i392, ptr %i.ug, align 4, !tbaa !40
  %.not393 = icmp eq i32 %.sroa.4.0.copyload.i390, 0
  br i1 %.not393, label %.preheader187, label %.lr.ph399

.lr.ph399:                                        ; preds = %bb.bd, %.lr.ph399
  %.sroa.6.0.copyload.i397 = phi i32 [ %.sroa.6.0.copyload.i, %.lr.ph399 ], [ %.sroa.6.0.copyload.i392, %bb.bd ] ; 2 uses
  %.sroa.4.0.copyload.i396 = phi i32 [ %.sroa.4.0.copyload.i, %.lr.ph399 ], [ %.sroa.4.0.copyload.i390, %bb.bd ] ; 2 uses
  %i.uh = phi i64 [ %i.ur, %.lr.ph399 ], [ %i.ud, %bb.bd ]
  %i.ui = phi i64 [ %i.up, %.lr.ph399 ], [ %i.ub, %bb.bd ]
  %.0442.i395 = phi i32 [ %i.uo, %.lr.ph399 ], [ %.5.i172, %bb.bd ]
  %.0444.i394 = phi i32 [ %i.uk, %.lr.ph399 ], [ %i.tz, %bb.bd ]
  %i.uj = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.ui
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.uj, i64 16
  %i.uk = add i32 %.0444.i394, -1                 ; 4 uses
  %i.ul = zext i32 %i.uk to i64
  %i.um = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.ul ; 4 uses
  store i64 %i.uh, ptr %i.um, align 4
  %.sroa.4.0..sroa_idx20.i = getelementptr inbounds nuw i8, ptr %i.um, i64 8
  store i32 %.sroa.4.0.copyload.i396, ptr %.sroa.4.0..sroa_idx20.i, align 4, !tbaa !3
  %.sroa.6.0..sroa_idx23.i = getelementptr inbounds nuw i8, ptr %i.um, i64 12
  store i32 %.sroa.6.0.copyload.i397, ptr %.sroa.6.0..sroa_idx23.i, align 4, !tbaa !3
  %.sroa.8.0..sroa_idx26.i = getelementptr inbounds nuw i8, ptr %i.um, i64 16
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.0..sroa_idx26.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.0..sroa_idx.i, i64 12, i1 false)
  %i.un = add i32 %.sroa.4.0.copyload.i396, %.sroa.6.0.copyload.i397
  %i.uo = sub i32 %.0442.i395, %i.un              ; 2 uses
  %i.up = zext i32 %i.uo to i64                   ; 2 uses
  %i.uq = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.up ; 3 uses
  %i.ur = load i64, ptr %i.uq, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.uq, i64 8
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !3 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.uq, i64 12
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i, align 4, !tbaa !3 ; 2 uses
  %i.us = zext i32 %i.uk to i64
  %i.ut = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.us
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 12
  store i32 %.sroa.6.0.copyload.i, ptr %i.uu, align 4, !tbaa !40
  %.not = icmp eq i32 %.sroa.4.0.copyload.i, 0
  br i1 %.not, label %.preheader187, label %.lr.ph399

.preheader187:                                    ; preds = %.lr.ph399, %bb.bd
  %.0444.i.lcssa = phi i32 [ %i.tz, %bb.bd ], [ %i.uk, %.lr.ph399 ] ; 2 uses
  %.not499.i228 = icmp ugt i32 %.0444.i.lcssa, %i.tz
  br i1 %.not499.i228, label %._crit_edge234, label %.lr.ph233

.lr.ph233:                                        ; preds = %.preheader187, %bb.by
  %.1438.i230 = phi ptr [ %.2439.i, %bb.by ], [ %.0437.i238, %.preheader187 ] ; 17 uses
  %.0441.i229 = phi i32 [ %i.abz, %bb.by ], [ %.0444.i.lcssa, %.preheader187 ] ; 2 uses
  %.1438.i230402 = ptrtoint ptr %.1438.i230 to i64 ; 3 uses
  %i.uv = zext i32 %.0441.i229 to i64
  %i.uw = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.uv ; 3 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 12
  %i.uy = load i32, ptr %i.ux, align 4, !tbaa !40 ; 14 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uw, i64 8
  %i.va = load i32, ptr %i.uz, align 4, !tbaa !38 ; 4 uses
  %i.vb = icmp eq i32 %i.va, 0
  br i1 %i.vb, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %.lr.ph233
  %i.vc = zext i32 %i.uy to i64
  %i.vd = getelementptr inbounds nuw i8, ptr %.1438.i230, i64 %i.vc
  br label %bb.by

bb.bf:                                            ; preds = %.lr.ph233
  %i.ve = add i32 %i.va, %i.uy
  %i.vf = getelementptr inbounds nuw i8, ptr %i.uw, i64 4
  %i.vg = load i32, ptr %i.vf, align 4, !tbaa !50 ; 2 uses
  %.val.i50 = load i32, ptr %i.be, align 8, !tbaa !57
  %.not22.i = icmp eq i32 %.val.i50, 2
  br i1 %.not22.i, label %bb.bi, label %.preheader.i

.preheader.i:                                     ; preds = %bb.bf
  %.not.i51 = icmp eq i32 %i.uy, 0
  br i1 %.not.i51, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.vh = load ptr, ptr %i.d, align 8, !tbaa !59  ; 5 uses
  %wide.trip.count.i = zext i32 %i.uy to i64      ; 2 uses
  %xtraiter436 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.vi = icmp ult i32 %i.uy, 4
  br i1 %i.vi, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter439 = and i64 %wide.trip.count.i, 4294967292
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bg, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.bg ] ; 5 uses
  %niter440 = phi i64 [ 0, %.lr.ph.i.new ], [ %niter440.next.3, %bb.bg ]
  %i.vj = getelementptr inbounds nuw i8, ptr %.1438.i230, i64 %indvars.iv.i
  %i.vk = load i8, ptr %i.vj, align 1, !tbaa !44
  %i.vl = zext i8 %i.vk to i64
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %i.vh, i64 %i.vl ; 2 uses
  %i.vn = load i32, ptr %i.vm, align 4, !tbaa !3
  %i.vo = add i32 %i.vn, 2
  store i32 %i.vo, ptr %i.vm, align 4, !tbaa !3
  %i.vp = getelementptr inbounds nuw i8, ptr %.1438.i230, i64 %indvars.iv.i
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 1
  %i.vr = load i8, ptr %i.vq, align 1, !tbaa !44
  %i.vs = zext i8 %i.vr to i64
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %i.vh, i64 %i.vs ; 2 uses
  %i.vu = load i32, ptr %i.vt, align 4, !tbaa !3
  %i.vv = add i32 %i.vu, 2
  store i32 %i.vv, ptr %i.vt, align 4, !tbaa !3
  %i.vw = getelementptr inbounds nuw i8, ptr %.1438.i230, i64 %indvars.iv.i
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 2
  %i.vy = load i8, ptr %i.vx, align 1, !tbaa !44
  %i.vz = zext i8 %i.vy to i64
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %i.vh, i64 %i.vz ; 2 uses
  %i.wb = load i32, ptr %i.wa, align 4, !tbaa !3
  %i.wc = add i32 %i.wb, 2
  store i32 %i.wc, ptr %i.wa, align 4, !tbaa !3
  %i.wd = getelementptr inbounds nuw i8, ptr %.1438.i230, i64 %indvars.iv.i
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 3
  %i.wf = load i8, ptr %i.we, align 1, !tbaa !44
  %i.wg = zext i8 %i.wf to i64
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %i.vh, i64 %i.wg ; 2 uses
  %i.wi = load i32, ptr %i.wh, align 4, !tbaa !3
  %i.wj = add i32 %i.wi, 2
  store i32 %i.wj, ptr %i.wh, align 4, !tbaa !3
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter440.next.3 = add i64 %niter440, 4         ; 2 uses
  %niter440.ncmp.3 = icmp eq i64 %niter440.next.3, %unroll_iter439
  br i1 %niter440.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.bg, !llvm.loop !71

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.bg
  %lcmp.mod437.not = icmp eq i64 %xtraiter436, 0
  br i1 %lcmp.mod437.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.3, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod438 = icmp ne i64 %xtraiter436, 0
  call void @llvm.assume(i1 %lcmp.mod438)
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bh, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.bh ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bh ]
  %i.wk = getelementptr inbounds nuw i8, ptr %.1438.i230, i64 %indvars.iv.i.epil
  %i.wl = load i8, ptr %i.wk, align 1, !tbaa !44
  %i.wm = zext i8 %i.wl to i64
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %i.vh, i64 %i.wm ; 2 uses
  %i.wo = load i32, ptr %i.wn, align 4, !tbaa !3
  %i.wp = add i32 %i.wo, 2
  store i32 %i.wp, ptr %i.wn, align 4, !tbaa !3
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter436
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %bb.bh, !llvm.loop !72

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %bb.bh, %.preheader.i
  %i.wq = shl i32 %i.uy, 1
  %i.wr = load i32, ptr %i.bi, align 8, !tbaa !73
  %i.ws = add i32 %i.wr, %i.wq
  store i32 %i.ws, ptr %i.bi, align 8, !tbaa !73
  br label %bb.bi

bb.bi:                                            ; preds = %._crit_edge.i, %bb.bf
  %i.wt = icmp ugt i32 %i.uy, 63
  br i1 %i.wt, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.wu = call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.uy, i1 true)
  %i.wv = sub nuw nsw i32 50, %i.wu
  br label %_ZN11duckdb_zstdL11ZSTD_LLcodeEj.exit.i52

bb.bk:                                            ; preds = %bb.bi
  %i.ww = zext nneg i32 %i.uy to i64
  %i.wx = getelementptr inbounds nuw i8, ptr @_ZZN11duckdb_zstdL11ZSTD_LLcodeEjE7LL_Code, i64 %i.ww
  %i.wy = load i8, ptr %i.wx, align 1, !tbaa !44
  %i.wz = zext i8 %i.wy to i32
  br label %_ZN11duckdb_zstdL11ZSTD_LLcodeEj.exit.i52

_ZN11duckdb_zstdL11ZSTD_LLcodeEj.exit.i52:        ; preds = %bb.bk, %bb.bj
  %i.xa = phi i32 [ %i.wv, %bb.bj ], [ %i.wz, %bb.bk ]
  %i.xb = load ptr, ptr %i.ay, align 8, !tbaa !43
  %i.xc = zext nneg i32 %i.xa to i64
  %i.xd = getelementptr inbounds nuw [4 x i8], ptr %i.xb, i64 %i.xc ; 2 uses
  %i.xe = load i32, ptr %i.xd, align 4, !tbaa !3
  %i.xf = add i32 %i.xe, 1
  store i32 %i.xf, ptr %i.xd, align 4, !tbaa !3
end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstdL23ZSTD_compressBlock_opt2EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvmNS_15ZSTD_dictMode_eE:bb.a
  %indvars.iv382 = phi i64 [ %indvars.iv.next383.3, %.lr.ph318.us ], [ %indvars.iv382.unr, %.lr.ph318.us.prol.loopexit ] ; 4 uses
  %i.xb = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv382 ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 28
  store i32 1073741824, ptr %i.xc, align 4, !tbaa !45
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xb, i64 40
  store i32 1, ptr %i.xd, align 4, !tbaa !40
  %i.xe = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv382 ; 2 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 56
  store i32 1073741824, ptr %i.xf, align 4, !tbaa !45
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xe, i64 68
  store i32 1, ptr %i.xg, align 4, !tbaa !40
  %i.xh = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv382 ; 2 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 84
  store i32 1073741824, ptr %i.xi, align 4, !tbaa !45
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xh, i64 96
  store i32 1, ptr %i.xj, align 4, !tbaa !40
  %indvars.iv.next383.3 = add nuw nsw i64 %indvars.iv382, 4 ; 4 uses
  %i.xk = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv.next383.3 ; 2 uses
  store i32 1073741824, ptr %i.xk, align 4, !tbaa !45
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 12
  store i32 1, ptr %i.xl, align 4, !tbaa !40
  %i.xm = icmp samesign ult i64 %indvars.iv.next383.3, %i.wp
  br i1 %i.xm, label %.lr.ph318.us, label %._crit_edge319.us.loopexit, !llvm.loop !65

.lr.ph325.split:                                  ; preds = %.lr.ph325
  %i.xn = zext nneg i32 %i.vu to i64
  %i.xo = load i32, ptr %i.ba, align 4, !tbaa !52
  %i.xp = load ptr, ptr %i.bb, align 8, !tbaa !53
  %i.xq = getelementptr inbounds nuw [4 x i8], ptr %i.xp, i64 %i.xn
  %i.xr = load i32, ptr %i.bc, align 8, !tbaa !54
  %i.xs = load ptr, ptr %i.bd, align 8, !tbaa !55
  %.neg274 = add i32 %i.xo, 51
  %invariant.op329 = add i32 %.neg274, %i.xr
  %i.xt = add i32 %.3449.i335, %i.vn
  br label %bb.bf

bb.bf:                                            ; preds = %.lr.ph325.split, %bb.bj
  %indvar = phi i32 [ 0, %.lr.ph325.split ], [ %indvar.next, %bb.bj ] ; 2 uses
  %.9.i323 = phi i32 [ %.8.i332, %.lr.ph325.split ], [ %.12.i, %bb.bj ] ; 4 uses
  %.0470.i322 = phi i32 [ %i.vn, %.lr.ph325.split ], [ %i.aag, %bb.bj ] ; 4 uses
  %i.xu = sub i32 %i.xt, %indvar
  %i.xv = zext i32 %i.xu to i64                   ; 2 uses
  %i.xw = add i32 %.0470.i322, %.3449.i335        ; 4 uses
  %i.xx = add i32 %.0470.i322, -3                 ; 3 uses
  %i.xy = load i32, ptr %i.xq, align 4, !tbaa !3
  %i.xz = add i32 %i.xy, 1                        ; 2 uses
  %i.ya = call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.xz, i1 true)
  %i.yb = xor i32 %i.ya, 31                       ; 2 uses
  %i.yc = shl i32 %i.xz, 8
  %i.yd = lshr i32 %i.yc, %i.yb
  %i.ye = icmp ugt i32 %i.xx, 127
  br i1 %i.ye, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.yf = call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.xx, i1 true)
  %i.yg = sub nuw nsw i32 67, %i.yf
  br label %_ZN11duckdb_zstdL11ZSTD_MLcodeEj.exit97

bb.bh:                                            ; preds = %bb.bf
  %i.yh = zext nneg i32 %i.xx to i64
  %i.yi = getelementptr inbounds nuw i8, ptr @_ZZN11duckdb_zstdL11ZSTD_MLcodeEjE7ML_Code, i64 %i.yh
  %i.yj = load i8, ptr %i.yi, align 1, !tbaa !44
  %i.yk = zext i8 %i.yj to i32
  br label %_ZN11duckdb_zstdL11ZSTD_MLcodeEj.exit97

_ZN11duckdb_zstdL11ZSTD_MLcodeEj.exit97:          ; preds = %bb.bg, %bb.bh
  %i.yl = phi i32 [ %i.yg, %bb.bg ], [ %i.yk, %bb.bh ]
  %i.ym = zext nneg i32 %i.yl to i64              ; 2 uses
  %i.yn = getelementptr inbounds nuw i8, ptr @_ZN11duckdb_zstdL7ML_bitsE, i64 %i.ym
  %i.yo = load i8, ptr %i.yn, align 1, !tbaa !44
  %i.yp = zext i8 %i.yo to i32
  %i.yq = getelementptr inbounds nuw [4 x i8], ptr %i.xs, i64 %i.ym
  %i.yr = load i32, ptr %i.yq, align 4, !tbaa !3
  %i.ys = add i32 %i.yr, 1                        ; 2 uses
  %i.yt = call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ys, i1 true)
  %i.yu = xor i32 %i.yt, 31                       ; 2 uses
  %i.yv = shl i32 %i.ys, 8
  %i.yw = lshr i32 %i.yv, %i.yu
  %i.yx = add nuw nsw i32 %i.vu, %i.yp
  %i.yy = add nuw nsw i32 %i.yb, %i.yu
  %reass.add283 = sub nsw i32 %i.yx, %i.yy
  %reass.mul284 = shl nsw i32 %reass.add283, 8
  %i.yz = add i32 %i.yd, %i.yw
  %i.za = sub i32 %invariant.op329, %i.yz
  %i.zb = add i32 %i.za, %reass.mul284
  %i.zc = add nsw i32 %i.ur, %i.zb                ; 2 uses
  %i.zd = icmp ugt i32 %i.xw, %.9.i323
  br i1 %i.zd, label %.lr.ph318.preheader, label %bb.bi

bb.bi:                                            ; preds = %_ZN11duckdb_zstdL11ZSTD_MLcodeEj.exit97
  %i.ze = zext i32 %i.xw to i64
  %i.zf = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.ze
  %i.zg = load i32, ptr %i.zf, align 4, !tbaa !45
  %i.zh = icmp slt i32 %i.zc, %i.zg
  br i1 %i.zh, label %.._crit_edge319_crit_edge, label %bb.bj

.._crit_edge319_crit_edge:                        ; preds = %bb.bi
  %.pre403 = zext i32 %i.xw to i64
  br label %._crit_edge319

.lr.ph318.preheader:                              ; preds = %_ZN11duckdb_zstdL11ZSTD_MLcodeEj.exit97
  %i.zi = zext i32 %.9.i323 to i64                ; 4 uses
  %i.zj = zext i32 %i.xw to i64                   ; 2 uses
  %i.zk = sub nsw i64 %i.xv, %i.zi
  %xtraiter555 = and i64 %i.zk, 3                 ; 2 uses
  %lcmp.mod556.not = icmp eq i64 %xtraiter555, 0
  br i1 %lcmp.mod556.not, label %.lr.ph318.prol.loopexit, label %.lr.ph318.prol

.lr.ph318.prol:                                   ; preds = %.lr.ph318.preheader, %.lr.ph318.prol
  %indvars.iv379.prol = phi i64 [ %indvars.iv.next380.prol, %.lr.ph318.prol ], [ %i.zi, %.lr.ph318.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph318.prol ], [ 0, %.lr.ph318.preheader ]
  %indvars.iv.next380.prol = add nuw nsw i64 %indvars.iv379.prol, 1 ; 4 uses
  %i.zl = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv.next380.prol ; 2 uses
  store i32 1073741824, ptr %i.zl, align 4, !tbaa !45
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 12
  store i32 1, ptr %i.zm, align 4, !tbaa !40
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter555
  br i1 %prol.iter.cmp.not, label %.lr.ph318.prol.loopexit, label %.lr.ph318.prol, !llvm.loop !102

.lr.ph318.prol.loopexit:                          ; preds = %.lr.ph318.prol, %.lr.ph318.preheader
  %indvars.iv379.unr = phi i64 [ %i.zi, %.lr.ph318.preheader ], [ %indvars.iv.next380.prol, %.lr.ph318.prol ]
  %indvars.iv.next380.lcssa.unr = phi i64 [ poison, %.lr.ph318.preheader ], [ %indvars.iv.next380.prol, %.lr.ph318.prol ]
  %i.zn = sub nsw i64 %i.zi, %i.xv
  %i.zo = icmp ugt i64 %i.zn, -4
  br i1 %i.zo, label %._crit_edge319.loopexit, label %.lr.ph318

.lr.ph318:                                        ; preds = %.lr.ph318.prol.loopexit, %.lr.ph318
  %indvars.iv379 = phi i64 [ %indvars.iv.next380.3, %.lr.ph318 ], [ %indvars.iv379.unr, %.lr.ph318.prol.loopexit ] ; 4 uses
  %i.zp = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv379 ; 2 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zp, i64 28
  store i32 1073741824, ptr %i.zq, align 4, !tbaa !45
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zp, i64 40
  store i32 1, ptr %i.zr, align 4, !tbaa !40
  %i.zs = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv379 ; 2 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 56
  store i32 1073741824, ptr %i.zt, align 4, !tbaa !45
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zs, i64 68
  store i32 1, ptr %i.zu, align 4, !tbaa !40
  %i.zv = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv379 ; 2 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 84
  store i32 1073741824, ptr %i.zw, align 4, !tbaa !45
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zv, i64 96
  store i32 1, ptr %i.zx, align 4, !tbaa !40
  %indvars.iv.next380.3 = add nuw nsw i64 %indvars.iv379, 4 ; 4 uses
  %i.zy = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv.next380.3 ; 2 uses
  store i32 1073741824, ptr %i.zy, align 4, !tbaa !45
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 12
  store i32 1, ptr %i.zz, align 4, !tbaa !40
  %i.aaa = icmp samesign ult i64 %indvars.iv.next380.3, %i.zj
  br i1 %i.aaa, label %.lr.ph318, label %._crit_edge319.loopexit, !llvm.loop !65

._crit_edge319.loopexit:                          ; preds = %.lr.ph318, %.lr.ph318.prol.loopexit
  %indvars.iv.next380.lcssa = phi i64 [ %indvars.iv.next380.lcssa.unr, %.lr.ph318.prol.loopexit ], [ %indvars.iv.next380.3, %.lr.ph318 ]
  %i.aab = trunc nuw i64 %indvars.iv.next380.lcssa to i32
  br label %._crit_edge319

._crit_edge319:                                   ; preds = %.._crit_edge319_crit_edge, %._crit_edge319.loopexit
  %.pre-phi404 = phi i64 [ %.pre403, %.._crit_edge319_crit_edge ], [ %i.zj, %._crit_edge319.loopexit ]
  %.10.i.lcssa = phi i32 [ %.9.i323, %.._crit_edge319_crit_edge ], [ %i.aab, %._crit_edge319.loopexit ]
  %i.aac = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %.pre-phi404 ; 4 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 8
  store i32 %.0470.i322, ptr %i.aad, align 4, !tbaa !38
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aac, i64 4
  store i32 %i.vl, ptr %i.aae, align 4, !tbaa !50
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aac, i64 12
  store i32 0, ptr %i.aaf, align 4, !tbaa !40
  store i32 %i.zc, ptr %i.aac, align 4, !tbaa !45
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %._crit_edge319
  %.12.i = phi i32 [ %.10.i.lcssa, %._crit_edge319 ], [ %.9.i323, %bb.bi ] ; 2 uses
  %i.aag = add i32 %.0470.i322, -1                ; 2 uses
  %.not497.i = icmp ult i32 %i.aag, %i.vs
  %indvar.next = add i32 %indvar, 1
  br i1 %.not497.i, label %._crit_edge326, label %bb.bf, !llvm.loop !64

._crit_edge326:                                   ; preds = %bb.bj, %bb.be, %bb.bc
  %.9.i.lcssa = phi i32 [ %.8.i332, %bb.bc ], [ %.12.i.us, %bb.be ], [ %.12.i, %bb.bj ] ; 3 uses
  %indvars.iv.next386 = add nuw nsw i64 %indvars.iv385, 1 ; 2 uses
  %exitcond389.not = icmp eq i64 %indvars.iv.next386, %wide.trip.count388
  br i1 %exitcond389.not, label %bb.bk, label %.preheader, !llvm.loop !67

bb.bk:                                            ; preds = %._crit_edge326
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  %i.aah = add i32 %.9.i.lcssa, 1
  %i.aai = zext i32 %i.aah to i64
  %i.aaj = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.aai
  store i32 1073741824, ptr %i.aaj, align 4, !tbaa !45
  br label %.thread185

.thread185:                                       ; preds = %bb.bk, %bb.aw, %.thread201
  %.15.i191 = phi i32 [ %.6457.i, %.thread201 ], [ %.9.i.lcssa, %bb.bk ], [ %.6457.i, %bb.aw ] ; 3 uses
  %i.aak = add i32 %.3449.i335, 1                 ; 2 uses
  %.not491.i = icmp ugt i32 %i.aak, %.15.i191
  br i1 %.not491.i, label %bb.bl, label %.lr.ph337, !llvm.loop !68

bb.bl:                                            ; preds = %bb.ax, %.thread185
  %.16.i.ph = phi i32 [ %.15.i191, %.thread185 ], [ %.3449.i335, %bb.ax ] ; 3 uses
  %i.aal = zext i32 %.16.i.ph to i64
  %i.aam = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.aal ; 4 uses
  %.sroa.0214.0.copyload.i = load i32, ptr %i.aam, align 4, !tbaa !3 ; 4 uses
  %.sroa.6217.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aam, i64 4
  %.sroa.6217.0.copyload.i = load i32, ptr %.sroa.6217.0..sroa_idx.i, align 4, !tbaa !3 ; 3 uses
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aam, i64 8
  %10 = load <2 x i32>, ptr %.sroa.9.0..sroa_idx.i, align 4, !tbaa !3 ; 3 uses
  %11 = extractelement <2 x i32> %10, i64 1       ; 4 uses
  %12 = extractelement <2 x i32> %10, i64 0       ; 4 uses
  %.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aam, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.19.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.19.0..sroa_idx.i, i64 12, i1 false), !tbaa.struct !69
  %i.aan = sub i32 %.16.i.ph, %12                 ; 2 uses
  %i.aao = icmp eq i32 %12, 0
  br i1 %i.aao, label %bb.bm, label %bb.bn

.thread463:                                       ; preds = %bb.ba
  %i.aap = load i32, ptr %i.vc, align 4, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  %i.aaq = icmp eq i32 %i.ve, 0
  br i1 %i.aaq, label %bb.bm, label %._crit_edge391

bb.bm:                                            ; preds = %.thread463, %bb.bl
  %.sroa.0214.1.i475 = phi i32 [ %.sroa.0214.0.i350, %.thread463 ], [ %.sroa.0214.0.copyload.i, %bb.bl ]
  %.17.i470 = phi i32 [ %i.vg, %.thread463 ], [ %.16.i.ph, %bb.bl ]
  %i.aar = zext i32 %.17.i470 to i64
  %i.aas = getelementptr inbounds nuw i8, ptr %.0.i352, i64 %i.aar
  br label %bb.cs, !llvm.loop !70

bb.bn:                                            ; preds = %bb.bl
  %i.aat = icmp eq i32 %11, 0
  br i1 %i.aat, label %._crit_edge391, label %bb.bu

._crit_edge391:                                   ; preds = %.thread463, %bb.bn
  %.4450.i471486 = phi i32 [ %i.aan, %bb.bn ], [ %.3449.i335, %.thread463 ] ; 2 uses
  %.sroa.9.7.i473485 = phi i32 [ %12, %bb.bn ], [ %i.ve, %.thread463 ]
  %.sroa.6217.7.i474484 = phi i32 [ %.sroa.6217.0.copyload.i, %bb.bn ], [ %i.aap, %.thread463 ]
  %.sroa.0214.1.i476483 = phi i32 [ %.sroa.0214.0.copyload.i, %bb.bn ], [ %.sroa.0214.0.i350, %.thread463 ]
  %.phi.trans.insert392 = zext i32 %.4450.i471486 to i64
  %.phi.trans.insert393 = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %.phi.trans.insert392
  %.phi.trans.insert394 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert393, i64 12
  %.pre395 = load i32, ptr %.phi.trans.insert394, align 4, !tbaa !40
  br label %bb.bo

bb.bo:                                            ; preds = %._crit_edge391, %.thread219
  %i.aau = phi i32 [ %i.bx, %.thread219 ], [ %.pre395, %._crit_edge391 ]
  %.4450.i214233 = phi i32 [ 0, %.thread219 ], [ %.4450.i471486, %._crit_edge391 ] ; 3 uses
  %.sroa.9.7.i216230 = phi i32 [ %i.ed, %.thread219 ], [ %.sroa.9.7.i473485, %._crit_edge391 ]
  %.sroa.6217.7.i217228 = phi i32 [ %i.ee, %.thread219 ], [ %.sroa.6217.7.i474484, %._crit_edge391 ] ; 4 uses
  %.sroa.0214.1.i218226 = phi i32 [ %.sroa.0214.0.i350, %.thread219 ], [ %.sroa.0214.1.i476483, %._crit_edge391 ]
  %i.aav = zext i32 %.4450.i214233 to i64
  %i.aaw = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.aav
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaw, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.aax, i64 12, i1 false)
  %i.aay = icmp ugt i32 %.sroa.6217.7.i217228, 3
  br i1 %i.aay, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.aaz = load i32, ptr %i.bi, align 4, !tbaa !3
  %i.aba = load i32, ptr %6, align 8, !tbaa !3
  store i32 %i.aba, ptr %i.bi, align 4, !tbaa !3
  %i.abb = add i32 %.sroa.6217.7.i217228, -3
  br label %.sink.split.i.i101

bb.bq:                                            ; preds = %bb.bo
  %i.abc = icmp eq i32 %i.aau, 0
  %i.abd = zext i1 %i.abc to i32
  %i.abe = add nsw i32 %.sroa.6217.7.i217228, -1
  %i.abf = add nsw i32 %i.abe, %i.abd             ; 3 uses
  switch i32 %i.abf, label %bb.bs [
    i32 0, label %._ZN11duckdb_zstdL14ZSTD_updateRepEPjjj.exit_crit_edge.i108
    i32 3, label %bb.br
  ]

._ZN11duckdb_zstdL14ZSTD_updateRepEPjjj.exit_crit_edge.i108: ; preds = %bb.bq
  %.sroa.2.0.copyload.pre.i110 = load i32, ptr %.sroa.2.0..sroa_idx.phi.trans.insert.i109, align 8
  br label %.thread234

bb.br:                                            ; preds = %bb.bq
  %i.abg = load i32, ptr %6, align 8, !tbaa !3    ; 2 uses
  %i.abh = add i32 %i.abg, -1
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bq
  %i.abi = zext i32 %i.abf to i64
  %i.abj = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.abi
  %i.abk = load i32, ptr %i.abj, align 4, !tbaa !3
  %.pre.i.i111 = load i32, ptr %6, align 8, !tbaa !3
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.abl = phi i32 [ %i.abg, %bb.br ], [ %.pre.i.i111, %bb.bs ]
  %i.abm = phi i32 [ %i.abh, %bb.br ], [ %i.abk, %bb.bs ]
  %.not22.i.i98 = icmp eq i32 %i.abf, 1
  %.val.i99 = load i32, ptr %.sroa.2.0..sroa_idx.phi.trans.insert.i109, align 8
  %.val2.i100 = load i32, ptr %i.bi, align 4
  %i.abn = select i1 %.not22.i.i98, i32 %.val.i99, i32 %.val2.i100
  store i32 %i.abl, ptr %i.bi, align 4, !tbaa !3
  br label %.sink.split.i.i101

.sink.split.i.i101:                               ; preds = %bb.bt, %bb.bp
  %.sroa.2.0.copyload4.i102 = phi i32 [ %i.abn, %bb.bt ], [ %i.aaz, %bb.bp ]
  %.sink.i.i103 = phi i32 [ %i.abm, %bb.bt ], [ %i.abb, %bb.bp ]
  store i32 %.sink.i.i103, ptr %6, align 8, !tbaa !3
  br label %.thread234

.thread234:                                       ; preds = %.sink.split.i.i101, %._ZN11duckdb_zstdL14ZSTD_updateRepEPjjj.exit_crit_edge.i108
  %.sroa.2.0.copyload.i104 = phi i32 [ %.sroa.2.0.copyload.pre.i110, %._ZN11duckdb_zstdL14ZSTD_updateRepEPjjj.exit_crit_edge.i108 ], [ %.sroa.2.0.copyload4.i102, %.sink.split.i.i101 ]
  %.sroa.0.0.copyload.i105 = load i64, ptr %6, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  store i64 %.sroa.0.0.copyload.i105, ptr %2, align 4
  store i32 %.sroa.2.0.copyload.i104, ptr %.sroa.443.0..sroa_idx.i, align 4
  %i.abo = add i32 %.4450.i214233, 2              ; 2 uses
  %.pre399 = zext i32 %i.abo to i64
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bn
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.19.0..sroa_idx.i, i64 12, i1 false)
  %i.abp = sub i32 %i.aan, %11                    ; 3 uses
  %i.abq = add i32 %i.abp, 2                      ; 2 uses
  %i.abr = zext i32 %i.abq to i64                 ; 2 uses
  %i.abs = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.abr ; 2 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abs, i64 12
  store i32 %11, ptr %i.abt, align 4, !tbaa !40
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abs, i64 8
  store i32 0, ptr %i.abu, align 4, !tbaa !38
  %i.abv = add i32 %i.abp, 1
  %i.abw = zext i32 %i.abv to i64
  %i.abx = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.abw ; 4 uses
  store i32 %.sroa.0214.0.copyload.i, ptr %i.abx, align 4, !tbaa !3
  %.sroa.9.0..sroa_idx222.i.a = getelementptr inbounds nuw i8, ptr %i.abx, i64 4
  store i32 %.sroa.6217.0.copyload.i, ptr %.sroa.9.0..sroa_idx222.i.a, align 4, !tbaa !3
  %.sroa.13.0..sroa_idx227.i = getelementptr inbounds nuw i8, ptr %i.abx, i64 8
  store <2 x i32> %10, ptr %.sroa.13.0..sroa_idx227.i, align 4, !tbaa !3
  %.sroa.19.0..sroa_idx234.i = getelementptr inbounds nuw i8, ptr %i.abx, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.19.0..sroa_idx234.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.19.i, i64 12, i1 false), !tbaa.struct !69
  br label %bb.bv

bb.bv:                                            ; preds = %.thread234, %bb.bu
  %.pre-phi400 = phi i64 [ %.pre399, %.thread234 ], [ %i.abr, %bb.bu ]
  %i.aby = phi i32 [ %i.abo, %.thread234 ], [ %i.abq, %bb.bu ] ; 5 uses
  %.5.i244 = phi i32 [ %.4450.i214233, %.thread234 ], [ %i.abp, %bb.bu ] ; 2 uses
  %.sroa.0214.1.i218225243 = phi i32 [ %.sroa.0214.1.i218226, %.thread234 ], [ %.sroa.0214.0.copyload.i, %bb.bu ] ; 2 uses
  %.sroa.6217.7.i217227242 = phi i32 [ %.sroa.6217.7.i217228, %.thread234 ], [ %.sroa.6217.0.copyload.i, %bb.bu ]
  %.sroa.9.7.i216229241 = phi i32 [ %.sroa.9.7.i216230, %.thread234 ], [ %12, %bb.bu ]
  %.sroa.13.7.i215231240 = phi i32 [ 0, %.thread234 ], [ %11, %bb.bu ]
  %i.abz = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %.pre-phi400 ; 5 uses
  store i32 %.sroa.0214.1.i218225243, ptr %i.abz, align 4, !tbaa !3
  %.sroa.6217.0..sroa_idx220.i = getelementptr inbounds nuw i8, ptr %i.abz, i64 4
  store i32 %.sroa.6217.7.i217227242, ptr %.sroa.6217.0..sroa_idx220.i, align 4, !tbaa !3
  %.sroa.9.0..sroa_idx224.i = getelementptr inbounds nuw i8, ptr %i.abz, i64 8
  store i32 %.sroa.9.7.i216229241, ptr %.sroa.9.0..sroa_idx224.i, align 4, !tbaa !3
  %.sroa.13.0..sroa_idx229.i = getelementptr inbounds nuw i8, ptr %i.abz, i64 12
  store i32 %.sroa.13.7.i215231240, ptr %.sroa.13.0..sroa_idx229.i, align 4, !tbaa !3
  %.sroa.19.0..sroa_idx235.i = getelementptr inbounds nuw i8, ptr %i.abz, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.19.0..sroa_idx235.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.19.i, i64 12, i1 false), !tbaa.struct !69
  %i.aca = zext i32 %.5.i244 to i64               ; 2 uses
  %i.acb = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.aca ; 3 uses
  %i.acc = load i64, ptr %i.acb, align 4
  %.sroa.4.0..sroa_idx.i510 = getelementptr inbounds nuw i8, ptr %i.acb, i64 8
  %.sroa.4.0.copyload.i511 = load i32, ptr %.sroa.4.0..sroa_idx.i510, align 4, !tbaa !3 ; 2 uses
  %.sroa.6.0..sroa_idx.i512 = getelementptr inbounds nuw i8, ptr %i.acb, i64 12
  %.sroa.6.0.copyload.i513 = load i32, ptr %.sroa.6.0..sroa_idx.i512, align 4, !tbaa !3 ; 2 uses
  %i.acd = zext i32 %i.aby to i64
  %i.ace = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.acd
  %i.acf = getelementptr inbounds nuw i8, ptr %i.ace, i64 12
  store i32 %.sroa.6.0.copyload.i513, ptr %i.acf, align 4, !tbaa !40
  %.not514 = icmp eq i32 %.sroa.4.0.copyload.i511, 0
  br i1 %.not514, label %.preheader305, label %.lr.ph520

.lr.ph520:                                        ; preds = %bb.bv, %.lr.ph520
  %.sroa.6.0.copyload.i518 = phi i32 [ %.sroa.6.0.copyload.i, %.lr.ph520 ], [ %.sroa.6.0.copyload.i513, %bb.bv ] ; 2 uses
  %.sroa.4.0.copyload.i517 = phi i32 [ %.sroa.4.0.copyload.i, %.lr.ph520 ], [ %.sroa.4.0.copyload.i511, %bb.bv ] ; 2 uses
  %i.acg = phi i64 [ %i.acq, %.lr.ph520 ], [ %i.acc, %bb.bv ]
  %i.ach = phi i64 [ %i.aco, %.lr.ph520 ], [ %i.aca, %bb.bv ]
  %.0442.i516 = phi i32 [ %i.acn, %.lr.ph520 ], [ %.5.i244, %bb.bv ]
  %.0444.i515 = phi i32 [ %i.acj, %.lr.ph520 ], [ %i.aby, %bb.bv ]
  %i.aci = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.ach
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aci, i64 16
  %i.acj = add i32 %.0444.i515, -1                ; 4 uses
  %i.ack = zext i32 %i.acj to i64
  %i.acl = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.ack ; 4 uses
  store i64 %i.acg, ptr %i.acl, align 4
  %.sroa.4.0..sroa_idx20.i = getelementptr inbounds nuw i8, ptr %i.acl, i64 8
  store i32 %.sroa.4.0.copyload.i517, ptr %.sroa.4.0..sroa_idx20.i, align 4, !tbaa !3
  %.sroa.6.0..sroa_idx23.i = getelementptr inbounds nuw i8, ptr %i.acl, i64 12
  store i32 %.sroa.6.0.copyload.i518, ptr %.sroa.6.0..sroa_idx23.i, align 4, !tbaa !3
  %.sroa.8.0..sroa_idx26.i = getelementptr inbounds nuw i8, ptr %i.acl, i64 16
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.0..sroa_idx26.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.0..sroa_idx.i, i64 12, i1 false)
  %i.acm = add i32 %.sroa.4.0.copyload.i517, %.sroa.6.0.copyload.i518
  %i.acn = sub i32 %.0442.i516, %i.acm            ; 2 uses
  %i.aco = zext i32 %i.acn to i64                 ; 2 uses
  %i.acp = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.aco ; 3 uses
  %i.acq = load i64, ptr %i.acp, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.acp, i64 8
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !3 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.acp, i64 12
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i, align 4, !tbaa !3 ; 2 uses
  %i.acr = zext i32 %i.acj to i64
  %i.acs = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.acr
  %i.act = getelementptr inbounds nuw i8, ptr %i.acs, i64 12
  store i32 %.sroa.6.0.copyload.i, ptr %i.act, align 4, !tbaa !40
  %.not = icmp eq i32 %.sroa.4.0.copyload.i, 0
  br i1 %.not, label %.preheader305, label %.lr.ph520

.preheader305:                                    ; preds = %.lr.ph520, %bb.bv
  %.0444.i.lcssa = phi i32 [ %i.aby, %bb.bv ], [ %i.acj, %.lr.ph520 ] ; 2 uses
  %.not499.i341 = icmp ugt i32 %.0444.i.lcssa, %i.aby
  br i1 %.not499.i341, label %._crit_edge347, label %.lr.ph346

.lr.ph346:                                        ; preds = %.preheader305, %bb.cq
  %.1438.i343 = phi ptr [ %.2439.i, %bb.cq ], [ %.0437.i351, %.preheader305 ] ; 17 uses
  %.0441.i342 = phi i32 [ %i.ajy, %bb.cq ], [ %.0444.i.lcssa, %.preheader305 ] ; 2 uses
  %.1438.i343523 = ptrtoint ptr %.1438.i343 to i64 ; 3 uses
  %i.acu = zext i32 %.0441.i342 to i64
  %i.acv = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.acu ; 3 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acv, i64 12
  %i.acx = load i32, ptr %i.acw, align 4, !tbaa !40 ; 14 uses
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acv, i64 8
  %i.acz = load i32, ptr %i.acy, align 4, !tbaa !38 ; 4 uses
  %i.ada = icmp eq i32 %i.acz, 0
  br i1 %i.ada, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %.lr.ph346
  %i.adb = zext i32 %i.acx to i64
  %i.adc = getelementptr inbounds nuw i8, ptr %.1438.i343, i64 %i.adb
  br label %bb.cq

bb.bx:                                            ; preds = %.lr.ph346
  %i.add = add i32 %i.acz, %i.acx
  %i.ade = getelementptr inbounds nuw i8, ptr %i.acv, i64 4
  %i.adf = load i32, ptr %i.ade, align 4, !tbaa !50 ; 2 uses
  %.val.i113 = load i32, ptr %i.be, align 8, !tbaa !57
  %.not22.i = icmp eq i32 %.val.i113, 2
  br i1 %.not22.i, label %bb.ca, label %.preheader.i

.preheader.i:                                     ; preds = %bb.bx
  %.not.i114 = icmp eq i32 %i.acx, 0
  br i1 %.not.i114, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.adg = load ptr, ptr %i.d, align 8, !tbaa !59 ; 5 uses
  %wide.trip.count.i = zext i32 %i.acx to i64     ; 2 uses
  %xtraiter562 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.adh = icmp ult i32 %i.acx, 4
  br i1 %i.adh, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter565 = and i64 %wide.trip.count.i, 4294967292
  br label %bb.by

bb.by:                                            ; preds = %bb.by, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.by ] ; 5 uses
  %niter566 = phi i64 [ 0, %.lr.ph.i.new ], [ %niter566.next.3, %bb.by ]
  %i.adi = getelementptr inbounds nuw i8, ptr %.1438.i343, i64 %indvars.iv.i
  %i.adj = load i8, ptr %i.adi, align 1, !tbaa !44
  %i.adk = zext i8 %i.adj to i64
  %i.adl = getelementptr inbounds nuw [4 x i8], ptr %i.adg, i64 %i.adk ; 2 uses
  %i.adm = load i32, ptr %i.adl, align 4, !tbaa !3
  %i.adn = add i32 %i.adm, 2
  store i32 %i.adn, ptr %i.adl, align 4, !tbaa !3
  %i.ado = getelementptr inbounds nuw i8, ptr %.1438.i343, i64 %indvars.iv.i
  %i.adp = getelementptr inbounds nuw i8, ptr %i.ado, i64 1
  %i.adq = load i8, ptr %i.adp, align 1, !tbaa !44
  %i.adr = zext i8 %i.adq to i64
  %i.ads = getelementptr inbounds nuw [4 x i8], ptr %i.adg, i64 %i.adr ; 2 uses
  %i.adt = load i32, ptr %i.ads, align 4, !tbaa !3
  %i.adu = add i32 %i.adt, 2
  store i32 %i.adu, ptr %i.ads, align 4, !tbaa !3
  %i.adv = getelementptr inbounds nuw i8, ptr %.1438.i343, i64 %indvars.iv.i
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adv, i64 2
  %i.adx = load i8, ptr %i.adw, align 1, !tbaa !44
  %i.ady = zext i8 %i.adx to i64
  %i.adz = getelementptr inbounds nuw [4 x i8], ptr %i.adg, i64 %i.ady ; 2 uses
  %i.aea = load i32, ptr %i.adz, align 4, !tbaa !3
  %i.aeb = add i32 %i.aea, 2
  store i32 %i.aeb, ptr %i.adz, align 4, !tbaa !3
  %i.aec = getelementptr inbounds nuw i8, ptr %.1438.i343, i64 %indvars.iv.i
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aec, i64 3
  %i.aee = load i8, ptr %i.aed, align 1, !tbaa !44
  %i.aef = zext i8 %i.aee to i64
  %i.aeg = getelementptr inbounds nuw [4 x i8], ptr %i.adg, i64 %i.aef ; 2 uses
  %i.aeh = load i32, ptr %i.aeg, align 4, !tbaa !3
  %i.aei = add i32 %i.aeh, 2
  store i32 %i.aei, ptr %i.aeg, align 4, !tbaa !3
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter566.next.3 = add i64 %niter566, 4         ; 2 uses
  %niter566.ncmp.3 = icmp eq i64 %niter566.next.3, %unroll_iter565
  br i1 %niter566.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.by, !llvm.loop !71

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.by
  %lcmp.mod563.not = icmp eq i64 %xtraiter562, 0
  br i1 %lcmp.mod563.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.3, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod564 = icmp ne i64 %xtraiter562, 0
  call void @llvm.assume(i1 %lcmp.mod564)
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bz, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.bz ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bz ]
  %i.aej = getelementptr inbounds nuw i8, ptr %.1438.i343, i64 %indvars.iv.i.epil
  %i.aek = load i8, ptr %i.aej, align 1, !tbaa !44
  %i.ael = zext i8 %i.aek to i64
  %i.aem = getelementptr inbounds nuw [4 x i8], ptr %i.adg, i64 %i.ael ; 2 uses
  %i.aen = load i32, ptr %i.aem, align 4, !tbaa !3
  %i.aeo = add i32 %i.aen, 2
  store i32 %i.aeo, ptr %i.aem, align 4, !tbaa !3
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter562
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %bb.bz, !llvm.loop !103

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %bb.bz, %.preheader.i
  %i.aep = shl i32 %i.acx, 1
  %i.aeq = load i32, ptr %i.bj, align 8, !tbaa !73
  %i.aer = add i32 %i.aeq, %i.aep
  store i32 %i.aer, ptr %i.bj, align 8, !tbaa !73
  br label %bb.ca

bb.ca:                                            ; preds = %._crit_edge.i, %bb.bx
  %i.aes = icmp ugt i32 %i.acx, 63
  br i1 %i.aes, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.aet = call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.acx, i1 true)
  %i.aeu = sub nuw nsw i32 50, %i.aet
  br label %_ZN11duckdb_zstdL11ZSTD_LLcodeEj.exit.i115

bb.cc:                                            ; preds = %bb.ca
  %i.aev = zext nneg i32 %i.acx to i64
  %i.aew = getelementptr inbounds nuw i8, ptr @_ZZN11duckdb_zstdL11ZSTD_LLcodeEjE7LL_Code, i64 %i.aev
  %i.aex = load i8, ptr %i.aew, align 1, !tbaa !44
  %i.aey = zext i8 %i.aex to i32
  br label %_ZN11duckdb_zstdL11ZSTD_LLcodeEj.exit.i115

_ZN11duckdb_zstdL11ZSTD_LLcodeEj.exit.i115:       ; preds = %bb.cc, %bb.cb
  %i.aez = phi i32 [ %i.aeu, %bb.cb ], [ %i.aey, %bb.cc ]
  %i.afa = load ptr, ptr %i.ay, align 8, !tbaa !43
  %i.afb = zext nneg i32 %i.aez to i64
  %i.afc = getelementptr inbounds nuw [4 x i8], ptr %i.afa, i64 %i.afb ; 2 uses
  %i.afd = load i32, ptr %i.afc, align 4, !tbaa !3
  %i.afe = add i32 %i.afd, 1
  store i32 %i.afe, ptr %i.afc, align 4, !tbaa !3
end_hunk_1
