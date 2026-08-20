inline.NumInlined: 89
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 28
begin_hunk_0_@gtsvector_picksplit:bb.a
  %i.ls = sext i32 %i.lr to i64
  %i.lt = tail call ptr @palloc(i64 noundef %i.ls) #12 ; 6 uses
  %i.lu = shl i32 %i.lr, 2
  store i32 %i.lu, ptr %i.lt, align 4
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 4 ; 3 uses
  store i32 %i.ln, ptr %i.lv, align 4
  %i.lw = icmp ne ptr %i.lp, null
  %or.cond.i = and i1 %.not15.i.not.not, %i.lw
  br i1 %or.cond.i, label %bb.ab, label %gtsvector_alloc.exit

bb.ab:                                            ; preds = %._crit_edge
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  %i.ly = sext i32 %i.m to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.lx, ptr nonnull readonly align 1 %i.lp, i64 %i.ly, i1 false)
  br label %gtsvector_alloc.exit

gtsvector_alloc.exit:                             ; preds = %._crit_edge, %bb.ab
  %i.lz = zext i16 %spec.select233 to i64
  %i.ma = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.lz ; 3 uses
  %i.mb = load i8, ptr %i.ma, align 8, !range !9, !noundef !10 ; 2 uses
  %i.mc = shl nuw nsw i8 %i.mb, 2
  %i.md = or disjoint i8 %i.mc, 2
  %i.me = zext nneg i8 %i.md to i32
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ma, i64 8 ; 2 uses
  %i.mg = load ptr, ptr %i.mf, align 8            ; 2 uses
  %.not15.i257.not.not = icmp eq i8 %i.mb, 0      ; 2 uses
  %i.mh = select i1 %.not15.i257.not.not, i32 %i.lq, i32 8 ; 2 uses
  %i.mi = sext i32 %i.mh to i64
  %i.mj = tail call ptr @palloc(i64 noundef %i.mi) #12 ; 6 uses
  %i.mk = shl i32 %i.mh, 2
  store i32 %i.mk, ptr %i.mj, align 4
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mj, i64 4 ; 3 uses
  store i32 %i.me, ptr %i.ml, align 4
  %i.mm = icmp ne ptr %i.mg, null
  %or.cond.i258 = and i1 %.not15.i257.not.not, %i.mm
  br i1 %or.cond.i258, label %bb.ac, label %gtsvector_alloc.exit259

bb.ac:                                            ; preds = %gtsvector_alloc.exit
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  %i.mo = sext i32 %i.m to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mn, ptr nonnull readonly align 1 %i.mg, i64 %i.mo, i1 false)
  br label %gtsvector_alloc.exit259

gtsvector_alloc.exit259:                          ; preds = %gtsvector_alloc.exit, %bb.ac
  %i.mp = getelementptr i8, ptr %i.lt, i64 8      ; 13 uses
  %i.mq = getelementptr i8, ptr %i.mj, i64 8      ; 13 uses
  %i.mr = trunc i32 %i.n to i16
  %i.ms = add i16 %i.mr, -1                       ; 3 uses
  %i.mt = zext i16 %i.ms to i64                   ; 6 uses
  %i.mu = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.mt ; 4 uses
  %i.mv = getelementptr inbounds nuw [32 x i8], ptr %i.am, i64 %i.mt
  %i.mw = load i64, ptr %i.mv, align 8
  %i.mx = inttoptr i64 %i.mw to ptr               ; 4 uses
  store i8 0, ptr %i.mu, align 8
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 4
  %i.mz = load i32, ptr %i.my, align 4            ; 2 uses
  %i.na = and i32 %i.mz, 1
  %.not.i260 = icmp eq i32 %i.na, 0
  br i1 %.not.i260, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %gtsvector_alloc.exit259
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  %i.nc = load ptr, ptr %i.nb, align 8            ; 5 uses
  %.val.i.i261 = load i32, ptr %i.mx, align 4
  %i.nd = lshr i32 %.val.i.i261, 2
  %i.ne = zext nneg i32 %i.nd to i64              ; 2 uses
  %i.nf = add nuw nsw i64 %i.ne, 17179869176      ; 2 uses
  %i.ng = lshr i64 %i.nf, 2                       ; 3 uses
  %i.nh = trunc i64 %i.ng to i32
  %i.ni = getelementptr inbounds nuw i8, ptr %i.mx, i64 8 ; 3 uses
  %i.nj = sext i32 %i.m to i64                    ; 3 uses
  %i.nk = ptrtoint ptr %i.nc to i64               ; 4 uses
  %i.nl = and i64 %i.nk, 7
  %i.nm = icmp eq i64 %i.nl, 0
  br i1 %i.nm, label %bb.ae, label %.loopexit.i.sink.split.i262

bb.ae:                                            ; preds = %bb.ad
  %i.nn = and i32 %i.m, 7
  %i.no = icmp eq i32 %i.nn, 0
  %i.np = icmp ult i32 %i.m, 1025
  %or.cond3.i.i270 = and i1 %i.np, %i.no
  br i1 %or.cond3.i.i270, label %bb.af, label %.loopexit.i.sink.split.i262

bb.af:                                            ; preds = %bb.ae
  %.not.i.i271 = icmp eq i32 %i.m, 0
  br i1 %.not.i.i271, label %.loopexit.i.i264, label %.lr.ph.preheader.i.i272

.lr.ph.preheader.i.i272:                          ; preds = %bb.af
  %i.nq = add i64 %i.nk, %i.nj
  %i.nr = add i64 %i.nk, 8
  %umax.i.i273 = tail call i64 @llvm.umax.i64(i64 %i.nq, i64 %i.nr)
  %i.ns = xor i64 %i.nk, -1
  %i.nt = add i64 %umax.i.i273, %i.ns
  %i.nu = and i64 %i.nt, -8
  %i.nv = add i64 %i.nu, 8
  br label %.loopexit.i.sink.split.i262

.loopexit.i.sink.split.i262:                      ; preds = %.lr.ph.preheader.i.i272, %bb.ae, %bb.ad
  %.sink.i263 = phi i64 [ %i.nv, %.lr.ph.preheader.i.i272 ], [ %i.nj, %bb.ae ], [ %i.nj, %bb.ad ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.nc, i8 0, i64 %.sink.i263, i1 false)
  br label %.loopexit.i.i264

.loopexit.i.i264:                                 ; preds = %.loopexit.i.sink.split.i262, %bb.af
  %i.nw = icmp sgt i32 %i.nh, 0
  br i1 %i.nw, label %.lr.ph33.i.i265, label %fillcache.exit275

.lr.ph33.i.i265:                                  ; preds = %.loopexit.i.i264
  %i.nx = shl i32 %i.m, 3                         ; 3 uses
  %i.ny = and i64 %i.nf, 8589934588
  %i.nz = icmp eq i64 %i.ny, 4
  br i1 %i.nz, label %.epil.preheader562, label %.lr.ph33.i.i265.new

.lr.ph33.i.i265.new:                              ; preds = %.lr.ph33.i.i265
  %unroll_iter567 = and i64 %i.ng, 2147483646
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %.lr.ph33.i.i265.new
  %indvars.iv.i.i267 = phi i64 [ 0, %.lr.ph33.i.i265.new ], [ %indvars.iv.next.i.i268.1, %bb.ag ] ; 3 uses
  %niter568 = phi i64 [ 0, %.lr.ph33.i.i265.new ], [ %niter568.next.1, %bb.ag ]
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %indvars.iv.i.i267
  %i.ob = load i32, ptr %i.oa, align 4
  %i.oc = urem i32 %i.ob, %i.nx                   ; 2 uses
  %i.od = and i32 %i.oc, 7
  %i.oe = shl nuw nsw i32 1, %i.od
  %i.of = lshr i32 %i.oc, 3
  %i.og = zext nneg i32 %i.of to i64
  %i.oh = getelementptr inbounds nuw i8, ptr %i.nc, i64 %i.og ; 2 uses
  %i.oi = load i8, ptr %i.oh, align 1
  %i.oj = trunc nuw i32 %i.oe to i8
  %i.ok = or i8 %i.oi, %i.oj
  store i8 %i.ok, ptr %i.oh, align 1
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %indvars.iv.i.i267
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 4
  %i.on = load i32, ptr %i.om, align 4
  %i.oo = urem i32 %i.on, %i.nx                   ; 2 uses
  %i.op = and i32 %i.oo, 7
  %i.oq = shl nuw nsw i32 1, %i.op
  %i.or = lshr i32 %i.oo, 3
  %i.os = zext nneg i32 %i.or to i64
  %i.ot = getelementptr inbounds nuw i8, ptr %i.nc, i64 %i.os ; 2 uses
  %i.ou = load i8, ptr %i.ot, align 1
  %i.ov = trunc nuw i32 %i.oq to i8
  %i.ow = or i8 %i.ou, %i.ov
  store i8 %i.ow, ptr %i.ot, align 1
  %indvars.iv.next.i.i268.1 = add nuw nsw i64 %indvars.iv.i.i267, 2 ; 2 uses
  %niter568.next.1 = add i64 %niter568, 2         ; 2 uses
  %niter568.ncmp.1 = icmp eq i64 %niter568.next.1, %unroll_iter567
  br i1 %niter568.ncmp.1, label %fillcache.exit275.loopexit.unr-lcssa, label %bb.ag, !llvm.loop !14

bb.ah:                                            ; preds = %gtsvector_alloc.exit259
  %i.ox = and i32 %i.mz, 4
  %.not9.i274 = icmp eq i32 %i.ox, 0
  br i1 %.not9.i274, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i8 1, ptr %i.mu, align 8
  br label %fillcache.exit275

bb.aj:                                            ; preds = %bb.ah
  %i.oy = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  %i.oz = load ptr, ptr %i.oy, align 8
  %i.pa = getelementptr inbounds nuw i8, ptr %i.mx, i64 8
  %i.pb = sext i32 %i.m to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.oz, ptr nonnull readonly align 1 %i.pa, i64 %i.pb, i1 false)
  br label %fillcache.exit275

fillcache.exit275.loopexit.unr-lcssa:             ; preds = %bb.ag
  %i.pc = and i64 %i.ne, 4
  %lcmp.mod565.not = icmp eq i64 %i.pc, 0
  br i1 %lcmp.mod565.not, label %fillcache.exit275, label %.epil.preheader562

.epil.preheader562:                               ; preds = %fillcache.exit275.loopexit.unr-lcssa, %.lr.ph33.i.i265
  %indvars.iv.i.i267.epil.init = phi i64 [ 0, %.lr.ph33.i.i265 ], [ %indvars.iv.next.i.i268.1, %fillcache.exit275.loopexit.unr-lcssa ]
  %lcmp.mod566 = trunc i64 %i.ng to i1
  tail call void @llvm.assume(i1 %lcmp.mod566)
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %indvars.iv.i.i267.epil.init
  %i.pe = load i32, ptr %i.pd, align 4
  %i.pf = urem i32 %i.pe, %i.nx                   ; 2 uses
  %i.pg = and i32 %i.pf, 7
  %i.ph = shl nuw nsw i32 1, %i.pg
  %i.pi = lshr i32 %i.pf, 3
  %i.pj = zext nneg i32 %i.pi to i64
  %i.pk = getelementptr inbounds nuw i8, ptr %i.nc, i64 %i.pj ; 2 uses
  %i.pl = load i8, ptr %i.pk, align 1
  %i.pm = trunc nuw i32 %i.ph to i8
  %i.pn = or i8 %i.pl, %i.pm
  store i8 %i.pn, ptr %i.pk, align 1
  br label %fillcache.exit275

fillcache.exit275:                                ; preds = %.epil.preheader562, %fillcache.exit275.loopexit.unr-lcssa, %.loopexit.i.i264, %bb.ai, %bb.aj
  %i.po = tail call ptr @palloc_mul(i64 noundef 8, i64 noundef %i.mt) #12 ; 4 uses
  %.not383 = icmp eq i16 %i.ms, 0
  br i1 %.not383, label %._crit_edge386.thread, label %.lr.ph385

