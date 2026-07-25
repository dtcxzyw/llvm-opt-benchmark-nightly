inline.NumInlined: 262
inline.NumDeleted: 50
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 36
begin_hunk_0_@ZSTD_compressBlock_opt0:bb.a
  store i32 %i.hp, ptr %.phi.trans.insert, align 4, !tbaa !37
  store i32 %i.ky, ptr %i.kz, align 4, !tbaa !42
  br label %bb.ab

bb.ab:                                            ; preds = %ZSTD_litLengthPrice.exit28._crit_edge, %bb.aa
  %i.lb = phi i32 [ %i.la, %ZSTD_litLengthPrice.exit28._crit_edge ], [ %i.ky, %bb.aa ] ; 2 uses
  %i.lc = phi i32 [ %.pre275, %ZSTD_litLengthPrice.exit28._crit_edge ], [ %i.hp, %bb.aa ]
  %i.ld = icmp eq i32 %i.lc, 0                    ; 2 uses
  br i1 %i.ld, label %bb.ac, label %bb.ai

bb.ac:                                            ; preds = %bb.ab
  %i.le = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !35
  %i.lg = sub i32 %.3449.i222, %i.lf
  %i.lh = zext i32 %i.lg to i64
  %i.li = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.lh ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kz, i64 4
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !47 ; 3 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.li, i64 12
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.lj, i64 12, i1 false)
  %i.lo = icmp ugt i32 %i.ll, 3
  br i1 %i.lo, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.lp = load i32, ptr %i.bf, align 4, !tbaa !3
  %i.lq = load i32, ptr %7, align 8, !tbaa !3
  store i32 %i.lq, ptr %i.bf, align 4, !tbaa !3
  %i.lr = add i32 %i.ll, -3
  br label %.sink.split.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.ls = icmp eq i32 %i.ln, 0
  %i.lt = zext i1 %i.ls to i32
  %i.lu = add nsw i32 %i.ll, -1
  %i.lv = add nsw i32 %i.lu, %i.lt                ; 3 uses
  switch i32 %i.lv, label %bb.ag [
    i32 0, label %.ZSTD_updateRep.exit_crit_edge.i
    i32 3, label %bb.af
  ]

.ZSTD_updateRep.exit_crit_edge.i:                 ; preds = %bb.ae
  %.sroa.2.0.copyload.pre.i = load i32, ptr %.sroa.2.0..sroa_idx.phi.trans.insert.i, align 8
  br label %ZSTD_newRep.exit

bb.af:                                            ; preds = %bb.ae
  %i.lw = load i32, ptr %7, align 8, !tbaa !3     ; 2 uses
  %i.lx = add i32 %i.lw, -1
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.ly = zext i32 %i.lv to i64
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.ly
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !3
  %.pre.i.i = load i32, ptr %7, align 8, !tbaa !3
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.mb = phi i32 [ %i.lw, %bb.af ], [ %.pre.i.i, %bb.ag ]
  %i.mc = phi i32 [ %i.lx, %bb.af ], [ %i.ma, %bb.ag ]
  %.not22.i.i = icmp eq i32 %i.lv, 1
  %.val.i29 = load i32, ptr %.sroa.2.0..sroa_idx.phi.trans.insert.i, align 8
  %.val2.i = load i32, ptr %i.bf, align 4
  %i.md = select i1 %.not22.i.i, i32 %.val.i29, i32 %.val2.i
  store i32 %i.mb, ptr %i.bf, align 4, !tbaa !3
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.ah, %bb.ad
  %.sroa.2.0.copyload4.i = phi i32 [ %i.md, %bb.ah ], [ %i.lp, %bb.ad ]
  %.sink.i.i = phi i32 [ %i.mc, %bb.ah ], [ %i.lr, %bb.ad ]
  store i32 %.sink.i.i, ptr %7, align 8, !tbaa !3
  br label %ZSTD_newRep.exit

ZSTD_newRep.exit:                                 ; preds = %.ZSTD_updateRep.exit_crit_edge.i, %.sink.split.i.i
  %.sroa.2.0.copyload.i = phi i32 [ %.sroa.2.0.copyload.pre.i, %.ZSTD_updateRep.exit_crit_edge.i ], [ %.sroa.2.0.copyload4.i, %.sink.split.i.i ]
  %.sroa.0.0.copyload.i = load i64, ptr %7, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.me = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  store i64 %.sroa.0.0.copyload.i, ptr %i.me, align 4
  %.sroa.481.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kz, i64 24
  store i32 %.sroa.2.0.copyload.i, ptr %.sroa.481.0..sroa_idx.i, align 4
  br label %bb.ai

bb.ai:                                            ; preds = %ZSTD_newRep.exit, %bb.ab
  %i.mf = icmp ugt ptr %i.hj, %i.f
  br i1 %i.mf, label %..thread113_crit_edge, label %bb.aj

..thread113_crit_edge:                            ; preds = %bb.ai
  %.pre288 = add i32 %.3449.i222, 1
  br label %.thread113

bb.aj:                                            ; preds = %bb.ai
  %i.mg = icmp eq i32 %.3449.i222, %.2453.i221
  br i1 %i.mg, label %bb.aw, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.mh = add i32 %.3449.i222, 1                  ; 4 uses
  %i.mi = zext i32 %i.mh to i64
  %i.mj = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.mi
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !42
  %i.ml = add nsw i32 %i.lb, 128
  %.not493.i = icmp sgt i32 %i.mk, %i.ml
  br i1 %.not493.i, label %.split471.i, label %.thread113

.split471.i:                                      ; preds = %bb.ak
  %i.mm = load i32, ptr %i.av, align 8, !tbaa !38
  %i.mn = icmp eq i32 %i.mm, 1
  br i1 %i.mn, label %ZSTD_litLengthPrice.exit33, label %bb.al

bb.al:                                            ; preds = %.split471.i
  %i.mo = load i32, ptr %i.aw, align 4, !tbaa !39
  %i.mp = load ptr, ptr %i.ax, align 8, !tbaa !40
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !3
  %i.mr = add i32 %i.mq, 1
  %i.ms = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.mr, i1 true)
  %i.mt = shl nuw nsw i32 %i.ms, 8
  %.neg20.i31 = add i32 %i.mo, -7936
  %i.mu = add i32 %.neg20.i31, %i.mt
  br label %ZSTD_litLengthPrice.exit33

ZSTD_litLengthPrice.exit33:                       ; preds = %.split471.i, %bb.al
  %.0.i32 = phi i32 [ %i.mu, %bb.al ], [ 0, %.split471.i ]
  %i.mv = zext i1 %i.ld to i32
  %i.mw = add nsw i32 %.0.i32, %i.lb              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.mx = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  %i.my = call i32 %i.v(ptr noundef %i.af, ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef %i.hj, ptr noundef %i.e, ptr noundef nonnull %i.mx, i32 noundef %i.mv, i32 noundef %i.z) #11, !inline_history !34
  store i32 %i.my, ptr %i.c, align 4, !tbaa !3
  %i.mz = ptrtoint ptr %i.hj to i64               ; 2 uses
  %i.na = sub i64 %i.mz, %i.al
  %i.nb = trunc i64 %i.na to i32
  %i.nc = sub i64 %i.am, %i.mz
  %i.nd = trunc i64 %i.nc to i32
  call fastcc void @ZSTD_optLdm_processMatchCandidate(ptr noundef %8, ptr noundef %i.af, ptr noundef %i.c, i32 noundef %i.nb, i32 noundef %i.nd)
  %i.ne = load i32, ptr %i.c, align 4, !tbaa !3   ; 3 uses
  %.not494.i = icmp eq i32 %i.ne, 0
  br i1 %.not494.i, label %.thread129, label %bb.am

.thread129:                                       ; preds = %ZSTD_litLengthPrice.exit33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %.thread113

bb.am:                                            ; preds = %ZSTD_litLengthPrice.exit33
  %i.nf = add i32 %i.ne, -1
  %i.ng = zext i32 %i.nf to i64
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ng ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 4
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !43 ; 5 uses
  %i.nk = icmp ule i32 %i.nj, %spec.select.i
  %i.nl = add i32 %i.nj, %.3449.i222              ; 2 uses
  %i.nm = icmp ult i32 %i.nl, 4096
  %or.cond504.i.not = and i1 %i.nk, %i.nm
  %i.nn = zext nneg i32 %i.nj to i64
  %i.no = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.nn
  %.not495.i = icmp ult ptr %i.no, %i.e
  %or.cond506.i = select i1 %or.cond504.i.not, i1 %.not495.i, i1 false
  br i1 %or.cond506.i, label %.preheader, label %.thread341

.preheader:                                       ; preds = %bb.am
  %invariant.op217 = add i32 %i.mw, 4096
  %wide.trip.count273 = zext i32 %i.ne to i64
  br label %bb.an

bb.an:                                            ; preds = %.preheader, %._crit_edge209
  %indvars.iv270 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next271, %._crit_edge209 ] ; 4 uses
  %.8.i219 = phi i32 [ %.2453.i221, %.preheader ], [ %.9.i.lcssa, %._crit_edge209 ] ; 3 uses
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv270 ; 2 uses
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !45 ; 3 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.np, i64 4
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !43 ; 5 uses
  %.not496.i = icmp eq i64 %indvars.iv270, 0
  br i1 %.not496.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.nt = getelementptr [8 x i8], ptr %i.af, i64 %indvars.iv270
  %i.nu = getelementptr i8, ptr %i.nt, i64 -4
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !43
  %i.nw = add i32 %i.nv, 1
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.nx = phi i32 [ %i.nw, %bb.ao ], [ %i.z, %bb.an ] ; 3 uses
  %.not497.i204 = icmp ult i32 %i.ns, %i.nx
  br i1 %.not497.i204, label %._crit_edge209, label %.lr.ph208

.lr.ph208:                                        ; preds = %bb.ap
  %i.ny = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.nq, i1 true)
  %i.nz = xor i32 %i.ny, 31                       ; 5 uses
  %i.oa = load i32, ptr %i.av, align 8, !tbaa !38
  %i.ob = icmp eq i32 %i.oa, 1
  br i1 %i.ob, label %.lr.ph208.split.us, label %.lr.ph208.split

.lr.ph208.split.us:                               ; preds = %.lr.ph208
  %i.oc = shl nuw nsw i32 %i.nz, 8
  %invariant.op216.reass = add i32 %i.oc, %invariant.op217
  %i.od = add i32 %.3449.i222, %i.ns
  br label %ZSTD_getMatchPrice.exit8.us

