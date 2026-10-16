Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dtrsm_kernel_LT?download=true
inline.NumInlined: 4
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 28
begin_hunk_0_@dtrsm_kernel_LT:bb.a
  %i.lr = load double, ptr %gep.us.i179.1.1.2306, align 8, !tbaa !43
  %i.ls = tail call double @llvm.fmuladd.f64(double %i.lj, double %i.lq, double %i.lr)
  store double %i.ls, ptr %gep.us.i179.1.1.2306, align 8, !tbaa !43
  %i.lt = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  %.phi.trans.insert333.a = getelementptr inbounds nuw i8, ptr %i.kn, i64 40
  %.pre = load double, ptr %.phi.trans.insert333.a, align 8, !tbaa !43 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %.2131, i64 8 ; 3 uses
  %i.lv = load double, ptr %i.lu, align 8, !tbaa !43
  %i.lw = fmul double %.pre, %i.lv                ; 3 uses
  store double %i.lw, ptr %i.lt, align 8, !tbaa !43
  store double %i.lw, ptr %i.lu, align 8, !tbaa !43
  %i.lx = fneg double %i.lw                       ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.kn, i64 48 ; 2 uses
  %i.lz = load double, ptr %i.ly, align 8, !tbaa !43
  %gep.us.i179.1301.1 = getelementptr i8, ptr %.2131, i64 16 ; 2 uses
  %i.ma = load double, ptr %gep.us.i179.1301.1, align 8, !tbaa !43
  %i.mb = tail call double @llvm.fmuladd.f64(double %i.lx, double %i.lz, double %i.ma)
  store double %i.mb, ptr %gep.us.i179.1301.1, align 8, !tbaa !43
  %i.mc = getelementptr inbounds nuw i8, ptr %i.kn, i64 56 ; 2 uses
  %i.md = load double, ptr %i.mc, align 8, !tbaa !43
  %gep.us.i179.1301.1.1 = getelementptr i8, ptr %.2131, i64 24 ; 2 uses
  %i.me = load double, ptr %gep.us.i179.1301.1.1, align 8, !tbaa !43
  %i.mf = tail call double @llvm.fmuladd.f64(double %i.lx, double %i.md, double %i.me)
  store double %i.mf, ptr %gep.us.i179.1301.1.1, align 8, !tbaa !43
  %i.mg = getelementptr inbounds nuw i8, ptr %i.kp, i64 24
  %i.mh = getelementptr inbounds [8 x i8], ptr %i.lu, i64 %7 ; 2 uses
  %i.mi = load double, ptr %i.mh, align 8, !tbaa !43
  %i.mj = fmul double %.pre, %i.mi                ; 3 uses
  store double %i.mj, ptr %i.mg, align 8, !tbaa !43
  store double %i.mj, ptr %i.mh, align 8, !tbaa !43
  %invariant.gep.us.i177.1.1.1 = getelementptr [8 x i8], ptr %.2131, i64 %7 ; 2 uses
  %i.mk = fneg double %i.mj                       ; 2 uses
  %i.ml = load double, ptr %i.ly, align 8, !tbaa !43
  %gep.us.i179.1.1.1 = getelementptr i8, ptr %invariant.gep.us.i177.1.1.1, i64 16 ; 2 uses
  %i.mm = load double, ptr %gep.us.i179.1.1.1, align 8, !tbaa !43
  %i.mn = tail call double @llvm.fmuladd.f64(double %i.mk, double %i.ml, double %i.mm)
  store double %i.mn, ptr %gep.us.i179.1.1.1, align 8, !tbaa !43
  %i.mo = load double, ptr %i.mc, align 8, !tbaa !43
  %gep.us.i179.1.1.1.1 = getelementptr i8, ptr %invariant.gep.us.i177.1.1.1, i64 24 ; 2 uses
  %i.mp = load double, ptr %gep.us.i179.1.1.1.1, align 8, !tbaa !43
  %i.mq = tail call double @llvm.fmuladd.f64(double %i.mk, double %i.mo, double %i.mp)
  store double %i.mq, ptr %gep.us.i179.1.1.1.1, align 8, !tbaa !43
  %i.mr = getelementptr inbounds nuw i8, ptr %i.kp, i64 32
  %.phi.trans.insert335 = getelementptr inbounds nuw i8, ptr %i.kn, i64 80
  %.pre336 = load double, ptr %.phi.trans.insert335, align 8, !tbaa !43 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %.2131, i64 16 ; 3 uses
  %i.mt = load double, ptr %i.ms, align 8, !tbaa !43
  %i.mu = fmul double %.pre336, %i.mt             ; 3 uses
  store double %i.mu, ptr %i.mr, align 8, !tbaa !43
  store double %i.mu, ptr %i.ms, align 8, !tbaa !43
  %i.mv = fneg double %i.mu
  %i.mw = getelementptr inbounds nuw i8, ptr %i.kn, i64 88 ; 2 uses
  %i.mx = load double, ptr %i.mw, align 8, !tbaa !43
  %gep.us.i179.1301.2 = getelementptr i8, ptr %.2131, i64 24 ; 2 uses
  %i.my = load double, ptr %gep.us.i179.1301.2, align 8, !tbaa !43
  %i.mz = tail call double @llvm.fmuladd.f64(double %i.mv, double %i.mx, double %i.my)
  store double %i.mz, ptr %gep.us.i179.1301.2, align 8, !tbaa !43
  %i.na = getelementptr inbounds nuw i8, ptr %i.kp, i64 40
  %i.nb = getelementptr inbounds [8 x i8], ptr %i.ms, i64 %7 ; 2 uses
  %i.nc = load double, ptr %i.nb, align 8, !tbaa !43
  %i.nd = fmul double %.pre336, %i.nc             ; 3 uses
  store double %i.nd, ptr %i.na, align 8, !tbaa !43
  store double %i.nd, ptr %i.nb, align 8, !tbaa !43
  %invariant.gep.us.i177.1.1.2 = getelementptr [8 x i8], ptr %.2131, i64 %7
  %i.ne = fneg double %i.nd
  %i.nf = load double, ptr %i.mw, align 8, !tbaa !43
  %gep.us.i179.1.1.2 = getelementptr i8, ptr %invariant.gep.us.i177.1.1.2, i64 24 ; 2 uses
  %i.ng = load double, ptr %gep.us.i179.1.1.2, align 8, !tbaa !43
  %i.nh = tail call double @llvm.fmuladd.f64(double %i.ne, double %i.nf, double %i.ng)
  store double %i.nh, ptr %gep.us.i179.1.1.2, align 8, !tbaa !43
  %i.ni = getelementptr inbounds nuw i8, ptr %i.kp, i64 48
  %.phi.trans.insert338 = getelementptr inbounds nuw i8, ptr %i.kn, i64 120
  %.pre339 = load double, ptr %.phi.trans.insert338, align 8, !tbaa !43 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %.2131, i64 24 ; 3 uses
  %i.nk = load double, ptr %i.nj, align 8, !tbaa !43
  %i.nl = fmul double %.pre339, %i.nk             ; 2 uses
  store double %i.nl, ptr %i.ni, align 8, !tbaa !43
  store double %i.nl, ptr %i.nj, align 8, !tbaa !43
  %i.nm = getelementptr inbounds nuw i8, ptr %i.kp, i64 56
  %i.nn = getelementptr inbounds [8 x i8], ptr %i.nj, i64 %7 ; 2 uses
  %i.no = load double, ptr %i.nn, align 8, !tbaa !43
  %i.np = fmul double %.pre339, %i.no             ; 2 uses
  store double %i.np, ptr %i.nm, align 8, !tbaa !43
  store double %i.np, ptr %i.nn, align 8, !tbaa !43
  %i.nq = getelementptr inbounds i8, ptr %.2137, i64 %.idx381.a
  %i.nr = getelementptr inbounds nuw i8, ptr %.2131, i64 32
  %i.ns = add nsw i64 %.2127, 4
  br label %.preheader244.2

.preheader244.2:                                  ; preds = %.split47.us.i170.1.3, %.preheader244.1
  %.2137.1 = phi ptr [ %i.nq, %.split47.us.i170.1.3 ], [ %.2137, %.preheader244.1 ] ; 4 uses
  %.2131.1 = phi ptr [ %i.nr, %.split47.us.i170.1.3 ], [ %.2131, %.preheader244.1 ] ; 8 uses
  %.2127.1 = phi i64 [ %i.ns, %.split47.us.i170.1.3 ], [ %.2127, %.preheader244.1 ] ; 6 uses
  br i1 %.not155.2, label %.preheader244.3, label %bb.l

bb.l:                                             ; preds = %.preheader244.2
  %i.nt = icmp sgt i64 %.2127.1, 0
  br i1 %i.nt, label %bb.m, label %.split47.us.i170.2.1

bb.m:                                             ; preds = %bb.l
  %i.nu = tail call i32 @dgemm_kernel(i64 noundef 2, i64 noundef 2, i64 noundef %.2127.1, double noundef -1.000000e+00, ptr noundef %.2137.1, ptr noundef %.0141264, ptr noundef %.2131.1, i64 noundef %7) #3 ; 0 uses
  br label %.split47.us.i170.2.1

