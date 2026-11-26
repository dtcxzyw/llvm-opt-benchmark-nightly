Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dptrfs?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@dptrfs_:bb.a
bb.p:                                             ; preds = %bb.n, %._crit_edge367
  br i1 %.not352362448, label %._crit_edge372, label %iter.check

iter.check:                                       ; preds = %bb.p
  %i.lr = zext nneg i32 %i.bk to i64              ; 2 uses
  %i.ls = add i32 %i.bk, 1
  %wide.trip.count407 = zext i32 %i.ls to i64     ; 2 uses
  %invariant.gep464.a = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.lr ; 3 uses
  %invariant.gep466.a = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.lr ; 3 uses
  %i.lt = add nsw i64 %wide.trip.count407, -1     ; 7 uses
  %min.iters.check484 = icmp ult i64 %i.lt, 4
  br i1 %min.iters.check484, label %.lr.ph371.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check485 = icmp ult i64 %i.lt, 16
  br i1 %min.iters.check485, label %vec.epilog.ph, label %vector.ph486

vector.ph486:                                     ; preds = %vector.main.loop.iter.check
  %i.lu = and i64 %i.lt, 12
  %n.vec487 = and i64 %i.lt, -16                  ; 4 uses
  %i.lv = or disjoint i64 %n.vec487, 1
  br label %vector.body492