._crit_edge386.thread:                            ; preds = %fillcache.exit275
  tail call void @pg_qsort(ptr noundef %i.po, i64 noundef %i.mt, i64 noundef 8, ptr noundef nonnull @comparecost) #12
  br label %._crit_edge398

.lr.ph385:                                        ; preds = %fillcache.exit275
  %i.pp = icmp sgt i32 %i.m, 0                    ; 2 uses
  %wide.trip.count.i.i278 = zext i32 %i.m to i64  ; 18 uses
  %i.pq = shl i32 %i.m, 3                         ; 4 uses
  %i.pr = icmp slt i32 %i.m, 8                    ; 4 uses
  %.not11.i.i14.i287 = icmp eq i32 %i.m, 0        ; 4 uses
  %i.ps = add nsw i64 %wide.trip.count.i.i278, -1 ; 4 uses
  %i.pt = add i32 %i.m, -1                        ; 6 uses
  %xtraiter569 = and i64 %wide.trip.count.i.i278, 1
  %i.pu = icmp eq i64 %i.ps, 0
  %unroll_iter574 = and i64 %wide.trip.count.i.i278, 2147483646
  %lcmp.mod571.not = icmp eq i64 %xtraiter569, 0
  %lcmp.mod573 = trunc i32 %i.m to i1
  %xtraiter576 = and i32 %i.m, 3                  ; 3 uses
  %i.pv = icmp ult i32 %i.pt, 3
  %unroll_iter581 = and i32 %i.m, -4
  %lcmp.mod578.not = icmp eq i32 %xtraiter576, 0
  %lcmp.mod580 = icmp ne i32 %xtraiter576, 0
  %xtraiter583 = and i32 %i.m, 3                  ; 3 uses
  %i.pw = icmp ult i32 %i.pt, 3
  %unroll_iter588 = and i32 %i.m, -4
  %lcmp.mod585.not = icmp eq i32 %xtraiter583, 0
  %lcmp.mod587 = icmp ne i32 %xtraiter583, 0
  %xtraiter590 = and i64 %wide.trip.count.i.i278, 1
  %i.px = icmp eq i64 %i.ps, 0
  %unroll_iter595 = and i64 %wide.trip.count.i.i278, 2147483646
  %lcmp.mod592.not = icmp eq i64 %xtraiter590, 0
  %lcmp.mod594 = trunc i32 %i.m to i1
  %xtraiter597 = and i32 %i.m, 3                  ; 3 uses
  %i.py = icmp ult i32 %i.pt, 3
  %unroll_iter602 = and i32 %i.m, -4
  %lcmp.mod599.not = icmp eq i32 %xtraiter597, 0
  %lcmp.mod601 = icmp ne i32 %xtraiter597, 0
  %xtraiter604 = and i32 %i.m, 3                  ; 3 uses
  %i.pz = icmp ult i32 %i.pt, 3
  %unroll_iter609 = and i32 %i.m, -4
  %lcmp.mod606.not = icmp eq i32 %xtraiter604, 0
  %lcmp.mod608 = icmp ne i32 %xtraiter604, 0
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph385, %hemdistcache.exit329
  %.2212384 = phi i16 [ 1, %.lr.ph385 ], [ %i.zh, %hemdistcache.exit329 ] ; 3 uses
  %i.qa = zext i16 %.2212384 to i64               ; 2 uses
  %i.qb = getelementptr [8 x i8], ptr %i.po, i64 %i.qa ; 2 uses
  %i.qc = getelementptr i8, ptr %i.qb, i64 -8
  store i16 %.2212384, ptr %i.qc, align 4
  %i.qd = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.qa ; 6 uses
  %i.qe = load i8, ptr %i.lj, align 8, !range !9, !noundef !10
  %i.qf = trunc nuw i8 %i.qe to i1
  %i.qg = load i8, ptr %i.qd, align 8, !range !9, !noundef !10
  %i.qh = trunc nuw i8 %i.qg to i1                ; 2 uses
  br i1 %i.qf, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  br i1 %i.qh, label %hemdistcache.exit302, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qd, i64 8
  %i.qj = load ptr, ptr %i.qi, align 8            ; 3 uses
  br i1 %i.pr, label %.preheader.i.i.i295, label %bb.an

.preheader.i.i.i295:                              ; preds = %bb.am
  br i1 %.not11.i.i14.i287, label %sizebitvec.exit.i293, label %.lr.ph.i.i.i297.preheader

.lr.ph.i.i.i297.preheader:                        ; preds = %.preheader.i.i.i295
  br i1 %i.pw, label %.lr.ph.i.i.i297.epil.preheader, label %.lr.ph.i.i.i297

.lr.ph.i.i.i297:                                  ; preds = %.lr.ph.i.i.i297.preheader, %.lr.ph.i.i.i297
  %.014.i.i.i298 = phi i64 [ %i.rl, %.lr.ph.i.i.i297 ], [ 0, %.lr.ph.i.i.i297.preheader ]
  %.0812.i.i.i300 = phi ptr [ %i.rf, %.lr.ph.i.i.i297 ], [ %i.qj, %.lr.ph.i.i.i297.preheader ] ; 5 uses
  %niter589 = phi i32 [ %niter589.next.3, %.lr.ph.i.i.i297 ], [ 0, %.lr.ph.i.i.i297.preheader ]
  %i.qk = getelementptr inbounds nuw i8, ptr %.0812.i.i.i300, i64 1
  %i.ql = load i8, ptr %.0812.i.i.i300, align 1
  %i.qm = zext i8 %i.ql to i64
  %i.qn = getelementptr inbounds nuw i8, ptr @pg_number_of_ones, i64 %i.qm
  %i.qo = load i8, ptr %i.qn, align 1
  %i.qp = zext i8 %i.qo to i64
  %i.qq = add i64 %.014.i.i.i298, %i.qp
  %i.qr = getelementptr inbounds nuw i8, ptr %.0812.i.i.i300, i64 2
  %i.qs = load i8, ptr %i.qk, align 1
  %i.qt = zext i8 %i.qs to i64
  %i.qu = getelementptr inbounds nuw i8, ptr @pg_number_of_ones, i64 %i.qt
  %i.qv = load i8, ptr %i.qu, align 1
  %i.qw = zext i8 %i.qv to i64
  %i.qx = add i64 %i.qq, %i.qw
  %i.qy = getelementptr inbounds nuw i8, ptr %.0812.i.i.i300, i64 3
  %i.qz = load i8, ptr %i.qr, align 1
  %i.ra = zext i8 %i.qz to i64
  %i.rb = getelementptr inbounds nuw i8, ptr @pg_number_of_ones, i64 %i.ra
  %i.rc = load i8, ptr %i.rb, align 1
  %i.rd = zext i8 %i.rc to i64
  %i.re = add i64 %i.qx, %i.rd
  %i.rf = getelementptr inbounds nuw i8, ptr %.0812.i.i.i300, i64 4 ; 2 uses
  %i.rg = load i8, ptr %i.qy, align 1
  %i.rh = zext i8 %i.rg to i64
  %i.ri = getelementptr inbounds nuw i8, ptr @pg_number_of_ones, i64 %i.rh
  %i.rj = load i8, ptr %i.ri, align 1
  %i.rk = zext i8 %i.rj to i64
  %i.rl = add i64 %i.re, %i.rk                    ; 3 uses
  %niter589.next.3 = add nuw i32 %niter589, 4     ; 2 uses
  %niter589.ncmp.3 = icmp eq i32 %niter589.next.3, %unroll_iter588
  br i1 %niter589.ncmp.3, label %sizebitvec.exit.i293.loopexit.unr-lcssa, label %.lr.ph.i.i.i297, !llvm.loop !4

bb.an:                                            ; preds = %bb.am
  %i.rm = load ptr, ptr @pg_popcount_optimized, align 8
  %i.rn = tail call i64 %i.rm(ptr noundef %i.qj, i32 noundef %i.m) #12, !inline_history !40
  br label %sizebitvec.exit.i293

sizebitvec.exit.i293.loopexit.unr-lcssa:          ; preds = %.lr.ph.i.i.i297
  br i1 %lcmp.mod585.not, label %sizebitvec.exit.i293, label %.lr.ph.i.i.i297.epil.preheader

.lr.ph.i.i.i297.epil.preheader:                   ; preds = %sizebitvec.exit.i293.loopexit.unr-lcssa, %.lr.ph.i.i.i297.preheader
  %.014.i.i.i298.epil.init = phi i64 [ 0, %.lr.ph.i.i.i297.preheader ], [ %i.rl, %sizebitvec.exit.i293.loopexit.unr-lcssa ]
  %.0812.i.i.i300.epil.init = phi ptr [ %i.qj, %.lr.ph.i.i.i297.preheader ], [ %i.rf, %sizebitvec.exit.i293.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod587)
  br label %.lr.ph.i.i.i297.epil

.lr.ph.i.i.i297.epil:                             ; preds = %.lr.ph.i.i.i297.epil, %.lr.ph.i.i.i297.epil.preheader
  %.014.i.i.i298.epil = phi i64 [ %i.ru, %.lr.ph.i.i.i297.epil ], [ %.014.i.i.i298.epil.init, %.lr.ph.i.i.i297.epil.preheader ]
  %.0812.i.i.i300.epil = phi ptr [ %i.ro, %.lr.ph.i.i.i297.epil ], [ %.0812.i.i.i300.epil.init, %.lr.ph.i.i.i297.epil.preheader ] ; 2 uses
  %epil.iter584 = phi i32 [ %epil.iter584.next, %.lr.ph.i.i.i297.epil ], [ 0, %.lr.ph.i.i.i297.epil.preheader ]
  %i.ro = getelementptr inbounds nuw i8, ptr %.0812.i.i.i300.epil, i64 1
  %i.rp = load i8, ptr %.0812.i.i.i300.epil, align 1
  %i.rq = zext i8 %i.rp to i64
  %i.rr = getelementptr inbounds nuw i8, ptr @pg_number_of_ones, i64 %i.rq
  %i.rs = load i8, ptr %i.rr, align 1
  %i.rt = zext i8 %i.rs to i64
  %i.ru = add i64 %.014.i.i.i298.epil, %i.rt      ; 2 uses
  %epil.iter584.next = add i32 %epil.iter584, 1   ; 2 uses
  %epil.iter584.cmp.not = icmp eq i32 %epil.iter584.next, %xtraiter583
  br i1 %epil.iter584.cmp.not, label %sizebitvec.exit.i293, label %.lr.ph.i.i.i297.epil, !llvm.loop !44

sizebitvec.exit.i293:                             ; preds = %sizebitvec.exit.i293.loopexit.unr-lcssa, %.lr.ph.i.i.i297.epil, %bb.an, %.preheader.i.i.i295
  %.09.i.i.i294 = phi i64 [ %i.rn, %bb.an ], [ 0, %.preheader.i.i.i295 ], [ %i.rl, %sizebitvec.exit.i293.loopexit.unr-lcssa ], [ %i.ru, %.lr.ph.i.i.i297.epil ]
  %i.rv = trunc i64 %.09.i.i.i294 to i32
  %i.rw = sub i32 %i.pq, %i.rv
  br label %hemdistcache.exit302

bb.ao:                                            ; preds = %bb.ak
  %i.rx = load ptr, ptr %i.lo, align 8            ; 6 uses
  br i1 %i.qh, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  br i1 %i.pr, label %.preheader.i.i13.i286, label %bb.aq

.preheader.i.i13.i286:                            ; preds = %bb.ap
  br i1 %.not11.i.i14.i287, label %sizebitvec.exit20.i284, label %.lr.ph.i.i15.i288.preheader

.lr.ph.i.i15.i288.preheader:                      ; preds = %.preheader.i.i13.i286
  br i1 %i.pv, label %.lr.ph.i.i15.i288.epil.preheader, label %.lr.ph.i.i15.i288