.split47.us.i170.2.1:                             ; preds = %bb.m, %bb.l
  %.idx382.a = shl nsw i64 %.2127.1, 4
  %i.nv = getelementptr inbounds i8, ptr %.2137.1, i64 %.idx382.a ; 3 uses
  %i.nw = load double, ptr %i.nv, align 8, !tbaa !43 ; 2 uses
  %.idx156.2 = shl nsw i64 %.2127.1, 4
  %i.nx = getelementptr inbounds i8, ptr %.0141264, i64 %.idx156.2 ; 4 uses
  %i.ny = load double, ptr %.2131.1, align 8, !tbaa !43
  %i.nz = fmul double %i.nw, %i.ny                ; 3 uses
  store double %i.nz, ptr %i.nx, align 8, !tbaa !43
  store double %i.nz, ptr %.2131.1, align 8, !tbaa !43
  %i.oa = fneg double %i.nz
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nv, i64 8 ; 2 uses
  %i.oc = load double, ptr %i.ob, align 8, !tbaa !43
  %gep.us.i179.2 = getelementptr i8, ptr %.2131.1, i64 8 ; 2 uses
  %i.od = load double, ptr %gep.us.i179.2, align 8, !tbaa !43
  %i.oe = tail call double @llvm.fmuladd.f64(double %i.oa, double %i.oc, double %i.od)
  store double %i.oe, ptr %gep.us.i179.2, align 8, !tbaa !43
  %i.of = getelementptr inbounds nuw i8, ptr %i.nx, i64 8
  %i.og = getelementptr [8 x i8], ptr %.2131.1, i64 %7 ; 3 uses
  %i.oh = load double, ptr %i.og, align 8, !tbaa !43
  %i.oi = fmul double %i.nw, %i.oh                ; 3 uses
  store double %i.oi, ptr %i.of, align 8, !tbaa !43
  store double %i.oi, ptr %i.og, align 8, !tbaa !43
  %i.oj = fneg double %i.oi
  %i.ok = load double, ptr %i.ob, align 8, !tbaa !43
  %gep.us.i179.1.2 = getelementptr i8, ptr %i.og, i64 8 ; 2 uses
  %i.ol = load double, ptr %gep.us.i179.1.2, align 8, !tbaa !43
  %i.om = tail call double @llvm.fmuladd.f64(double %i.oj, double %i.ok, double %i.ol)
  store double %i.om, ptr %gep.us.i179.1.2, align 8, !tbaa !43
  %i.on = getelementptr inbounds nuw i8, ptr %i.nx, i64 16
  %.phi.trans.insert341 = getelementptr inbounds nuw i8, ptr %i.nv, i64 24
  %.pre342 = load double, ptr %.phi.trans.insert341, align 8, !tbaa !43 ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %.2131.1, i64 8 ; 3 uses
  %i.op = load double, ptr %i.oo, align 8, !tbaa !43
  %i.oq = fmul double %.pre342, %i.op             ; 2 uses
  store double %i.oq, ptr %i.on, align 8, !tbaa !43
  store double %i.oq, ptr %i.oo, align 8, !tbaa !43
  %i.or = getelementptr inbounds nuw i8, ptr %i.nx, i64 24
  %i.os = getelementptr inbounds [8 x i8], ptr %i.oo, i64 %7 ; 2 uses
  %i.ot = load double, ptr %i.os, align 8, !tbaa !43
  %i.ou = fmul double %.pre342, %i.ot             ; 2 uses
  store double %i.ou, ptr %i.or, align 8, !tbaa !43
  store double %i.ou, ptr %i.os, align 8, !tbaa !43
  %i.ov = getelementptr inbounds i8, ptr %.2137.1, i64 %.idx383.a
  %i.ow = getelementptr inbounds nuw i8, ptr %.2131.1, i64 16
  %i.ox = add nsw i64 %.2127.1, 2
  br label %.preheader244.3

.preheader244.3:                                  ; preds = %.split47.us.i170.2.1, %.preheader244.2
  %.2137.2 = phi ptr [ %i.ov, %.split47.us.i170.2.1 ], [ %.2137.1, %.preheader244.2 ] ; 2 uses
  %.2131.2 = phi ptr [ %i.ow, %.split47.us.i170.2.1 ], [ %.2131.1, %.preheader244.2 ] ; 4 uses
  %.2127.2 = phi i64 [ %i.ox, %.split47.us.i170.2.1 ], [ %.2127.1, %.preheader244.2 ] ; 4 uses
  br i1 %.not155.3, label %.loopexit245, label %bb.n

bb.n:                                             ; preds = %.preheader244.3
  %i.oy = icmp sgt i64 %.2127.2, 0
  br i1 %i.oy, label %bb.o, label %.split47.us.i170.3

bb.o:                                             ; preds = %bb.n
  %i.oz = tail call i32 @dgemm_kernel(i64 noundef 1, i64 noundef 2, i64 noundef %.2127.2, double noundef -1.000000e+00, ptr noundef %.2137.2, ptr noundef %.0141264, ptr noundef %.2131.2, i64 noundef %7) #3 ; 0 uses
  br label %.split47.us.i170.3

.split47.us.i170.3:                               ; preds = %bb.o, %bb.n
  %i.pa = getelementptr inbounds [8 x i8], ptr %.2137.2, i64 %.2127.2
  %i.pb = load double, ptr %i.pa, align 8, !tbaa !43 ; 2 uses
  %.idx156.3 = shl nsw i64 %.2127.2, 4
  %i.pc = getelementptr inbounds i8, ptr %.0141264, i64 %.idx156.3 ; 2 uses
  %i.pd = load double, ptr %.2131.2, align 8, !tbaa !43
  %i.pe = fmul double %i.pb, %i.pd                ; 2 uses
  store double %i.pe, ptr %i.pc, align 8, !tbaa !43
  store double %i.pe, ptr %.2131.2, align 8, !tbaa !43
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pc, i64 8
  %i.pg = getelementptr inbounds [8 x i8], ptr %.2131.2, i64 %7 ; 2 uses
  %i.ph = load double, ptr %i.pg, align 8, !tbaa !43
  %i.pi = fmul double %i.pb, %i.ph                ; 2 uses
  store double %i.pi, ptr %i.pf, align 8, !tbaa !43
  store double %i.pi, ptr %i.pg, align 8, !tbaa !43
  br label %.loopexit245

.loopexit245:                                     ; preds = %.preheader244.3, %.split47.us.i170.3, %._crit_edge
  %i.pj = getelementptr inbounds i8, ptr %.0141264, i64 %.idx153 ; 2 uses
  %i.pk = getelementptr inbounds i8, ptr %.0144263, i64 %.idx154 ; 2 uses
  %i.pl = add nsw i64 %.0122265, -1
  %i.pm = icmp sgt i64 %.0122265, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.pm, label %bb.b, label %._crit_edge268, !llvm.loop !34

._crit_edge268:                                   ; preds = %.loopexit245, %bb.a
  %.0144.lcssa = phi ptr [ %6, %bb.a ], [ %i.pk, %.loopexit245 ] ; 4 uses
  %.0141.lcssa = phi ptr [ %5, %bb.a ], [ %i.pj, %.loopexit245 ] ; 10 uses
  %i.pn = and i64 %1, 1
  %.not = icmp eq i64 %i.pn, 0
  br i1 %.not, label %.loopexit, label %.preheader240

.preheader240:                                    ; preds = %._crit_edge268
  %i.po = ashr i64 %0, 4                          ; 2 uses
  %i.pp = icmp sgt i64 %i.po, 0
  %.idx150 = shl i64 %2, 7                        ; 2 uses
  %9 = and i64 %0, 15
  %.not147 = icmp eq i64 %9, 0
  br i1 %i.pp, label %.lr.ph276.preheader, label %._crit_edge277

.lr.ph276.preheader:                              ; preds = %.preheader240
  %i.pq = shl i64 %8, 7                           ; 2 uses
  %i.pr = add i64 %.idx150, 2048
  %i.ps = getelementptr i8, ptr %4, i64 %i.pq
  %i.pt = getelementptr i8, ptr %i.ps, i64 8
  %i.pu = getelementptr i8, ptr %4, i64 %i.pq
  %i.pv = getelementptr i8, ptr %i.pu, i64 128
  br label %.lr.ph276