vector.body492:                                   ; preds = %vector.ph486, %vector.body492
  %index493 = phi i64 [ 0, %vector.ph486 ], [ %index.next508, %vector.body492 ] ; 3 uses
  %i.lw = or disjoint i64 %index493, 1            ; 2 uses
  %i.lx = getelementptr [8 x i8], ptr %12, i64 %index493 ; 5 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 32 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lx, i64 64 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lx, i64 96 ; 2 uses
  %wide.load494.a = load <4 x double>, ptr %i.lx, align 8, !tbaa !30 ; 3 uses
  %wide.load495.a = load <4 x double>, ptr %i.ly, align 8, !tbaa !30 ; 3 uses
  %wide.load496 = load <4 x double>, ptr %i.lz, align 8, !tbaa !30 ; 3 uses
  %wide.load497 = load <4 x double>, ptr %i.ma, align 8, !tbaa !30 ; 3 uses
  %i.mb = fcmp ogt <4 x double> %wide.load494.a, %broadcast.splat ; 3 uses
  %i.mc = fcmp ogt <4 x double> %wide.load495.a, %broadcast.splat ; 3 uses
  %i.md = fcmp ogt <4 x double> %wide.load496, %broadcast.splat ; 3 uses
  %i.me = fcmp ogt <4 x double> %wide.load497, %broadcast.splat ; 3 uses
  %i.mf = xor <4 x i1> %i.mb, splat (i1 true)
  %i.mg = xor <4 x i1> %i.mc, splat (i1 true)
  %i.mh = xor <4 x i1> %i.md, splat (i1 true)
  %i.mi = xor <4 x i1> %i.me, splat (i1 true)
  %i.mj = getelementptr [8 x i8], ptr %invariant.gep464.a, i64 %i.lw ; 4 uses
  %i.mk = getelementptr i8, ptr %i.mj, i64 32
  %i.ml = getelementptr i8, ptr %i.mj, i64 64
  %i.mm = getelementptr i8, ptr %i.mj, i64 96
  %wide.masked.load = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.mj, <4 x i1> %i.mf, <4 x double> poison), !tbaa !30 ; 3 uses
  %wide.masked.load498.a = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.mk, <4 x i1> %i.mg, <4 x double> poison), !tbaa !30 ; 3 uses
  %wide.masked.load499.a = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.ml, <4 x i1> %i.mh, <4 x double> poison), !tbaa !30 ; 3 uses
  %wide.masked.load500.a = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.mm, <4 x i1> %i.mi, <4 x double> poison), !tbaa !30 ; 3 uses
  %i.mn = fcmp oge <4 x double> %wide.masked.load, zeroinitializer
  %i.mo = fcmp oge <4 x double> %wide.masked.load498.a, zeroinitializer
  %i.mp = fcmp oge <4 x double> %wide.masked.load499.a, zeroinitializer
  %i.mq = fcmp oge <4 x double> %wide.masked.load500.a, zeroinitializer
  %i.mr = fneg <4 x double> %wide.masked.load
  %i.ms = fneg <4 x double> %wide.masked.load498.a
  %i.mt = fneg <4 x double> %wide.masked.load499.a
  %i.mu = fneg <4 x double> %wide.masked.load500.a
  %i.mv = select <4 x i1> %i.mn, <4 x double> %wide.masked.load, <4 x double> %i.mr
  %i.mw = select <4 x i1> %i.mo, <4 x double> %wide.masked.load498.a, <4 x double> %i.ms
  %i.mx = select <4 x i1> %i.mp, <4 x double> %wide.masked.load499.a, <4 x double> %i.mt
  %i.my = select <4 x i1> %i.mq, <4 x double> %wide.masked.load500.a, <4 x double> %i.mu
  %i.mz = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat489.a, <4 x double> %wide.load494.a, <4 x double> %i.mv)
  %i.na = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat489.a, <4 x double> %wide.load495.a, <4 x double> %i.mw)
  %i.nb = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat489.a, <4 x double> %wide.load496, <4 x double> %i.mx)
  %i.nc = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat489.a, <4 x double> %wide.load497, <4 x double> %i.my)
  %i.nd = fadd <4 x double> %broadcast.splat491, %i.mz
  %i.ne = fadd <4 x double> %broadcast.splat491, %i.na
  %i.nf = fadd <4 x double> %broadcast.splat491, %i.nb
  %i.ng = fadd <4 x double> %broadcast.splat491, %i.nc
  %i.nh = getelementptr [8 x i8], ptr %invariant.gep466.a, i64 %i.lw ; 4 uses
  %i.ni = getelementptr i8, ptr %i.nh, i64 32
  %i.nj = getelementptr i8, ptr %i.nh, i64 64
  %i.nk = getelementptr i8, ptr %i.nh, i64 96
  %wide.masked.load501.a = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.nh, <4 x i1> %i.mb, <4 x double> poison), !tbaa !30 ; 3 uses
  %wide.masked.load502.a = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.ni, <4 x i1> %i.mc, <4 x double> poison), !tbaa !30 ; 3 uses
  %wide.masked.load503 = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.nj, <4 x i1> %i.md, <4 x double> poison), !tbaa !30 ; 3 uses
  %wide.masked.load504 = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.nk, <4 x i1> %i.me, <4 x double> poison), !tbaa !30 ; 3 uses
  %i.nl = fcmp oge <4 x double> %wide.masked.load501.a, zeroinitializer
  %i.nm = fcmp oge <4 x double> %wide.masked.load502.a, zeroinitializer
  %i.nn = fcmp oge <4 x double> %wide.masked.load503, zeroinitializer
  %i.no = fcmp oge <4 x double> %wide.masked.load504, zeroinitializer
  %i.np = fneg <4 x double> %wide.masked.load501.a
  %i.nq = fneg <4 x double> %wide.masked.load502.a
  %i.nr = fneg <4 x double> %wide.masked.load503
  %i.ns = fneg <4 x double> %wide.masked.load504
  %i.nt = select <4 x i1> %i.nl, <4 x double> %wide.masked.load501.a, <4 x double> %i.np
  %i.nu = select <4 x i1> %i.nm, <4 x double> %wide.masked.load502.a, <4 x double> %i.nq
  %i.nv = select <4 x i1> %i.nn, <4 x double> %wide.masked.load503, <4 x double> %i.nr
  %i.nw = select <4 x i1> %i.no, <4 x double> %wide.masked.load504, <4 x double> %i.ns
  %i.nx = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat489.a, <4 x double> %wide.load494.a, <4 x double> %i.nt)
  %i.ny = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat489.a, <4 x double> %wide.load495.a, <4 x double> %i.nu)
  %i.nz = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat489.a, <4 x double> %wide.load496, <4 x double> %i.nv)
  %i.oa = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat489.a, <4 x double> %wide.load497, <4 x double> %i.nw)
  %predphi = select <4 x i1> %i.mb, <4 x double> %i.nx, <4 x double> %i.nd
  %predphi505.a = select <4 x i1> %i.mc, <4 x double> %i.ny, <4 x double> %i.ne
  %predphi506 = select <4 x i1> %i.md, <4 x double> %i.nz, <4 x double> %i.nf
  %predphi507 = select <4 x i1> %i.me, <4 x double> %i.oa, <4 x double> %i.ng
  store <4 x double> %predphi, ptr %i.lx, align 8, !tbaa !30
  store <4 x double> %predphi505.a, ptr %i.ly, align 8, !tbaa !30
  store <4 x double> %predphi506, ptr %i.lz, align 8, !tbaa !30
  store <4 x double> %predphi507, ptr %i.ma, align 8, !tbaa !30
  %index.next508 = add nuw i64 %index493, 16      ; 2 uses
  %i.ob = icmp eq i64 %index.next508, %n.vec487
  br i1 %i.ob, label %middle.block509, label %vector.body492, !llvm.loop !19