ZSTD_getMatchPrice.exit8.us:                      ; preds = %.lr.ph201.us, %.lr.ph208.split.us
  %indvar430 = phi i32 [ %indvar.next431, %.lr.ph201.us ], [ 0, %.lr.ph208.split.us ] ; 2 uses
  %.9.i206.us = phi i32 [ %.10.i.lcssa.us, %.lr.ph201.us ], [ %.8.i219, %.lr.ph208.split.us ] ; 4 uses
  %.0470.i205.us = phi i32 [ %18, %.lr.ph201.us ], [ %i.ns, %.lr.ph208.split.us ] ; 4 uses
  %i.oe = add i32 %.0470.i205.us, %.3449.i222     ; 4 uses
  %i.of = add i32 %.0470.i205.us, -2
  %i.og = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.of, i1 true)
  %i.oh = shl nuw nsw i32 %i.og, 8
  %i.oi = xor i32 %i.oh, 7936
  %.reass = add i32 %i.oi, %invariant.op216.reass ; 2 uses
  %i.oj = icmp ugt i32 %i.oe, %.9.i206.us
  br i1 %i.oj, label %.lr.ph201.us.preheader, label %bb.aq

bb.aq:                                            ; preds = %ZSTD_getMatchPrice.exit8.us
  %i.ok = zext i32 %i.oe to i64
  %i.ol = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.ok
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !42
  %i.on = icmp slt i32 %.reass, %i.om
  br i1 %i.on, label %.._crit_edge202.us_crit_edge, label %._crit_edge209

.._crit_edge202.us_crit_edge:                     ; preds = %bb.aq
  %.pre290 = zext i32 %i.oe to i64
  br label %.lr.ph201.us

.lr.ph201.us.preheader:                           ; preds = %ZSTD_getMatchPrice.exit8.us
  %i.oo = sub i32 %i.od, %indvar430
  %i.op = zext i32 %i.oo to i64                   ; 2 uses
  %i.oq = zext i32 %.9.i206.us to i64             ; 4 uses
  %i.or = zext i32 %i.oe to i64                   ; 2 uses
  %i.os = sub nsw i64 %i.op, %i.oq
  %xtraiter432 = and i64 %i.os, 3                 ; 2 uses
  %lcmp.mod433.not = icmp eq i64 %xtraiter432, 0
  br i1 %lcmp.mod433.not, label %.lr.ph201.us.prol.loopexit, label %.lr.ph201.us.prol

.lr.ph201.us.prol:                                ; preds = %.lr.ph201.us.preheader, %.lr.ph201.us.prol
  %indvars.iv267.prol = phi i64 [ %indvars.iv.next268.prol, %.lr.ph201.us.prol ], [ %i.oq, %.lr.ph201.us.preheader ]
  %prol.iter434 = phi i64 [ %prol.iter434.next, %.lr.ph201.us.prol ], [ 0, %.lr.ph201.us.preheader ]
  %indvars.iv.next268.prol = add nuw nsw i64 %indvars.iv267.prol, 1 ; 4 uses
  %i.ot = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv.next268.prol ; 2 uses
  store i32 1073741824, ptr %i.ot, align 4, !tbaa !42
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 12
  store i32 1, ptr %i.ou, align 4, !tbaa !37
  %prol.iter434.next = add i64 %prol.iter434, 1   ; 2 uses
  %prol.iter434.cmp.not = icmp eq i64 %prol.iter434.next, %xtraiter432
  br i1 %prol.iter434.cmp.not, label %.lr.ph201.us.prol.loopexit, label %.lr.ph201.us.prol, !llvm.loop !59

.lr.ph201.us.prol.loopexit:                       ; preds = %.lr.ph201.us.prol, %.lr.ph201.us.preheader
  %indvars.iv267.unr = phi i64 [ %i.oq, %.lr.ph201.us.preheader ], [ %indvars.iv.next268.prol, %.lr.ph201.us.prol ]
  %indvars.iv.next268.lcssa.unr = phi i64 [ poison, %.lr.ph201.us.preheader ], [ %indvars.iv.next268.prol, %.lr.ph201.us.prol ]
  %i.ov = sub nsw i64 %i.oq, %i.op
  %i.ow = icmp ugt i64 %i.ov, -4
  br i1 %i.ow, label %._crit_edge202.us.loopexit, label %._crit_edge202.us.a

._crit_edge202.us.a:                              ; preds = %.lr.ph201.us.prol.loopexit, %._crit_edge202.us.a
  %.pre-phi291.a = phi i64 [ %indvars.iv.next268.3, %._crit_edge202.us.a ], [ %indvars.iv267.unr, %.lr.ph201.us.prol.loopexit ] ; 4 uses
  %9 = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %.pre-phi291.a ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 28
  store i32 1073741824, ptr %10, align 4, !tbaa !42
  %11 = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i32 1, ptr %11, align 4, !tbaa !37
  %i.ox = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %.pre-phi291.a ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %i.ox, i64 56
  store i32 1073741824, ptr %12, align 4, !tbaa !42
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 68
  store i32 1, ptr %i.oy, align 4, !tbaa !37
  %13 = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %.pre-phi291.a ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %13, i64 84
  store i32 1073741824, ptr %i.oz, align 4, !tbaa !42
  %i.pa = getelementptr inbounds nuw i8, ptr %13, i64 96
  store i32 1, ptr %i.pa, align 4, !tbaa !37
  %indvars.iv.next268.3 = add nuw nsw i64 %.pre-phi291.a, 4 ; 4 uses
  %14 = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv.next268.3 ; 2 uses
  store i32 1073741824, ptr %14, align 4, !tbaa !42
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 12
  store i32 1, ptr %15, align 4, !tbaa !37
  %16 = icmp samesign ult i64 %indvars.iv.next268.3, %i.or
  br i1 %16, label %._crit_edge202.us.a, label %._crit_edge202.us.loopexit, !llvm.loop !61

._crit_edge202.us.loopexit:                       ; preds = %._crit_edge202.us.a, %.lr.ph201.us.prol.loopexit
  %indvars.iv.next268.lcssa = phi i64 [ %indvars.iv.next268.lcssa.unr, %.lr.ph201.us.prol.loopexit ], [ %indvars.iv.next268.3, %._crit_edge202.us.a ]
  %17 = trunc nuw i64 %indvars.iv.next268.lcssa to i32
  br label %.lr.ph201.us

.lr.ph201.us:                                     ; preds = %.._crit_edge202.us_crit_edge, %._crit_edge202.us.loopexit
  %indvars.iv267 = phi i64 [ %.pre290, %.._crit_edge202.us_crit_edge ], [ %i.or, %._crit_edge202.us.loopexit ]
  %.10.i.lcssa.us = phi i32 [ %.9.i206.us, %.._crit_edge202.us_crit_edge ], [ %17, %._crit_edge202.us.loopexit ] ; 2 uses
  %i.pb = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv267 ; 4 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 8
  store i32 %.0470.i205.us, ptr %i.pc, align 4, !tbaa !35
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pb, i64 4
  store i32 %i.nq, ptr %i.pd, align 4, !tbaa !47
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pb, i64 12
  store i32 0, ptr %i.pe, align 4, !tbaa !37
  store i32 %.reass, ptr %i.pb, align 4, !tbaa !42
  %18 = add i32 %.0470.i205.us, -1                ; 2 uses
  %.not497.i.us = icmp ult i32 %18, %i.nx
  %indvar.next431 = add i32 %indvar430, 1
  br i1 %.not497.i.us, label %._crit_edge209, label %ZSTD_getMatchPrice.exit8.us, !llvm.loop !62

.lr.ph208.split:                                  ; preds = %.lr.ph208
  %i.pf = icmp samesign ugt i32 %i.nz, 19
  %i.pg = shl nuw nsw i32 %i.nz, 9
  %i.ph = add nsw i32 %i.pg, -9677
  %i.pi = select i1 %i.pf, i32 %i.ph, i32 51
  %i.pj = zext nneg i32 %i.nz to i64
  %i.pk = load i32, ptr %i.az, align 4, !tbaa !49
  %i.pl = load ptr, ptr %i.ba, align 8, !tbaa !50
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %i.pj
  %i.pn = load i32, ptr %i.bb, align 8, !tbaa !51
  %i.po = load ptr, ptr %i.bc, align 8, !tbaa !52
  %i.pp = add i32 %i.pi, %i.pk
  %invariant.op215 = add i32 %i.pp, %i.pn
  %invariant.op379 = add i32 %invariant.op215, -7936
  %i.pq = add i32 %.3449.i222, %i.ns
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph208.split, %._crit_edge202
  %indvar = phi i32 [ 0, %.lr.ph208.split ], [ %indvar.next, %._crit_edge202 ] ; 2 uses
  %.9.i206 = phi i32 [ %.8.i219, %.lr.ph208.split ], [ %.10.i.lcssa, %._crit_edge202 ] ; 4 uses
  %.0470.i205 = phi i32 [ %i.ns, %.lr.ph208.split ], [ %i.rx, %._crit_edge202 ] ; 4 uses
  %i.pr = sub i32 %i.pq, %indvar
  %i.ps = zext i32 %i.pr to i64                   ; 2 uses
  %i.pt = add i32 %.0470.i205, %.3449.i222        ; 4 uses
  %i.pu = add i32 %.0470.i205, -3                 ; 3 uses
  %i.pv = load i32, ptr %i.pm, align 4, !tbaa !3
  %i.pw = add i32 %i.pv, 1
  %i.px = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.pw, i1 true)
  %i.py = icmp ugt i32 %i.pu, 127
  br i1 %i.py, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.pz = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.pu, i1 true)
  %i.qa = sub nuw nsw i32 67, %i.pz
  br label %ZSTD_MLcode.exit34

bb.at:                                            ; preds = %bb.ar
  %i.qb = zext nneg i32 %i.pu to i64
  %i.qc = getelementptr inbounds nuw i8, ptr @ZSTD_MLcode.ML_Code, i64 %i.qb
  %i.qd = load i8, ptr %i.qc, align 1, !tbaa !41
  %i.qe = zext i8 %i.qd to i32
  br label %ZSTD_MLcode.exit34

ZSTD_MLcode.exit34:                               ; preds = %bb.as, %bb.at
  %i.qf = phi i32 [ %i.qa, %bb.as ], [ %i.qe, %bb.at ]
  %i.qg = zext nneg i32 %i.qf to i64              ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr @ML_bits, i64 %i.qg
  %i.qi = load i8, ptr %i.qh, align 1, !tbaa !41
  %i.qj = zext i8 %i.qi to i32
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %i.po, i64 %i.qg
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !3
  %i.qm = add i32 %i.ql, 1
  %i.qn = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.qm, i1 true)
  %i.qo = shl nuw nsw i32 %i.qn, 8
  %.neg = add nsw i32 %i.qo, -7936
  %reass.add179 = add nuw nsw i32 %i.nz, %i.qj
  %i.qp = add nuw nsw i32 %i.px, %reass.add179
  %i.qq = shl nuw nsw i32 %i.qp, 8
  %i.qr = add i32 %i.qq, %invariant.op379
  %i.qs = add i32 %i.qr, %.neg
  %i.qt = add nsw i32 %i.mw, %i.qs                ; 2 uses
  %i.qu = icmp ugt i32 %i.pt, %.9.i206
  br i1 %i.qu, label %.lr.ph201.preheader, label %bb.au