.lr.ph276:                                        ; preds = %.lr.ph276.preheader, %solve.exit211
  %indvar477 = phi i64 [ 0, %.lr.ph276.preheader ], [ %indvar.next478, %solve.exit211 ] ; 3 uses
  %.2274 = phi i64 [ %i.po, %.lr.ph276.preheader ], [ %i.sp, %solve.exit211 ] ; 2 uses
  %.3128273 = phi i64 [ %8, %.lr.ph276.preheader ], [ %i.so, %solve.exit211 ] ; 5 uses
  %.3132272 = phi ptr [ %.0144.lcssa, %.lr.ph276.preheader ], [ %i.sn, %solve.exit211 ] ; 13 uses
  %.3138271 = phi ptr [ %4, %.lr.ph276.preheader ], [ %i.sm, %solve.exit211 ] ; 3 uses
  %i.pw = shl i64 %indvar477, 7                   ; 2 uses
  %i.px = getelementptr i8, ptr %.0144.lcssa, i64 %i.pw
  %scevgep480 = getelementptr i8, ptr %i.px, i64 128
  %i.py = mul i64 %i.pr, %indvar477               ; 2 uses
  %i.pz = icmp sgt i64 %.3128273, 0
  br i1 %i.pz, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph276
  %i.qa = tail call i32 @dgemm_kernel(i64 noundef 16, i64 noundef 1, i64 noundef %.3128273, double noundef -1.000000e+00, ptr noundef %.3138271, ptr noundef %.0141.lcssa, ptr noundef %.3132272, i64 noundef %7) #3 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph276
  %.idx = shl nsw i64 %.3128273, 7
  %i.qb = getelementptr inbounds i8, ptr %.3138271, i64 %.idx
  %i.qc = getelementptr inbounds [8 x i8], ptr %.0141.lcssa, i64 %.3128273
  %i.qd = getelementptr i8, ptr %.0144.lcssa, i64 %i.pw
  %i.qe = getelementptr i8, ptr %i.qd, i64 8
  %i.qf = getelementptr i8, ptr %i.pt, i64 %i.py
  %i.qg = getelementptr i8, ptr %i.pv, i64 %i.py
  br label %bb.r

bb.r:                                             ; preds = %.split47.us.i196, %bb.q
  %indvars.iv64.i186 = phi i64 [ 0, %bb.q ], [ %indvars.iv.next65.i190, %.split47.us.i196 ] ; 8 uses
  %indvars.iv54.i187 = phi i64 [ 1, %bb.q ], [ %indvars.iv.next55.i198, %.split47.us.i196 ] ; 5 uses
  %.03649.i188 = phi ptr [ %i.qb, %bb.q ], [ %i.sl, %.split47.us.i196 ] ; 12 uses
  %.03748.i189 = phi ptr [ %i.qc, %bb.q ], [ %.us-phi.i197, %.split47.us.i196 ] ; 2 uses
  %i.qh = sub nsw i64 15, %indvars.iv64.i186      ; 3 uses
  %i.qi = shl nuw nsw i64 %indvars.iv64.i186, 3
  %scevgep479 = getelementptr i8, ptr %i.qe, i64 %i.qi
  %i.qj = mul nuw nsw i64 %indvars.iv64.i186, 136
  %scevgep481 = getelementptr i8, ptr %i.qf, i64 %i.qj
  %i.qk = shl nuw nsw i64 %indvars.iv64.i186, 7
  %scevgep482 = getelementptr i8, ptr %i.qg, i64 %i.qk
  %i.ql = getelementptr inbounds nuw [8 x i8], ptr %.03649.i188, i64 %indvars.iv64.i186
  %i.qm = load double, ptr %i.ql, align 8, !tbaa !43
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %.3132272, i64 %indvars.iv64.i186 ; 2 uses
  %indvars.iv.next65.i190 = add nuw nsw i64 %indvars.iv64.i186, 1 ; 2 uses
  %i.qo = icmp samesign ult i64 %indvars.iv64.i186, 15
  %i.qp = load double, ptr %i.qn, align 8, !tbaa !43
  %i.qq = fmul double %i.qm, %i.qp                ; 3 uses
  store double %i.qq, ptr %.03748.i189, align 8, !tbaa !43
  store double %i.qq, ptr %i.qn, align 8, !tbaa !43
  br i1 %i.qo, label %.lr.ph.us.i200, label %.split47.us.i196

.lr.ph.us.i200:                                   ; preds = %bb.r
  %i.qr = fneg double %i.qq                       ; 10 uses
  %min.iters.check487 = icmp ult i64 %i.qh, 4
  br i1 %min.iters.check487, label %scalar.ph486.preheader, label %vector.memcheck476

vector.memcheck476:                               ; preds = %.lr.ph.us.i200
  %bound0483 = icmp ult ptr %scevgep479, %scevgep482
  %bound1484 = icmp ult ptr %scevgep481, %scevgep480
  %found.conflict485 = and i1 %bound0483, %bound1484
  br i1 %found.conflict485, label %scalar.ph486.preheader, label %vector.ph488

vector.ph488:                                     ; preds = %vector.memcheck476
  %n.vec489 = and i64 %i.qh, 12                   ; 3 uses
  %i.qs = add nuw i64 %indvars.iv54.i187, %n.vec489
  %broadcast.splatinsert490 = insertelement <4 x double> poison, double %i.qr, i64 0
  %broadcast.splat491 = shufflevector <4 x double> %broadcast.splatinsert490, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body492

vector.body492:                                   ; preds = %vector.body492, %vector.ph488
  %index493 = phi i64 [ 0, %vector.ph488 ], [ %index.next496, %vector.body492 ] ; 2 uses
  %i.qt = add nuw i64 %indvars.iv54.i187, %index493 ; 2 uses
  %i.qu = getelementptr inbounds nuw [8 x i8], ptr %.03649.i188, i64 %i.qt
  %wide.load494 = load <4 x double>, ptr %i.qu, align 8, !tbaa !43, !alias.scope !56
  %i.qv = getelementptr [8 x i8], ptr %.3132272, i64 %i.qt ; 2 uses
  %wide.load495 = load <4 x double>, ptr %i.qv, align 8, !tbaa !43, !alias.scope !57, !noalias !56
  %i.qw = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat491, <4 x double> %wide.load494, <4 x double> %wide.load495)
  store <4 x double> %i.qw, ptr %i.qv, align 8, !tbaa !43, !alias.scope !57, !noalias !56
  %index.next496 = add nuw i64 %index493, 4       ; 2 uses
  %i.qx = icmp eq i64 %index.next496, %n.vec489
  br i1 %i.qx, label %middle.block497, label %vector.body492, !llvm.loop !38

middle.block497:                                  ; preds = %vector.body492
  %cmp.n498 = icmp eq i64 %i.qh, %n.vec489
  br i1 %cmp.n498, label %.split47.us.i196, label %scalar.ph486.preheader

scalar.ph486.preheader:                           ; preds = %vector.memcheck476, %.lr.ph.us.i200, %middle.block497
  %indvars.iv56.i204.ph = phi i64 [ %indvars.iv54.i187, %vector.memcheck476 ], [ %indvars.iv54.i187, %.lr.ph.us.i200 ], [ %i.qs, %middle.block497 ] ; 4 uses
  %i.qy = sub i64 0, %indvars.iv56.i204.ph
  %xtraiter527 = and i64 %i.qy, 7                 ; 2 uses
  %lcmp.mod528.not = icmp eq i64 %xtraiter527, 0
  br i1 %lcmp.mod528.not, label %scalar.ph486.prol.loopexit, label %scalar.ph486.prol

scalar.ph486.prol:                                ; preds = %scalar.ph486.preheader, %scalar.ph486.prol
  %indvars.iv56.i204.prol = phi i64 [ %indvars.iv.next57.i206.prol, %scalar.ph486.prol ], [ %indvars.iv56.i204.ph, %scalar.ph486.preheader ] ; 3 uses
  %prol.iter529 = phi i64 [ %prol.iter529.next, %scalar.ph486.prol ], [ 0, %scalar.ph486.preheader ]
  %i.qz = getelementptr inbounds nuw [8 x i8], ptr %.03649.i188, i64 %indvars.iv56.i204.prol
  %i.ra = load double, ptr %i.qz, align 8, !tbaa !43
  %gep.us.i205.prol = getelementptr [8 x i8], ptr %.3132272, i64 %indvars.iv56.i204.prol ; 2 uses
  %i.rb = load double, ptr %gep.us.i205.prol, align 8, !tbaa !43
  %i.rc = tail call double @llvm.fmuladd.f64(double %i.qr, double %i.ra, double %i.rb)
  store double %i.rc, ptr %gep.us.i205.prol, align 8, !tbaa !43
  %indvars.iv.next57.i206.prol = add nuw nsw i64 %indvars.iv56.i204.prol, 1 ; 2 uses
  %prol.iter529.next = add i64 %prol.iter529, 1   ; 2 uses
  %prol.iter529.cmp.not = icmp eq i64 %prol.iter529.next, %xtraiter527
  br i1 %prol.iter529.cmp.not, label %scalar.ph486.prol.loopexit, label %scalar.ph486.prol, !llvm.loop !39

scalar.ph486.prol.loopexit:                       ; preds = %scalar.ph486.prol, %scalar.ph486.preheader
  %indvars.iv56.i204.unr = phi i64 [ %indvars.iv56.i204.ph, %scalar.ph486.preheader ], [ %indvars.iv.next57.i206.prol, %scalar.ph486.prol ]
  %i.rd = add i64 %indvars.iv56.i204.ph, -9
  %i.re = icmp ult i64 %i.rd, 7
  br i1 %i.re, label %.split47.us.i196, label %scalar.ph486