.lr.ph.i.i15.i288:                                ; preds = %.lr.ph.i.i15.i288.preheader, %.lr.ph.i.i15.i288
  %.014.i.i16.i289 = phi i64 [ %i.sz, %.lr.ph.i.i15.i288 ], [ 0, %.lr.ph.i.i15.i288.preheader ]
  %.0812.i.i18.i291 = phi ptr [ %i.st, %.lr.ph.i.i15.i288 ], [ %i.rx, %.lr.ph.i.i15.i288.preheader ] ; 5 uses
  %niter582 = phi i32 [ %niter582.next.3, %.lr.ph.i.i15.i288 ], [ 0, %.lr.ph.i.i15.i288.preheader ]
  %i.ry = getelementptr inbounds nuw i8, ptr %.0812.i.i18.i291, i64 1
  %i.rz = load i8, ptr %.0812.i.i18.i291, align 1
  %i.sa = zext i8 %i.rz to i64
  %i.sb = getelementptr inbounds nuw i8, ptr @pg_number_of_ones, i64 %i.sa
  %i.sc = load i8, ptr %i.sb, align 1
  %i.sd = zext i8 %i.sc to i64
  %i.se = add i64 %.014.i.i16.i289, %i.sd
  %i.sf = getelementptr inbounds nuw i8, ptr %.0812.i.i18.i291, i64 2
  %i.sg = load i8, ptr %i.ry, align 1
  %i.sh = zext i8 %i.sg to i64
  %i.si = getelementptr inbounds nuw i8, ptr @pg_number_of_ones, i64 %i.sh
  %i.sj = load i8, ptr %i.si, align 1
  %i.sk = zext i8 %i.sj to i64
  %i.sl = add i64 %i.se, %i.sk
  %i.sm = getelementptr inbounds nuw i8, ptr %.0812.i.i18.i291, i64 3
  %i.sn = load i8, ptr %i.sf, align 1
  %i.so = zext i8 %i.sn to i64
  %i.sp = getelementptr inbounds nuw i8, ptr @pg_number_of_ones, i64 %i.so
  %i.sq = load i8, ptr %i.sp, align 1
  %i.sr = zext i8 %i.sq to i64
  %i.ss = add i64 %i.sl, %i.sr
  %i.st = getelementptr inbounds nuw i8, ptr %.0812.i.i18.i291, i64 4 ; 2 uses
  %i.su = load i8, ptr %i.sm, align 1
  %i.sv = zext i8 %i.su to i64
  %i.sw = getelementptr inbounds nuw i8, ptr @pg_number_of_ones, i64 %i.sv
  %i.sx = load i8, ptr %i.sw, align 1
  %i.sy = zext i8 %i.sx to i64
  %i.sz = add i64 %i.ss, %i.sy                    ; 3 uses
  %niter582.next.3 = add nuw i32 %niter582, 4     ; 2 uses
  %niter582.ncmp.3 = icmp eq i32 %niter582.next.3, %unroll_iter581
  br i1 %niter582.ncmp.3, label %sizebitvec.exit20.i284.loopexit.unr-lcssa, label %.lr.ph.i.i15.i288, !llvm.loop !4

bb.aq:                                            ; preds = %bb.ap
  %i.ta = load ptr, ptr @pg_popcount_optimized, align 8
  %i.tb = tail call i64 %i.ta(ptr noundef %i.rx, i32 noundef %i.m) #12, !inline_history !40
  br label %sizebitvec.exit20.i284

sizebitvec.exit20.i284.loopexit.unr-lcssa:        ; preds = %.lr.ph.i.i15.i288
  br i1 %lcmp.mod578.not, label %sizebitvec.exit20.i284, label %.lr.ph.i.i15.i288.epil.preheader

.lr.ph.i.i15.i288.epil.preheader:                 ; preds = %sizebitvec.exit20.i284.loopexit.unr-lcssa, %.lr.ph.i.i15.i288.preheader
  %.014.i.i16.i289.epil.init = phi i64 [ 0, %.lr.ph.i.i15.i288.preheader ], [ %i.sz, %sizebitvec.exit20.i284.loopexit.unr-lcssa ]
  %.0812.i.i18.i291.epil.init = phi ptr [ %i.rx, %.lr.ph.i.i15.i288.preheader ], [ %i.st, %sizebitvec.exit20.i284.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod580)
  br label %.lr.ph.i.i15.i288.epil

.lr.ph.i.i15.i288.epil:                           ; preds = %.lr.ph.i.i15.i288.epil, %.lr.ph.i.i15.i288.epil.preheader
  %.014.i.i16.i289.epil = phi i64 [ %i.ti, %.lr.ph.i.i15.i288.epil ], [ %.014.i.i16.i289.epil.init, %.lr.ph.i.i15.i288.epil.preheader ]
end_hunk_0
begin_hunk_1_@gtsvector_picksplit:bb.a
  %i.vs = getelementptr inbounds nuw i8, ptr %.0812.i.i.i327, i64 4 ; 2 uses
  %i.vt = load i8, ptr %i.vl, align 1
  %i.vu = zext i8 %i.vt to i64
  %i.vv = getelementptr inbounds nuw i8, ptr @pg_number_of_ones, i64 %i.vu
  %i.vw = load i8, ptr %i.vv, align 1
  %i.vx = zext i8 %i.vw to i64
  %i.vy = add i64 %i.vr, %i.vx                    ; 3 uses
  %niter610.next.3 = add nuw i32 %niter610, 4     ; 2 uses
  %niter610.ncmp.3 = icmp eq i32 %niter610.next.3, %unroll_iter609
  br i1 %niter610.ncmp.3, label %sizebitvec.exit.i320.loopexit.unr-lcssa, label %.lr.ph.i.i.i324, !llvm.loop !4

bb.au:                                            ; preds = %bb.at
  %i.vz = load ptr, ptr @pg_popcount_optimized, align 8
  %i.wa = tail call i64 %i.vz(ptr noundef %i.uw, i32 noundef %i.m) #12, !inline_history !40
  br label %sizebitvec.exit.i320

sizebitvec.exit.i320.loopexit.unr-lcssa:          ; preds = %.lr.ph.i.i.i324
  br i1 %lcmp.mod606.not, label %sizebitvec.exit.i320, label %.lr.ph.i.i.i324.epil.preheader

.lr.ph.i.i.i324.epil.preheader:                   ; preds = %sizebitvec.exit.i320.loopexit.unr-lcssa, %.lr.ph.i.i.i324.preheader
  %.014.i.i.i325.epil.init = phi i64 [ 0, %.lr.ph.i.i.i324.preheader ], [ %i.vy, %sizebitvec.exit.i320.loopexit.unr-lcssa ]
  %.0812.i.i.i327.epil.init = phi ptr [ %i.uw, %.lr.ph.i.i.i324.preheader ], [ %i.vs, %sizebitvec.exit.i320.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod608)
  br label %.lr.ph.i.i.i324.epil

.lr.ph.i.i.i324.epil:                             ; preds = %.lr.ph.i.i.i324.epil, %.lr.ph.i.i.i324.epil.preheader
  %.014.i.i.i325.epil = phi i64 [ %i.wh, %.lr.ph.i.i.i324.epil ], [ %.014.i.i.i325.epil.init, %.lr.ph.i.i.i324.epil.preheader ]
  %.0812.i.i.i327.epil = phi ptr [ %i.wb, %.lr.ph.i.i.i324.epil ], [ %.0812.i.i.i327.epil.init, %.lr.ph.i.i.i324.epil.preheader ] ; 2 uses
  %epil.iter605 = phi i32 [ %epil.iter605.next, %.lr.ph.i.i.i324.epil ], [ 0, %.lr.ph.i.i.i324.epil.preheader ]
  %i.wb = getelementptr inbounds nuw i8, ptr %.0812.i.i.i327.epil, i64 1
  %i.wc = load i8, ptr %.0812.i.i.i327.epil, align 1
  %i.wd = zext i8 %i.wc to i64
  %i.we = getelementptr inbounds nuw i8, ptr @pg_number_of_ones, i64 %i.wd
  %i.wf = load i8, ptr %i.we, align 1
  %i.wg = zext i8 %i.wf to i64
  %i.wh = add i64 %.014.i.i.i325.epil, %i.wg      ; 2 uses
  %epil.iter605.next = add i32 %epil.iter605, 1   ; 2 uses
  %epil.iter605.cmp.not = icmp eq i32 %epil.iter605.next, %xtraiter604
  br i1 %epil.iter605.cmp.not, label %sizebitvec.exit.i320, label %.lr.ph.i.i.i324.epil, !llvm.loop !46

sizebitvec.exit.i320:                             ; preds = %sizebitvec.exit.i320.loopexit.unr-lcssa, %.lr.ph.i.i.i324.epil, %bb.au, %.preheader.i.i.i322
  %.09.i.i.i321 = phi i64 [ %i.wa, %bb.au ], [ 0, %.preheader.i.i.i322 ], [ %i.vy, %sizebitvec.exit.i320.loopexit.unr-lcssa ], [ %i.wh, %.lr.ph.i.i.i324.epil ]
  %i.wi = trunc i64 %.09.i.i.i321 to i32
  %i.wj = sub i32 %i.pq, %i.wi
  br label %hemdistcache.exit329

bb.av:                                            ; preds = %hemdistcache.exit302
  %i.wk = load ptr, ptr %i.mf, align 8            ; 6 uses
  br i1 %i.uu, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  br i1 %i.pr, label %.preheader.i.i13.i313, label %bb.ax

.preheader.i.i13.i313:                            ; preds = %bb.aw
  br i1 %.not11.i.i14.i287, label %sizebitvec.exit20.i311, label %.lr.ph.i.i15.i315.preheader

.lr.ph.i.i15.i315.preheader:                      ; preds = %.preheader.i.i13.i313
  br i1 %i.py, label %.lr.ph.i.i15.i315.epil.preheader, label %.lr.ph.i.i15.i315

.lr.ph.i.i15.i315:                                ; preds = %.lr.ph.i.i15.i315.preheader, %.lr.ph.i.i15.i315
  %.014.i.i16.i316 = phi i64 [ %i.xm, %.lr.ph.i.i15.i315 ], [ 0, %.lr.ph.i.i15.i315.preheader ]
  %.0812.i.i18.i318 = phi ptr [ %i.xg, %.lr.ph.i.i15.i315 ], [ %i.wk, %.lr.ph.i.i15.i315.preheader ] ; 5 uses
  %niter603 = phi i32 [ %niter603.next.3, %.lr.ph.i.i15.i315 ], [ 0, %.lr.ph.i.i15.i315.preheader ]
  %i.wl = getelementptr inbounds nuw i8, ptr %.0812.i.i18.i318, i64 1
  %i.wm = load i8, ptr %.0812.i.i18.i318, align 1
  %i.wn = zext i8 %i.wm to i64
  %i.wo = getelementptr inbounds nuw i8, ptr @pg_number_of_ones, i64 %i.wn
  %i.wp = load i8, ptr %i.wo, align 1
  %i.wq = zext i8 %i.wp to i64
  %i.wr = add i64 %.014.i.i16.i316, %i.wq
  %i.ws = getelementptr inbounds nuw i8, ptr %.0812.i.i18.i318, i64 2
  %i.wt = load i8, ptr %i.wl, align 1
  %i.wu = zext i8 %i.wt to i64
  %i.wv = getelementptr inbounds nuw i8, ptr @pg_number_of_ones, i64 %i.wu
  %i.ww = load i8, ptr %i.wv, align 1
  %i.wx = zext i8 %i.ww to i64
  %i.wy = add i64 %i.wr, %i.wx
  %i.wz = getelementptr inbounds nuw i8, ptr %.0812.i.i18.i318, i64 3
  %i.xa = load i8, ptr %i.ws, align 1
  %i.xb = zext i8 %i.xa to i64
  %i.xc = getelementptr inbounds nuw i8, ptr @pg_number_of_ones, i64 %i.xb
  %i.xd = load i8, ptr %i.xc, align 1
  %i.xe = zext i8 %i.xd to i64
  %i.xf = add i64 %i.wy, %i.xe
  %i.xg = getelementptr inbounds nuw i8, ptr %.0812.i.i18.i318, i64 4 ; 2 uses
  %i.xh = load i8, ptr %i.wz, align 1
  %i.xi = zext i8 %i.xh to i64
  %i.xj = getelementptr inbounds nuw i8, ptr @pg_number_of_ones, i64 %i.xi
  %i.xk = load i8, ptr %i.xj, align 1
  %i.xl = zext i8 %i.xk to i64
  %i.xm = add i64 %i.xf, %i.xl                    ; 3 uses
  %niter603.next.3 = add nuw i32 %niter603, 4     ; 2 uses
  %niter603.ncmp.3 = icmp eq i32 %niter603.next.3, %unroll_iter602
  br i1 %niter603.ncmp.3, label %sizebitvec.exit20.i311.loopexit.unr-lcssa, label %.lr.ph.i.i15.i315, !llvm.loop !4

