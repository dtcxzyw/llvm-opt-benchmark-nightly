Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/fast_newton?download=true
inline.NumInlined: 1453
inline.NumDeleted: 467
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN6casadi15casadi_qr_solveIdEEvPT_xxPKxPKS1_S4_S6_S6_S4_S4_S2_:bb.a
  %i.u = load i64, ptr %i.t, align 8, !tbaa !167
  %i.v = getelementptr inbounds [8 x i8], ptr %10, i64 %i.u
  store double %i.s, ptr %i.v, align 8, !tbaa !119
  %i.w = or disjoint i64 %.376.us, 1              ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.05981.us, i64 %i.w
  %i.y = load double, ptr %i.x, align 8, !tbaa !119
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.w
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !167
  %i.ab = getelementptr inbounds [8 x i8], ptr %10, i64 %i.aa
  store double %i.y, ptr %i.ab, align 8, !tbaa !119
  %i.ac = or disjoint i64 %.376.us, 2             ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.05981.us, i64 %i.ac
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !119
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.ac
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !167
  %i.ah = getelementptr inbounds [8 x i8], ptr %10, i64 %i.ag
  store double %i.ae, ptr %i.ah, align 8, !tbaa !119
  %i.ai = or disjoint i64 %.376.us, 3             ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.05981.us, i64 %i.ai
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !119
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.ai
  %i.am = load i64, ptr %i.al, align 8, !tbaa !167
  %i.an = getelementptr inbounds [8 x i8], ptr %10, i64 %i.am
  store double %i.ak, ptr %i.an, align 8, !tbaa !119
  %i.ao = add nuw nsw i64 %.376.us, 4             ; 2 uses
  %niter137.next.3 = add nuw nsw i64 %niter137, 4 ; 2 uses
  %niter137.ncmp.3 = icmp eq i64 %niter137.next.3, %unroll_iter136
  br i1 %niter137.ncmp.3, label %.lr.ph49.split.i.us.preheader.unr-lcssa, label %.lr.ph77.us, !llvm.loop !459

.lr.ph49.split.i.us.preheader.unr-lcssa:          ; preds = %.lr.ph77.us
  br i1 %lcmp.mod134.not, label %.lr.ph49.split.i.us.preheader, label %.lr.ph77.us.epil.preheader

.lr.ph77.us.epil.preheader:                       ; preds = %.lr.ph49.split.i.us.preheader.unr-lcssa, %.lr.ph77.us.preheader
  %.376.us.epil.init = phi i64 [ 0, %.lr.ph77.us.preheader ], [ %i.ao, %.lr.ph49.split.i.us.preheader.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod135)
  br label %.lr.ph77.us.epil