scalar.ph486:                                     ; preds = %scalar.ph486.prol.loopexit, %scalar.ph486
  %indvars.iv56.i204 = phi i64 [ %indvars.iv.next57.i206.7, %scalar.ph486 ], [ %indvars.iv56.i204.unr, %scalar.ph486.prol.loopexit ] ; 10 uses
  %i.rf = getelementptr inbounds nuw [8 x i8], ptr %.03649.i188, i64 %indvars.iv56.i204
  %i.rg = load double, ptr %i.rf, align 8, !tbaa !43
  %gep.us.i205 = getelementptr [8 x i8], ptr %.3132272, i64 %indvars.iv56.i204 ; 2 uses
  %i.rh = load double, ptr %gep.us.i205, align 8, !tbaa !43
  %i.ri = tail call double @llvm.fmuladd.f64(double %i.qr, double %i.rg, double %i.rh)
  store double %i.ri, ptr %gep.us.i205, align 8, !tbaa !43
  %indvars.iv.next57.i206 = add nuw nsw i64 %indvars.iv56.i204, 1 ; 2 uses
  %i.rj = getelementptr inbounds nuw [8 x i8], ptr %.03649.i188, i64 %indvars.iv.next57.i206
  %i.rk = load double, ptr %i.rj, align 8, !tbaa !43
  %gep.us.i205.1 = getelementptr [8 x i8], ptr %.3132272, i64 %indvars.iv.next57.i206 ; 2 uses
  %i.rl = load double, ptr %gep.us.i205.1, align 8, !tbaa !43
  %i.rm = tail call double @llvm.fmuladd.f64(double %i.qr, double %i.rk, double %i.rl)
  store double %i.rm, ptr %gep.us.i205.1, align 8, !tbaa !43
  %indvars.iv.next57.i206.1 = add nuw nsw i64 %indvars.iv56.i204, 2 ; 2 uses
  %i.rn = getelementptr inbounds nuw [8 x i8], ptr %.03649.i188, i64 %indvars.iv.next57.i206.1
  %i.ro = load double, ptr %i.rn, align 8, !tbaa !43
  %gep.us.i205.2 = getelementptr [8 x i8], ptr %.3132272, i64 %indvars.iv.next57.i206.1 ; 2 uses
  %i.rp = load double, ptr %gep.us.i205.2, align 8, !tbaa !43
  %i.rq = tail call double @llvm.fmuladd.f64(double %i.qr, double %i.ro, double %i.rp)
  store double %i.rq, ptr %gep.us.i205.2, align 8, !tbaa !43
  %indvars.iv.next57.i206.2 = add nuw nsw i64 %indvars.iv56.i204, 3 ; 2 uses
  %i.rr = getelementptr inbounds nuw [8 x i8], ptr %.03649.i188, i64 %indvars.iv.next57.i206.2
  %i.rs = load double, ptr %i.rr, align 8, !tbaa !43
  %gep.us.i205.3 = getelementptr [8 x i8], ptr %.3132272, i64 %indvars.iv.next57.i206.2 ; 2 uses
  %i.rt = load double, ptr %gep.us.i205.3, align 8, !tbaa !43
  %i.ru = tail call double @llvm.fmuladd.f64(double %i.qr, double %i.rs, double %i.rt)
  store double %i.ru, ptr %gep.us.i205.3, align 8, !tbaa !43
  %indvars.iv.next57.i206.3 = add nuw nsw i64 %indvars.iv56.i204, 4 ; 2 uses
  %i.rv = getelementptr inbounds nuw [8 x i8], ptr %.03649.i188, i64 %indvars.iv.next57.i206.3
  %i.rw = load double, ptr %i.rv, align 8, !tbaa !43
  %gep.us.i205.4 = getelementptr [8 x i8], ptr %.3132272, i64 %indvars.iv.next57.i206.3 ; 2 uses
  %i.rx = load double, ptr %gep.us.i205.4, align 8, !tbaa !43
  %i.ry = tail call double @llvm.fmuladd.f64(double %i.qr, double %i.rw, double %i.rx)
  store double %i.ry, ptr %gep.us.i205.4, align 8, !tbaa !43
  %indvars.iv.next57.i206.4 = add nuw nsw i64 %indvars.iv56.i204, 5 ; 2 uses
  %i.rz = getelementptr inbounds nuw [8 x i8], ptr %.03649.i188, i64 %indvars.iv.next57.i206.4
  %i.sa = load double, ptr %i.rz, align 8, !tbaa !43
  %gep.us.i205.5 = getelementptr [8 x i8], ptr %.3132272, i64 %indvars.iv.next57.i206.4 ; 2 uses
  %i.sb = load double, ptr %gep.us.i205.5, align 8, !tbaa !43
  %i.sc = tail call double @llvm.fmuladd.f64(double %i.qr, double %i.sa, double %i.sb)
  store double %i.sc, ptr %gep.us.i205.5, align 8, !tbaa !43
  %indvars.iv.next57.i206.5 = add nuw nsw i64 %indvars.iv56.i204, 6 ; 2 uses
  %i.sd = getelementptr inbounds nuw [8 x i8], ptr %.03649.i188, i64 %indvars.iv.next57.i206.5
  %i.se = load double, ptr %i.sd, align 8, !tbaa !43
  %gep.us.i205.6 = getelementptr [8 x i8], ptr %.3132272, i64 %indvars.iv.next57.i206.5 ; 2 uses
  %i.sf = load double, ptr %gep.us.i205.6, align 8, !tbaa !43
  %i.sg = tail call double @llvm.fmuladd.f64(double %i.qr, double %i.se, double %i.sf)
  store double %i.sg, ptr %gep.us.i205.6, align 8, !tbaa !43
  %indvars.iv.next57.i206.6 = add nuw nsw i64 %indvars.iv56.i204, 7 ; 2 uses
  %i.sh = getelementptr inbounds nuw [8 x i8], ptr %.03649.i188, i64 %indvars.iv.next57.i206.6
  %i.si = load double, ptr %i.sh, align 8, !tbaa !43
  %gep.us.i205.7 = getelementptr [8 x i8], ptr %.3132272, i64 %indvars.iv.next57.i206.6 ; 2 uses
  %i.sj = load double, ptr %gep.us.i205.7, align 8, !tbaa !43
  %i.sk = tail call double @llvm.fmuladd.f64(double %i.qr, double %i.si, double %i.sj)
  store double %i.sk, ptr %gep.us.i205.7, align 8, !tbaa !43
  %indvars.iv.next57.i206.7 = add nuw nsw i64 %indvars.iv56.i204, 8 ; 2 uses
  %exitcond59.not.i207.7 = icmp eq i64 %indvars.iv.next57.i206.7, 16
  br i1 %exitcond59.not.i207.7, label %.split47.us.i196, label %scalar.ph486, !llvm.loop !40

.split47.us.i196:                                 ; preds = %scalar.ph486.prol.loopexit, %scalar.ph486, %middle.block497, %bb.r
  %.us-phi.i197 = getelementptr inbounds nuw i8, ptr %.03748.i189, i64 8
  %i.sl = getelementptr inbounds nuw i8, ptr %.03649.i188, i64 128
  %indvars.iv.next55.i198 = add nuw nsw i64 %indvars.iv54.i187, 1
  %exitcond67.not.i199 = icmp eq i64 %indvars.iv.next65.i190, 16
  br i1 %exitcond67.not.i199, label %solve.exit211, label %bb.r, !llvm.loop !20

solve.exit211:                                    ; preds = %.split47.us.i196
  %i.sm = getelementptr inbounds i8, ptr %.3138271, i64 %.idx150 ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %.3132272, i64 128 ; 2 uses
  %i.so = add nsw i64 %.3128273, 16               ; 2 uses
  %i.sp = add nsw i64 %.2274, -1
  %i.sq = icmp sgt i64 %.2274, 1
  %indvar.next478 = add i64 %indvar477, 1
  br i1 %i.sq, label %.lr.ph276, label %._crit_edge277, !llvm.loop !41

._crit_edge277:                                   ; preds = %solve.exit211, %.preheader240
  %.3138.lcssa = phi ptr [ %4, %.preheader240 ], [ %i.sm, %solve.exit211 ] ; 4 uses
  %.3132.lcssa = phi ptr [ %.0144.lcssa, %.preheader240 ], [ %i.sn, %solve.exit211 ] ; 40 uses
  %.3128.lcssa = phi i64 [ %8, %.preheader240 ], [ %i.so, %solve.exit211 ] ; 6 uses
  br i1 %.not147, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %._crit_edge277
  %i.sr = and i64 %0, 8
  %.not149 = icmp eq i64 %i.sr, 0
  br i1 %.not149, label %.preheader.1, label %bb.s

bb.s:                                             ; preds = %.preheader.preheader
  %i.ss = icmp sgt i64 %.3128.lcssa, 0
  br i1 %i.ss, label %bb.t, label %.split47.us.i222.7

bb.t:                                             ; preds = %bb.s
  %i.st = tail call i32 @dgemm_kernel(i64 noundef 8, i64 noundef 1, i64 noundef %.3128.lcssa, double noundef -1.000000e+00, ptr noundef %.3138.lcssa, ptr noundef %.0141.lcssa, ptr noundef %.3132.lcssa, i64 noundef %7) #3 ; 0 uses
  br label %.split47.us.i222.7