bb.ax:                                            ; preds = %bb.aw
  %i.xn = load ptr, ptr @pg_popcount_optimized, align 8
  %i.xo = tail call i64 %i.xn(ptr noundef %i.wk, i32 noundef %i.m) #12, !inline_history !40
  br label %sizebitvec.exit20.i311

sizebitvec.exit20.i311.loopexit.unr-lcssa:        ; preds = %.lr.ph.i.i15.i315
  br i1 %lcmp.mod599.not, label %sizebitvec.exit20.i311, label %.lr.ph.i.i15.i315.epil.preheader

.lr.ph.i.i15.i315.epil.preheader:                 ; preds = %sizebitvec.exit20.i311.loopexit.unr-lcssa, %.lr.ph.i.i15.i315.preheader
  %.014.i.i16.i316.epil.init = phi i64 [ 0, %.lr.ph.i.i15.i315.preheader ], [ %i.xm, %sizebitvec.exit20.i311.loopexit.unr-lcssa ]
  %.0812.i.i18.i318.epil.init = phi ptr [ %i.wk, %.lr.ph.i.i15.i315.preheader ], [ %i.xg, %sizebitvec.exit20.i311.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod601)
  br label %.lr.ph.i.i15.i315.epil

.lr.ph.i.i15.i315.epil:                           ; preds = %.lr.ph.i.i15.i315.epil, %.lr.ph.i.i15.i315.epil.preheader
  %.014.i.i16.i316.epil = phi i64 [ %i.xv, %.lr.ph.i.i15.i315.epil ], [ %.014.i.i16.i316.epil.init, %.lr.ph.i.i15.i315.epil.preheader ]
  %.0812.i.i18.i318.epil = phi ptr [ %i.xp, %.lr.ph.i.i15.i315.epil ], [ %.0812.i.i18.i318.epil.init, %.lr.ph.i.i15.i315.epil.preheader ] ; 2 uses
  %epil.iter598 = phi i32 [ %epil.iter598.next, %.lr.ph.i.i15.i315.epil ], [ 0, %.lr.ph.i.i15.i315.epil.preheader ]
  %i.xp = getelementptr inbounds nuw i8, ptr %.0812.i.i18.i318.epil, i64 1
  %i.xq = load i8, ptr %.0812.i.i18.i318.epil, align 1
  %i.xr = zext i8 %i.xq to i64
  %i.xs = getelementptr inbounds nuw i8, ptr @pg_number_of_ones, i64 %i.xr
  %i.xt = load i8, ptr %i.xs, align 1
  %i.xu = zext i8 %i.xt to i64
  %i.xv = add i64 %.014.i.i16.i316.epil, %i.xu    ; 2 uses
  %epil.iter598.next = add i32 %epil.iter598, 1   ; 2 uses
  %epil.iter598.cmp.not = icmp eq i32 %epil.iter598.next, %xtraiter597
  br i1 %epil.iter598.cmp.not, label %sizebitvec.exit20.i311, label %.lr.ph.i.i15.i315.epil, !llvm.loop !47

sizebitvec.exit20.i311:                           ; preds = %sizebitvec.exit20.i311.loopexit.unr-lcssa, %.lr.ph.i.i15.i315.epil, %bb.ax, %.preheader.i.i13.i313
  %.09.i.i12.i312 = phi i64 [ %i.xo, %bb.ax ], [ 0, %.preheader.i.i13.i313 ], [ %i.xm, %sizebitvec.exit20.i311.loopexit.unr-lcssa ], [ %i.xv, %.lr.ph.i.i15.i315.epil ]
  %i.xw = trunc i64 %.09.i.i12.i312 to i32
  %i.xx = sub i32 %i.pq, %i.xw
  br label %hemdistcache.exit329

bb.ay:                                            ; preds = %bb.av
  %i.xy = getelementptr inbounds nuw i8, ptr %i.qd, i64 8
  %i.xz = load ptr, ptr %i.xy, align 8            ; 3 uses
  br i1 %i.pp, label %.lr.ph.i.i306.preheader, label %hemdistcache.exit329

.lr.ph.i.i306.preheader:                          ; preds = %bb.ay
  br i1 %i.px, label %.lr.ph.i.i306.epil.preheader, label %.lr.ph.i.i306

.lr.ph.i.i306:                                    ; preds = %.lr.ph.i.i306.preheader, %.lr.ph.i.i306
  %indvars.iv.i.i307 = phi i64 [ %indvars.iv.next.i.i309.1, %.lr.ph.i.i306 ], [ 0, %.lr.ph.i.i306.preheader ] ; 4 uses
  %.011.i.i308 = phi i32 [ %i.yt, %.lr.ph.i.i306 ], [ 0, %.lr.ph.i.i306.preheader ]
  %niter596 = phi i64 [ %niter596.next.1, %.lr.ph.i.i306 ], [ 0, %.lr.ph.i.i306.preheader ]
  %i.ya = getelementptr inbounds nuw i8, ptr %i.wk, i64 %indvars.iv.i.i307
  %i.yb = load i8, ptr %i.ya, align 1
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xz, i64 %indvars.iv.i.i307
  %i.yd = load i8, ptr %i.yc, align 1
  %i.ye = xor i8 %i.yd, %i.yb
  %i.yf = zext i8 %i.ye to i64
  %i.yg = getelementptr inbounds nuw i8, ptr @pg_number_of_ones, i64 %i.yf
  %i.yh = load i8, ptr %i.yg, align 1
  %i.yi = zext i8 %i.yh to i32
  %i.yj = add i32 %.011.i.i308, %i.yi
  %indvars.iv.next.i.i309 = or disjoint i64 %indvars.iv.i.i307, 1 ; 2 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %i.wk, i64 %indvars.iv.next.i.i309
  %i.yl = load i8, ptr %i.yk, align 1
  %i.ym = getelementptr inbounds nuw i8, ptr %i.xz, i64 %indvars.iv.next.i.i309
  %i.yn = load i8, ptr %i.ym, align 1
  %i.yo = xor i8 %i.yn, %i.yl
  %i.yp = zext i8 %i.yo to i64
  %i.yq = getelementptr inbounds nuw i8, ptr @pg_number_of_ones, i64 %i.yp
  %i.yr = load i8, ptr %i.yq, align 1
  %i.ys = zext i8 %i.yr to i32
  %i.yt = add i32 %i.yj, %i.ys                    ; 3 uses
  %indvars.iv.next.i.i309.1 = add nuw nsw i64 %indvars.iv.i.i307, 2 ; 2 uses
  %niter596.next.1 = add i64 %niter596, 2         ; 2 uses
  %niter596.ncmp.1 = icmp eq i64 %niter596.next.1, %unroll_iter595
  br i1 %niter596.ncmp.1, label %hemdistcache.exit329.loopexit.unr-lcssa, label %.lr.ph.i.i306, !llvm.loop !34

hemdistcache.exit329.loopexit.unr-lcssa:          ; preds = %.lr.ph.i.i306
  br i1 %lcmp.mod592.not, label %hemdistcache.exit329, label %.lr.ph.i.i306.epil.preheader

.lr.ph.i.i306.epil.preheader:                     ; preds = %hemdistcache.exit329.loopexit.unr-lcssa, %.lr.ph.i.i306.preheader
  %indvars.iv.i.i307.epil.init = phi i64 [ 0, %.lr.ph.i.i306.preheader ], [ %indvars.iv.next.i.i309.1, %hemdistcache.exit329.loopexit.unr-lcssa ] ; 2 uses
  %.011.i.i308.epil.init = phi i32 [ 0, %.lr.ph.i.i306.preheader ], [ %i.yt, %hemdistcache.exit329.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod594)
  %i.yu = getelementptr inbounds nuw i8, ptr %i.wk, i64 %indvars.iv.i.i307.epil.init
  %i.yv = load i8, ptr %i.yu, align 1
  %i.yw = getelementptr inbounds nuw i8, ptr %i.xz, i64 %indvars.iv.i.i307.epil.init
  %i.yx = load i8, ptr %i.yw, align 1
  %i.yy = xor i8 %i.yx, %i.yv
  %i.yz = zext i8 %i.yy to i64
  %i.za = getelementptr inbounds nuw i8, ptr @pg_number_of_ones, i64 %i.yz
  %i.zb = load i8, ptr %i.za, align 1
  %i.zc = zext i8 %i.zb to i32
  %i.zd = add i32 %.011.i.i308.epil.init, %i.zc
  br label %hemdistcache.exit329

hemdistcache.exit329:                             ; preds = %.lr.ph.i.i306.epil.preheader, %hemdistcache.exit329.loopexit.unr-lcssa, %bb.as, %sizebitvec.exit.i320, %sizebitvec.exit20.i311, %bb.ay
  %.0.i303 = phi i32 [ 0, %bb.as ], [ %i.wj, %sizebitvec.exit.i320 ], [ %i.xx, %sizebitvec.exit20.i311 ], [ 0, %bb.ay ], [ %i.yt, %hemdistcache.exit329.loopexit.unr-lcssa ], [ %i.zd, %.lr.ph.i.i306.epil.preheader ]
  %i.ze = sub i32 %.0.i276, %.0.i303
  %i.zf = tail call i32 @llvm.abs.i32(i32 %i.ze, i1 false)
  %i.zg = getelementptr i8, ptr %i.qb, i64 -4
  store i32 %i.zf, ptr %i.zg, align 4
  %i.zh = add i16 %.2212384, 1                    ; 2 uses
  %.not = icmp ugt i16 %i.zh, %i.ms
  br i1 %.not, label %._crit_edge386, label %bb.ak, !llvm.loop !48