middle.block509:                                  ; preds = %vector.body492
  %cmp.n510 = icmp eq i64 %i.lt, %n.vec487
  br i1 %cmp.n510, label %._crit_edge372, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block509
  %min.epilog.iters.check = icmp eq i64 %i.lu, 0
  br i1 %min.epilog.iters.check, label %.lr.ph371.preheader, label %vec.epilog.ph, !prof !41

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec487, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec511 = and i64 %i.lt, -4                   ; 3 uses
  %i.oc = or disjoint i64 %n.vec511, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index518 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next523, %vec.epilog.vector.body ] ; 3 uses
  %i.od = or disjoint i64 %index518, 1            ; 2 uses
  %i.oe = getelementptr [8 x i8], ptr %12, i64 %index518 ; 2 uses
  %wide.load519 = load <4 x double>, ptr %i.oe, align 8, !tbaa !30 ; 3 uses
  %i.of = fcmp ogt <4 x double> %wide.load519, %broadcast.splat513.a ; 3 uses
  %i.og = xor <4 x i1> %i.of, splat (i1 true)
  %i.oh = getelementptr [8 x i8], ptr %invariant.gep464.a, i64 %i.od
  %wide.masked.load520 = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.oh, <4 x i1> %i.og, <4 x double> poison), !tbaa !30 ; 3 uses
  %i.oi = fcmp oge <4 x double> %wide.masked.load520, zeroinitializer
  %i.oj = fneg <4 x double> %wide.masked.load520
  %i.ok = select <4 x i1> %i.oi, <4 x double> %wide.masked.load520, <4 x double> %i.oj
  %i.ol = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat515.a, <4 x double> %wide.load519, <4 x double> %i.ok)
  %i.om = fadd <4 x double> %broadcast.splat517, %i.ol
  %i.on = getelementptr [8 x i8], ptr %invariant.gep466.a, i64 %i.od
  %wide.masked.load521 = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.on, <4 x i1> %i.of, <4 x double> poison), !tbaa !30 ; 3 uses
  %i.oo = fcmp oge <4 x double> %wide.masked.load521, zeroinitializer
  %i.op = fneg <4 x double> %wide.masked.load521
  %i.oq = select <4 x i1> %i.oo, <4 x double> %wide.masked.load521, <4 x double> %i.op
  %i.or = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat515.a, <4 x double> %wide.load519, <4 x double> %i.oq)
  %predphi522 = select <4 x i1> %i.of, <4 x double> %i.or, <4 x double> %i.om
  store <4 x double> %predphi522, ptr %i.oe, align 8, !tbaa !30
  %index.next523 = add nuw i64 %index518, 4       ; 2 uses
  %i.os = icmp eq i64 %index.next523, %n.vec511
  br i1 %i.os, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !20

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n524 = icmp eq i64 %i.lt, %n.vec511
  br i1 %cmp.n524, label %._crit_edge372, label %.lr.ph371.preheader

.lr.ph371.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv403.ph = phi i64 [ 1, %iter.check ], [ %i.lv, %vec.epilog.iter.check ], [ %i.oc, %vec.epilog.middle.block ]
  br label %.lr.ph371

.lr.ph371:                                        ; preds = %.lr.ph371.preheader, %bb.s
  %indvars.iv403 = phi i64 [ %indvars.iv.next404, %bb.s ], [ %indvars.iv403.ph, %.lr.ph371.preheader ] ; 4 uses
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv403 ; 2 uses
  %i.ou = load double, ptr %i.ot, align 8, !tbaa !30 ; 3 uses
  %i.ov = fcmp ogt double %i.ou, %i.ad
  br i1 %i.ov, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph371
  %gep467.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep466.a, i64 %indvars.iv403
  %i.ow = load double, ptr %gep467.a, align 8, !tbaa !30 ; 3 uses
  %i.ox = fcmp oge double %i.ow, 0.000000e+00
  %i.oy = fneg double %i.ow
  %i.oz = select i1 %i.ox, double %i.ow, double %i.oy
  %i.pa = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.ou, double %i.oz)
  br label %bb.s