.split47.us.i222.7:                               ; preds = %bb.t, %bb.s
  %.idx384.a = shl nsw i64 %.3128.lcssa, 6
  %i.su = getelementptr inbounds i8, ptr %.3138.lcssa, i64 %.idx384.a ; 36 uses
  %i.sv = getelementptr inbounds [8 x i8], ptr %.0141.lcssa, i64 %.3128.lcssa ; 8 uses
  %i.sw = load double, ptr %i.su, align 8, !tbaa !43
  %i.sx = load double, ptr %.3132.lcssa, align 8, !tbaa !43
  %i.sy = fmul double %i.sw, %i.sx                ; 3 uses
  store double %i.sy, ptr %i.sv, align 8, !tbaa !43
  store double %i.sy, ptr %.3132.lcssa, align 8, !tbaa !43
  %i.sz = fneg double %i.sy                       ; 7 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.su, i64 8
  %i.tb = load double, ptr %i.ta, align 8, !tbaa !43
  %gep.us.i231 = getelementptr i8, ptr %.3132.lcssa, i64 8 ; 2 uses
  %i.tc = load double, ptr %gep.us.i231, align 8, !tbaa !43
  %i.td = tail call double @llvm.fmuladd.f64(double %i.sz, double %i.tb, double %i.tc) ; 2 uses
  store double %i.td, ptr %gep.us.i231, align 8, !tbaa !43
  %i.te = getelementptr inbounds nuw i8, ptr %i.su, i64 16
  %i.tf = load double, ptr %i.te, align 8, !tbaa !43
  %gep.us.i231.1327 = getelementptr i8, ptr %.3132.lcssa, i64 16 ; 2 uses
  %i.tg = load double, ptr %gep.us.i231.1327, align 8, !tbaa !43
  %i.th = tail call double @llvm.fmuladd.f64(double %i.sz, double %i.tf, double %i.tg)
  store double %i.th, ptr %gep.us.i231.1327, align 8, !tbaa !43
  %i.ti = getelementptr inbounds nuw i8, ptr %i.su, i64 24
  %i.tj = load double, ptr %i.ti, align 8, !tbaa !43
  %gep.us.i231.2328 = getelementptr i8, ptr %.3132.lcssa, i64 24 ; 2 uses
  %i.tk = load double, ptr %gep.us.i231.2328, align 8, !tbaa !43
  %i.tl = tail call double @llvm.fmuladd.f64(double %i.sz, double %i.tj, double %i.tk)
  store double %i.tl, ptr %gep.us.i231.2328, align 8, !tbaa !43
  %i.tm = getelementptr inbounds nuw i8, ptr %i.su, i64 32
  %i.tn = load double, ptr %i.tm, align 8, !tbaa !43
  %gep.us.i231.3329 = getelementptr i8, ptr %.3132.lcssa, i64 32 ; 2 uses
  %i.to = load double, ptr %gep.us.i231.3329, align 8, !tbaa !43
  %i.tp = tail call double @llvm.fmuladd.f64(double %i.sz, double %i.tn, double %i.to)
  store double %i.tp, ptr %gep.us.i231.3329, align 8, !tbaa !43
  %i.tq = getelementptr inbounds nuw i8, ptr %i.su, i64 40
  %i.tr = load double, ptr %i.tq, align 8, !tbaa !43
  %gep.us.i231.4330 = getelementptr i8, ptr %.3132.lcssa, i64 40 ; 2 uses
  %i.ts = load double, ptr %gep.us.i231.4330, align 8, !tbaa !43
  %i.tt = tail call double @llvm.fmuladd.f64(double %i.sz, double %i.tr, double %i.ts)
  store double %i.tt, ptr %gep.us.i231.4330, align 8, !tbaa !43
  %i.tu = getelementptr inbounds nuw i8, ptr %i.su, i64 48
  %i.tv = load double, ptr %i.tu, align 8, !tbaa !43
  %gep.us.i231.5331 = getelementptr i8, ptr %.3132.lcssa, i64 48 ; 2 uses
  %i.tw = load double, ptr %gep.us.i231.5331, align 8, !tbaa !43
  %i.tx = tail call double @llvm.fmuladd.f64(double %i.sz, double %i.tv, double %i.tw)
  store double %i.tx, ptr %gep.us.i231.5331, align 8, !tbaa !43
  %i.ty = getelementptr inbounds nuw i8, ptr %i.su, i64 56
  %i.tz = load double, ptr %i.ty, align 8, !tbaa !43
  %gep.us.i231.6332 = getelementptr i8, ptr %.3132.lcssa, i64 56 ; 2 uses
  %i.ua = load double, ptr %gep.us.i231.6332, align 8, !tbaa !43
  %i.ub = tail call double @llvm.fmuladd.f64(double %i.sz, double %i.tz, double %i.ua)
  store double %i.ub, ptr %gep.us.i231.6332, align 8, !tbaa !43
  %.phi.trans.insert344 = getelementptr inbounds nuw i8, ptr %i.su, i64 72
  %.pre345 = load double, ptr %.phi.trans.insert344, align 8, !tbaa !43
  %.us-phi.i223 = getelementptr inbounds nuw i8, ptr %i.sv, i64 8
  %i.uc = getelementptr inbounds nuw i8, ptr %.3132.lcssa, i64 8
  %i.ud = fmul double %.pre345, %i.td             ; 3 uses
  store double %i.ud, ptr %.us-phi.i223, align 8, !tbaa !43
  store double %i.ud, ptr %i.uc, align 8, !tbaa !43
  %i.ue = fneg double %i.ud                       ; 6 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.su, i64 80
  %i.ug = load double, ptr %i.uf, align 8, !tbaa !43
  %gep.us.i231.1313 = getelementptr i8, ptr %.3132.lcssa, i64 16 ; 2 uses
  %i.uh = load double, ptr %gep.us.i231.1313, align 8, !tbaa !43
  %i.ui = tail call double @llvm.fmuladd.f64(double %i.ue, double %i.ug, double %i.uh) ; 2 uses
  store double %i.ui, ptr %gep.us.i231.1313, align 8, !tbaa !43
  %i.uj = getelementptr inbounds nuw i8, ptr %i.su, i64 88
  %i.uk = load double, ptr %i.uj, align 8, !tbaa !43
  %gep.us.i231.1313.1 = getelementptr i8, ptr %.3132.lcssa, i64 24 ; 2 uses
  %i.ul = load double, ptr %gep.us.i231.1313.1, align 8, !tbaa !43
  %i.um = tail call double @llvm.fmuladd.f64(double %i.ue, double %i.uk, double %i.ul)
  store double %i.um, ptr %gep.us.i231.1313.1, align 8, !tbaa !43
  %i.un = getelementptr inbounds nuw i8, ptr %i.su, i64 96
  %i.uo = load double, ptr %i.un, align 8, !tbaa !43
  %gep.us.i231.1313.2 = getelementptr i8, ptr %.3132.lcssa, i64 32 ; 2 uses
  %i.up = load double, ptr %gep.us.i231.1313.2, align 8, !tbaa !43
  %i.uq = tail call double @llvm.fmuladd.f64(double %i.ue, double %i.uo, double %i.up)
  store double %i.uq, ptr %gep.us.i231.1313.2, align 8, !tbaa !43
  %i.ur = getelementptr inbounds nuw i8, ptr %i.su, i64 104
  %i.us = load double, ptr %i.ur, align 8, !tbaa !43
  %gep.us.i231.1313.3 = getelementptr i8, ptr %.3132.lcssa, i64 40 ; 2 uses
  %i.ut = load double, ptr %gep.us.i231.1313.3, align 8, !tbaa !43
  %i.uu = tail call double @llvm.fmuladd.f64(double %i.ue, double %i.us, double %i.ut)
  store double %i.uu, ptr %gep.us.i231.1313.3, align 8, !tbaa !43
  %i.uv = getelementptr inbounds nuw i8, ptr %i.su, i64 112
  %i.uw = load double, ptr %i.uv, align 8, !tbaa !43
  %gep.us.i231.1313.4 = getelementptr i8, ptr %.3132.lcssa, i64 48 ; 2 uses
  %i.ux = load double, ptr %gep.us.i231.1313.4, align 8, !tbaa !43
  %i.uy = tail call double @llvm.fmuladd.f64(double %i.ue, double %i.uw, double %i.ux)
  store double %i.uy, ptr %gep.us.i231.1313.4, align 8, !tbaa !43
  %i.uz = getelementptr inbounds nuw i8, ptr %i.su, i64 120
  %i.va = load double, ptr %i.uz, align 8, !tbaa !43
  %gep.us.i231.1313.5 = getelementptr i8, ptr %.3132.lcssa, i64 56 ; 2 uses
  %i.vb = load double, ptr %gep.us.i231.1313.5, align 8, !tbaa !43
  %i.vc = tail call double @llvm.fmuladd.f64(double %i.ue, double %i.va, double %i.vb)
  store double %i.vc, ptr %gep.us.i231.1313.5, align 8, !tbaa !43
  %.phi.trans.insert347 = getelementptr inbounds nuw i8, ptr %i.su, i64 144
  %.pre348 = load double, ptr %.phi.trans.insert347, align 8, !tbaa !43
  %.us-phi.i223.1315 = getelementptr inbounds nuw i8, ptr %i.sv, i64 16
  %i.vd = getelementptr inbounds nuw i8, ptr %.3132.lcssa, i64 16
  %i.ve = fmul double %.pre348, %i.ui             ; 3 uses
  store double %i.ve, ptr %.us-phi.i223.1315, align 8, !tbaa !43
  store double %i.ve, ptr %i.vd, align 8, !tbaa !43
  %i.vf = fneg double %i.ve                       ; 5 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.su, i64 152
  %i.vh = load double, ptr %i.vg, align 8, !tbaa !43
  %gep.us.i231.2319 = getelementptr i8, ptr %.3132.lcssa, i64 24 ; 2 uses
  %i.vi = load double, ptr %gep.us.i231.2319, align 8, !tbaa !43
  %i.vj = tail call double @llvm.fmuladd.f64(double %i.vf, double %i.vh, double %i.vi) ; 2 uses
  store double %i.vj, ptr %gep.us.i231.2319, align 8, !tbaa !43
  %i.vk = getelementptr inbounds nuw i8, ptr %i.su, i64 160
  %i.vl = load double, ptr %i.vk, align 8, !tbaa !43
  %gep.us.i231.2319.1 = getelementptr i8, ptr %.3132.lcssa, i64 32 ; 2 uses
  %i.vm = load double, ptr %gep.us.i231.2319.1, align 8, !tbaa !43
  %i.vn = tail call double @llvm.fmuladd.f64(double %i.vf, double %i.vl, double %i.vm)
  store double %i.vn, ptr %gep.us.i231.2319.1, align 8, !tbaa !43
  %i.vo = getelementptr inbounds nuw i8, ptr %i.su, i64 168
  %i.vp = load double, ptr %i.vo, align 8, !tbaa !43
  %gep.us.i231.2319.2 = getelementptr i8, ptr %.3132.lcssa, i64 40 ; 2 uses
  %i.vq = load double, ptr %gep.us.i231.2319.2, align 8, !tbaa !43
  %i.vr = tail call double @llvm.fmuladd.f64(double %i.vf, double %i.vp, double %i.vq)
  store double %i.vr, ptr %gep.us.i231.2319.2, align 8, !tbaa !43
  %i.vs = getelementptr inbounds nuw i8, ptr %i.su, i64 176
  %i.vt = load double, ptr %i.vs, align 8, !tbaa !43
  %gep.us.i231.2319.3 = getelementptr i8, ptr %.3132.lcssa, i64 48 ; 2 uses
  %i.vu = load double, ptr %gep.us.i231.2319.3, align 8, !tbaa !43
  %i.vv = tail call double @llvm.fmuladd.f64(double %i.vf, double %i.vt, double %i.vu)
  store double %i.vv, ptr %gep.us.i231.2319.3, align 8, !tbaa !43
  %i.vw = getelementptr inbounds nuw i8, ptr %i.su, i64 184
  %i.vx = load double, ptr %i.vw, align 8, !tbaa !43
  %gep.us.i231.2319.4 = getelementptr i8, ptr %.3132.lcssa, i64 56 ; 2 uses
  %i.vy = load double, ptr %gep.us.i231.2319.4, align 8, !tbaa !43
  %i.vz = tail call double @llvm.fmuladd.f64(double %i.vf, double %i.vx, double %i.vy)
  store double %i.vz, ptr %gep.us.i231.2319.4, align 8, !tbaa !43
  %.phi.trans.insert350 = getelementptr inbounds nuw i8, ptr %i.su, i64 216
  %.pre351 = load double, ptr %.phi.trans.insert350, align 8, !tbaa !43
  %.us-phi.i223.2321 = getelementptr inbounds nuw i8, ptr %i.sv, i64 24
  %i.wa = getelementptr inbounds nuw i8, ptr %.3132.lcssa, i64 24
  %i.wb = fmul double %.pre351, %i.vj             ; 3 uses
  store double %i.wb, ptr %.us-phi.i223.2321, align 8, !tbaa !43
  store double %i.wb, ptr %i.wa, align 8, !tbaa !43
  %i.wc = fneg double %i.wb                       ; 4 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.su, i64 224
  %i.we = load double, ptr %i.wd, align 8, !tbaa !43
  %gep.us.i231.3 = getelementptr i8, ptr %.3132.lcssa, i64 32 ; 2 uses
  %i.wf = load double, ptr %gep.us.i231.3, align 8, !tbaa !43
  %i.wg = tail call double @llvm.fmuladd.f64(double %i.wc, double %i.we, double %i.wf) ; 2 uses
  store double %i.wg, ptr %gep.us.i231.3, align 8, !tbaa !43
  %i.wh = getelementptr inbounds nuw i8, ptr %i.su, i64 232
  %i.wi = load double, ptr %i.wh, align 8, !tbaa !43
  %gep.us.i231.3.1 = getelementptr i8, ptr %.3132.lcssa, i64 40 ; 2 uses
  %i.wj = load double, ptr %gep.us.i231.3.1, align 8, !tbaa !43
  %i.wk = tail call double @llvm.fmuladd.f64(double %i.wc, double %i.wi, double %i.wj)
  store double %i.wk, ptr %gep.us.i231.3.1, align 8, !tbaa !43
  %i.wl = getelementptr inbounds nuw i8, ptr %i.su, i64 240
  %i.wm = load double, ptr %i.wl, align 8, !tbaa !43
  %gep.us.i231.3.2 = getelementptr i8, ptr %.3132.lcssa, i64 48 ; 2 uses
  %i.wn = load double, ptr %gep.us.i231.3.2, align 8, !tbaa !43
  %i.wo = tail call double @llvm.fmuladd.f64(double %i.wc, double %i.wm, double %i.wn)
  store double %i.wo, ptr %gep.us.i231.3.2, align 8, !tbaa !43
  %i.wp = getelementptr inbounds nuw i8, ptr %i.su, i64 248
  %i.wq = load double, ptr %i.wp, align 8, !tbaa !43
  %gep.us.i231.3.3 = getelementptr i8, ptr %.3132.lcssa, i64 56 ; 2 uses
  %i.wr = load double, ptr %gep.us.i231.3.3, align 8, !tbaa !43
  %i.ws = tail call double @llvm.fmuladd.f64(double %i.wc, double %i.wq, double %i.wr)
  store double %i.ws, ptr %gep.us.i231.3.3, align 8, !tbaa !43
  %.phi.trans.insert353 = getelementptr inbounds nuw i8, ptr %i.su, i64 288
  %.pre354 = load double, ptr %.phi.trans.insert353, align 8, !tbaa !43
  %.us-phi.i223.3 = getelementptr inbounds nuw i8, ptr %i.sv, i64 32
  %i.wt = getelementptr inbounds nuw i8, ptr %.3132.lcssa, i64 32
  %i.wu = fmul double %.pre354, %i.wg             ; 3 uses
  store double %i.wu, ptr %.us-phi.i223.3, align 8, !tbaa !43
  store double %i.wu, ptr %i.wt, align 8, !tbaa !43
  %i.wv = fneg double %i.wu                       ; 3 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %i.su, i64 296
  %i.wx = load double, ptr %i.ww, align 8, !tbaa !43
  %gep.us.i231.4 = getelementptr i8, ptr %.3132.lcssa, i64 40 ; 2 uses
  %i.wy = load double, ptr %gep.us.i231.4, align 8, !tbaa !43
  %i.wz = tail call double @llvm.fmuladd.f64(double %i.wv, double %i.wx, double %i.wy) ; 2 uses
  store double %i.wz, ptr %gep.us.i231.4, align 8, !tbaa !43
  %i.xa = getelementptr inbounds nuw i8, ptr %i.su, i64 304
  %i.xb = load double, ptr %i.xa, align 8, !tbaa !43
  %gep.us.i231.4.1 = getelementptr i8, ptr %.3132.lcssa, i64 48 ; 2 uses
  %i.xc = load double, ptr %gep.us.i231.4.1, align 8, !tbaa !43
  %i.xd = tail call double @llvm.fmuladd.f64(double %i.wv, double %i.xb, double %i.xc)