._crit_edge386:                                   ; preds = %hemdistcache.exit329
  tail call void @pg_qsort(ptr noundef nonnull %i.po, i64 noundef %i.mt, i64 noundef 8, ptr noundef nonnull @comparecost) #12
  %i.zi = icmp sgt i32 %i.m, 0                    ; 4 uses
  %wide.trip.count.i = zext i32 %i.m to i64       ; 10 uses
  %i.zj = shl i32 %i.m, 3                         ; 2 uses
  %i.zk = icmp slt i32 %i.m, 8                    ; 2 uses
  %.not11.i.i = icmp eq i32 %i.m, 0               ; 2 uses
  %i.zl = sext i32 %i.m to i64                    ; 2 uses
  %i.zm = add nuw nsw i64 %wide.trip.count.i.i278, 8 ; 2 uses
  %scevgep = getelementptr i8, ptr %i.lt, i64 %i.zm
  %scevgep488 = getelementptr i8, ptr %i.mj, i64 %i.zm
  %xtraiter611 = and i64 %wide.trip.count.i, 1
  %i.zn = icmp eq i64 %i.ps, 0
  %unroll_iter616 = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod613.not = icmp eq i64 %xtraiter611, 0
  %lcmp.mod615 = trunc i32 %i.m to i1
  %xtraiter618 = and i32 %i.m, 3                  ; 3 uses
  %i.zo = icmp ult i32 %i.pt, 3
  %unroll_iter623 = and i32 %i.m, -4
  %lcmp.mod620.not = icmp eq i32 %xtraiter618, 0
  %lcmp.mod622 = icmp ne i32 %xtraiter618, 0
  %xtraiter625 = and i64 %wide.trip.count.i, 1
  %i.zp = icmp eq i64 %i.ps, 0
  %unroll_iter630 = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod627.not = icmp eq i64 %xtraiter625, 0
  %lcmp.mod629 = trunc i32 %i.m to i1
  %xtraiter632 = and i32 %i.m, 3                  ; 3 uses
  %i.zq = icmp ult i32 %i.pt, 3
  %unroll_iter637 = and i32 %i.m, -4
  %lcmp.mod634.not = icmp eq i32 %xtraiter632, 0
  %lcmp.mod636 = icmp ne i32 %xtraiter632, 0
  %min.iters.check493 = icmp ult i32 %i.m, 4
  %min.iters.check495 = icmp ult i32 %i.m, 32
  %i.zr = and i64 %wide.trip.count.i.i278, 28
  %n.vec497 = and i64 %wide.trip.count.i.i278, 2147483616 ; 4 uses
  %cmp.n506 = icmp eq i64 %n.vec497, %wide.trip.count.i.i278
  %min.epilog.iters.check511 = icmp eq i64 %i.zr, 0
  %n.vec513 = and i64 %wide.trip.count.i.i278, 2147483644 ; 3 uses
  %cmp.n520 = icmp eq i64 %n.vec513, %wide.trip.count.i.i278
  %xtraiter639 = and i64 %wide.trip.count.i, 3    ; 2 uses
  %lcmp.mod640.not = icmp eq i64 %xtraiter639, 0
  %min.iters.check = icmp ult i32 %i.m, 4
  %min.iters.check477 = icmp ult i32 %i.m, 32
  %i.zs = and i64 %wide.trip.count.i.i278, 28
  %n.vec = and i64 %wide.trip.count.i.i278, 2147483616 ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i278
  %min.epilog.iters.check = icmp eq i64 %i.zs, 0
  %n.vec481 = and i64 %wide.trip.count.i.i278, 2147483644 ; 3 uses
  %cmp.n486 = icmp eq i64 %n.vec481, %wide.trip.count.i.i278
  %xtraiter641 = and i64 %wide.trip.count.i, 3    ; 2 uses
  %lcmp.mod642.not = icmp eq i64 %xtraiter641, 0
  br label %bb.az

bb.az:                                            ; preds = %._crit_edge386, %bb.bu
  %indvars.iv433 = phi i64 [ 0, %._crit_edge386 ], [ %indvars.iv.next434, %bb.bu ] ; 2 uses
  %.0195395 = phi ptr [ %i.le, %._crit_edge386 ], [ %.1196, %bb.bu ] ; 6 uses
  %.0197394 = phi ptr [ %i.lc, %._crit_edge386 ], [ %.1198, %bb.bu ] ; 6 uses
  %i.zt = getelementptr inbounds nuw [8 x i8], ptr %i.po, i64 %indvars.iv433
  %i.zu = load i16, ptr %i.zt, align 4            ; 8 uses
  %i.zv = icmp eq i16 %i.zu, %spec.select
  br i1 %i.zv, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.zw = getelementptr inbounds nuw i8, ptr %.0197394, i64 2
  store i16 %spec.select, ptr %.0197394, align 2
  %i.zx = load i32, ptr %i.ld, align 8
  %i.zy = add i32 %i.zx, 1
  store i32 %i.zy, ptr %i.ld, align 8
  br label %bb.bu

bb.bb:                                            ; preds = %bb.az
  %i.zz = icmp eq i16 %i.zu, %spec.select233
  br i1 %i.zz, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.aaa = getelementptr inbounds nuw i8, ptr %.0195395, i64 2
  store i16 %spec.select233, ptr %.0195395, align 2
  %i.aab = load i32, ptr %i.lf, align 8
  %i.aac = add i32 %i.aab, 1
  store i32 %i.aac, ptr %i.lf, align 8
  br label %bb.bu

bb.bd:                                            ; preds = %bb.bb
  %i.aad = load i32, ptr %i.lv, align 4
  %i.aae = and i32 %i.aad, 4
  %.not224 = icmp eq i32 %i.aae, 0
  %i.aaf = zext i16 %i.zu to i64                  ; 2 uses
  %i.aag = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.aaf ; 2 uses
  %i.aah = load i8, ptr %i.aag, align 8, !range !9, !noundef !10
  %i.aai = trunc nuw i8 %i.aah to i1              ; 2 uses
  br i1 %.not224, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  br i1 %i.aai, label %.thread.thread, label %bb.bh

bb.bf:                                            ; preds = %bb.bd
  br i1 %i.aai, label %hemdistsign.exit, label %.thread

.thread:                                          ; preds = %bb.bf
  %i.aaj = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.aaf
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaj, i64 8
  %i.aal = load ptr, ptr %i.aak, align 8
  br label %.thread.thread

.thread.thread:                                   ; preds = %bb.be, %.thread
  %i.aam = phi ptr [ %i.aal, %.thread ], [ %i.mp, %bb.be ] ; 3 uses
  br i1 %i.zk, label %.preheader.i.i, label %bb.bg

.preheader.i.i:                                   ; preds = %.thread.thread
  br i1 %.not11.i.i, label %sizebitvec.exit, label %.lr.ph.i.i330.preheader

.lr.ph.i.i330.preheader:                          ; preds = %.preheader.i.i
  br i1 %i.zo, label %.lr.ph.i.i330.epil.preheader, label %.lr.ph.i.i330

.lr.ph.i.i330:                                    ; preds = %.lr.ph.i.i330.preheader, %.lr.ph.i.i330
  %.014.i.i = phi i64 [ %i.abo, %.lr.ph.i.i330 ], [ 0, %.lr.ph.i.i330.preheader ]
  %.0812.i.i = phi ptr [ %i.abi, %.lr.ph.i.i330 ], [ %i.aam, %.lr.ph.i.i330.preheader ] ; 5 uses
  %niter624 = phi i32 [ %niter624.next.3, %.lr.ph.i.i330 ], [ 0, %.lr.ph.i.i330.preheader ]
  %i.aan = getelementptr inbounds nuw i8, ptr %.0812.i.i, i64 1
  %i.aao = load i8, ptr %.0812.i.i, align 1
  %i.aap = zext i8 %i.aao to i64
  %i.aaq = getelementptr inbounds nuw i8, ptr @pg_number_of_ones, i64 %i.aap
  %i.aar = load i8, ptr %i.aaq, align 1
  %i.aas = zext i8 %i.aar to i64
  %i.aat = add i64 %.014.i.i, %i.aas
  %i.aau = getelementptr inbounds nuw i8, ptr %.0812.i.i, i64 2
  %i.aav = load i8, ptr %i.aan, align 1
  %i.aaw = zext i8 %i.aav to i64
  %i.aax = getelementptr inbounds nuw i8, ptr @pg_number_of_ones, i64 %i.aaw
  %i.aay = load i8, ptr %i.aax, align 1
  %i.aaz = zext i8 %i.aay to i64
  %i.aba = add i64 %i.aat, %i.aaz
  %i.abb = getelementptr inbounds nuw i8, ptr %.0812.i.i, i64 3
  %i.abc = load i8, ptr %i.aau, align 1
  %i.abd = zext i8 %i.abc to i64
  %i.abe = getelementptr inbounds nuw i8, ptr @pg_number_of_ones, i64 %i.abd
  %i.abf = load i8, ptr %i.abe, align 1
  %i.abg = zext i8 %i.abf to i64
  %i.abh = add i64 %i.aba, %i.abg
  %i.abi = getelementptr inbounds nuw i8, ptr %.0812.i.i, i64 4 ; 2 uses
  %i.abj = load i8, ptr %i.abb, align 1
  %i.abk = zext i8 %i.abj to i64
  %i.abl = getelementptr inbounds nuw i8, ptr @pg_number_of_ones, i64 %i.abk
  %i.abm = load i8, ptr %i.abl, align 1
  %i.abn = zext i8 %i.abm to i64
  %i.abo = add i64 %i.abh, %i.abn                 ; 3 uses
  %niter624.next.3 = add nuw i32 %niter624, 4     ; 2 uses
  %niter624.ncmp.3 = icmp eq i32 %niter624.next.3, %unroll_iter623
  br i1 %niter624.ncmp.3, label %sizebitvec.exit.loopexit.unr-lcssa, label %.lr.ph.i.i330, !llvm.loop !4

bb.bg:                                            ; preds = %.thread.thread
  %i.abp = load ptr, ptr @pg_popcount_optimized, align 8
  %i.abq = tail call i64 %i.abp(ptr noundef %i.aam, i32 noundef %i.m) #12, !inline_history !6
  br label %sizebitvec.exit

sizebitvec.exit.loopexit.unr-lcssa:               ; preds = %.lr.ph.i.i330
  br i1 %lcmp.mod620.not, label %sizebitvec.exit, label %.lr.ph.i.i330.epil.preheader

.lr.ph.i.i330.epil.preheader:                     ; preds = %sizebitvec.exit.loopexit.unr-lcssa, %.lr.ph.i.i330.preheader
  %.014.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i330.preheader ], [ %i.abo, %sizebitvec.exit.loopexit.unr-lcssa ]
  %.0812.i.i.epil.init = phi ptr [ %i.aam, %.lr.ph.i.i330.preheader ], [ %i.abi, %sizebitvec.exit.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod622)
  br label %.lr.ph.i.i330.epil

.lr.ph.i.i330.epil:                               ; preds = %.lr.ph.i.i330.epil, %.lr.ph.i.i330.epil.preheader
  %.014.i.i.epil = phi i64 [ %i.abx, %.lr.ph.i.i330.epil ], [ %.014.i.i.epil.init, %.lr.ph.i.i330.epil.preheader ]
  %.0812.i.i.epil = phi ptr [ %i.abr, %.lr.ph.i.i330.epil ], [ %.0812.i.i.epil.init, %.lr.ph.i.i330.epil.preheader ] ; 2 uses
  %epil.iter619 = phi i32 [ %epil.iter619.next, %.lr.ph.i.i330.epil ], [ 0, %.lr.ph.i.i330.epil.preheader ]
  %i.abr = getelementptr inbounds nuw i8, ptr %.0812.i.i.epil, i64 1
  %i.abs = load i8, ptr %.0812.i.i.epil, align 1
  %i.abt = zext i8 %i.abs to i64
  %i.abu = getelementptr inbounds nuw i8, ptr @pg_number_of_ones, i64 %i.abt
  %i.abv = load i8, ptr %i.abu, align 1
  %i.abw = zext i8 %i.abv to i64
  %i.abx = add i64 %.014.i.i.epil, %i.abw         ; 2 uses
  %epil.iter619.next = add i32 %epil.iter619, 1   ; 2 uses
  %epil.iter619.cmp.not = icmp eq i32 %epil.iter619.next, %xtraiter618
  br i1 %epil.iter619.cmp.not, label %sizebitvec.exit, label %.lr.ph.i.i330.epil, !llvm.loop !49

sizebitvec.exit:                                  ; preds = %sizebitvec.exit.loopexit.unr-lcssa, %.lr.ph.i.i330.epil, %.preheader.i.i, %bb.bg
  %.09.i.i = phi i64 [ %i.abq, %bb.bg ], [ 0, %.preheader.i.i ], [ %i.abo, %sizebitvec.exit.loopexit.unr-lcssa ], [ %i.abx, %.lr.ph.i.i330.epil ]
  %i.aby = trunc i64 %.09.i.i to i32
  %i.abz = sub i32 %i.zj, %i.aby
  br label %hemdistsign.exit