.lr.ph77.us.epil:                                 ; preds = %.lr.ph77.us.epil, %.lr.ph77.us.epil.preheader
  %.376.us.epil = phi i64 [ %i.au, %.lr.ph77.us.epil ], [ %.376.us.epil.init, %.lr.ph77.us.epil.preheader ] ; 3 uses
  %epil.iter133 = phi i64 [ %epil.iter133.next, %.lr.ph77.us.epil ], [ 0, %.lr.ph77.us.epil.preheader ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.05981.us, i64 %.376.us.epil
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !119
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.376.us.epil
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !167
  %i.at = getelementptr inbounds [8 x i8], ptr %10, i64 %i.as
  store double %i.aq, ptr %i.at, align 8, !tbaa !119
  %i.au = add nuw nsw i64 %.376.us.epil, 1
  %epil.iter133.next = add i64 %epil.iter133, 1   ; 2 uses
  %epil.iter133.cmp.not = icmp eq i64 %epil.iter133.next, %xtraiter132
  br i1 %epil.iter133.cmp.not, label %.lr.ph49.split.i.us.preheader, label %.lr.ph77.us.epil, !llvm.loop !460

.lr.ph49.split.i.us.preheader:                    ; preds = %.lr.ph77.us.epil, %.lr.ph49.split.i.us.preheader.unr-lcssa
  br label %.lr.ph49.split.i.us

.lr.ph49.split.i.us:                              ; preds = %.lr.ph49.split.i.us.preheader, %._crit_edge46.i.us
  %.03847.i.us = phi i64 [ %i.dv, %._crit_edge46.i.us ], [ 0, %.lr.ph49.split.i.us.preheader ] ; 3 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.03847.i.us ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !167 ; 9 uses
  %i.ax = getelementptr i8, ptr %i.av, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !167 ; 5 uses
  %i.az = icmp slt i64 %i.aw, %i.ay
  br i1 %i.az, label %.lr.ph.i63.us.preheader, label %._crit_edge46.i.us

.lr.ph.i63.us.preheader:                          ; preds = %.lr.ph49.split.i.us
  %i.ba = sub i64 %i.ay, %i.aw                    ; 2 uses
  %i.bb = xor i64 %i.aw, -1
  %i.bc = add i64 %i.ay, %i.bb                    ; 2 uses
  %xtraiter138 = and i64 %i.ba, 3                 ; 2 uses
  %lcmp.mod139.not = icmp eq i64 %xtraiter138, 0
  br i1 %lcmp.mod139.not, label %.lr.ph.i63.us.prol.loopexit, label %.lr.ph.i63.us.prol

.lr.ph.i63.us.prol:                               ; preds = %.lr.ph.i63.us.preheader, %.lr.ph.i63.us.prol
  %.041.i.us.prol = phi double [ %i.bj, %.lr.ph.i63.us.prol ], [ 0.000000e+00, %.lr.ph.i63.us.preheader ]
  %.03740.i.us.prol = phi i64 [ %i.bk, %.lr.ph.i63.us.prol ], [ %i.aw, %.lr.ph.i63.us.preheader ] ; 3 uses
  %prol.iter140 = phi i64 [ %prol.iter140.next, %.lr.ph.i63.us.prol ], [ 0, %.lr.ph.i63.us.preheader ]
  %i.bd = getelementptr inbounds [8 x i8], ptr %4, i64 %.03740.i.us.prol
  %i.be = load double, ptr %i.bd, align 8, !tbaa !119
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.03740.i.us.prol
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !167
  %i.bh = getelementptr inbounds [8 x i8], ptr %10, i64 %i.bg
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !119
  %i.bj = tail call double @llvm.fmuladd.f64(double %i.be, double %i.bi, double %.041.i.us.prol) ; 3 uses
  %i.bk = add nsw i64 %.03740.i.us.prol, 1        ; 2 uses
  %prol.iter140.next = add i64 %prol.iter140, 1   ; 2 uses
  %prol.iter140.cmp.not = icmp eq i64 %prol.iter140.next, %xtraiter138
  br i1 %prol.iter140.cmp.not, label %.lr.ph.i63.us.prol.loopexit, label %.lr.ph.i63.us.prol, !llvm.loop !461

.lr.ph.i63.us.prol.loopexit:                      ; preds = %.lr.ph.i63.us.prol, %.lr.ph.i63.us.preheader
  %.lcssa.unr = phi double [ poison, %.lr.ph.i63.us.preheader ], [ %i.bj, %.lr.ph.i63.us.prol ]
  %.041.i.us.unr = phi double [ 0.000000e+00, %.lr.ph.i63.us.preheader ], [ %i.bj, %.lr.ph.i63.us.prol ]
  %.03740.i.us.unr = phi i64 [ %i.aw, %.lr.ph.i63.us.preheader ], [ %i.bk, %.lr.ph.i63.us.prol ]
  %i.bl = icmp ult i64 %i.bc, 3
  br i1 %i.bl, label %.lr.ph45.i.us, label %.lr.ph.i63.us

.lr.ph.i63.us:                                    ; preds = %.lr.ph.i63.us.prol.loopexit, %.lr.ph.i63.us
  %.041.i.us = phi double [ %i.cq, %.lr.ph.i63.us ], [ %.041.i.us.unr, %.lr.ph.i63.us.prol.loopexit ]
  %.03740.i.us = phi i64 [ %i.cr, %.lr.ph.i63.us ], [ %.03740.i.us.unr, %.lr.ph.i63.us.prol.loopexit ] ; 6 uses
  %i.bm = getelementptr inbounds [8 x i8], ptr %4, i64 %.03740.i.us
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !119
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.03740.i.us
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !167
  %i.bq = getelementptr inbounds [8 x i8], ptr %10, i64 %i.bp
  %i.br = load double, ptr %i.bq, align 8, !tbaa !119
  %i.bs = tail call double @llvm.fmuladd.f64(double %i.bn, double %i.br, double %.041.i.us)
  %i.bt = add nsw i64 %.03740.i.us, 1             ; 2 uses
  %i.bu = getelementptr inbounds [8 x i8], ptr %4, i64 %i.bt
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !119
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.bt
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !167
  %i.by = getelementptr inbounds [8 x i8], ptr %10, i64 %i.bx
  %i.bz = load double, ptr %i.by, align 8, !tbaa !119
  %i.ca = tail call double @llvm.fmuladd.f64(double %i.bv, double %i.bz, double %i.bs)
  %i.cb = add nsw i64 %.03740.i.us, 2             ; 2 uses
  %i.cc = getelementptr inbounds [8 x i8], ptr %4, i64 %i.cb
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !119
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.cb
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !167
  %i.cg = getelementptr inbounds [8 x i8], ptr %10, i64 %i.cf
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !119
  %i.ci = tail call double @llvm.fmuladd.f64(double %i.cd, double %i.ch, double %i.ca)
  %i.cj = add nsw i64 %.03740.i.us, 3             ; 2 uses
  %i.ck = getelementptr inbounds [8 x i8], ptr %4, i64 %i.cj
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !119
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.cj
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !167
  %i.co = getelementptr inbounds [8 x i8], ptr %10, i64 %i.cn
  %i.cp = load double, ptr %i.co, align 8, !tbaa !119
  %i.cq = tail call double @llvm.fmuladd.f64(double %i.cl, double %i.cp, double %i.ci) ; 2 uses
  %i.cr = add nsw i64 %.03740.i.us, 4             ; 2 uses
  %exitcond.not.i64.us.3 = icmp eq i64 %i.cr, %i.ay
  br i1 %exitcond.not.i64.us.3, label %.lr.ph45.i.us, label %.lr.ph.i63.us, !llvm.loop !462

.lr.ph45.i.us:                                    ; preds = %.lr.ph.i63.us, %.lr.ph.i63.us.prol.loopexit
  %.lcssa = phi double [ %.lcssa.unr, %.lr.ph.i63.us.prol.loopexit ], [ %i.cq, %.lr.ph.i63.us ]
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %.03847.i.us
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !119
  %i.cu = fneg double %i.ct
  %i.cv = fmul double %.lcssa, %i.cu              ; 3 uses
  %xtraiter143 = and i64 %i.ba, 1
  %lcmp.mod144.not = icmp eq i64 %xtraiter143, 0
  br i1 %lcmp.mod144.not, label %.prol.loopexit142, label %.prol.loopexit142.unr-lcssa

.prol.loopexit142.unr-lcssa:                      ; preds = %.lr.ph45.i.us
  %i.cw = getelementptr inbounds [8 x i8], ptr %4, i64 %i.aw
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !119
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.aw
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !167
  %i.da = getelementptr inbounds [8 x i8], ptr %10, i64 %i.cz ; 2 uses
  %i.db = load double, ptr %i.da, align 8, !tbaa !119
  %i.dc = tail call double @llvm.fmuladd.f64(double %i.cv, double %i.cx, double %i.db)
  store double %i.dc, ptr %i.da, align 8, !tbaa !119
  %i.dd = add nsw i64 %i.aw, 1
  br label %.prol.loopexit142

.prol.loopexit142:                                ; preds = %.prol.loopexit142.unr-lcssa, %.lr.ph45.i.us
  %.143.i.us.unr = phi i64 [ %i.aw, %.lr.ph45.i.us ], [ %i.dd, %.prol.loopexit142.unr-lcssa ]
  %i.de = icmp eq i64 %i.bc, 0
  br i1 %i.de, label %._crit_edge46.i.us, label %.lr.ph45.i.us.new

.lr.ph45.i.us.new:                                ; preds = %.prol.loopexit142, %.lr.ph45.i.us.new
  %.143.i.us = phi i64 [ %i.du, %.lr.ph45.i.us.new ], [ %.143.i.us.unr, %.prol.loopexit142 ] ; 4 uses
  %i.df = getelementptr inbounds [8 x i8], ptr %4, i64 %.143.i.us
  %i.dg = load double, ptr %i.df, align 8, !tbaa !119
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.143.i.us
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !167
  %i.dj = getelementptr inbounds [8 x i8], ptr %10, i64 %i.di ; 2 uses
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !119
  %i.dl = tail call double @llvm.fmuladd.f64(double %i.cv, double %i.dg, double %i.dk)
  store double %i.dl, ptr %i.dj, align 8, !tbaa !119
  %i.dm = add nsw i64 %.143.i.us, 1               ; 2 uses
  %i.dn = getelementptr inbounds [8 x i8], ptr %4, i64 %i.dm
  %i.do = load double, ptr %i.dn, align 8, !tbaa !119
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.dm
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !167
  %i.dr = getelementptr inbounds [8 x i8], ptr %10, i64 %i.dq ; 2 uses
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !119
  %i.dt = tail call double @llvm.fmuladd.f64(double %i.cv, double %i.do, double %i.ds)
  store double %i.dt, ptr %i.dr, align 8, !tbaa !119
  %i.du = add nsw i64 %.143.i.us, 2               ; 2 uses
  %exitcond53.not.i.us.1 = icmp eq i64 %i.du, %i.ay
  br i1 %exitcond53.not.i.us.1, label %._crit_edge46.i.us, label %.lr.ph45.i.us.new, !llvm.loop !463

._crit_edge46.i.us:                               ; preds = %.prol.loopexit142, %.lr.ph45.i.us.new, %.lr.ph49.split.i.us
  %i.dv = add nuw nsw i64 %.03847.i.us, 1         ; 2 uses
  %exitcond54.not.i.us = icmp eq i64 %i.dv, %i.c
  br i1 %exitcond54.not.i.us, label %_ZN6casadi12casadi_qr_mvIdEEvPKxPKT_S5_PS3_x.exit65.us, label %.lr.ph49.split.i.us, !llvm.loop !464

_ZN6casadi12casadi_qr_mvIdEEvPKxPKT_S5_PS3_x.exit65.us: ; preds = %._crit_edge46.i.us, %.preheader.us
  br i1 %i.n, label %.lr.ph71.preheader.i.us, label %_ZN6casadi13casadi_qr_trsIdEEvPKxPKT_PS3_x.exit66.us

.lr.ph71.preheader.i.us:                          ; preds = %_ZN6casadi12casadi_qr_mvIdEEvPKxPKT_S5_PS3_x.exit65.us
  %.pre74.i.us = load i64, ptr %i.m, align 8, !tbaa !167
  br label %.lr.ph71.i.us

.lr.ph71.i.us:                                    ; preds = %.loopexit.i.us, %.lr.ph71.preheader.i.us
  %i.dw = phi i64 [ %i.dy, %.loopexit.i.us ], [ %.pre74.i.us, %.lr.ph71.preheader.i.us ] ; 2 uses
  %.151.in69.i.us = phi i64 [ %.15170.i.us, %.loopexit.i.us ], [ %i.l, %.lr.ph71.preheader.i.us ] ; 2 uses
  %.15170.i.us = add nsw i64 %.151.in69.i.us, -1  ; 4 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.15170.i.us
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !167 ; 3 uses
  %.not55.not64.i.us = icmp sgt i64 %i.dw, %i.dy
  br i1 %.not55.not64.i.us, label %.lr.ph67.i.us, label %.loopexit.i.us

.lr.ph67.i.us:                                    ; preds = %.lr.ph71.i.us
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %.15170.i.us ; 3 uses
  %.pre94 = load double, ptr %i.dz, align 8, !tbaa !119
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph67.i.us
  %i.ea = phi double [ %.pre94, %.lr.ph67.i.us ], [ %i.el, %bb.e ] ; 2 uses
  %.1.in65.i.us.a = phi i64 [ %i.dw, %.lr.ph67.i.us ], [ %.166.i.us, %bb.e ] ; 2 uses
  %.166.i.us = add nsw i64 %.1.in65.i.us.a, -1    ; 3 uses
  %i.eb = getelementptr [8 x i8], ptr %i.m, i64 %.1.in65.i.us.a
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !167 ; 2 uses
  %i.ed = icmp eq i64 %i.ec, %.15170.i.us
  %i.ee = getelementptr inbounds [8 x i8], ptr %6, i64 %.166.i.us
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !119 ; 2 uses
  br i1 %i.ed, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.eg = getelementptr inbounds [8 x i8], ptr %10, i64 %i.ec ; 2 uses
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !119
  %i.ei = fneg double %i.ef
  %i.ej = tail call double @llvm.fmuladd.f64(double %i.ei, double %i.ea, double %i.eh)
  store double %i.ej, ptr %i.eg, align 8, !tbaa !119
  %.pre = load double, ptr %i.dz, align 8, !tbaa !119
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ek = fdiv double %i.ea, %i.ef                ; 2 uses
  store double %i.ek, ptr %i.dz, align 8, !tbaa !119
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.el = phi double [ %i.ek, %bb.d ], [ %.pre, %bb.c ]
  %.not55.not.i.us = icmp sgt i64 %.166.i.us, %i.dy
  br i1 %.not55.not.i.us, label %bb.b, label %.loopexit.i.us, !llvm.loop !465

.loopexit.i.us:                                   ; preds = %bb.e, %.lr.ph71.i.us
  %i.em = icmp sgt i64 %.151.in69.i.us, 1
  br i1 %i.em, label %.lr.ph71.i.us, label %_ZN6casadi13casadi_qr_trsIdEEvPKxPKT_PS3_x.exit66.us, !llvm.loop !466

_ZN6casadi13casadi_qr_trsIdEEvPKxPKT_PS3_x.exit66.us: ; preds = %.loopexit.i.us, %_ZN6casadi12casadi_qr_mvIdEEvPKxPKT_S5_PS3_x.exit65.us
  br i1 %i.e, label %.lr.ph80.us.preheader, label %.loopexit.us

.lr.ph80.us.preheader:                            ; preds = %_ZN6casadi13casadi_qr_trsIdEEvPKxPKT_PS3_x.exit66.us
  br i1 %i.q, label %.lr.ph80.us.epil.preheader, label %.lr.ph80.us

.lr.ph80.us:                                      ; preds = %.lr.ph80.us.preheader, %.lr.ph80.us
  %.479.us = phi i64 [ %i.fk, %.lr.ph80.us ], [ 0, %.lr.ph80.us.preheader ] ; 6 uses
  %niter151 = phi i64 [ %niter151.next.3, %.lr.ph80.us ], [ 0, %.lr.ph80.us.preheader ]
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %.479.us
  %i.eo = load double, ptr %i.en, align 8, !tbaa !119
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %.479.us
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !167
  %i.er = getelementptr inbounds [8 x i8], ptr %.05981.us, i64 %i.eq
  store double %i.eo, ptr %i.er, align 8, !tbaa !119
  %i.es = or disjoint i64 %.479.us, 1             ; 2 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.es
  %i.eu = load double, ptr %i.et, align 8, !tbaa !119
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.es
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !167
  %i.ex = getelementptr inbounds [8 x i8], ptr %.05981.us, i64 %i.ew
  store double %i.eu, ptr %i.ex, align 8, !tbaa !119
  %i.ey = or disjoint i64 %.479.us, 2             ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.ey
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !119
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.ey
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !167
  %i.fd = getelementptr inbounds [8 x i8], ptr %.05981.us, i64 %i.fc
  store double %i.fa, ptr %i.fd, align 8, !tbaa !119
  %i.fe = or disjoint i64 %.479.us, 3             ; 2 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.fe
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !119
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.fe
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !167
  %i.fj = getelementptr inbounds [8 x i8], ptr %.05981.us, i64 %i.fi
  store double %i.fg, ptr %i.fj, align 8, !tbaa !119
  %i.fk = add nuw nsw i64 %.479.us, 4             ; 2 uses
  %niter151.next.3 = add nuw nsw i64 %niter151, 4 ; 2 uses
  %niter151.ncmp.3 = icmp eq i64 %niter151.next.3, %unroll_iter150
  br i1 %niter151.ncmp.3, label %.loopexit.us.loopexit.unr-lcssa, label %.lr.ph80.us, !llvm.loop !467

.loopexit.us.loopexit.unr-lcssa:                  ; preds = %.lr.ph80.us
  br i1 %lcmp.mod148.not, label %.loopexit.us, label %.lr.ph80.us.epil.preheader

.lr.ph80.us.epil.preheader:                       ; preds = %.loopexit.us.loopexit.unr-lcssa, %.lr.ph80.us.preheader
  %.479.us.epil.init = phi i64 [ 0, %.lr.ph80.us.preheader ], [ %i.fk, %.loopexit.us.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod149)
  br label %.lr.ph80.us.epil

.lr.ph80.us.epil:                                 ; preds = %.lr.ph80.us.epil, %.lr.ph80.us.epil.preheader
  %.479.us.epil = phi i64 [ %i.fq, %.lr.ph80.us.epil ], [ %.479.us.epil.init, %.lr.ph80.us.epil.preheader ] ; 3 uses
  %epil.iter147 = phi i64 [ %epil.iter147.next, %.lr.ph80.us.epil ], [ 0, %.lr.ph80.us.epil.preheader ]
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %.479.us.epil
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !119
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %.479.us.epil
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !167
  %i.fp = getelementptr inbounds [8 x i8], ptr %.05981.us, i64 %i.fo
  store double %i.fm, ptr %i.fp, align 8, !tbaa !119
  %i.fq = add nuw nsw i64 %.479.us.epil, 1
  %epil.iter147.next = add i64 %epil.iter147, 1   ; 2 uses
  %epil.iter147.cmp.not = icmp eq i64 %epil.iter147.next, %xtraiter146
  br i1 %epil.iter147.cmp.not, label %.loopexit.us, label %.lr.ph80.us.epil, !llvm.loop !468

.loopexit.us:                                     ; preds = %.loopexit.us.loopexit.unr-lcssa, %.lr.ph80.us.epil, %_ZN6casadi13casadi_qr_trsIdEEvPKxPKT_PS3_x.exit66.us
  %i.fr = getelementptr inbounds [8 x i8], ptr %.05981.us, i64 %i.c
  %i.fs = add nuw nsw i64 %.05883.us, 1           ; 2 uses
  %exitcond93.not = icmp eq i64 %i.fs, %1
  br i1 %exitcond93.not, label %._crit_edge86, label %.preheader67.us, !llvm.loop !469

.preheader.us:                                    ; preds = %.lr.ph75.us.preheader, %.preheader67.us
  br i1 %i.e, label %.lr.ph77.us.preheader, label %_ZN6casadi12casadi_qr_mvIdEEvPKxPKT_S5_PS3_x.exit65.us

.lr.ph77.us.preheader:                            ; preds = %.preheader.us
  br i1 %i.p, label %.lr.ph77.us.epil.preheader, label %.lr.ph77.us

.lr.ph85.split:                                   ; preds = %.lr.ph85
  %i.ft = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.fu = icmp sgt i64 %i.l, 0
  %xtraiter = and i64 %i.c, 3                     ; 3 uses
  %i.fv = icmp ult i64 %i.c, 4
  %unroll_iter = and i64 %i.c, 9223372036854775804
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod120 = icmp ne i64 %xtraiter, 0
  %xtraiter126 = and i64 %i.c, 3                  ; 3 uses
  %i.fw = icmp ult i64 %i.c, 4
  %unroll_iter130 = and i64 %i.c, 9223372036854775804
  %lcmp.mod128.not = icmp eq i64 %xtraiter126, 0
  %lcmp.mod129 = icmp ne i64 %xtraiter126, 0
  br label %.preheader69

.preheader69:                                     ; preds = %.lr.ph85.split, %.loopexit68
  %.05883 = phi i64 [ 0, %.lr.ph85.split ], [ %i.ma, %.loopexit68 ]
  %.05981 = phi ptr [ %0, %.lr.ph85.split ], [ %i.lz, %.loopexit68 ] ; 11 uses
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader69
  br i1 %i.fv, label %.lr.ph.epil.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.071 = phi i64 [ %i.gu, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %.071
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !167
  %i.fz = getelementptr inbounds [8 x i8], ptr %.05981, i64 %i.fy
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !119
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %.071
  store double %i.ga, ptr %i.gb, align 8, !tbaa !119
  %i.gc = or disjoint i64 %.071, 1                ; 2 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.gc
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !167
  %i.gf = getelementptr inbounds [8 x i8], ptr %.05981, i64 %i.ge
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !119
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.gc
  store double %i.gg, ptr %i.gh, align 8, !tbaa !119
  %i.gi = or disjoint i64 %.071, 2                ; 2 uses
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.gi
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !167
  %i.gl = getelementptr inbounds [8 x i8], ptr %.05981, i64 %i.gk
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !119
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.gi
  store double %i.gm, ptr %i.gn, align 8, !tbaa !119
  %i.go = or disjoint i64 %.071, 3                ; 2 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.go
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !167
  %i.gr = getelementptr inbounds [8 x i8], ptr %.05981, i64 %i.gq
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !119
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.go
  store double %i.gs, ptr %i.gt, align 8, !tbaa !119
  %i.gu = add nuw nsw i64 %.071, 4                ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !470

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.071.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.gu, %._crit_edge.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod120)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.071.epil = phi i64 [ %i.ha, %.lr.ph.epil ], [ %.071.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %.071.epil
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !167
  %i.gx = getelementptr inbounds [8 x i8], ptr %.05981, i64 %i.gw
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !119
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %.071.epil
  store double %i.gy, ptr %i.gz, align 8, !tbaa !119
  %i.ha = add nuw nsw i64 %.071.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !471

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %.preheader69
  br i1 %i.fu, label %.lr.ph62.preheader.i, label %_ZN6casadi13casadi_qr_trsIdEEvPKxPKT_PS3_x.exit

.lr.ph62.preheader.i:                             ; preds = %._crit_edge
  %.pre.i = load i64, ptr %i.f, align 8, !tbaa !167
  br label %.lr.ph62.i

.loopexit57.i:                                    ; preds = %bb.i, %.lr.ph62.i
  %exitcond73.not.i = icmp eq i64 %i.hc, %i.l
  br i1 %exitcond73.not.i, label %_ZN6casadi13casadi_qr_trsIdEEvPKxPKT_PS3_x.exit, label %.lr.ph62.i, !llvm.loop !472

.lr.ph62.i:                                       ; preds = %.loopexit57.i, %.lr.ph62.preheader.i
  %i.hb = phi i64 [ %i.he, %.loopexit57.i ], [ %.pre.i, %.lr.ph62.preheader.i ] ; 2 uses
  %.05061.i = phi i64 [ %i.hc, %.loopexit57.i ], [ 0, %.lr.ph62.preheader.i ] ; 3 uses
  %i.hc = add nuw nsw i64 %.05061.i, 1            ; 3 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.hc
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !167 ; 3 uses
  %i.hf = icmp slt i64 %i.hb, %i.he
  br i1 %i.hf, label %.lr.ph.i, label %.loopexit57.i

.lr.ph.i:                                         ; preds = %.lr.ph62.i
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %.05061.i ; 2 uses
  %.promoted.i = load double, ptr %i.hg, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.lr.ph.i
  %storemerge84.i = phi double [ %.promoted.i, %.lr.ph.i ], [ %storemerge.i, %bb.i ] ; 2 uses
  %.060.i = phi i64 [ %i.hb, %.lr.ph.i ], [ %i.hr, %bb.i ] ; 3 uses
  %i.hh = getelementptr inbounds [8 x i8], ptr %i.ft, i64 %.060.i
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !167 ; 2 uses
  %i.hj = icmp eq i64 %i.hi, %.05061.i
  %i.hk = getelementptr inbounds [8 x i8], ptr %6, i64 %.060.i
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !119 ; 2 uses
  br i1 %i.hj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.hm = fdiv double %storemerge84.i, %i.hl
  br label %bb.i

bb.h:                                             ; preds = %bb.f
end_hunk_0