end_hunk_0
begin_hunk_1_@dtrsm_kernel_LT:bb.a
  %i.xm = load double, ptr %i.xl, align 8, !tbaa !43
  %gep.us.i231.5 = getelementptr i8, ptr %.3132.lcssa, i64 48 ; 2 uses
  %i.xn = load double, ptr %gep.us.i231.5, align 8, !tbaa !43
  %i.xo = tail call double @llvm.fmuladd.f64(double %i.xk, double %i.xm, double %i.xn) ; 2 uses
  store double %i.xo, ptr %gep.us.i231.5, align 8, !tbaa !43
  %i.xp = getelementptr inbounds nuw i8, ptr %i.su, i64 376
  %i.xq = load double, ptr %i.xp, align 8, !tbaa !43
  %gep.us.i231.5.1 = getelementptr i8, ptr %.3132.lcssa, i64 56 ; 2 uses
  %i.xr = load double, ptr %gep.us.i231.5.1, align 8, !tbaa !43
  %i.xs = tail call double @llvm.fmuladd.f64(double %i.xk, double %i.xq, double %i.xr)
  store double %i.xs, ptr %gep.us.i231.5.1, align 8, !tbaa !43
  %.phi.trans.insert359 = getelementptr inbounds nuw i8, ptr %i.su, i64 432
  %.pre360 = load double, ptr %.phi.trans.insert359, align 8, !tbaa !43
  %.us-phi.i223.5 = getelementptr inbounds nuw i8, ptr %i.sv, i64 48
  %i.xt = getelementptr inbounds nuw i8, ptr %.3132.lcssa, i64 48
  %i.xu = fmul double %.pre360, %i.xo             ; 3 uses
  store double %i.xu, ptr %.us-phi.i223.5, align 8, !tbaa !43
  store double %i.xu, ptr %i.xt, align 8, !tbaa !43
  %i.xv = fneg double %i.xu
  %i.xw = getelementptr inbounds nuw i8, ptr %i.su, i64 440
  %i.xx = load double, ptr %i.xw, align 8, !tbaa !43
  %gep.us.i231.6 = getelementptr i8, ptr %.3132.lcssa, i64 56 ; 2 uses
  %i.xy = load double, ptr %gep.us.i231.6, align 8, !tbaa !43
  %i.xz = tail call double @llvm.fmuladd.f64(double %i.xv, double %i.xx, double %i.xy) ; 2 uses
  store double %i.xz, ptr %gep.us.i231.6, align 8, !tbaa !43
  %.phi.trans.insert362 = getelementptr inbounds nuw i8, ptr %i.su, i64 504
  %.pre363 = load double, ptr %.phi.trans.insert362, align 8, !tbaa !43
  %i.ya = getelementptr inbounds nuw i8, ptr %.3132.lcssa, i64 56
  %.us-phi.i223.6 = getelementptr inbounds nuw i8, ptr %i.sv, i64 56
  %i.yb = fmul double %.pre363, %i.xz             ; 2 uses
  store double %i.yb, ptr %.us-phi.i223.6, align 8, !tbaa !43
  store double %i.yb, ptr %i.ya, align 8, !tbaa !43
  %.idx385 = shl nsw i64 %2, 6
  %i.yc = getelementptr inbounds i8, ptr %.3138.lcssa, i64 %.idx385
  %i.yd = getelementptr inbounds nuw i8, ptr %.3132.lcssa, i64 64
  %i.ye = add nsw i64 %.3128.lcssa, 8
  br label %.preheader.1