bb.au:                                            ; preds = %ZSTD_MLcode.exit34
  %i.qv = zext i32 %i.pt to i64
  %i.qw = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.qv
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !42
  %i.qy = icmp slt i32 %i.qt, %i.qx
  br i1 %i.qy, label %.._crit_edge202_crit_edge, label %._crit_edge209

.._crit_edge202_crit_edge:                        ; preds = %bb.au
  %.pre292 = zext i32 %i.pt to i64
  br label %._crit_edge202

.lr.ph201.preheader:                              ; preds = %ZSTD_MLcode.exit34
  %i.qz = zext i32 %.9.i206 to i64                ; 4 uses
  %i.ra = zext i32 %i.pt to i64                   ; 2 uses
  %i.rb = sub nsw i64 %i.ps, %i.qz
  %xtraiter428 = and i64 %i.rb, 3                 ; 2 uses
  %lcmp.mod429.not = icmp eq i64 %xtraiter428, 0
  br i1 %lcmp.mod429.not, label %.lr.ph201.prol.loopexit, label %.lr.ph201.prol

.lr.ph201.prol:                                   ; preds = %.lr.ph201.preheader, %.lr.ph201.prol
  %indvars.iv264.prol = phi i64 [ %indvars.iv.next265.prol, %.lr.ph201.prol ], [ %i.qz, %.lr.ph201.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph201.prol ], [ 0, %.lr.ph201.preheader ]
  %indvars.iv.next265.prol = add nuw nsw i64 %indvars.iv264.prol, 1 ; 4 uses
  %i.rc = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv.next265.prol ; 2 uses
  store i32 1073741824, ptr %i.rc, align 4, !tbaa !42
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 12
  store i32 1, ptr %i.rd, align 4, !tbaa !37
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter428
  br i1 %prol.iter.cmp.not, label %.lr.ph201.prol.loopexit, label %.lr.ph201.prol, !llvm.loop !63

.lr.ph201.prol.loopexit:                          ; preds = %.lr.ph201.prol, %.lr.ph201.preheader
  %indvars.iv264.unr = phi i64 [ %i.qz, %.lr.ph201.preheader ], [ %indvars.iv.next265.prol, %.lr.ph201.prol ]
  %indvars.iv.next265.lcssa.unr = phi i64 [ poison, %.lr.ph201.preheader ], [ %indvars.iv.next265.prol, %.lr.ph201.prol ]
  %i.re = sub nsw i64 %i.qz, %i.ps
  %i.rf = icmp ugt i64 %i.re, -4
  br i1 %i.rf, label %._crit_edge202.loopexit, label %.lr.ph201

.lr.ph201:                                        ; preds = %.lr.ph201.prol.loopexit, %.lr.ph201
  %indvars.iv264 = phi i64 [ %indvars.iv.next265.3, %.lr.ph201 ], [ %indvars.iv264.unr, %.lr.ph201.prol.loopexit ] ; 4 uses
  %i.rg = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv264 ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 28
  store i32 1073741824, ptr %i.rh, align 4, !tbaa !42
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rg, i64 40
  store i32 1, ptr %i.ri, align 4, !tbaa !37
  %i.rj = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv264 ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 56
  store i32 1073741824, ptr %i.rk, align 4, !tbaa !42
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rj, i64 68
  store i32 1, ptr %i.rl, align 4, !tbaa !37
  %i.rm = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv264 ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 84
  store i32 1073741824, ptr %i.rn, align 4, !tbaa !42
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rm, i64 96
  store i32 1, ptr %i.ro, align 4, !tbaa !37
  %indvars.iv.next265.3 = add nuw nsw i64 %indvars.iv264, 4 ; 4 uses
  %i.rp = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv.next265.3 ; 2 uses
  store i32 1073741824, ptr %i.rp, align 4, !tbaa !42
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 12
  store i32 1, ptr %i.rq, align 4, !tbaa !37
  %i.rr = icmp samesign ult i64 %indvars.iv.next265.3, %i.ra
  br i1 %i.rr, label %.lr.ph201, label %._crit_edge202.loopexit, !llvm.loop !61

._crit_edge202.loopexit:                          ; preds = %.lr.ph201, %.lr.ph201.prol.loopexit
  %indvars.iv.next265.lcssa = phi i64 [ %indvars.iv.next265.lcssa.unr, %.lr.ph201.prol.loopexit ], [ %indvars.iv.next265.3, %.lr.ph201 ]
  %i.rs = trunc nuw i64 %indvars.iv.next265.lcssa to i32
  br label %._crit_edge202

._crit_edge202:                                   ; preds = %.._crit_edge202_crit_edge, %._crit_edge202.loopexit
  %.pre-phi293 = phi i64 [ %.pre292, %.._crit_edge202_crit_edge ], [ %i.ra, %._crit_edge202.loopexit ]
  %.10.i.lcssa = phi i32 [ %.9.i206, %.._crit_edge202_crit_edge ], [ %i.rs, %._crit_edge202.loopexit ] ; 2 uses
  %i.rt = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %.pre-phi293 ; 4 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 8
  store i32 %.0470.i205, ptr %i.ru, align 4, !tbaa !35
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rt, i64 4
  store i32 %i.nq, ptr %i.rv, align 4, !tbaa !47
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rt, i64 12
  store i32 0, ptr %i.rw, align 4, !tbaa !37
  store i32 %i.qt, ptr %i.rt, align 4, !tbaa !42
  %i.rx = add i32 %.0470.i205, -1                 ; 2 uses
  %.not497.i = icmp ult i32 %i.rx, %i.nx
  %indvar.next = add i32 %indvar, 1
  br i1 %.not497.i, label %._crit_edge209, label %bb.ar, !llvm.loop !62

._crit_edge209:                                   ; preds = %._crit_edge202, %bb.au, %.lr.ph201.us, %bb.aq, %bb.ap
  %.9.i.lcssa = phi i32 [ %.8.i219, %bb.ap ], [ %.9.i206.us, %bb.aq ], [ %.10.i.lcssa.us, %.lr.ph201.us ], [ %.9.i206, %bb.au ], [ %.10.i.lcssa, %._crit_edge202 ] ; 3 uses
  %indvars.iv.next271 = add nuw nsw i64 %indvars.iv270, 1 ; 2 uses
  %exitcond274.not = icmp eq i64 %indvars.iv.next271, %wide.trip.count273
  br i1 %exitcond274.not, label %bb.av, label %bb.an, !llvm.loop !64

bb.av:                                            ; preds = %._crit_edge209
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  %i.ry = add i32 %.9.i.lcssa, 1
  %i.rz = zext i32 %i.ry to i64
  %i.sa = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.rz
  store i32 1073741824, ptr %i.sa, align 4, !tbaa !42
  br label %.thread113

.thread113:                                       ; preds = %..thread113_crit_edge, %bb.ak, %bb.av, %.thread129
  %.pre-phi289 = phi i32 [ %.pre288, %..thread113_crit_edge ], [ %i.mh, %bb.ak ], [ %i.mh, %bb.av ], [ %i.mh, %.thread129 ] ; 2 uses
  %.15.i119 = phi i32 [ %.2453.i221, %..thread113_crit_edge ], [ %.2453.i221, %bb.ak ], [ %.9.i.lcssa, %bb.av ], [ %.2453.i221, %.thread129 ] ; 3 uses
  %.not491.i = icmp ugt i32 %.pre-phi289, %.15.i119
  br i1 %.not491.i, label %bb.aw, label %.lr.ph224, !llvm.loop !65

bb.aw:                                            ; preds = %bb.aj, %.thread113
  %.2453.i.lcssa.ph = phi i32 [ %.15.i119, %.thread113 ], [ %.3449.i222, %bb.aj ] ; 3 uses
  %i.sb = zext i32 %.2453.i.lcssa.ph to i64
  %i.sc = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.sb ; 5 uses
  %.sroa.0214.0.copyload.i = load i32, ptr %i.sc, align 4, !tbaa !3 ; 4 uses
  %.sroa.6217.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.sc, i64 4
  %.sroa.6217.0.copyload.i = load i32, ptr %.sroa.6217.0..sroa_idx.i, align 4, !tbaa !3 ; 3 uses
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.sc, i64 8
  %.sroa.9.0.copyload.i = load i32, ptr %.sroa.9.0..sroa_idx.i, align 4, !tbaa !3 ; 5 uses
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.sc, i64 12
  %.sroa.13.0.copyload.i = load i32, ptr %.sroa.13.0..sroa_idx.i, align 4, !tbaa !3 ; 5 uses
  %.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.sc, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.19.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.19.0..sroa_idx.i, i64 12, i1 false), !tbaa.struct !66
  %i.sd = sub i32 %.2453.i.lcssa.ph, %.sroa.9.0.copyload.i ; 2 uses
  %i.se = icmp eq i32 %.sroa.9.0.copyload.i, 0
  br i1 %i.se, label %bb.ax, label %bb.ay

.thread341:                                       ; preds = %bb.am
  %i.sf = load i32, ptr %i.nh, align 4, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  %i.sg = icmp eq i32 %i.nj, 0
  br i1 %i.sg, label %bb.ax, label %._crit_edge276

bb.ax:                                            ; preds = %.thread341, %bb.aw
  %.sroa.0214.1.i353 = phi i32 [ %.sroa.0214.0.i237, %.thread341 ], [ %.sroa.0214.0.copyload.i, %bb.aw ]
  %.17.i348 = phi i32 [ %i.nl, %.thread341 ], [ %.2453.i.lcssa.ph, %bb.aw ]
  %i.sh = zext i32 %.17.i348 to i64
  %i.si = getelementptr inbounds nuw i8, ptr %.0.i239, i64 %i.sh
  br label %bb.cd, !llvm.loop !67

bb.ay:                                            ; preds = %bb.aw
  %i.sj = icmp eq i32 %.sroa.13.0.copyload.i, 0
  br i1 %i.sj, label %._crit_edge276, label %bb.bf