bb.bh:                                            ; preds = %bb.be
  %i.aca = getelementptr inbounds nuw i8, ptr %i.aag, i64 8
  %i.acb = load ptr, ptr %i.aca, align 8          ; 3 uses
  br i1 %i.zi, label %.lr.ph.i.preheader, label %hemdistsign.exit

.lr.ph.i.preheader:                               ; preds = %bb.bh
  br i1 %i.zn, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 4 uses
  %.011.i = phi i32 [ %i.acv, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %niter617 = phi i64 [ %niter617.next.1, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.acc = getelementptr inbounds nuw i8, ptr %i.acb, i64 %indvars.iv.i
  %i.acd = load i8, ptr %i.acc, align 1
  %i.ace = getelementptr inbounds nuw i8, ptr %i.mp, i64 %indvars.iv.i
  %i.acf = load i8, ptr %i.ace, align 1
  %i.acg = xor i8 %i.acf, %i.acd
  %i.ach = zext i8 %i.acg to i64
  %i.aci = getelementptr inbounds nuw i8, ptr @pg_number_of_ones, i64 %i.ach
  %i.acj = load i8, ptr %i.aci, align 1
  %i.ack = zext i8 %i.acj to i32
  %i.acl = add i32 %.011.i, %i.ack
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acb, i64 %indvars.iv.next.i
  %i.acn = load i8, ptr %i.acm, align 1
  %i.aco = getelementptr inbounds nuw i8, ptr %i.mp, i64 %indvars.iv.next.i
  %i.acp = load i8, ptr %i.aco, align 1
  %i.acq = xor i8 %i.acp, %i.acn
  %i.acr = zext i8 %i.acq to i64
  %i.acs = getelementptr inbounds nuw i8, ptr @pg_number_of_ones, i64 %i.acr
  %i.act = load i8, ptr %i.acs, align 1
  %i.acu = zext i8 %i.act to i32
  %i.acv = add i32 %i.acl, %i.acu                 ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter617.next.1 = add i64 %niter617, 2         ; 2 uses
  %niter617.ncmp.1 = icmp eq i64 %niter617.next.1, %unroll_iter616
  br i1 %niter617.ncmp.1, label %hemdistsign.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !34

hemdistsign.exit.loopexit.unr-lcssa:              ; preds = %.lr.ph.i
  br i1 %lcmp.mod613.not, label %hemdistsign.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %hemdistsign.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.1, %hemdistsign.exit.loopexit.unr-lcssa ] ; 2 uses
  %.011.i.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.acv, %hemdistsign.exit.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod615)
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acb, i64 %indvars.iv.i.epil.init
  %i.acx = load i8, ptr %i.acw, align 1
  %i.acy = getelementptr inbounds nuw i8, ptr %i.mp, i64 %indvars.iv.i.epil.init
  %i.acz = load i8, ptr %i.acy, align 1
  %i.ada = xor i8 %i.acz, %i.acx
  %i.adb = zext i8 %i.ada to i64
  %i.adc = getelementptr inbounds nuw i8, ptr @pg_number_of_ones, i64 %i.adb
  %i.add = load i8, ptr %i.adc, align 1
  %i.ade = zext i8 %i.add to i32
  %i.adf = add i32 %.011.i.epil.init, %i.ade
  br label %hemdistsign.exit

hemdistsign.exit:                                 ; preds = %.lr.ph.i.epil.preheader, %hemdistsign.exit.loopexit.unr-lcssa, %bb.bh, %bb.bf, %sizebitvec.exit
  %.0209 = phi i32 [ 0, %bb.bf ], [ %i.abz, %sizebitvec.exit ], [ 0, %bb.bh ], [ %i.acv, %hemdistsign.exit.loopexit.unr-lcssa ], [ %i.adf, %.lr.ph.i.epil.preheader ]
  %i.adg = load i32, ptr %i.ml, align 4
  %i.adh = and i32 %i.adg, 4
  %.not226 = icmp eq i32 %i.adh, 0
  %i.adi = zext i16 %i.zu to i64                  ; 2 uses
  %i.adj = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.adi ; 2 uses
  %i.adk = load i8, ptr %i.adj, align 8, !range !9, !noundef !10
end_hunk_1
begin_hunk_2_@gtsvector_picksplit:bb.a
sizebitvec.exit340.loopexit.unr-lcssa:            ; preds = %.lr.ph.i.i335
  br i1 %lcmp.mod634.not, label %sizebitvec.exit340, label %.lr.ph.i.i335.epil.preheader

.lr.ph.i.i335.epil.preheader:                     ; preds = %sizebitvec.exit340.loopexit.unr-lcssa, %.lr.ph.i.i335.preheader
  %.014.i.i336.epil.init = phi i64 [ 0, %.lr.ph.i.i335.preheader ], [ %i.aer, %sizebitvec.exit340.loopexit.unr-lcssa ]
  %.0812.i.i338.epil.init = phi ptr [ %i.adp, %.lr.ph.i.i335.preheader ], [ %i.ael, %sizebitvec.exit340.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod636)
  br label %.lr.ph.i.i335.epil

.lr.ph.i.i335.epil:                               ; preds = %.lr.ph.i.i335.epil, %.lr.ph.i.i335.epil.preheader
  %.014.i.i336.epil = phi i64 [ %i.afa, %.lr.ph.i.i335.epil ], [ %.014.i.i336.epil.init, %.lr.ph.i.i335.epil.preheader ]
  %.0812.i.i338.epil = phi ptr [ %i.aeu, %.lr.ph.i.i335.epil ], [ %.0812.i.i338.epil.init, %.lr.ph.i.i335.epil.preheader ] ; 2 uses
  %epil.iter633 = phi i32 [ %epil.iter633.next, %.lr.ph.i.i335.epil ], [ 0, %.lr.ph.i.i335.epil.preheader ]
  %i.aeu = getelementptr inbounds nuw i8, ptr %.0812.i.i338.epil, i64 1
  %i.aev = load i8, ptr %.0812.i.i338.epil, align 1
  %i.aew = zext i8 %i.aev to i64
  %i.aex = getelementptr inbounds nuw i8, ptr @pg_number_of_ones, i64 %i.aew
  %i.aey = load i8, ptr %i.aex, align 1
  %i.aez = zext i8 %i.aey to i64
  %i.afa = add i64 %.014.i.i336.epil, %i.aez      ; 2 uses
  %epil.iter633.next = add i32 %epil.iter633, 1   ; 2 uses
  %epil.iter633.cmp.not = icmp eq i32 %epil.iter633.next, %xtraiter632
  br i1 %epil.iter633.cmp.not, label %sizebitvec.exit340, label %.lr.ph.i.i335.epil, !llvm.loop !50

sizebitvec.exit340:                               ; preds = %sizebitvec.exit340.loopexit.unr-lcssa, %.lr.ph.i.i335.epil, %.preheader.i.i333, %bb.bk
  %.09.i.i332 = phi i64 [ %i.aet, %bb.bk ], [ 0, %.preheader.i.i333 ], [ %i.aer, %sizebitvec.exit340.loopexit.unr-lcssa ], [ %i.afa, %.lr.ph.i.i335.epil ]
  %i.afb = trunc i64 %.09.i.i332 to i32
  %i.afc = sub i32 %i.zj, %i.afb
  br label %hemdistsign.exit349

bb.bl:                                            ; preds = %bb.bi
  %i.afd = getelementptr inbounds nuw i8, ptr %i.adj, i64 8
  %i.afe = load ptr, ptr %i.afd, align 8          ; 3 uses
  br i1 %i.zi, label %.lr.ph.i344.preheader, label %hemdistsign.exit349

.lr.ph.i344.preheader:                            ; preds = %bb.bl
  br i1 %i.zp, label %.lr.ph.i344.epil.preheader, label %.lr.ph.i344

.lr.ph.i344:                                      ; preds = %.lr.ph.i344.preheader, %.lr.ph.i344
  %indvars.iv.i345 = phi i64 [ %indvars.iv.next.i347.1, %.lr.ph.i344 ], [ 0, %.lr.ph.i344.preheader ] ; 4 uses
  %.011.i346 = phi i32 [ %i.afy, %.lr.ph.i344 ], [ 0, %.lr.ph.i344.preheader ]
  %niter631 = phi i64 [ %niter631.next.1, %.lr.ph.i344 ], [ 0, %.lr.ph.i344.preheader ]
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afe, i64 %indvars.iv.i345
  %i.afg = load i8, ptr %i.aff, align 1
  %i.afh = getelementptr inbounds nuw i8, ptr %i.mq, i64 %indvars.iv.i345
  %i.afi = load i8, ptr %i.afh, align 1
  %i.afj = xor i8 %i.afi, %i.afg
  %i.afk = zext i8 %i.afj to i64
  %i.afl = getelementptr inbounds nuw i8, ptr @pg_number_of_ones, i64 %i.afk
  %i.afm = load i8, ptr %i.afl, align 1
  %i.afn = zext i8 %i.afm to i32
  %i.afo = add i32 %.011.i346, %i.afn
  %indvars.iv.next.i347 = or disjoint i64 %indvars.iv.i345, 1 ; 2 uses
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afe, i64 %indvars.iv.next.i347
  %i.afq = load i8, ptr %i.afp, align 1
  %i.afr = getelementptr inbounds nuw i8, ptr %i.mq, i64 %indvars.iv.next.i347
  %i.afs = load i8, ptr %i.afr, align 1
  %i.aft = xor i8 %i.afs, %i.afq
  %i.afu = zext i8 %i.aft to i64
  %i.afv = getelementptr inbounds nuw i8, ptr @pg_number_of_ones, i64 %i.afu
  %i.afw = load i8, ptr %i.afv, align 1
  %i.afx = zext i8 %i.afw to i32
  %i.afy = add i32 %i.afo, %i.afx                 ; 3 uses
  %indvars.iv.next.i347.1 = add nuw nsw i64 %indvars.iv.i345, 2 ; 2 uses
  %niter631.next.1 = add i64 %niter631, 2         ; 2 uses
  %niter631.ncmp.1 = icmp eq i64 %niter631.next.1, %unroll_iter630
  br i1 %niter631.ncmp.1, label %hemdistsign.exit349.loopexit.unr-lcssa, label %.lr.ph.i344, !llvm.loop !34

hemdistsign.exit349.loopexit.unr-lcssa:           ; preds = %.lr.ph.i344
  br i1 %lcmp.mod627.not, label %hemdistsign.exit349, label %.lr.ph.i344.epil.preheader

.lr.ph.i344.epil.preheader:                       ; preds = %hemdistsign.exit349.loopexit.unr-lcssa, %.lr.ph.i344.preheader
  %indvars.iv.i345.epil.init = phi i64 [ 0, %.lr.ph.i344.preheader ], [ %indvars.iv.next.i347.1, %hemdistsign.exit349.loopexit.unr-lcssa ] ; 2 uses
  %.011.i346.epil.init = phi i32 [ 0, %.lr.ph.i344.preheader ], [ %i.afy, %hemdistsign.exit349.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod629)
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afe, i64 %indvars.iv.i345.epil.init
  %i.aga = load i8, ptr %i.afz, align 1
  %i.agb = getelementptr inbounds nuw i8, ptr %i.mq, i64 %indvars.iv.i345.epil.init
  %i.agc = load i8, ptr %i.agb, align 1
  %i.agd = xor i8 %i.agc, %i.aga
  %i.age = zext i8 %i.agd to i64
  %i.agf = getelementptr inbounds nuw i8, ptr @pg_number_of_ones, i64 %i.age
  %i.agg = load i8, ptr %i.agf, align 1
  %i.agh = zext i8 %i.agg to i32
  %i.agi = add i32 %.011.i346.epil.init, %i.agh
  br label %hemdistsign.exit349