.preheader.1:                                     ; preds = %.split47.us.i222.7, %.preheader.preheader
  %.5140 = phi ptr [ %i.yc, %.split47.us.i222.7 ], [ %.3138.lcssa, %.preheader.preheader ] ; 4 uses
  %.5134 = phi ptr [ %i.yd, %.split47.us.i222.7 ], [ %.3132.lcssa, %.preheader.preheader ] ; 14 uses
  %.5 = phi i64 [ %i.ye, %.split47.us.i222.7 ], [ %.3128.lcssa, %.preheader.preheader ] ; 6 uses
  %i.yf = and i64 %0, 4
  %.not149.1 = icmp eq i64 %i.yf, 0
  br i1 %.not149.1, label %.preheader.2, label %bb.u

bb.u:                                             ; preds = %.preheader.1
  %i.yg = icmp sgt i64 %.5, 0
  br i1 %i.yg, label %bb.v, label %.split47.us.i222.1.3

bb.v:                                             ; preds = %bb.u
  %i.yh = tail call i32 @dgemm_kernel(i64 noundef 4, i64 noundef 1, i64 noundef %.5, double noundef -1.000000e+00, ptr noundef %.5140, ptr noundef %.0141.lcssa, ptr noundef %.5134, i64 noundef %7) #3 ; 0 uses
  br label %.split47.us.i222.1.3

.split47.us.i222.1.3:                             ; preds = %bb.v, %bb.u
  %.idx386 = shl nsw i64 %.5, 5
  %i.yi = getelementptr inbounds i8, ptr %.5140, i64 %.idx386 ; 10 uses
  %i.yj = getelementptr inbounds [8 x i8], ptr %.0141.lcssa, i64 %.5 ; 4 uses
  %i.yk = load double, ptr %i.yi, align 8, !tbaa !43
  %i.yl = load double, ptr %.5134, align 8, !tbaa !43
  %i.ym = fmul double %i.yk, %i.yl                ; 3 uses
  store double %i.ym, ptr %i.yj, align 8, !tbaa !43
  store double %i.ym, ptr %.5134, align 8, !tbaa !43
  %i.yn = fneg double %i.ym                       ; 3 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yi, i64 8
  %i.yp = load double, ptr %i.yo, align 8, !tbaa !43
  %gep.us.i231.1 = getelementptr i8, ptr %.5134, i64 8 ; 2 uses
  %i.yq = load double, ptr %gep.us.i231.1, align 8, !tbaa !43
  %i.yr = tail call double @llvm.fmuladd.f64(double %i.yn, double %i.yp, double %i.yq) ; 2 uses
  store double %i.yr, ptr %gep.us.i231.1, align 8, !tbaa !43
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yi, i64 16
  %i.yt = load double, ptr %i.ys, align 8, !tbaa !43
  %gep.us.i231.1.1309 = getelementptr i8, ptr %.5134, i64 16 ; 2 uses
  %i.yu = load double, ptr %gep.us.i231.1.1309, align 8, !tbaa !43
  %i.yv = tail call double @llvm.fmuladd.f64(double %i.yn, double %i.yt, double %i.yu)
  store double %i.yv, ptr %gep.us.i231.1.1309, align 8, !tbaa !43
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yi, i64 24
  %i.yx = load double, ptr %i.yw, align 8, !tbaa !43
  %gep.us.i231.1.2310 = getelementptr i8, ptr %.5134, i64 24 ; 2 uses
  %i.yy = load double, ptr %gep.us.i231.1.2310, align 8, !tbaa !43
  %i.yz = tail call double @llvm.fmuladd.f64(double %i.yn, double %i.yx, double %i.yy)
  store double %i.yz, ptr %gep.us.i231.1.2310, align 8, !tbaa !43
  %.phi.trans.insert365 = getelementptr inbounds nuw i8, ptr %i.yi, i64 40
  %.pre366 = load double, ptr %.phi.trans.insert365, align 8, !tbaa !43
  %.us-phi.i223.1 = getelementptr inbounds nuw i8, ptr %i.yj, i64 8
  %i.za = getelementptr inbounds nuw i8, ptr %.5134, i64 8
  %i.zb = fmul double %.pre366, %i.yr             ; 3 uses
  store double %i.zb, ptr %.us-phi.i223.1, align 8, !tbaa !43
  store double %i.zb, ptr %i.za, align 8, !tbaa !43
  %i.zc = fneg double %i.zb                       ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yi, i64 48
  %i.ze = load double, ptr %i.zd, align 8, !tbaa !43
  %gep.us.i231.1.1 = getelementptr i8, ptr %.5134, i64 16 ; 2 uses
  %i.zf = load double, ptr %gep.us.i231.1.1, align 8, !tbaa !43
  %i.zg = tail call double @llvm.fmuladd.f64(double %i.zc, double %i.ze, double %i.zf) ; 2 uses
  store double %i.zg, ptr %gep.us.i231.1.1, align 8, !tbaa !43
  %i.zh = getelementptr inbounds nuw i8, ptr %i.yi, i64 56
  %i.zi = load double, ptr %i.zh, align 8, !tbaa !43
  %gep.us.i231.1.1.1 = getelementptr i8, ptr %.5134, i64 24 ; 2 uses
  %i.zj = load double, ptr %gep.us.i231.1.1.1, align 8, !tbaa !43
  %i.zk = tail call double @llvm.fmuladd.f64(double %i.zc, double %i.zi, double %i.zj)
  store double %i.zk, ptr %gep.us.i231.1.1.1, align 8, !tbaa !43
  %.phi.trans.insert368 = getelementptr inbounds nuw i8, ptr %i.yi, i64 80
  %.pre369 = load double, ptr %.phi.trans.insert368, align 8, !tbaa !43
  %.us-phi.i223.1.1 = getelementptr inbounds nuw i8, ptr %i.yj, i64 16
  %i.zl = getelementptr inbounds nuw i8, ptr %.5134, i64 16
  %i.zm = fmul double %.pre369, %i.zg             ; 3 uses
  store double %i.zm, ptr %.us-phi.i223.1.1, align 8, !tbaa !43
  store double %i.zm, ptr %i.zl, align 8, !tbaa !43
  %i.zn = fneg double %i.zm
  %i.zo = getelementptr inbounds nuw i8, ptr %i.yi, i64 88
  %i.zp = load double, ptr %i.zo, align 8, !tbaa !43
  %gep.us.i231.1.2 = getelementptr i8, ptr %.5134, i64 24 ; 2 uses
  %i.zq = load double, ptr %gep.us.i231.1.2, align 8, !tbaa !43
  %i.zr = tail call double @llvm.fmuladd.f64(double %i.zn, double %i.zp, double %i.zq) ; 2 uses
  store double %i.zr, ptr %gep.us.i231.1.2, align 8, !tbaa !43
  %.phi.trans.insert371 = getelementptr inbounds nuw i8, ptr %i.yi, i64 120
  %.pre372 = load double, ptr %.phi.trans.insert371, align 8, !tbaa !43
  %i.zs = getelementptr inbounds nuw i8, ptr %.5134, i64 24
  %.us-phi.i223.1.2 = getelementptr inbounds nuw i8, ptr %i.yj, i64 24
  %i.zt = fmul double %.pre372, %i.zr             ; 2 uses
  store double %i.zt, ptr %.us-phi.i223.1.2, align 8, !tbaa !43
  store double %i.zt, ptr %i.zs, align 8, !tbaa !43
  %.idx387 = shl nsw i64 %2, 5
  %i.zu = getelementptr inbounds i8, ptr %.5140, i64 %.idx387
  %i.zv = getelementptr inbounds nuw i8, ptr %.5134, i64 32
  %i.zw = add nsw i64 %.5, 4
  br label %.preheader.2