._crit_edge276:                                   ; preds = %.thread341, %bb.ay
  %.4450.i349364 = phi i32 [ %i.sd, %bb.ay ], [ %.3449.i222, %.thread341 ] ; 2 uses
  %.sroa.9.7.i351363 = phi i32 [ %.sroa.9.0.copyload.i, %bb.ay ], [ %i.nj, %.thread341 ]
  %.sroa.6217.7.i352362 = phi i32 [ %.sroa.6217.0.copyload.i, %bb.ay ], [ %i.sf, %.thread341 ]
  %.sroa.0214.1.i354361 = phi i32 [ %.sroa.0214.0.copyload.i, %bb.ay ], [ %.sroa.0214.0.i237, %.thread341 ]
  %.phi.trans.insert277 = zext i32 %.4450.i349364 to i64
  %.phi.trans.insert278 = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %.phi.trans.insert277
  %.phi.trans.insert279 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert278, i64 12
  %.pre280 = load i32, ptr %.phi.trans.insert279, align 4, !tbaa !37
  br label %bb.az

bb.az:                                            ; preds = %._crit_edge276, %.thread147
  %i.sk = phi i32 [ %i.bv, %.thread147 ], [ %.pre280, %._crit_edge276 ]
  %.4450.i142161 = phi i32 [ 0, %.thread147 ], [ %.4450.i349364, %._crit_edge276 ] ; 3 uses
  %.sroa.9.7.i144158 = phi i32 [ %i.dr, %.thread147 ], [ %.sroa.9.7.i351363, %._crit_edge276 ]
  %.sroa.6217.7.i145156 = phi i32 [ %i.ds, %.thread147 ], [ %.sroa.6217.7.i352362, %._crit_edge276 ] ; 4 uses
  %.sroa.0214.1.i146154 = phi i32 [ %.sroa.0214.0.i237, %.thread147 ], [ %.sroa.0214.1.i354361, %._crit_edge276 ]
  %i.sl = zext i32 %.4450.i142161 to i64
  %i.sm = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.sl
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.sn, i64 12, i1 false)
  %i.so = icmp ugt i32 %.sroa.6217.7.i145156, 3
  br i1 %i.so, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.sp = load i32, ptr %i.bg, align 4, !tbaa !3
  %i.sq = load i32, ptr %6, align 8, !tbaa !3
  store i32 %i.sq, ptr %i.bg, align 4, !tbaa !3
  %i.sr = add i32 %.sroa.6217.7.i145156, -3
  br label %.sink.split.i.i38

bb.bb:                                            ; preds = %bb.az
  %i.ss = icmp eq i32 %i.sk, 0
  %i.st = zext i1 %i.ss to i32
  %i.su = add nsw i32 %.sroa.6217.7.i145156, -1
  %i.sv = add nsw i32 %i.su, %i.st                ; 3 uses
  switch i32 %i.sv, label %bb.bd [
    i32 0, label %.ZSTD_updateRep.exit_crit_edge.i45
    i32 3, label %bb.bc
  ]

.ZSTD_updateRep.exit_crit_edge.i45:               ; preds = %bb.bb
  %.sroa.2.0.copyload.pre.i47 = load i32, ptr %.sroa.2.0..sroa_idx.phi.trans.insert.i46, align 8
  br label %.thread162

bb.bc:                                            ; preds = %bb.bb
  %i.sw = load i32, ptr %6, align 8, !tbaa !3     ; 2 uses
  %i.sx = add i32 %i.sw, -1
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb
  %i.sy = zext i32 %i.sv to i64
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.sy
  %i.ta = load i32, ptr %i.sz, align 4, !tbaa !3
  %.pre.i.i48 = load i32, ptr %6, align 8, !tbaa !3
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.tb = phi i32 [ %i.sw, %bb.bc ], [ %.pre.i.i48, %bb.bd ]
  %i.tc = phi i32 [ %i.sx, %bb.bc ], [ %i.ta, %bb.bd ]
  %.not22.i.i35 = icmp eq i32 %i.sv, 1
  %.val.i36 = load i32, ptr %.sroa.2.0..sroa_idx.phi.trans.insert.i46, align 8
  %.val2.i37 = load i32, ptr %i.bg, align 4
  %i.td = select i1 %.not22.i.i35, i32 %.val.i36, i32 %.val2.i37
  store i32 %i.tb, ptr %i.bg, align 4, !tbaa !3
  br label %.sink.split.i.i38

.sink.split.i.i38:                                ; preds = %bb.be, %bb.ba
  %.sroa.2.0.copyload4.i39 = phi i32 [ %i.td, %bb.be ], [ %i.sp, %bb.ba ]
  %.sink.i.i40 = phi i32 [ %i.tc, %bb.be ], [ %i.sr, %bb.ba ]
  store i32 %.sink.i.i40, ptr %6, align 8, !tbaa !3
  br label %.thread162

.thread162:                                       ; preds = %.sink.split.i.i38, %.ZSTD_updateRep.exit_crit_edge.i45
  %.sroa.2.0.copyload.i41 = phi i32 [ %.sroa.2.0.copyload.pre.i47, %.ZSTD_updateRep.exit_crit_edge.i45 ], [ %.sroa.2.0.copyload4.i39, %.sink.split.i.i38 ]
  %.sroa.0.0.copyload.i42 = load i64, ptr %6, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  store i64 %.sroa.0.0.copyload.i42, ptr %2, align 4
  store i32 %.sroa.2.0.copyload.i41, ptr %.sroa.443.0..sroa_idx.i, align 4
  %i.te = add i32 %.4450.i142161, 2               ; 2 uses
  %.pre284 = zext i32 %i.te to i64
  br label %bb.bg

bb.bf:                                            ; preds = %bb.ay
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.19.0..sroa_idx.i, i64 12, i1 false)
  %i.tf = sub i32 %i.sd, %.sroa.13.0.copyload.i   ; 3 uses
  %i.tg = add i32 %i.tf, 2                        ; 2 uses
  %i.th = zext i32 %i.tg to i64                   ; 2 uses
  %i.ti = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.th ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 12
  store i32 %.sroa.13.0.copyload.i, ptr %i.tj, align 4, !tbaa !37
  %i.tk = getelementptr inbounds nuw i8, ptr %i.ti, i64 8
  store i32 0, ptr %i.tk, align 4, !tbaa !35
  %i.tl = add i32 %i.tf, 1
  %i.tm = zext i32 %i.tl to i64
  %i.tn = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.tm ; 5 uses
  store i32 %.sroa.0214.0.copyload.i, ptr %i.tn, align 4, !tbaa !3
  %.sroa.6217.0..sroa_idx218.i = getelementptr inbounds nuw i8, ptr %i.tn, i64 4
  store i32 %.sroa.6217.0.copyload.i, ptr %.sroa.6217.0..sroa_idx218.i, align 4, !tbaa !3
  %.sroa.9.0..sroa_idx222.i = getelementptr inbounds nuw i8, ptr %i.tn, i64 8
  store i32 %.sroa.9.0.copyload.i, ptr %.sroa.9.0..sroa_idx222.i, align 4, !tbaa !3
  %.sroa.13.0..sroa_idx227.i = getelementptr inbounds nuw i8, ptr %i.tn, i64 12
  store i32 %.sroa.13.0.copyload.i, ptr %.sroa.13.0..sroa_idx227.i, align 4, !tbaa !3
  %.sroa.19.0..sroa_idx234.i = getelementptr inbounds nuw i8, ptr %i.tn, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.19.0..sroa_idx234.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.19.i, i64 12, i1 false), !tbaa.struct !66
  br label %bb.bg

bb.bg:                                            ; preds = %.thread162, %bb.bf
  %.pre-phi285 = phi i64 [ %.pre284, %.thread162 ], [ %i.th, %bb.bf ]
  %i.to = phi i32 [ %i.te, %.thread162 ], [ %i.tg, %bb.bf ] ; 5 uses
  %.5.i172 = phi i32 [ %.4450.i142161, %.thread162 ], [ %i.tf, %bb.bf ] ; 2 uses
  %.sroa.0214.1.i146153171 = phi i32 [ %.sroa.0214.1.i146154, %.thread162 ], [ %.sroa.0214.0.copyload.i, %bb.bf ] ; 2 uses
  %.sroa.6217.7.i145155170 = phi i32 [ %.sroa.6217.7.i145156, %.thread162 ], [ %.sroa.6217.0.copyload.i, %bb.bf ]
  %.sroa.9.7.i144157169 = phi i32 [ %.sroa.9.7.i144158, %.thread162 ], [ %.sroa.9.0.copyload.i, %bb.bf ]
  %.sroa.13.7.i143159168 = phi i32 [ 0, %.thread162 ], [ %.sroa.13.0.copyload.i, %bb.bf ]
  %i.tp = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %.pre-phi285 ; 5 uses
  store i32 %.sroa.0214.1.i146153171, ptr %i.tp, align 4, !tbaa !3
  %.sroa.6217.0..sroa_idx220.i = getelementptr inbounds nuw i8, ptr %i.tp, i64 4
  store i32 %.sroa.6217.7.i145155170, ptr %.sroa.6217.0..sroa_idx220.i, align 4, !tbaa !3
  %.sroa.9.0..sroa_idx224.i = getelementptr inbounds nuw i8, ptr %i.tp, i64 8
  store i32 %.sroa.9.7.i144157169, ptr %.sroa.9.0..sroa_idx224.i, align 4, !tbaa !3
  %.sroa.13.0..sroa_idx229.i = getelementptr inbounds nuw i8, ptr %i.tp, i64 12
  store i32 %.sroa.13.7.i143159168, ptr %.sroa.13.0..sroa_idx229.i, align 4, !tbaa !3
  %.sroa.19.0..sroa_idx235.i = getelementptr inbounds nuw i8, ptr %i.tp, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.19.0..sroa_idx235.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.19.i, i64 12, i1 false), !tbaa.struct !66
  %i.tq = zext i32 %.5.i172 to i64                ; 2 uses
  %i.tr = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.tq ; 3 uses
  %i.ts = load i64, ptr %i.tr, align 4
  %.sroa.4.0..sroa_idx.i389 = getelementptr inbounds nuw i8, ptr %i.tr, i64 8
  %.sroa.4.0.copyload.i390 = load i32, ptr %.sroa.4.0..sroa_idx.i389, align 4, !tbaa !3 ; 2 uses
  %.sroa.6.0..sroa_idx.i391 = getelementptr inbounds nuw i8, ptr %i.tr, i64 12
  %.sroa.6.0.copyload.i392 = load i32, ptr %.sroa.6.0..sroa_idx.i391, align 4, !tbaa !3 ; 2 uses
  %i.tt = zext i32 %i.to to i64
  %i.tu = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.tt
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 12
  store i32 %.sroa.6.0.copyload.i392, ptr %i.tv, align 4, !tbaa !37
  %.not393 = icmp eq i32 %.sroa.4.0.copyload.i390, 0
  br i1 %.not393, label %.preheader187, label %.lr.ph399