hemdistsign.exit349:                              ; preds = %.lr.ph.i344.epil.preheader, %hemdistsign.exit349.loopexit.unr-lcssa, %bb.bl, %bb.bj, %sizebitvec.exit340
  %.0208 = phi i32 [ 0, %bb.bj ], [ %i.afc, %sizebitvec.exit340 ], [ 0, %bb.bl ], [ %i.afy, %hemdistsign.exit349.loopexit.unr-lcssa ], [ %i.agi, %.lr.ph.i344.epil.preheader ]
  %i.agj = sitofp i32 %.0209 to double
  %i.agk = sitofp i32 %.0208 to double
  %i.agl = load i32, ptr %i.ld, align 8
  %i.agm = load i32, ptr %i.lf, align 8
  %i.agn = sub i32 %i.agl, %i.agm                 ; 3 uses
  %i.ago = mul i32 %i.agn, %i.agn
  %i.agp = mul i32 %i.ago, %i.agn
  %i.agq = sitofp i32 %i.agp to double
  %i.agr = fneg double %i.agq
  %i.ags = tail call double @llvm.fmuladd.f64(double %i.agr, double 1.000000e-01, double %i.agk)
  %i.agt = fcmp ogt double %i.ags, %i.agj
  br i1 %i.agt, label %bb.bm, label %bb.bq

bb.bm:                                            ; preds = %hemdistsign.exit349
  %i.agu = load i32, ptr %i.lv, align 4
  %i.agv = and i32 %i.agu, 4
  %.not230 = icmp eq i32 %i.agv, 0
  br i1 %.not230, label %bb.bn, label %.loopexit

bb.bn:                                            ; preds = %bb.bm
  %i.agw = zext i16 %i.zu to i64
  %i.agx = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.agw ; 2 uses
  %i.agy = load i8, ptr %i.agx, align 8, !range !9, !noundef !10
  %i.agz = trunc nuw i8 %i.agy to i1
  br i1 %i.agz, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.mp, i8 -1, i64 %i.zl, i1 false)
  br label %.loopexit

bb.bp:                                            ; preds = %bb.bn
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agx, i64 8
  %i.ahb = load ptr, ptr %i.aha, align 8          ; 9 uses
  br i1 %i.zi, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %bb.bp
  br i1 %min.iters.check, label %.lr.ph392.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep476 = getelementptr i8, ptr %i.ahb, i64 %wide.trip.count.i.i278
  %bound0 = icmp ult ptr %i.mp, %scevgep476
  %bound1 = icmp ult ptr %i.ahb, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph392.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check477, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.ahb, i64 %index ; 2 uses
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.ahc, i64 16
  %wide.load = load <16 x i8>, ptr %i.ahc, align 1, !alias.scope !51
  %wide.load478 = load <16 x i8>, ptr %i.ahd, align 1, !alias.scope !51
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.mp, i64 %index ; 3 uses
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.ahe, i64 16 ; 2 uses
  %wide.load479 = load <16 x i8>, ptr %i.ahe, align 1, !alias.scope !54, !noalias !51
  %wide.load480 = load <16 x i8>, ptr %i.ahf, align 1, !alias.scope !54, !noalias !51
  %i.ahg = or <16 x i8> %wide.load479, %wide.load
  %i.ahh = or <16 x i8> %wide.load480, %wide.load478
  store <16 x i8> %i.ahg, ptr %i.ahe, align 1, !alias.scope !54, !noalias !51
  store <16 x i8> %i.ahh, ptr %i.ahf, align 1, !alias.scope !54, !noalias !51
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ahi = icmp eq i64 %index.next, %n.vec
  br i1 %i.ahi, label %middle.block, label %vector.body, !llvm.loop !56

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph392.preheader, label %vec.epilog.ph, !prof !25

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index482 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next485, %vec.epilog.vector.body ] ; 3 uses
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahb, i64 %index482
  %wide.load483 = load <4 x i8>, ptr %i.ahj, align 1, !alias.scope !51
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.mp, i64 %index482 ; 2 uses
  %wide.load484 = load <4 x i8>, ptr %i.ahk, align 1, !alias.scope !54, !noalias !51
  %i.ahl = or <4 x i8> %wide.load484, %wide.load483
  store <4 x i8> %i.ahl, ptr %i.ahk, align 1, !alias.scope !54, !noalias !51
  %index.next485 = add nuw i64 %index482, 4       ; 2 uses
  %i.ahm = icmp eq i64 %index.next485, %n.vec481
  br i1 %i.ahm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !57

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n486, label %.loopexit, label %.lr.ph392.preheader

.lr.ph392.preheader:                              ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv428.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec481, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod642.not, label %.lr.ph392.prol.loopexit, label %.lr.ph392.prol

.lr.ph392.prol:                                   ; preds = %.lr.ph392.preheader, %.lr.ph392.prol
  %indvars.iv428.prol = phi i64 [ %indvars.iv.next429.prol, %.lr.ph392.prol ], [ %indvars.iv428.ph, %.lr.ph392.preheader ] ; 3 uses
  %prol.iter643 = phi i64 [ %prol.iter643.next, %.lr.ph392.prol ], [ 0, %.lr.ph392.preheader ]
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahb, i64 %indvars.iv428.prol
  %i.aho = load i8, ptr %i.ahn, align 1
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.mp, i64 %indvars.iv428.prol ; 2 uses
  %i.ahq = load i8, ptr %i.ahp, align 1
  %i.ahr = or i8 %i.ahq, %i.aho
  store i8 %i.ahr, ptr %i.ahp, align 1
  %indvars.iv.next429.prol = add nuw nsw i64 %indvars.iv428.prol, 1 ; 2 uses
  %prol.iter643.next = add i64 %prol.iter643, 1   ; 2 uses
  %prol.iter643.cmp.not = icmp eq i64 %prol.iter643.next, %xtraiter641
  br i1 %prol.iter643.cmp.not, label %.lr.ph392.prol.loopexit, label %.lr.ph392.prol, !llvm.loop !58

.lr.ph392.prol.loopexit:                          ; preds = %.lr.ph392.prol, %.lr.ph392.preheader
  %indvars.iv428.unr = phi i64 [ %indvars.iv428.ph, %.lr.ph392.preheader ], [ %indvars.iv.next429.prol, %.lr.ph392.prol ]
  %i.ahs = sub nsw i64 %indvars.iv428.ph, %wide.trip.count.i
  %i.aht = icmp ugt i64 %i.ahs, -4
  br i1 %i.aht, label %.loopexit, label %.lr.ph392

.lr.ph392:                                        ; preds = %.lr.ph392.prol.loopexit, %.lr.ph392
  %indvars.iv428 = phi i64 [ %indvars.iv.next429.3, %.lr.ph392 ], [ %indvars.iv428.unr, %.lr.ph392.prol.loopexit ] ; 6 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.ahb, i64 %indvars.iv428
  %i.ahv = load i8, ptr %i.ahu, align 1
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.mp, i64 %indvars.iv428 ; 2 uses
  %i.ahx = load i8, ptr %i.ahw, align 1
  %i.ahy = or i8 %i.ahx, %i.ahv
  store i8 %i.ahy, ptr %i.ahw, align 1
  %indvars.iv.next429 = add nuw nsw i64 %indvars.iv428, 1 ; 2 uses
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahb, i64 %indvars.iv.next429
  %i.aia = load i8, ptr %i.ahz, align 1
  %i.aib = getelementptr inbounds nuw i8, ptr %i.mp, i64 %indvars.iv.next429 ; 2 uses
  %i.aic = load i8, ptr %i.aib, align 1
  %i.aid = or i8 %i.aic, %i.aia
  store i8 %i.aid, ptr %i.aib, align 1
  %indvars.iv.next429.1 = add nuw nsw i64 %indvars.iv428, 2 ; 2 uses
  %i.aie = getelementptr inbounds nuw i8, ptr %i.ahb, i64 %indvars.iv.next429.1
  %i.aif = load i8, ptr %i.aie, align 1
  %i.aig = getelementptr inbounds nuw i8, ptr %i.mp, i64 %indvars.iv.next429.1 ; 2 uses
  %i.aih = load i8, ptr %i.aig, align 1
  %i.aii = or i8 %i.aih, %i.aif
  store i8 %i.aii, ptr %i.aig, align 1
  %indvars.iv.next429.2 = add nuw nsw i64 %indvars.iv428, 3 ; 2 uses
  %i.aij = getelementptr inbounds nuw i8, ptr %i.ahb, i64 %indvars.iv.next429.2
  %i.aik = load i8, ptr %i.aij, align 1
  %i.ail = getelementptr inbounds nuw i8, ptr %i.mp, i64 %indvars.iv.next429.2 ; 2 uses
  %i.aim = load i8, ptr %i.ail, align 1
  %i.ain = or i8 %i.aim, %i.aik
  store i8 %i.ain, ptr %i.ail, align 1
  %indvars.iv.next429.3 = add nuw nsw i64 %indvars.iv428, 4 ; 2 uses
  %exitcond432.not.3 = icmp eq i64 %indvars.iv.next429.3, %wide.trip.count.i
  br i1 %exitcond432.not.3, label %.loopexit, label %.lr.ph392, !llvm.loop !59

.loopexit:                                        ; preds = %.lr.ph392.prol.loopexit, %.lr.ph392, %middle.block, %vec.epilog.middle.block, %bb.bp, %bb.bm, %bb.bo
  %i.aio = getelementptr inbounds nuw i8, ptr %.0197394, i64 2
  store i16 %i.zu, ptr %.0197394, align 2
  %i.aip = load i32, ptr %i.ld, align 8
  %i.aiq = add i32 %i.aip, 1
  store i32 %i.aiq, ptr %i.ld, align 8
  br label %bb.bu

bb.bq:                                            ; preds = %hemdistsign.exit349
  %i.air = load i32, ptr %i.ml, align 4
  %i.ais = and i32 %i.air, 4
  %.not228 = icmp eq i32 %i.ais, 0
  br i1 %.not228, label %bb.br, label %.loopexit354

bb.br:                                            ; preds = %bb.bq
  %i.ait = zext i16 %i.zu to i64
  %i.aiu = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.ait ; 2 uses
  %i.aiv = load i8, ptr %i.aiu, align 8, !range !9, !noundef !10
  %i.aiw = trunc nuw i8 %i.aiv to i1
  br i1 %i.aiw, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.mq, i8 -1, i64 %i.zl, i1 false)
  br label %.loopexit354

bb.bt:                                            ; preds = %bb.br
  %i.aix = getelementptr inbounds nuw i8, ptr %i.aiu, i64 8
  %i.aiy = load ptr, ptr %i.aix, align 8          ; 9 uses
  br i1 %i.zi, label %iter.check508, label %.loopexit354

iter.check508:                                    ; preds = %bb.bt
  br i1 %min.iters.check493, label %.lr.ph389.preheader, label %vector.memcheck487

vector.memcheck487:                               ; preds = %iter.check508
  %scevgep489 = getelementptr i8, ptr %i.aiy, i64 %wide.trip.count.i.i278
  %bound0490 = icmp ult ptr %i.mq, %scevgep489
  %bound1491 = icmp ult ptr %i.aiy, %scevgep488
  %found.conflict492 = and i1 %bound0490, %bound1491
  br i1 %found.conflict492, label %.lr.ph389.preheader, label %vector.main.loop.iter.check494

vector.main.loop.iter.check494:                   ; preds = %vector.memcheck487
  br i1 %min.iters.check495, label %vec.epilog.ph512, label %vector.body498

vector.body498:                                   ; preds = %vector.main.loop.iter.check494, %vector.body498
  %index499 = phi i64 [ %index.next504, %vector.body498 ], [ 0, %vector.main.loop.iter.check494 ] ; 3 uses
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aiy, i64 %index499 ; 2 uses
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aiz, i64 16
  %wide.load500 = load <16 x i8>, ptr %i.aiz, align 1, !alias.scope !60
  %wide.load501 = load <16 x i8>, ptr %i.aja, align 1, !alias.scope !60
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.mq, i64 %index499 ; 3 uses
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.ajb, i64 16 ; 2 uses
  %wide.load502 = load <16 x i8>, ptr %i.ajb, align 1, !alias.scope !63, !noalias !60
  %wide.load503 = load <16 x i8>, ptr %i.ajc, align 1, !alias.scope !63, !noalias !60
  %i.ajd = or <16 x i8> %wide.load502, %wide.load500
  %i.aje = or <16 x i8> %wide.load503, %wide.load501
  store <16 x i8> %i.ajd, ptr %i.ajb, align 1, !alias.scope !63, !noalias !60
  store <16 x i8> %i.aje, ptr %i.ajc, align 1, !alias.scope !63, !noalias !60
  %index.next504 = add nuw i64 %index499, 32      ; 2 uses
  %i.ajf = icmp eq i64 %index.next504, %n.vec497
  br i1 %i.ajf, label %middle.block505, label %vector.body498, !llvm.loop !65