bb.r:                                             ; preds = %.lr.ph371
  %gep465 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep464.a, i64 %indvars.iv403
  %i.pb = load double, ptr %gep465, align 8, !tbaa !30 ; 3 uses
  %i.pc = fcmp oge double %i.pb, 0.000000e+00
  %i.pd = fneg double %i.pb
  %i.pe = select i1 %i.pc, double %i.pb, double %i.pd
  %i.pf = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.ou, double %i.pe)
  %i.pg = fadd double %i.ac, %i.pf
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %storemerge = phi double [ %i.pg, %bb.r ], [ %i.pa, %bb.q ]
  store double %storemerge, ptr %i.ot, align 8, !tbaa !30
  %indvars.iv.next404 = add nuw nsw i64 %indvars.iv403, 1 ; 2 uses
  %exitcond408.not = icmp eq i64 %indvars.iv.next404, %wide.trip.count407
  br i1 %exitcond408.not, label %._crit_edge372, label %.lr.ph371, !llvm.loop !21

._crit_edge372:                                   ; preds = %bb.s, %middle.block509, %vec.epilog.middle.block, %bb.p
  %i.ph = tail call i32 @idamax_(ptr noundef nonnull %0, ptr noundef nonnull %12, ptr noundef nonnull @c__1) #7
  %i.pi = sext i32 %i.ph to i64
  %i.pj = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.pi
  %i.pk = load double, ptr %i.pj, align 8, !tbaa !30
  %i.pl = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv422 ; 4 uses
  store double %i.pk, ptr %i.pl, align 8, !tbaa !30
  store double 1.000000e+00, ptr %12, align 8, !tbaa !30
  %i.pm = load i32, ptr %0, align 4, !tbaa !28    ; 6 uses
  %.not354373 = icmp slt i32 %i.pm, 2
  br i1 %.not354373, label %._crit_edge377, label %.lr.ph376.preheader

.lr.ph376.preheader:                              ; preds = %._crit_edge372
  %load_initial = load double, ptr %12, align 8   ; 2 uses
  %i.pn = zext nneg i32 %i.pm to i64
  %i.po = add nsw i64 %i.pn, -1                   ; 2 uses
  %xtraiter = and i64 %i.po, 3                    ; 3 uses
  %i.pp = add nsw i32 %i.pm, -2
  %i.pq = icmp ult i32 %i.pp, 3
  br i1 %i.pq, label %.lr.ph376.epil.preheader, label %.lr.ph376.preheader.new

.lr.ph376.preheader.new:                          ; preds = %.lr.ph376.preheader
  %unroll_iter = and i64 %i.po, -4
  br label %.lr.ph376