.lr.ph399:                                        ; preds = %bb.bg, %.lr.ph399
  %.sroa.6.0.copyload.i397 = phi i32 [ %.sroa.6.0.copyload.i, %.lr.ph399 ], [ %.sroa.6.0.copyload.i392, %bb.bg ] ; 2 uses
  %.sroa.4.0.copyload.i396 = phi i32 [ %.sroa.4.0.copyload.i, %.lr.ph399 ], [ %.sroa.4.0.copyload.i390, %bb.bg ] ; 2 uses
  %i.tw = phi i64 [ %i.ug, %.lr.ph399 ], [ %i.ts, %bb.bg ]
  %i.tx = phi i64 [ %i.ue, %.lr.ph399 ], [ %i.tq, %bb.bg ]
  %.0442.i395 = phi i32 [ %i.ud, %.lr.ph399 ], [ %.5.i172, %bb.bg ]
  %.0444.i394 = phi i32 [ %i.tz, %.lr.ph399 ], [ %i.to, %bb.bg ]
  %i.ty = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.tx
end_hunk_0
begin_hunk_1_@ZSTD_compressBlock_opt2:bb.a
  br label %ZSTD_newRep.exit91

bb.aw:                                            ; preds = %bb.av
  %i.tr = load i32, ptr %7, align 8, !tbaa !3     ; 2 uses
  %i.ts = add i32 %i.tr, -1
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.tt = zext i32 %i.tq to i64
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.tt
  %i.tv = load i32, ptr %i.tu, align 4, !tbaa !3
  %.pre.i.i90 = load i32, ptr %7, align 8, !tbaa !3
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.tw = phi i32 [ %i.tr, %bb.aw ], [ %.pre.i.i90, %bb.ax ]
  %i.tx = phi i32 [ %i.ts, %bb.aw ], [ %i.tv, %bb.ax ]
  %.not22.i.i77 = icmp eq i32 %i.tq, 1
  %.val.i78 = load i32, ptr %.sroa.2.0..sroa_idx.phi.trans.insert.i88, align 8
  %.val2.i79 = load i32, ptr %i.bg, align 4
  %i.ty = select i1 %.not22.i.i77, i32 %.val.i78, i32 %.val2.i79
  store i32 %i.tw, ptr %i.bg, align 4, !tbaa !3
  br label %.sink.split.i.i80

.sink.split.i.i80:                                ; preds = %bb.ay, %bb.au
  %.sroa.2.0.copyload4.i81 = phi i32 [ %i.ty, %bb.ay ], [ %i.tk, %bb.au ]
  %.sink.i.i82 = phi i32 [ %i.tx, %bb.ay ], [ %i.tm, %bb.au ]
  store i32 %.sink.i.i82, ptr %7, align 8, !tbaa !3
  br label %ZSTD_newRep.exit91

ZSTD_newRep.exit91:                               ; preds = %.ZSTD_updateRep.exit_crit_edge.i87, %.sink.split.i.i80
  %.sroa.2.0.copyload.i83 = phi i32 [ %.sroa.2.0.copyload.pre.i89, %.ZSTD_updateRep.exit_crit_edge.i87 ], [ %.sroa.2.0.copyload4.i81, %.sink.split.i.i80 ]
  %.sroa.0.0.copyload.i84 = load i64, ptr %7, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.tz = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  store i64 %.sroa.0.0.copyload.i84, ptr %i.tz, align 4
  %.sroa.481.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mr, i64 24
  store i32 %.sroa.2.0.copyload.i83, ptr %.sroa.481.0..sroa_idx.i, align 4
  br label %bb.az

bb.az:                                            ; preds = %ZSTD_newRep.exit91, %ZSTD_litLengthPrice.exit41.thread
  %i.ua = icmp ugt ptr %i.ia, %i.f
  br i1 %i.ua, label %.thread185, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ub = icmp eq i32 %.3449.i335, %.6457.i
  br i1 %i.ub, label %bb.bn, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.uc = load i32, ptr %i.av, align 8, !tbaa !38
  %i.ud = icmp eq i32 %i.uc, 1
  br i1 %i.ud, label %ZSTD_litLengthPrice.exit96, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ue = load i32, ptr %i.aw, align 4, !tbaa !39
  %i.uf = load ptr, ptr %i.ax, align 8, !tbaa !40
  %i.ug = load i32, ptr %i.uf, align 4, !tbaa !3
  %i.uh = add i32 %i.ug, 1                        ; 2 uses
  %i.ui = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.uh, i1 true)
  %i.uj = xor i32 %i.ui, 31                       ; 2 uses
  %i.uk = shl i32 %i.uh, 8
  %i.ul = lshr i32 %i.uk, %i.uj
  %i.um = shl nuw nsw i32 %i.uj, 8
  %i.un = add i32 %i.ul, %i.um
  %i.uo = sub i32 %i.ue, %i.un
  br label %ZSTD_litLengthPrice.exit96

ZSTD_litLengthPrice.exit96:                       ; preds = %bb.bb, %bb.bc
  %.0.i95 = phi i32 [ %i.uo, %bb.bc ], [ 256, %bb.bb ]
  %i.up = zext i1 %i.sy to i32
  %i.uq = add nsw i32 %.0.i95, %i.sw              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.ur = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  %i.us = call i32 %i.v(ptr noundef %i.af, ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef %i.ia, ptr noundef %i.e, ptr noundef nonnull %i.ur, i32 noundef %i.up, i32 noundef %i.z) #11, !inline_history !34
  store i32 %i.us, ptr %i.c, align 4, !tbaa !3
  %i.ut = ptrtoint ptr %i.ia to i64               ; 2 uses
  %i.uu = sub i64 %i.ut, %i.al
  %i.uv = trunc i64 %i.uu to i32
  %i.uw = sub i64 %i.am, %i.ut
  %i.ux = trunc i64 %i.uw to i32
  call fastcc void @ZSTD_optLdm_processMatchCandidate(ptr noundef %9, ptr noundef %i.af, ptr noundef %i.c, i32 noundef %i.uv, i32 noundef %i.ux)
  %i.uy = load i32, ptr %i.c, align 4, !tbaa !3   ; 3 uses
  %.not494.i = icmp eq i32 %i.uy, 0
  br i1 %.not494.i, label %.thread201, label %bb.bd

.thread201:                                       ; preds = %ZSTD_litLengthPrice.exit96
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %.thread185

bb.bd:                                            ; preds = %ZSTD_litLengthPrice.exit96
  %i.uz = add i32 %i.uy, -1
  %i.va = zext i32 %i.uz to i64
  %i.vb = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.va ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 4
  %i.vd = load i32, ptr %i.vc, align 4, !tbaa !43 ; 5 uses
  %i.ve = icmp ule i32 %i.vd, %spec.select.i
  %i.vf = add i32 %i.vd, %.3449.i335              ; 2 uses
  %i.vg = icmp ult i32 %i.vf, 4096
  %or.cond504.i.not = and i1 %i.ve, %i.vg
  %i.vh = zext nneg i32 %i.vd to i64
  %i.vi = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.vh
  %.not495.i = icmp ult ptr %i.vi, %i.e
  %or.cond506.i = select i1 %or.cond504.i.not, i1 %.not495.i, i1 false
  br i1 %or.cond506.i, label %.preheader.preheader, label %.thread463

.preheader.preheader:                             ; preds = %bb.bd
  %wide.trip.count387 = zext i32 %i.uy to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge326
  %indvars.iv384 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next385, %._crit_edge326 ] ; 4 uses
  %.8.i332 = phi i32 [ %.6457.i, %.preheader.preheader ], [ %.9.i.lcssa, %._crit_edge326 ] ; 3 uses
  %i.vj = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv384 ; 2 uses
  %i.vk = load i32, ptr %i.vj, align 4, !tbaa !45 ; 3 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vj, i64 4
  %i.vm = load i32, ptr %i.vl, align 4, !tbaa !43 ; 5 uses
  %.not496.i = icmp eq i64 %indvars.iv384, 0
  br i1 %.not496.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %.preheader
  %i.vn = getelementptr [8 x i8], ptr %i.af, i64 %indvars.iv384
  %i.vo = getelementptr i8, ptr %i.vn, i64 -4
  %i.vp = load i32, ptr %i.vo, align 4, !tbaa !43
  %i.vq = add i32 %i.vp, 1
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %.preheader
  %i.vr = phi i32 [ %i.vq, %bb.be ], [ %i.z, %.preheader ] ; 3 uses
  %.not497.i321 = icmp ult i32 %i.vm, %i.vr
  br i1 %.not497.i321, label %._crit_edge326, label %.lr.ph325

.lr.ph325:                                        ; preds = %bb.bf
  %i.vs = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.vk, i1 true)
  %i.vt = xor i32 %i.vs, 31                       ; 3 uses
  %i.vu = load i32, ptr %i.av, align 8, !tbaa !38
  %i.vv = icmp eq i32 %i.vu, 1
  br i1 %i.vv, label %ZSTD_getMatchPrice.exit7.us.preheader, label %.lr.ph325.split

ZSTD_getMatchPrice.exit7.us.preheader:            ; preds = %.lr.ph325
  %i.vw = add i32 %.3449.i335, %i.vm
  br label %ZSTD_getMatchPrice.exit7.us

ZSTD_getMatchPrice.exit7.us:                      ; preds = %ZSTD_getMatchPrice.exit7.us.preheader, %15
  %indvar556 = phi i32 [ 0, %ZSTD_getMatchPrice.exit7.us.preheader ], [ %indvar.next557, %15 ] ; 2 uses
  %.9.i323.us = phi i32 [ %.8.i332, %ZSTD_getMatchPrice.exit7.us.preheader ], [ %.12.i.us, %15 ] ; 4 uses
  %.0470.i322.us = phi i32 [ %i.vm, %ZSTD_getMatchPrice.exit7.us.preheader ], [ %16, %15 ] ; 4 uses
  %i.vx = add i32 %.0470.i322.us, %.3449.i335     ; 4 uses
  %i.vy = add i32 %.0470.i322.us, -2              ; 2 uses
  %i.vz = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.vy, i1 true)
  %i.wa = xor i32 %i.vz, 31                       ; 2 uses
  %i.wb = shl i32 %i.vy, 8
  %i.wc = lshr i32 %i.wb, %i.wa
  %reass.add285.us = add nuw nsw i32 %i.wa, %i.vt
  %reass.mul286.us = shl nuw nsw i32 %reass.add285.us, 8
  %i.wd = add i32 %i.wc, 4096
  %i.we = add i32 %i.wd, %reass.mul286.us
  %i.wf = add nsw i32 %i.uq, %i.we                ; 2 uses
  %i.wg = icmp ugt i32 %i.vx, %.9.i323.us
  br i1 %i.wg, label %.lr.ph318.us.preheader, label %bb.bg