.preheader.2:                                     ; preds = %.split47.us.i222.1.3, %.preheader.1
  %.5140.1 = phi ptr [ %i.zu, %.split47.us.i222.1.3 ], [ %.5140, %.preheader.1 ] ; 4 uses
  %.5134.1 = phi ptr [ %i.zv, %.split47.us.i222.1.3 ], [ %.5134, %.preheader.1 ] ; 7 uses
  %.5.1 = phi i64 [ %i.zw, %.split47.us.i222.1.3 ], [ %.5, %.preheader.1 ] ; 6 uses
  %i.zx = and i64 %0, 2
  %.not149.2 = icmp eq i64 %i.zx, 0
  br i1 %.not149.2, label %.preheader.3, label %bb.w

bb.w:                                             ; preds = %.preheader.2
  %i.zy = icmp sgt i64 %.5.1, 0
  br i1 %i.zy, label %bb.x, label %.split47.us.i222.2.1

bb.x:                                             ; preds = %bb.w
  %i.zz = tail call i32 @dgemm_kernel(i64 noundef 2, i64 noundef 1, i64 noundef %.5.1, double noundef -1.000000e+00, ptr noundef %.5140.1, ptr noundef %.0141.lcssa, ptr noundef %.5134.1, i64 noundef %7) #3 ; 0 uses
  br label %.split47.us.i222.2.1

.split47.us.i222.2.1:                             ; preds = %bb.x, %bb.w
  %i.aaa = getelementptr inbounds [8 x i8], ptr %.0141.lcssa, i64 %.5.1 ; 2 uses
  %.idx388 = shl nsw i64 %.5.1, 4
  %i.aab = getelementptr inbounds i8, ptr %.5140.1, i64 %.idx388 ; 3 uses
  %i.aac = load double, ptr %i.aab, align 8, !tbaa !43
  %i.aad = load double, ptr %.5134.1, align 8, !tbaa !43
  %i.aae = fmul double %i.aac, %i.aad             ; 3 uses
  store double %i.aae, ptr %i.aaa, align 8, !tbaa !43
  store double %i.aae, ptr %.5134.1, align 8, !tbaa !43
  %i.aaf = fneg double %i.aae
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aab, i64 8
  %i.aah = load double, ptr %i.aag, align 8, !tbaa !43
  %gep.us.i231.2 = getelementptr i8, ptr %.5134.1, i64 8 ; 2 uses
  %i.aai = load double, ptr %gep.us.i231.2, align 8, !tbaa !43
  %i.aaj = tail call double @llvm.fmuladd.f64(double %i.aaf, double %i.aah, double %i.aai) ; 2 uses
  store double %i.aaj, ptr %gep.us.i231.2, align 8, !tbaa !43
  %.phi.trans.insert374 = getelementptr inbounds nuw i8, ptr %i.aab, i64 24
  %.pre375 = load double, ptr %.phi.trans.insert374, align 8, !tbaa !43
  %i.aak = getelementptr inbounds nuw i8, ptr %.5134.1, i64 8
  %.us-phi.i223.2 = getelementptr inbounds nuw i8, ptr %i.aaa, i64 8
  %i.aal = fmul double %.pre375, %i.aaj           ; 2 uses
  store double %i.aal, ptr %.us-phi.i223.2, align 8, !tbaa !43
  store double %i.aal, ptr %i.aak, align 8, !tbaa !43
  %.idx389 = shl nsw i64 %2, 4
  %i.aam = getelementptr inbounds i8, ptr %.5140.1, i64 %.idx389
  %i.aan = getelementptr inbounds nuw i8, ptr %.5134.1, i64 16
  %i.aao = add nsw i64 %.5.1, 2
  br label %.preheader.3

.preheader.3:                                     ; preds = %.split47.us.i222.2.1, %.preheader.2
  %.5140.2 = phi ptr [ %i.aam, %.split47.us.i222.2.1 ], [ %.5140.1, %.preheader.2 ] ; 2 uses
  %.5134.2 = phi ptr [ %i.aan, %.split47.us.i222.2.1 ], [ %.5134.1, %.preheader.2 ] ; 3 uses
  %.5.2 = phi i64 [ %i.aao, %.split47.us.i222.2.1 ], [ %.5.1, %.preheader.2 ] ; 4 uses
  %i.aap = and i64 %0, 1
  %.not149.3 = icmp eq i64 %i.aap, 0
  br i1 %.not149.3, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %.preheader.3
  %i.aaq = icmp sgt i64 %.5.2, 0
  br i1 %i.aaq, label %bb.z, label %.split47.us.i222.3

bb.z:                                             ; preds = %bb.y
  %i.aar = tail call i32 @dgemm_kernel(i64 noundef 1, i64 noundef 1, i64 noundef %.5.2, double noundef -1.000000e+00, ptr noundef %.5140.2, ptr noundef %.0141.lcssa, ptr noundef %.5134.2, i64 noundef %7) #3 ; 0 uses
  br label %.split47.us.i222.3

.split47.us.i222.3:                               ; preds = %bb.z, %bb.y
  %i.aas = getelementptr inbounds [8 x i8], ptr %.5140.2, i64 %.5.2
  %i.aat = load double, ptr %i.aas, align 8, !tbaa !43
  %i.aau = getelementptr inbounds [8 x i8], ptr %.0141.lcssa, i64 %.5.2
  %i.aav = load double, ptr %.5134.2, align 8, !tbaa !43
  %i.aaw = fmul double %i.aat, %i.aav             ; 2 uses
  store double %i.aaw, ptr %i.aau, align 8, !tbaa !43
  store double %i.aaw, ptr %.5134.2, align 8, !tbaa !43
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge277, %.split47.us.i222.3, %.preheader.3, %._crit_edge268
  ret i32 0
}

declare i32 @dgemm_kernel(i64 noundef, i64 noundef, i64 noundef, double noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, i1 false, !"LVerDomain"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !46, !47, !48}
!12 = distinct !{!12, !49}
!13 = distinct !{!13, !46, !47}
!14 = distinct !{!14, i1 false, !"LVerDomain"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !46, !47, !48}
!18 = distinct !{!18, !49}
!19 = distinct !{!19, !46, !47}
!20 = distinct !{!20, !46}
!21 = distinct !{!21, !46}
!22 = distinct !{!22, i1 false, !"LVerDomain"}
!23 = distinct !{!23, !22}
!24 = distinct !{!24, !22}
!25 = distinct !{!25, !46, !47, !48}
!26 = distinct !{!26, !49}
!27 = distinct !{!27, !46, !47}
!28 = distinct !{!28, i1 false, !"LVerDomain"}
!29 = distinct !{!29, !28}
!30 = distinct !{!30, !28}
!31 = distinct !{!31, !46, !47, !48}
!32 = distinct !{!32, !49}
!33 = distinct !{!33, !46, !47}
!34 = distinct !{!34, !46}
!35 = distinct !{!35, i1 false, !"LVerDomain"}
!36 = distinct !{!36, !35}
!37 = distinct !{!37, !35}
!38 = distinct !{!38, !46, !47, !48}
!39 = distinct !{!39, !49}
!40 = distinct !{!40, !46, !47}
!41 = distinct !{!41, !46}
!42 = !{!"double", !4, i64 0}
!43 = !{!42, !42, i64 0}
!44 = !{!9}
!45 = !{!10}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!"llvm.loop.isvectorized", i32 1}
!48 = !{!"llvm.loop.unroll.runtime.disable"}
!49 = !{!"llvm.loop.unroll.disable"}
!50 = !{!15}
!51 = !{!16}
!52 = !{!23}
!53 = !{!24}
!54 = !{!29}
!55 = !{!30}
!56 = !{!36}
!57 = !{!37}
end_hunk_1