.lr.ph376:                                        ; preds = %.lr.ph376, %.lr.ph376.preheader.new
  %i.pr = phi double [ %load_initial, %.lr.ph376.preheader.new ], [ %i.qw, %.lr.ph376 ]
  %indvars.iv409 = phi i64 [ 2, %.lr.ph376.preheader.new ], [ %indvars.iv.next410.3, %.lr.ph376 ] ; 7 uses
  %niter = phi i64 [ 0, %.lr.ph376.preheader.new ], [ %niter.next.3, %.lr.ph376 ]
  %i.ps = getelementptr [8 x i8], ptr %i.e, i64 %indvars.iv409
  %i.pt = getelementptr i8, ptr %i.ps, i64 -8
  %i.pu = load double, ptr %i.pt, align 8, !tbaa !30 ; 3 uses
  %i.pv = fcmp oge double %i.pu, 0.000000e+00
  %i.pw = fneg double %i.pu
  %i.px = select i1 %i.pv, double %i.pu, double %i.pw
  %i.py = tail call double @llvm.fmuladd.f64(double %i.pr, double %i.px, double 1.000000e+00) ; 2 uses
  %i.pz = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv409
  store double %i.py, ptr %i.pz, align 8, !tbaa !30
  %i.qa = getelementptr [8 x i8], ptr %5, i64 %indvars.iv409
  %i.qb = getelementptr i8, ptr %i.qa, i64 -8
  %i.qc = load double, ptr %i.qb, align 8, !tbaa !30 ; 3 uses
  %i.qd = fcmp oge double %i.qc, 0.000000e+00
  %i.qe = fneg double %i.qc
  %i.qf = select i1 %i.qd, double %i.qc, double %i.qe
  %i.qg = tail call double @llvm.fmuladd.f64(double %i.py, double %i.qf, double 1.000000e+00) ; 2 uses
  %i.qh = getelementptr [8 x i8], ptr %12, i64 %indvars.iv409
  store double %i.qg, ptr %i.qh, align 8, !tbaa !30
  %indvars.iv.next410.1 = add nuw nsw i64 %indvars.iv409, 2 ; 2 uses
  %i.qi = getelementptr [8 x i8], ptr %i.e, i64 %indvars.iv.next410.1
  %i.qj = getelementptr i8, ptr %i.qi, i64 -8
  %i.qk = load double, ptr %i.qj, align 8, !tbaa !30 ; 3 uses
  %i.ql = fcmp oge double %i.qk, 0.000000e+00
  %i.qm = fneg double %i.qk
  %i.qn = select i1 %i.ql, double %i.qk, double %i.qm
  %i.qo = tail call double @llvm.fmuladd.f64(double %i.qg, double %i.qn, double 1.000000e+00) ; 2 uses
  %i.qp = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next410.1
  store double %i.qo, ptr %i.qp, align 8, !tbaa !30
  %indvars.iv.next410.2 = add nuw nsw i64 %indvars.iv409, 3 ; 2 uses
  %i.qq = getelementptr [8 x i8], ptr %i.e, i64 %indvars.iv.next410.2
  %i.qr = getelementptr i8, ptr %i.qq, i64 -8
  %i.qs = load double, ptr %i.qr, align 8, !tbaa !30 ; 3 uses
  %i.qt = fcmp oge double %i.qs, 0.000000e+00
  %i.qu = fneg double %i.qs
  %i.qv = select i1 %i.qt, double %i.qs, double %i.qu
  %i.qw = tail call double @llvm.fmuladd.f64(double %i.qo, double %i.qv, double 1.000000e+00) ; 3 uses
  %i.qx = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next410.2
  store double %i.qw, ptr %i.qx, align 8, !tbaa !30
  %indvars.iv.next410.3 = add nuw nsw i64 %indvars.iv409, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph380.preheader.unr-lcssa, label %.lr.ph376, !llvm.loop !22

._crit_edge377:                                   ; preds = %._crit_edge372
  %i.qy = sext i32 %i.pm to i64                   ; 2 uses
  %i.qz = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.qy
  %i.ra = load double, ptr %i.qz, align 8, !tbaa !30
  %i.rb = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.qy ; 2 uses
  %i.rc = load double, ptr %i.rb, align 8, !tbaa !30
  %i.rd = fdiv double %i.rc, %i.ra
  store double %i.rd, ptr %i.rb, align 8, !tbaa !30
  br label %._crit_edge381

.lr.ph380.preheader.unr-lcssa:                    ; preds = %.lr.ph376
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph380.preheader, label %.lr.ph376.epil.preheader

.lr.ph376.epil.preheader:                         ; preds = %.lr.ph380.preheader.unr-lcssa, %.lr.ph376.preheader
  %.epil.init = phi double [ %load_initial, %.lr.ph376.preheader ], [ %i.qw, %.lr.ph380.preheader.unr-lcssa ]
  %indvars.iv409.epil.init = phi i64 [ 2, %.lr.ph376.preheader ], [ %indvars.iv.next410.3, %.lr.ph380.preheader.unr-lcssa ]
  %lcmp.mod667 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod667)
  br label %.lr.ph376.epil

.lr.ph376.epil:                                   ; preds = %.lr.ph376.epil, %.lr.ph376.epil.preheader
  %i.re = phi double [ %.epil.init, %.lr.ph376.epil.preheader ], [ %i.rl, %.lr.ph376.epil ]
  %indvars.iv409.epil = phi i64 [ %indvars.iv409.epil.init, %.lr.ph376.epil.preheader ], [ %indvars.iv.next410.epil, %.lr.ph376.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph376.epil.preheader ], [ %epil.iter.next, %.lr.ph376.epil ]
  %i.rf = getelementptr [8 x i8], ptr %i.e, i64 %indvars.iv409.epil
  %i.rg = getelementptr i8, ptr %i.rf, i64 -8
  %i.rh = load double, ptr %i.rg, align 8, !tbaa !30 ; 3 uses
  %i.ri = fcmp oge double %i.rh, 0.000000e+00
  %i.rj = fneg double %i.rh
  %i.rk = select i1 %i.ri, double %i.rh, double %i.rj
  %i.rl = tail call double @llvm.fmuladd.f64(double %i.re, double %i.rk, double 1.000000e+00) ; 2 uses
  %i.rm = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv409.epil
  store double %i.rl, ptr %i.rm, align 8, !tbaa !30
  %indvars.iv.next410.epil = add nuw nsw i64 %indvars.iv409.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph380.preheader, label %.lr.ph376.epil, !llvm.loop !23