bb.bg:                                            ; preds = %ZSTD_getMatchPrice.exit7.us
  %i.wh = zext i32 %i.vx to i64
  %i.wi = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.wh
  %i.wj = load i32, ptr %i.wi, align 4, !tbaa !42
  %i.wk = icmp slt i32 %i.wf, %i.wj
  br i1 %i.wk, label %.._crit_edge319.us_crit_edge, label %15

.._crit_edge319.us_crit_edge:                     ; preds = %bb.bg
  %.pre400 = zext i32 %i.vx to i64
  br label %._crit_edge319.us

.lr.ph318.us.preheader:                           ; preds = %ZSTD_getMatchPrice.exit7.us
  %i.wl = sub i32 %i.vw, %indvar556
  %i.wm = zext i32 %i.wl to i64                   ; 2 uses
  %i.wn = zext i32 %.9.i323.us to i64             ; 4 uses
  %i.wo = zext i32 %i.vx to i64                   ; 2 uses
  %i.wp = sub nsw i64 %i.wm, %i.wn
  %xtraiter558 = and i64 %i.wp, 3                 ; 2 uses
  %lcmp.mod559.not = icmp eq i64 %xtraiter558, 0
  br i1 %lcmp.mod559.not, label %.lr.ph318.us.prol.loopexit, label %.lr.ph318.us.prol

.lr.ph318.us.prol:                                ; preds = %.lr.ph318.us.preheader, %.lr.ph318.us.prol
  %indvars.iv381.prol = phi i64 [ %indvars.iv.next382.prol, %.lr.ph318.us.prol ], [ %i.wn, %.lr.ph318.us.preheader ]
  %prol.iter560 = phi i64 [ %prol.iter560.next, %.lr.ph318.us.prol ], [ 0, %.lr.ph318.us.preheader ]
  %indvars.iv.next382.prol = add nuw nsw i64 %indvars.iv381.prol, 1 ; 4 uses
  %i.wq = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv.next382.prol ; 2 uses
  store i32 1073741824, ptr %i.wq, align 4, !tbaa !42
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 12
  store i32 1, ptr %i.wr, align 4, !tbaa !37
  %prol.iter560.next = add i64 %prol.iter560, 1   ; 2 uses
  %prol.iter560.cmp.not = icmp eq i64 %prol.iter560.next, %xtraiter558
  br i1 %prol.iter560.cmp.not, label %.lr.ph318.us.prol.loopexit, label %.lr.ph318.us.prol, !llvm.loop !97

.lr.ph318.us.prol.loopexit:                       ; preds = %.lr.ph318.us.prol, %.lr.ph318.us.preheader
  %indvars.iv381.unr = phi i64 [ %i.wn, %.lr.ph318.us.preheader ], [ %indvars.iv.next382.prol, %.lr.ph318.us.prol ]
  %indvars.iv.next382.lcssa.unr = phi i64 [ poison, %.lr.ph318.us.preheader ], [ %indvars.iv.next382.prol, %.lr.ph318.us.prol ]
  %i.ws = sub nsw i64 %i.wn, %i.wm
  %i.wt = icmp ugt i64 %i.ws, -4
  br i1 %i.wt, label %._crit_edge319.us.loopexit, label %.lr.ph318.us

.lr.ph318.us:                                     ; preds = %.lr.ph318.us.prol.loopexit, %.lr.ph318.us
  %indvars.iv381 = phi i64 [ %indvars.iv.next382.3, %.lr.ph318.us ], [ %indvars.iv381.unr, %.lr.ph318.us.prol.loopexit ] ; 4 uses
  %i.wu = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv381 ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 28
  store i32 1073741824, ptr %i.wv, align 4, !tbaa !42
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wu, i64 40
  store i32 1, ptr %i.ww, align 4, !tbaa !37
  %i.wx = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv381 ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 56
  store i32 1073741824, ptr %i.wy, align 4, !tbaa !42
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wx, i64 68
  store i32 1, ptr %i.wz, align 4, !tbaa !37
  %i.xa = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv381 ; 2 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 84
  store i32 1073741824, ptr %i.xb, align 4, !tbaa !42
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xa, i64 96
  store i32 1, ptr %i.xc, align 4, !tbaa !37
  %indvars.iv.next382.3 = add nuw nsw i64 %indvars.iv381, 4 ; 4 uses
  %i.xd = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv.next382.3 ; 2 uses
  store i32 1073741824, ptr %i.xd, align 4, !tbaa !42
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 12
  store i32 1, ptr %i.xe, align 4, !tbaa !37
  %i.xf = icmp samesign ult i64 %indvars.iv.next382.3, %i.wo
  br i1 %i.xf, label %.lr.ph318.us, label %._crit_edge319.us.loopexit, !llvm.loop !61

._crit_edge319.us.loopexit:                       ; preds = %.lr.ph318.us, %.lr.ph318.us.prol.loopexit
  %indvars.iv.next382.lcssa = phi i64 [ %indvars.iv.next382.lcssa.unr, %.lr.ph318.us.prol.loopexit ], [ %indvars.iv.next382.3, %.lr.ph318.us ]
  %10 = trunc nuw i64 %indvars.iv.next382.lcssa to i32
  br label %._crit_edge319.us

._crit_edge319.us:                                ; preds = %.._crit_edge319.us_crit_edge, %._crit_edge319.us.loopexit
  %.pre-phi401 = phi i64 [ %.pre400, %.._crit_edge319.us_crit_edge ], [ %i.wo, %._crit_edge319.us.loopexit ]
  %.10.i.lcssa.us = phi i32 [ %.9.i323.us, %.._crit_edge319.us_crit_edge ], [ %10, %._crit_edge319.us.loopexit ]
  %11 = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %.pre-phi401 ; 4 uses
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %.0470.i322.us, ptr %12, align 4, !tbaa !35
  %13 = getelementptr inbounds nuw i8, ptr %11, i64 4
  store i32 %i.vk, ptr %13, align 4, !tbaa !47
  %14 = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i32 0, ptr %14, align 4, !tbaa !37
  store i32 %i.wf, ptr %11, align 4, !tbaa !42
  br label %15

15:                                               ; preds = %._crit_edge319.us, %bb.bg
  %.12.i.us = phi i32 [ %.10.i.lcssa.us, %._crit_edge319.us ], [ %.9.i323.us, %bb.bg ] ; 2 uses
  %16 = add i32 %.0470.i322.us, -1                ; 2 uses
  %.not497.i.us = icmp ult i32 %16, %i.vr
  %indvar.next557 = add i32 %indvar556, 1
  br i1 %.not497.i.us, label %._crit_edge326, label %ZSTD_getMatchPrice.exit7.us, !llvm.loop !62

.lr.ph325.split:                                  ; preds = %.lr.ph325
  %i.xg = zext nneg i32 %i.vt to i64
  %i.xh = load i32, ptr %i.az, align 4, !tbaa !49
  %i.xi = load ptr, ptr %i.ba, align 8, !tbaa !50
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr %i.xi, i64 %i.xg
  %i.xk = load i32, ptr %i.bb, align 8, !tbaa !51
  %i.xl = load ptr, ptr %i.bc, align 8, !tbaa !52
  %.neg274 = add i32 %i.xh, 51
  %invariant.op329 = add i32 %.neg274, %i.xk
  %i.xm = add i32 %.3449.i335, %i.vm
  br label %bb.bh

bb.bh:                                            ; preds = %.lr.ph325.split, %bb.bl
  %indvar = phi i32 [ 0, %.lr.ph325.split ], [ %indvar.next, %bb.bl ] ; 2 uses
  %.9.i323 = phi i32 [ %.8.i332, %.lr.ph325.split ], [ %.12.i, %bb.bl ] ; 4 uses
  %.0470.i322 = phi i32 [ %i.vm, %.lr.ph325.split ], [ %i.zz, %bb.bl ] ; 4 uses
  %i.xn = sub i32 %i.xm, %indvar
  %i.xo = zext i32 %i.xn to i64                   ; 2 uses
  %i.xp = add i32 %.0470.i322, %.3449.i335        ; 4 uses
  %i.xq = add i32 %.0470.i322, -3                 ; 3 uses
  %i.xr = load i32, ptr %i.xj, align 4, !tbaa !3
  %i.xs = add i32 %i.xr, 1                        ; 2 uses
  %i.xt = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.xs, i1 true)
  %i.xu = xor i32 %i.xt, 31                       ; 2 uses
  %i.xv = shl i32 %i.xs, 8
  %i.xw = lshr i32 %i.xv, %i.xu
  %i.xx = icmp ugt i32 %i.xq, 127
  br i1 %i.xx, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.xy = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.xq, i1 true)
  %i.xz = sub nuw nsw i32 67, %i.xy
  br label %ZSTD_MLcode.exit97

bb.bj:                                            ; preds = %bb.bh
  %i.ya = zext nneg i32 %i.xq to i64
  %i.yb = getelementptr inbounds nuw i8, ptr @ZSTD_MLcode.ML_Code, i64 %i.ya
  %i.yc = load i8, ptr %i.yb, align 1, !tbaa !41
  %i.yd = zext i8 %i.yc to i32
  br label %ZSTD_MLcode.exit97

ZSTD_MLcode.exit97:                               ; preds = %bb.bi, %bb.bj
  %i.ye = phi i32 [ %i.xz, %bb.bi ], [ %i.yd, %bb.bj ]
  %i.yf = zext nneg i32 %i.ye to i64              ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr @ML_bits, i64 %i.yf
  %i.yh = load i8, ptr %i.yg, align 1, !tbaa !41
  %i.yi = zext i8 %i.yh to i32
  %i.yj = getelementptr inbounds nuw [4 x i8], ptr %i.xl, i64 %i.yf
  %i.yk = load i32, ptr %i.yj, align 4, !tbaa !3
  %i.yl = add i32 %i.yk, 1                        ; 2 uses
  %i.ym = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.yl, i1 true)
  %i.yn = xor i32 %i.ym, 31                       ; 2 uses
  %i.yo = shl i32 %i.yl, 8
  %i.yp = lshr i32 %i.yo, %i.yn
  %i.yq = add nuw nsw i32 %i.vt, %i.yi
  %i.yr = add nuw nsw i32 %i.xu, %i.yn
  %reass.add283 = sub nsw i32 %i.yq, %i.yr
  %reass.mul284 = shl nsw i32 %reass.add283, 8
  %i.ys = add i32 %i.xw, %i.yp
  %i.yt = sub i32 %invariant.op329, %i.ys
  %i.yu = add i32 %i.yt, %reass.mul284
  %i.yv = add nsw i32 %i.uq, %i.yu                ; 2 uses
  %i.yw = icmp ugt i32 %i.xp, %.9.i323
  br i1 %i.yw, label %.lr.ph318.preheader, label %bb.bk