middle.block505:                                  ; preds = %vector.body498
  br i1 %cmp.n506, label %.loopexit354, label %vec.epilog.iter.check510

vec.epilog.iter.check510:                         ; preds = %middle.block505
  br i1 %min.epilog.iters.check511, label %.lr.ph389.preheader, label %vec.epilog.ph512, !prof !25

vec.epilog.ph512:                                 ; preds = %vector.main.loop.iter.check494, %vec.epilog.iter.check510
  %vec.epilog.resume.val507 = phi i64 [ %n.vec497, %vec.epilog.iter.check510 ], [ 0, %vector.main.loop.iter.check494 ]
  br label %vec.epilog.vector.body514

vec.epilog.vector.body514:                        ; preds = %vec.epilog.vector.body514, %vec.epilog.ph512
  %index515 = phi i64 [ %vec.epilog.resume.val507, %vec.epilog.ph512 ], [ %index.next518, %vec.epilog.vector.body514 ] ; 3 uses
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.aiy, i64 %index515
  %wide.load516 = load <4 x i8>, ptr %i.ajg, align 1, !alias.scope !60
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.mq, i64 %index515 ; 2 uses
  %wide.load517 = load <4 x i8>, ptr %i.ajh, align 1, !alias.scope !63, !noalias !60
  %i.aji = or <4 x i8> %wide.load517, %wide.load516
  store <4 x i8> %i.aji, ptr %i.ajh, align 1, !alias.scope !63, !noalias !60
  %index.next518 = add nuw i64 %index515, 4       ; 2 uses
  %i.ajj = icmp eq i64 %index.next518, %n.vec513
  br i1 %i.ajj, label %vec.epilog.middle.block519, label %vec.epilog.vector.body514, !llvm.loop !66

vec.epilog.middle.block519:                       ; preds = %vec.epilog.vector.body514
  br i1 %cmp.n520, label %.loopexit354, label %.lr.ph389.preheader

.lr.ph389.preheader:                              ; preds = %vector.memcheck487, %iter.check508, %vec.epilog.iter.check510, %vec.epilog.middle.block519
  %indvars.iv423.ph = phi i64 [ 0, %iter.check508 ], [ 0, %vector.memcheck487 ], [ %n.vec497, %vec.epilog.iter.check510 ], [ %n.vec513, %vec.epilog.middle.block519 ] ; 3 uses
  br i1 %lcmp.mod640.not, label %.lr.ph389.prol.loopexit, label %.lr.ph389.prol

.lr.ph389.prol:                                   ; preds = %.lr.ph389.preheader, %.lr.ph389.prol
  %indvars.iv423.prol = phi i64 [ %indvars.iv.next424.prol, %.lr.ph389.prol ], [ %indvars.iv423.ph, %.lr.ph389.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph389.prol ], [ 0, %.lr.ph389.preheader ]
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.aiy, i64 %indvars.iv423.prol
  %i.ajl = load i8, ptr %i.ajk, align 1
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.mq, i64 %indvars.iv423.prol ; 2 uses
  %i.ajn = load i8, ptr %i.ajm, align 1
  %i.ajo = or i8 %i.ajn, %i.ajl
  store i8 %i.ajo, ptr %i.ajm, align 1
  %indvars.iv.next424.prol = add nuw nsw i64 %indvars.iv423.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter639
  br i1 %prol.iter.cmp.not, label %.lr.ph389.prol.loopexit, label %.lr.ph389.prol, !llvm.loop !67

.lr.ph389.prol.loopexit:                          ; preds = %.lr.ph389.prol, %.lr.ph389.preheader
  %indvars.iv423.unr = phi i64 [ %indvars.iv423.ph, %.lr.ph389.preheader ], [ %indvars.iv.next424.prol, %.lr.ph389.prol ]
  %i.ajp = sub nsw i64 %indvars.iv423.ph, %wide.trip.count.i
  %i.ajq = icmp ugt i64 %i.ajp, -4
  br i1 %i.ajq, label %.loopexit354, label %.lr.ph389

.lr.ph389:                                        ; preds = %.lr.ph389.prol.loopexit, %.lr.ph389
  %indvars.iv423 = phi i64 [ %indvars.iv.next424.3, %.lr.ph389 ], [ %indvars.iv423.unr, %.lr.ph389.prol.loopexit ] ; 6 uses
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.aiy, i64 %indvars.iv423
  %i.ajs = load i8, ptr %i.ajr, align 1
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.mq, i64 %indvars.iv423 ; 2 uses
  %i.aju = load i8, ptr %i.ajt, align 1
  %i.ajv = or i8 %i.aju, %i.ajs
  store i8 %i.ajv, ptr %i.ajt, align 1
  %indvars.iv.next424 = add nuw nsw i64 %indvars.iv423, 1 ; 2 uses
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.aiy, i64 %indvars.iv.next424
  %i.ajx = load i8, ptr %i.ajw, align 1
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.mq, i64 %indvars.iv.next424 ; 2 uses
  %i.ajz = load i8, ptr %i.ajy, align 1
  %i.aka = or i8 %i.ajz, %i.ajx
  store i8 %i.aka, ptr %i.ajy, align 1
  %indvars.iv.next424.1 = add nuw nsw i64 %indvars.iv423, 2 ; 2 uses
  %i.akb = getelementptr inbounds nuw i8, ptr %i.aiy, i64 %indvars.iv.next424.1
  %i.akc = load i8, ptr %i.akb, align 1
  %i.akd = getelementptr inbounds nuw i8, ptr %i.mq, i64 %indvars.iv.next424.1 ; 2 uses
  %i.ake = load i8, ptr %i.akd, align 1
  %i.akf = or i8 %i.ake, %i.akc
  store i8 %i.akf, ptr %i.akd, align 1
  %indvars.iv.next424.2 = add nuw nsw i64 %indvars.iv423, 3 ; 2 uses
  %i.akg = getelementptr inbounds nuw i8, ptr %i.aiy, i64 %indvars.iv.next424.2
  %i.akh = load i8, ptr %i.akg, align 1
  %i.aki = getelementptr inbounds nuw i8, ptr %i.mq, i64 %indvars.iv.next424.2 ; 2 uses
  %i.akj = load i8, ptr %i.aki, align 1
  %i.akk = or i8 %i.akj, %i.akh
  store i8 %i.akk, ptr %i.aki, align 1
  %indvars.iv.next424.3 = add nuw nsw i64 %indvars.iv423, 4 ; 2 uses
  %exitcond427.not.3 = icmp eq i64 %indvars.iv.next424.3, %wide.trip.count.i
  br i1 %exitcond427.not.3, label %.loopexit354, label %.lr.ph389, !llvm.loop !68

.loopexit354:                                     ; preds = %.lr.ph389.prol.loopexit, %.lr.ph389, %middle.block505, %vec.epilog.middle.block519, %bb.bt, %bb.bq, %bb.bs
  %i.akl = getelementptr inbounds nuw i8, ptr %.0195395, i64 2
  store i16 %i.zu, ptr %.0195395, align 2
  %i.akm = load i32, ptr %i.lf, align 8
  %i.akn = add i32 %i.akm, 1
  store i32 %i.akn, ptr %i.lf, align 8
  br label %bb.bu

bb.bu:                                            ; preds = %.loopexit, %.loopexit354, %bb.bc, %bb.ba
  %.1198 = phi ptr [ %i.zw, %bb.ba ], [ %.0197394, %bb.bc ], [ %i.aio, %.loopexit ], [ %.0197394, %.loopexit354 ] ; 2 uses
  %.1196 = phi ptr [ %.0195395, %bb.ba ], [ %i.aaa, %bb.bc ], [ %.0195395, %.loopexit ], [ %i.akl, %.loopexit354 ] ; 2 uses
  %indvars.iv.next434 = add nuw nsw i64 %indvars.iv433, 1 ; 2 uses
  %exitcond437.not = icmp eq i64 %indvars.iv.next434, %i.mt
  br i1 %exitcond437.not, label %._crit_edge398, label %bb.az, !llvm.loop !69

._crit_edge398:                                   ; preds = %bb.bu, %._crit_edge386.thread
  %.0197.lcssa = phi ptr [ %i.lc, %._crit_edge386.thread ], [ %.1198, %bb.bu ]
  %.0195.lcssa = phi ptr [ %i.le, %._crit_edge386.thread ], [ %.1196, %bb.bu ]
  store i16 1, ptr %.0197.lcssa, align 2
  store i16 1, ptr %.0195.lcssa, align 2
  %i.ako = ptrtoint ptr %i.lt to i64
  %i.akp = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.ako, ptr %i.akp, align 8
  %i.akq = ptrtoint ptr %i.mj to i64
  %i.akr = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i64 %i.akq, ptr %i.akr, align 8
  ret i64 %i.e
}

declare ptr @palloc_mul(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef range(i32 -1, 2) i32 @comparecost(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = tail call noundef range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32 %i.b, i32 %i.d)
  ret i32 %i.e
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 2) i64 @gtsvector_consistent_oldsig(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %1 = alloca %struct.CHKVAL, align 8             ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = inttoptr i64 %i.e to ptr                 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = load i64, ptr %i.g, align 8
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load i64, ptr %i.c, align 8
  %i.k = inttoptr i64 %i.j to ptr                 ; 4 uses
  store i8 1, ptr %i.i, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.m = load i32, ptr %i.l, align 4
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %gtsvector_consistent.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.o = load i32, ptr %i.n, align 4              ; 2 uses
  %i.p = and i32 %i.o, 2
  %.not13.i = icmp eq i32 %i.p, 0
  br i1 %.not13.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = and i32 %i.o, 4
  %.not14.i = icmp eq i32 %i.q, 0
  br i1 %.not14.i, label %bb.d, label %gtsvector_consistent.exit

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.s = tail call zeroext i1 @TS_execute(ptr noundef nonnull %i.r, ptr noundef nonnull %i.k, i32 noundef 2, ptr noundef nonnull @checkcondition_bit) #12
  br label %gtsvector_consistent.exit

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr %i.t, ptr %1, align 8
  %.val.i = load i32, ptr %i.k, align 4
  %i.u = lshr i32 %.val.i, 2
  %i.v = zext nneg i32 %i.u to i64
  %i.w = add nsw i64 %i.v, -8
  %i.x = lshr i64 %i.w, 2
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.y, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ab = call zeroext i1 @TS_execute(ptr noundef nonnull %i.aa, ptr noundef nonnull %1, i32 noundef 2, ptr noundef nonnull @checkcondition_arr) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  br label %gtsvector_consistent.exit

gtsvector_consistent.exit:                        ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %.0.shrunk.i = phi i1 [ false, %bb.a ], [ %i.s, %bb.d ], [ %i.ab, %bb.e ], [ true, %bb.c ]
  %.0.i = zext i1 %.0.shrunk.i to i64
  ret i64 %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @gtsvector_options(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  tail call void @init_local_reloptions(ptr noundef %i.c, i64 noundef 8) #12
  tail call void @add_local_int_reloption(ptr noundef %i.c, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 124, i32 noundef 1, i32 noundef 2024, i32 noundef 4) #12
  ret i64 0
}

declare void @init_local_reloptions(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @add_local_int_reloption(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

attributes #0 = { cold noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{null, null}
!7 = distinct !{!7, !8}
end_hunk_2