.lr.ph380.preheader:                              ; preds = %.lr.ph376.epil, %.lr.ph380.preheader.unr-lcssa
  %i.rn = zext nneg i32 %i.pm to i64              ; 2 uses
  %i.ro = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.rn
  %i.rp = load double, ptr %i.ro, align 8, !tbaa !30
  %i.rq = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.rn ; 2 uses
  %i.rr = load double, ptr %i.rq, align 8, !tbaa !30
  %i.rs = fdiv double %i.rr, %i.rp
  store double %i.rs, ptr %i.rq, align 8, !tbaa !30
  %i.rt = zext nneg i32 %i.pm to i64              ; 2 uses
  %.phi.trans.insert430 = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.rt
  %.pre431 = load double, ptr %.phi.trans.insert430, align 8, !tbaa !30
  br label %.lr.ph380

.lr.ph380:                                        ; preds = %.lr.ph380.preheader, %.lr.ph380
  %i.ru = phi double [ %.pre431, %.lr.ph380.preheader ], [ %i.sf, %.lr.ph380 ]
  %indvars.iv414 = phi i64 [ %i.rt, %.lr.ph380.preheader ], [ %indvars.iv.next415, %.lr.ph380 ] ; 2 uses
  %indvars.iv.next415 = add nsw i64 %indvars.iv414, -1 ; 4 uses
  %i.rv = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next415 ; 2 uses
  %i.rw = load double, ptr %i.rv, align 8, !tbaa !30
  %i.rx = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next415
  %i.ry = load double, ptr %i.rx, align 8, !tbaa !30
  %i.rz = fdiv double %i.rw, %i.ry
  %i.sa = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next415
  %i.sb = load double, ptr %i.sa, align 8, !tbaa !30 ; 3 uses
  %i.sc = fcmp oge double %i.sb, 0.000000e+00
  %i.sd = fneg double %i.sb
  %i.se = select i1 %i.sc, double %i.sb, double %i.sd
  %i.sf = tail call double @llvm.fmuladd.f64(double %i.ru, double %i.se, double %i.rz) ; 2 uses
  store double %i.sf, ptr %i.rv, align 8, !tbaa !30
  %i.sg = icmp samesign ugt i64 %indvars.iv414, 2
  br i1 %i.sg, label %.lr.ph380, label %._crit_edge381, !llvm.loop !24

._crit_edge381:                                   ; preds = %.lr.ph380, %._crit_edge377
  %i.sh = tail call i32 @idamax_(ptr noundef nonnull %0, ptr noundef nonnull %12, ptr noundef nonnull @c__1) #7
  %i.si = sext i32 %i.sh to i64
  %i.sj = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.si
  %i.sk = load double, ptr %i.sj, align 8, !tbaa !30 ; 3 uses
  %i.sl = fcmp oge double %i.sk, 0.000000e+00
  %i.sm = fneg double %i.sk
  %i.sn = select i1 %i.sl, double %i.sk, double %i.sm
  %i.so = load double, ptr %i.pl, align 8, !tbaa !30
  %i.sp = fmul double %i.so, %i.sn                ; 2 uses
  store double %i.sp, ptr %i.pl, align 8, !tbaa !30
  %i.sq = load i32, ptr %0, align 4, !tbaa !28    ; 4 uses
  %.not355382 = icmp slt i32 %i.sq, 1
  br i1 %.not355382, label %._crit_edge387.thread, label %.lr.ph386