bb.bk:                                            ; preds = %ZSTD_MLcode.exit97
  %i.yx = zext i32 %i.xp to i64
  %i.yy = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.yx
  %i.yz = load i32, ptr %i.yy, align 4, !tbaa !42
  %i.za = icmp slt i32 %i.yv, %i.yz
  br i1 %i.za, label %.._crit_edge319_crit_edge, label %bb.bl

.._crit_edge319_crit_edge:                        ; preds = %bb.bk
  %.pre402 = zext i32 %i.xp to i64
  br label %._crit_edge319

.lr.ph318.preheader:                              ; preds = %ZSTD_MLcode.exit97
  %i.zb = zext i32 %.9.i323 to i64                ; 4 uses
  %i.zc = zext i32 %i.xp to i64                   ; 2 uses
  %i.zd = sub nsw i64 %i.xo, %i.zb
  %xtraiter554 = and i64 %i.zd, 3                 ; 2 uses
  %lcmp.mod555.not = icmp eq i64 %xtraiter554, 0
  br i1 %lcmp.mod555.not, label %.lr.ph318.prol.loopexit, label %.lr.ph318.prol

.lr.ph318.prol:                                   ; preds = %.lr.ph318.preheader, %.lr.ph318.prol
  %indvars.iv378.prol = phi i64 [ %indvars.iv.next379.prol, %.lr.ph318.prol ], [ %i.zb, %.lr.ph318.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph318.prol ], [ 0, %.lr.ph318.preheader ]
  %indvars.iv.next379.prol = add nuw nsw i64 %indvars.iv378.prol, 1 ; 4 uses
  %i.ze = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv.next379.prol ; 2 uses
  store i32 1073741824, ptr %i.ze, align 4, !tbaa !42
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 12
  store i32 1, ptr %i.zf, align 4, !tbaa !37
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter554
  br i1 %prol.iter.cmp.not, label %.lr.ph318.prol.loopexit, label %.lr.ph318.prol, !llvm.loop !98

.lr.ph318.prol.loopexit:                          ; preds = %.lr.ph318.prol, %.lr.ph318.preheader
  %indvars.iv378.unr = phi i64 [ %i.zb, %.lr.ph318.preheader ], [ %indvars.iv.next379.prol, %.lr.ph318.prol ]
  %indvars.iv.next379.lcssa.unr = phi i64 [ poison, %.lr.ph318.preheader ], [ %indvars.iv.next379.prol, %.lr.ph318.prol ]
  %i.zg = sub nsw i64 %i.zb, %i.xo
  %i.zh = icmp ugt i64 %i.zg, -4
  br i1 %i.zh, label %._crit_edge319.loopexit, label %.lr.ph318

.lr.ph318:                                        ; preds = %.lr.ph318.prol.loopexit, %.lr.ph318
  %indvars.iv378 = phi i64 [ %indvars.iv.next379.3, %.lr.ph318 ], [ %indvars.iv378.unr, %.lr.ph318.prol.loopexit ] ; 4 uses
  %i.zi = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv378 ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zi, i64 28
  store i32 1073741824, ptr %i.zj, align 4, !tbaa !42
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zi, i64 40
  store i32 1, ptr %i.zk, align 4, !tbaa !37
  %i.zl = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv378 ; 2 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 56
  store i32 1073741824, ptr %i.zm, align 4, !tbaa !42
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zl, i64 68
  store i32 1, ptr %i.zn, align 4, !tbaa !37
  %i.zo = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv378 ; 2 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 84
  store i32 1073741824, ptr %i.zp, align 4, !tbaa !42
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zo, i64 96
  store i32 1, ptr %i.zq, align 4, !tbaa !37
  %indvars.iv.next379.3 = add nuw nsw i64 %indvars.iv378, 4 ; 4 uses
  %i.zr = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %indvars.iv.next379.3 ; 2 uses
  store i32 1073741824, ptr %i.zr, align 4, !tbaa !42
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zr, i64 12
  store i32 1, ptr %i.zs, align 4, !tbaa !37
  %i.zt = icmp samesign ult i64 %indvars.iv.next379.3, %i.zc
  br i1 %i.zt, label %.lr.ph318, label %._crit_edge319.loopexit, !llvm.loop !61

._crit_edge319.loopexit:                          ; preds = %.lr.ph318, %.lr.ph318.prol.loopexit
  %indvars.iv.next379.lcssa = phi i64 [ %indvars.iv.next379.lcssa.unr, %.lr.ph318.prol.loopexit ], [ %indvars.iv.next379.3, %.lr.ph318 ]
  %i.zu = trunc nuw i64 %indvars.iv.next379.lcssa to i32
  br label %._crit_edge319

._crit_edge319:                                   ; preds = %.._crit_edge319_crit_edge, %._crit_edge319.loopexit
  %.pre-phi403 = phi i64 [ %.pre402, %.._crit_edge319_crit_edge ], [ %i.zc, %._crit_edge319.loopexit ]
  %.10.i.lcssa = phi i32 [ %.9.i323, %.._crit_edge319_crit_edge ], [ %i.zu, %._crit_edge319.loopexit ]
  %i.zv = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %.pre-phi403 ; 4 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 8
  store i32 %.0470.i322, ptr %i.zw, align 4, !tbaa !35
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zv, i64 4
  store i32 %i.vk, ptr %i.zx, align 4, !tbaa !47
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zv, i64 12
  store i32 0, ptr %i.zy, align 4, !tbaa !37
  store i32 %i.yv, ptr %i.zv, align 4, !tbaa !42
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %._crit_edge319
  %.12.i = phi i32 [ %.10.i.lcssa, %._crit_edge319 ], [ %.9.i323, %bb.bk ] ; 2 uses
  %i.zz = add i32 %.0470.i322, -1                 ; 2 uses
  %.not497.i = icmp ult i32 %i.zz, %i.vr
  %indvar.next = add i32 %indvar, 1
  br i1 %.not497.i, label %._crit_edge326, label %bb.bh, !llvm.loop !62

._crit_edge326:                                   ; preds = %bb.bl, %15, %bb.bf
  %.9.i.lcssa = phi i32 [ %.8.i332, %bb.bf ], [ %.12.i.us, %15 ], [ %.12.i, %bb.bl ] ; 3 uses
  %indvars.iv.next385 = add nuw nsw i64 %indvars.iv384, 1 ; 2 uses
  %exitcond388.not = icmp eq i64 %indvars.iv.next385, %wide.trip.count387
  br i1 %exitcond388.not, label %bb.bm, label %.preheader, !llvm.loop !64

bb.bm:                                            ; preds = %._crit_edge326
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  %i.aaa = add i32 %.9.i.lcssa, 1
  %i.aab = zext i32 %i.aaa to i64
  %i.aac = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.aab
  store i32 1073741824, ptr %i.aac, align 4, !tbaa !42
  br label %.thread185

.thread185:                                       ; preds = %bb.bm, %bb.az, %.thread201
  %.15.i191 = phi i32 [ %.6457.i, %.thread201 ], [ %.9.i.lcssa, %bb.bm ], [ %.6457.i, %bb.az ] ; 3 uses
  %i.aad = add i32 %.3449.i335, 1                 ; 2 uses
  %.not491.i = icmp ugt i32 %i.aad, %.15.i191
  br i1 %.not491.i, label %bb.bn, label %.lr.ph337, !llvm.loop !65

bb.bn:                                            ; preds = %bb.ba, %.thread185
  %.16.i.ph = phi i32 [ %.15.i191, %.thread185 ], [ %.3449.i335, %bb.ba ] ; 3 uses
  %i.aae = zext i32 %.16.i.ph to i64
  %i.aaf = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.aae ; 5 uses
  %.sroa.0214.0.copyload.i = load i32, ptr %i.aaf, align 4, !tbaa !3 ; 4 uses
  %.sroa.6217.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aaf, i64 4
  %.sroa.6217.0.copyload.i = load i32, ptr %.sroa.6217.0..sroa_idx.i, align 4, !tbaa !3 ; 3 uses
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aaf, i64 8
  %.sroa.9.0.copyload.i = load i32, ptr %.sroa.9.0..sroa_idx.i, align 4, !tbaa !3 ; 5 uses
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aaf, i64 12
  %.sroa.13.0.copyload.i = load i32, ptr %.sroa.13.0..sroa_idx.i, align 4, !tbaa !3 ; 5 uses
  %.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aaf, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.19.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.19.0..sroa_idx.i, i64 12, i1 false), !tbaa.struct !66
  %i.aag = sub i32 %.16.i.ph, %.sroa.9.0.copyload.i ; 2 uses
  %i.aah = icmp eq i32 %.sroa.9.0.copyload.i, 0
  br i1 %i.aah, label %bb.bo, label %bb.bp

.thread463:                                       ; preds = %bb.bd
  %i.aai = load i32, ptr %i.vb, align 4, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  %i.aaj = icmp eq i32 %i.vd, 0
  br i1 %i.aaj, label %bb.bo, label %._crit_edge390

bb.bo:                                            ; preds = %.thread463, %bb.bn
  %.sroa.0214.1.i475 = phi i32 [ %.sroa.0214.0.i350, %.thread463 ], [ %.sroa.0214.0.copyload.i, %bb.bn ]
  %.17.i470 = phi i32 [ %i.vf, %.thread463 ], [ %.16.i.ph, %bb.bn ]
  %i.aak = zext i32 %.17.i470 to i64
  %i.aal = getelementptr inbounds nuw i8, ptr %.0.i352, i64 %i.aak
  br label %bb.cu, !llvm.loop !67

bb.bp:                                            ; preds = %bb.bn
  %i.aam = icmp eq i32 %.sroa.13.0.copyload.i, 0
  br i1 %i.aam, label %._crit_edge390, label %bb.bw

._crit_edge390:                                   ; preds = %.thread463, %bb.bp
  %.4450.i471486 = phi i32 [ %i.aag, %bb.bp ], [ %.3449.i335, %.thread463 ] ; 2 uses
  %.sroa.9.7.i473485 = phi i32 [ %.sroa.9.0.copyload.i, %bb.bp ], [ %i.vd, %.thread463 ]
  %.sroa.6217.7.i474484 = phi i32 [ %.sroa.6217.0.copyload.i, %bb.bp ], [ %i.aai, %.thread463 ]
  %.sroa.0214.1.i476483 = phi i32 [ %.sroa.0214.0.copyload.i, %bb.bp ], [ %.sroa.0214.0.i350, %.thread463 ]
  %.phi.trans.insert391 = zext i32 %.4450.i471486 to i64
  %.phi.trans.insert392 = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %.phi.trans.insert391
  %.phi.trans.insert393 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert392, i64 12
  %.pre394 = load i32, ptr %.phi.trans.insert393, align 4, !tbaa !37
  br label %bb.bq