.lr.ph386:                                        ; preds = %._crit_edge381
  %i.sr = add nuw i32 %i.sq, 1
  %wide.trip.count420 = zext i32 %i.sr to i64
  %invariant.gep468 = getelementptr [8 x i8], ptr %i.k, i64 %i.bb ; 2 uses
  %i.ss = zext nneg i32 %i.sq to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.sq, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph386
  %n.vec = and i64 %i.ss, 2147483632              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x double> [ zeroinitializer, %vector.ph ], [ %i.ts, %vector.body ] ; 3 uses
  %vec.phi475.a = phi <4 x double> [ zeroinitializer, %vector.ph ], [ %i.tt, %vector.body ] ; 3 uses
  %vec.phi476 = phi <4 x double> [ zeroinitializer, %vector.ph ], [ %i.tu, %vector.body ] ; 3 uses
  %vec.phi477 = phi <4 x double> [ zeroinitializer, %vector.ph ], [ %i.tv, %vector.body ] ; 3 uses
  %i.st = getelementptr [8 x i8], ptr %invariant.gep468, i64 %index ; 4 uses
  %i.su = getelementptr i8, ptr %i.st, i64 8
  %i.sv = getelementptr i8, ptr %i.st, i64 40
  %i.sw = getelementptr i8, ptr %i.st, i64 72
  %i.sx = getelementptr i8, ptr %i.st, i64 104
  %wide.load = load <4 x double>, ptr %i.su, align 8, !tbaa !30 ; 3 uses
  %wide.load478.a = load <4 x double>, ptr %i.sv, align 8, !tbaa !30 ; 3 uses
  %wide.load479 = load <4 x double>, ptr %i.sw, align 8, !tbaa !30 ; 3 uses
  %wide.load480 = load <4 x double>, ptr %i.sx, align 8, !tbaa !30 ; 3 uses
  %i.sy = fcmp oge <4 x double> %wide.load, zeroinitializer
  %i.sz = fcmp oge <4 x double> %wide.load478.a, zeroinitializer
  %i.ta = fcmp oge <4 x double> %wide.load479, zeroinitializer
  %i.tb = fcmp oge <4 x double> %wide.load480, zeroinitializer
  %i.tc = fneg <4 x double> %wide.load
  %i.td = fneg <4 x double> %wide.load478.a
  %i.te = fneg <4 x double> %wide.load479
  %i.tf = fneg <4 x double> %wide.load480
  %i.tg = select <4 x i1> %i.sy, <4 x double> %wide.load, <4 x double> %i.tc
  %i.th = select <4 x i1> %i.sz, <4 x double> %wide.load478.a, <4 x double> %i.td
  %i.ti = select <4 x i1> %i.ta, <4 x double> %wide.load479, <4 x double> %i.te
  %i.tj = select <4 x i1> %i.tb, <4 x double> %wide.load480, <4 x double> %i.tf
  %i.tk = freeze <4 x double> %i.tg               ; 3 uses
  %i.tl = freeze <4 x double> %i.th               ; 3 uses
  %i.tm = freeze <4 x double> %i.ti               ; 3 uses
  %i.tn = freeze <4 x double> %i.tj               ; 3 uses
  %i.to = fcmp oge <4 x double> %vec.phi, %i.tk
  %i.tp = fcmp oge <4 x double> %vec.phi475.a, %i.tl
  %i.tq = fcmp oge <4 x double> %vec.phi476, %i.tm
  %i.tr = fcmp oge <4 x double> %vec.phi477, %i.tn
  %i.ts = select <4 x i1> %i.to, <4 x double> %vec.phi, <4 x double> %i.tk ; 2 uses
  %i.tt = select <4 x i1> %i.tp, <4 x double> %vec.phi475.a, <4 x double> %i.tl ; 2 uses
  %i.tu = select <4 x i1> %i.tq, <4 x double> %vec.phi476, <4 x double> %i.tm ; 2 uses
  %i.tv = select <4 x i1> %i.tr, <4 x double> %vec.phi477, <4 x double> %i.tn ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.tw = tail call <4 x i1> @llvm.is.fpclass.v4f64(<4 x double> %i.tk, /* (nan nzero) */ i32 35)
  %i.tx = tail call <4 x i1> @llvm.is.fpclass.v4f64(<4 x double> %i.tl, /* (nan nzero) */ i32 35)
  %i.ty = tail call <4 x i1> @llvm.is.fpclass.v4f64(<4 x double> %i.tm, /* (nan nzero) */ i32 35)
  %i.tz = tail call <4 x i1> @llvm.is.fpclass.v4f64(<4 x double> %i.tn, /* (nan nzero) */ i32 35)
  %i.ua = or <4 x i1> %i.tw, %i.tx
  %i.ub = or <4 x i1> %i.ua, %i.ty
  %i.uc = or <4 x i1> %i.ub, %i.tz
  %i.ud = bitcast <4 x i1> %i.uc to i4
  %i.ue = icmp ne i4 %i.ud, 0                     ; 7 uses
  %i.uf = icmp eq i64 %index.next, %n.vec
  %i.ug = or i1 %i.ue, %i.uf
  br i1 %i.ug, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  %i.uh = select i1 %i.ue, <4 x double> %vec.phi, <4 x double> %i.ts
  %i.ui = select i1 %i.ue, <4 x double> %vec.phi475.a, <4 x double> %i.tt
  %i.uj = select i1 %i.ue, <4 x double> %vec.phi476, <4 x double> %i.tu
  %i.uk = select i1 %i.ue, <4 x double> %vec.phi477, <4 x double> %i.tv
  %i.ul = select i1 %i.ue, i64 %index, i64 %n.vec
  %rdx.minmax = tail call nnan <4 x double> @llvm.maxnum.v4f64(<4 x double> %i.uh, <4 x double> %i.ui)
  %rdx.minmax481 = tail call nnan <4 x double> @llvm.maxnum.v4f64(<4 x double> %rdx.minmax, <4 x double> %i.uj)
  %rdx.minmax482 = tail call nnan <4 x double> @llvm.maxnum.v4f64(<4 x double> %rdx.minmax481, <4 x double> %i.uk)
  %i.um = tail call nnan double @llvm.vector.reduce.fmax.v4f64(<4 x double> %rdx.minmax482) ; 2 uses
  %i.un = or disjoint i64 %i.ul, 1
  %cmp.n = icmp ne i64 %n.vec, %i.ss
  %.not652 = or i1 %cmp.n, %i.ue
  br i1 %.not652, label %scalar.ph.preheader, label %._crit_edge387

scalar.ph.preheader:                              ; preds = %.lr.ph386, %middle.block
  %indvars.iv417.ph = phi i64 [ 1, %.lr.ph386 ], [ %i.un, %middle.block ]
  %.1384.ph = phi double [ 0.000000e+00, %.lr.ph386 ], [ %i.um, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv417 = phi i64 [ %indvars.iv.next418, %scalar.ph ], [ %indvars.iv417.ph, %scalar.ph.preheader ] ; 2 uses
  %.1384 = phi double [ %i.ut, %scalar.ph ], [ %.1384.ph, %scalar.ph.preheader ] ; 2 uses
  %gep469 = getelementptr [8 x i8], ptr %invariant.gep468, i64 %indvars.iv417
  %i.uo = load double, ptr %gep469, align 8, !tbaa !30 ; 3 uses
  %i.up = fcmp oge double %i.uo, 0.000000e+00
  %i.uq = fneg double %i.uo
  %i.ur = select i1 %i.up, double %i.uo, double %i.uq ; 2 uses
  %i.us = fcmp oge double %.1384, %i.ur
  %i.ut = select i1 %i.us, double %.1384, double %i.ur ; 2 uses
  %indvars.iv.next418 = add nuw nsw i64 %indvars.iv417, 1 ; 2 uses
  %exitcond421.not = icmp eq i64 %indvars.iv.next418, %wide.trip.count420
  br i1 %exitcond421.not, label %._crit_edge387, label %scalar.ph, !llvm.loop !26

._crit_edge387:                                   ; preds = %scalar.ph, %middle.block
  %.lcssa474 = phi double [ %i.um, %middle.block ], [ %i.ut, %scalar.ph ] ; 2 uses
  %i.uu = fcmp une double %.lcssa474, 0.000000e+00
  br i1 %i.uu, label %bb.t, label %._crit_edge387.thread

bb.t:                                             ; preds = %._crit_edge387
  %i.uv = fdiv double %i.sp, %.lcssa474
  store double %i.uv, ptr %i.pl, align 8, !tbaa !30
  br label %._crit_edge387.thread

._crit_edge387.thread:                            ; preds = %._crit_edge381, %._crit_edge387, %bb.t
  %indvars.iv.next423 = add nuw nsw i64 %indvars.iv422, 1 ; 2 uses
  %exitcond426.not = icmp eq i64 %indvars.iv.next423, %wide.trip.count425
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond426.not, label %.loopexit, label %.preheader, !llvm.loop !27

.loopexit:                                        ; preds = %._crit_edge387.thread, %bb.f, %.lr.ph394.preheader, %bb.h, %bb.g, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare double @dlamch_(ptr noundef) local_unnamed_addr #2

declare void @dpttrs_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @daxpy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2
end_hunk_0