bb.bq:                                            ; preds = %._crit_edge390, %.thread219
  %i.aan = phi i32 [ %i.bw, %.thread219 ], [ %.pre394, %._crit_edge390 ]
  %.4450.i214233 = phi i32 [ 0, %.thread219 ], [ %.4450.i471486, %._crit_edge390 ] ; 3 uses
  %.sroa.9.7.i216230 = phi i32 [ %i.ec, %.thread219 ], [ %.sroa.9.7.i473485, %._crit_edge390 ]
  %.sroa.6217.7.i217228 = phi i32 [ %i.ed, %.thread219 ], [ %.sroa.6217.7.i474484, %._crit_edge390 ] ; 4 uses
  %.sroa.0214.1.i218226 = phi i32 [ %.sroa.0214.0.i350, %.thread219 ], [ %.sroa.0214.1.i476483, %._crit_edge390 ]
  %i.aao = zext i32 %.4450.i214233 to i64
  %i.aap = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.aao
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.aaq, i64 12, i1 false)
  %i.aar = icmp ugt i32 %.sroa.6217.7.i217228, 3
  br i1 %i.aar, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.aas = load i32, ptr %i.bh, align 4, !tbaa !3
  %i.aat = load i32, ptr %6, align 8, !tbaa !3
  store i32 %i.aat, ptr %i.bh, align 4, !tbaa !3
  %i.aau = add i32 %.sroa.6217.7.i217228, -3
  br label %.sink.split.i.i101

bb.bs:                                            ; preds = %bb.bq
  %i.aav = icmp eq i32 %i.aan, 0
  %i.aaw = zext i1 %i.aav to i32
  %i.aax = add nsw i32 %.sroa.6217.7.i217228, -1
  %i.aay = add nsw i32 %i.aax, %i.aaw             ; 3 uses
  switch i32 %i.aay, label %bb.bu [
    i32 0, label %.ZSTD_updateRep.exit_crit_edge.i108
    i32 3, label %bb.bt
  ]

.ZSTD_updateRep.exit_crit_edge.i108:              ; preds = %bb.bs
  %.sroa.2.0.copyload.pre.i110 = load i32, ptr %.sroa.2.0..sroa_idx.phi.trans.insert.i109, align 8
  br label %.thread234

bb.bt:                                            ; preds = %bb.bs
  %i.aaz = load i32, ptr %6, align 8, !tbaa !3    ; 2 uses
  %i.aba = add i32 %i.aaz, -1
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bs
  %i.abb = zext i32 %i.aay to i64
  %i.abc = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.abb
  %i.abd = load i32, ptr %i.abc, align 4, !tbaa !3
  %.pre.i.i111 = load i32, ptr %6, align 8, !tbaa !3
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.abe = phi i32 [ %i.aaz, %bb.bt ], [ %.pre.i.i111, %bb.bu ]
  %i.abf = phi i32 [ %i.aba, %bb.bt ], [ %i.abd, %bb.bu ]
  %.not22.i.i98 = icmp eq i32 %i.aay, 1
  %.val.i99 = load i32, ptr %.sroa.2.0..sroa_idx.phi.trans.insert.i109, align 8
  %.val2.i100 = load i32, ptr %i.bh, align 4
  %i.abg = select i1 %.not22.i.i98, i32 %.val.i99, i32 %.val2.i100
  store i32 %i.abe, ptr %i.bh, align 4, !tbaa !3
  br label %.sink.split.i.i101

.sink.split.i.i101:                               ; preds = %bb.bv, %bb.br
  %.sroa.2.0.copyload4.i102 = phi i32 [ %i.abg, %bb.bv ], [ %i.aas, %bb.br ]
  %.sink.i.i103 = phi i32 [ %i.abf, %bb.bv ], [ %i.aau, %bb.br ]
  store i32 %.sink.i.i103, ptr %6, align 8, !tbaa !3
  br label %.thread234

.thread234:                                       ; preds = %.sink.split.i.i101, %.ZSTD_updateRep.exit_crit_edge.i108
  %.sroa.2.0.copyload.i104 = phi i32 [ %.sroa.2.0.copyload.pre.i110, %.ZSTD_updateRep.exit_crit_edge.i108 ], [ %.sroa.2.0.copyload4.i102, %.sink.split.i.i101 ]
  %.sroa.0.0.copyload.i105 = load i64, ptr %6, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  store i64 %.sroa.0.0.copyload.i105, ptr %2, align 4
  store i32 %.sroa.2.0.copyload.i104, ptr %.sroa.443.0..sroa_idx.i, align 4
  %i.abh = add i32 %.4450.i214233, 2              ; 2 uses
  %.pre398 = zext i32 %i.abh to i64
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bp
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.19.0..sroa_idx.i, i64 12, i1 false)
  %i.abi = sub i32 %i.aag, %.sroa.13.0.copyload.i ; 3 uses
  %i.abj = add i32 %i.abi, 2                      ; 2 uses
  %i.abk = zext i32 %i.abj to i64                 ; 2 uses
  %i.abl = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.abk ; 2 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abl, i64 12
  store i32 %.sroa.13.0.copyload.i, ptr %i.abm, align 4, !tbaa !37
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abl, i64 8
  store i32 0, ptr %i.abn, align 4, !tbaa !35
  %i.abo = add i32 %i.abi, 1
  %i.abp = zext i32 %i.abo to i64
  %i.abq = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.abp ; 5 uses
  store i32 %.sroa.0214.0.copyload.i, ptr %i.abq, align 4, !tbaa !3
  %.sroa.6217.0..sroa_idx218.i = getelementptr inbounds nuw i8, ptr %i.abq, i64 4
  store i32 %.sroa.6217.0.copyload.i, ptr %.sroa.6217.0..sroa_idx218.i, align 4, !tbaa !3
  %.sroa.9.0..sroa_idx222.i = getelementptr inbounds nuw i8, ptr %i.abq, i64 8
  store i32 %.sroa.9.0.copyload.i, ptr %.sroa.9.0..sroa_idx222.i, align 4, !tbaa !3
  %.sroa.13.0..sroa_idx227.i = getelementptr inbounds nuw i8, ptr %i.abq, i64 12
  store i32 %.sroa.13.0.copyload.i, ptr %.sroa.13.0..sroa_idx227.i, align 4, !tbaa !3
  %.sroa.19.0..sroa_idx234.i = getelementptr inbounds nuw i8, ptr %i.abq, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.19.0..sroa_idx234.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.19.i, i64 12, i1 false), !tbaa.struct !66
  br label %bb.bx

bb.bx:                                            ; preds = %.thread234, %bb.bw
  %.pre-phi399 = phi i64 [ %.pre398, %.thread234 ], [ %i.abk, %bb.bw ]
  %i.abr = phi i32 [ %i.abh, %.thread234 ], [ %i.abj, %bb.bw ] ; 5 uses
  %.5.i244 = phi i32 [ %.4450.i214233, %.thread234 ], [ %i.abi, %bb.bw ] ; 2 uses
  %.sroa.0214.1.i218225243 = phi i32 [ %.sroa.0214.1.i218226, %.thread234 ], [ %.sroa.0214.0.copyload.i, %bb.bw ] ; 2 uses
  %.sroa.6217.7.i217227242 = phi i32 [ %.sroa.6217.7.i217228, %.thread234 ], [ %.sroa.6217.0.copyload.i, %bb.bw ]
  %.sroa.9.7.i216229241 = phi i32 [ %.sroa.9.7.i216230, %.thread234 ], [ %.sroa.9.0.copyload.i, %bb.bw ]
  %.sroa.13.7.i215231240 = phi i32 [ 0, %.thread234 ], [ %.sroa.13.0.copyload.i, %bb.bw ]
  %i.abs = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %.pre-phi399 ; 5 uses
  store i32 %.sroa.0214.1.i218225243, ptr %i.abs, align 4, !tbaa !3
  %.sroa.6217.0..sroa_idx220.i = getelementptr inbounds nuw i8, ptr %i.abs, i64 4
  store i32 %.sroa.6217.7.i217227242, ptr %.sroa.6217.0..sroa_idx220.i, align 4, !tbaa !3
  %.sroa.9.0..sroa_idx224.i = getelementptr inbounds nuw i8, ptr %i.abs, i64 8
  store i32 %.sroa.9.7.i216229241, ptr %.sroa.9.0..sroa_idx224.i, align 4, !tbaa !3
  %.sroa.13.0..sroa_idx229.i = getelementptr inbounds nuw i8, ptr %i.abs, i64 12
  store i32 %.sroa.13.7.i215231240, ptr %.sroa.13.0..sroa_idx229.i, align 4, !tbaa !3
  %.sroa.19.0..sroa_idx235.i = getelementptr inbounds nuw i8, ptr %i.abs, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.19.0..sroa_idx235.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.19.i, i64 12, i1 false), !tbaa.struct !66
  %i.abt = zext i32 %.5.i244 to i64               ; 2 uses
  %i.abu = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.abt ; 3 uses
  %i.abv = load i64, ptr %i.abu, align 4
  %.sroa.4.0..sroa_idx.i510 = getelementptr inbounds nuw i8, ptr %i.abu, i64 8
  %.sroa.4.0.copyload.i511 = load i32, ptr %.sroa.4.0..sroa_idx.i510, align 4, !tbaa !3 ; 2 uses
  %.sroa.6.0..sroa_idx.i512 = getelementptr inbounds nuw i8, ptr %i.abu, i64 12
  %.sroa.6.0.copyload.i513 = load i32, ptr %.sroa.6.0..sroa_idx.i512, align 4, !tbaa !3 ; 2 uses
  %i.abw = zext i32 %i.abr to i64
  %i.abx = getelementptr inbounds nuw [28 x i8], ptr %i.ad, i64 %i.abw
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abx, i64 12
  store i32 %.sroa.6.0.copyload.i513, ptr %i.aby, align 4, !tbaa !37
  %.not514 = icmp eq i32 %.sroa.4.0.copyload.i511, 0
  br i1 %.not514, label %.preheader305, label %.lr.ph520

.lr.ph520:                                        ; preds = %bb.bx, %.lr.ph520
  %.sroa.6.0.copyload.i518 = phi i32 [ %.sroa.6.0.copyload.i, %.lr.ph520 ], [ %.sroa.6.0.copyload.i513, %bb.bx ] ; 2 uses
  %.sroa.4.0.copyload.i517 = phi i32 [ %.sroa.4.0.copyload.i, %.lr.ph520 ], [ %.sroa.4.0.copyload.i511, %bb.bx ] ; 2 uses
  %i.abz = phi i64 [ %i.acj, %.lr.ph520 ], [ %i.abv, %bb.bx ]
  %i.aca = phi i64 [ %i.ach, %.lr.ph520 ], [ %i.abt, %bb.bx ]
end_hunk_1
