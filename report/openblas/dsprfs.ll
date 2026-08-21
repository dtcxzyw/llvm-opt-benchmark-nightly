Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dsprfs?download=true
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@dsprfs_:bb.a
  %i.ca = fneg <4 x double> %wide.load650
  %i.cb = fneg <4 x double> %wide.load651
  %i.cc = fneg <4 x double> %wide.load652
  %i.cd = fneg <4 x double> %wide.load653
  %i.ce = select <4 x i1> %i.bw, <4 x double> %wide.load650, <4 x double> %i.ca
  %i.cf = select <4 x i1> %i.bx, <4 x double> %wide.load651, <4 x double> %i.cb
  %i.cg = select <4 x i1> %i.by, <4 x double> %wide.load652, <4 x double> %i.cc
  %i.ch = select <4 x i1> %i.bz, <4 x double> %wide.load653, <4 x double> %i.cd
  %i.ci = getelementptr [8 x i8], ptr %12, i64 %index649 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 96
  store <4 x double> %i.ce, ptr %i.ci, align 8, !tbaa !9
  store <4 x double> %i.cf, ptr %i.cj, align 8, !tbaa !9
  store <4 x double> %i.cg, ptr %i.ck, align 8, !tbaa !9
  store <4 x double> %i.ch, ptr %i.cl, align 8, !tbaa !9
  %index.next654 = add nuw i64 %index649, 16      ; 2 uses
  %i.cm = icmp eq i64 %index.next654, %n.vec647
  br i1 %i.cm, label %middle.block655, label %vector.body648, !llvm.loop !11

middle.block655:                                  ; preds = %vector.body648
  %cmp.n656 = icmp eq i64 %n.vec647, %i.bo
  br i1 %cmp.n656, label %._crit_edge.thread, label %vec.epilog.iter.check661

vec.epilog.iter.check661:                         ; preds = %middle.block655
  %min.epilog.iters.check662 = icmp eq i64 %i.bp, 0
  br i1 %min.epilog.iters.check662, label %.lr.ph.preheader, label %vec.epilog.ph663, !prof !15

vec.epilog.ph663:                                 ; preds = %vector.main.loop.iter.check644, %vec.epilog.iter.check661
  %vec.epilog.resume.val657 = phi i64 [ %n.vec647, %vec.epilog.iter.check661 ], [ 0, %vector.main.loop.iter.check644 ]
  %n.vec664 = and i64 %i.bo, 2147483644           ; 3 uses
  %i.cn = or disjoint i64 %n.vec664, 1
  br label %vec.epilog.vector.body665

vec.epilog.vector.body665:                        ; preds = %vec.epilog.vector.body665, %vec.epilog.ph663
  %index666 = phi i64 [ %vec.epilog.resume.val657, %vec.epilog.ph663 ], [ %index.next668, %vec.epilog.vector.body665 ] ; 3 uses
  %i.co = getelementptr [8 x i8], ptr %invariant.gep, i64 %index666
  %i.cp = getelementptr i8, ptr %i.co, i64 8
  %wide.load667 = load <4 x double>, ptr %i.cp, align 8, !tbaa !9 ; 3 uses
  %i.cq = fcmp oge <4 x double> %wide.load667, zeroinitializer
  %i.cr = fneg <4 x double> %wide.load667
  %i.cs = select <4 x i1> %i.cq, <4 x double> %wide.load667, <4 x double> %i.cr
  %i.ct = getelementptr [8 x i8], ptr %12, i64 %index666
  store <4 x double> %i.cs, ptr %i.ct, align 8, !tbaa !9
  %index.next668 = add nuw i64 %index666, 4       ; 2 uses
  %i.cu = icmp eq i64 %index.next668, %n.vec664
  br i1 %i.cu, label %vec.epilog.middle.block669, label %vec.epilog.vector.body665, !llvm.loop !16

vec.epilog.middle.block669:                       ; preds = %vec.epilog.vector.body665
  %cmp.n670 = icmp eq i64 %n.vec664, %i.bo
  br i1 %cmp.n670, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check659, %vec.epilog.iter.check661, %vec.epilog.middle.block669
  %indvars.iv.ph = phi i64 [ 1, %iter.check659 ], [ %i.bq, %vec.epilog.iter.check661 ], [ %i.cn, %vec.epilog.middle.block669 ] ; 4 uses
  %i.cv = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %i.cw = zext nneg i32 %i.bm to i64
  %i.cx = sub nsw i64 %i.cw, %indvars.iv.ph
  %xtraiter = and i64 %i.cv, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.prol
  %i.cy = load double, ptr %gep.prol, align 8, !tbaa !9 ; 3 uses
  %i.cz = fcmp oge double %i.cy, 0.000000e+00
  %i.da = fneg double %i.cy
  %i.db = select i1 %i.cz, double %i.cy, double %i.da
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.prol
  store double %i.db, ptr %i.dc, align 8, !tbaa !9
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !17

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.dd = icmp ult i64 %i.cx, 3
  br i1 %i.dd, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.de = load double, ptr %gep, align 8, !tbaa !9 ; 3 uses
  %i.df = fcmp oge double %i.de, 0.000000e+00
  %i.dg = fneg double %i.de
  %i.dh = select i1 %i.df, double %i.de, double %i.dg
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  store double %i.dh, ptr %i.di, align 8, !tbaa !9
  %i.dj = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %gep.1 = getelementptr i8, ptr %i.dj, i64 8
  %i.dk = load double, ptr %gep.1, align 8, !tbaa !9 ; 3 uses
  %i.dl = fcmp oge double %i.dk, 0.000000e+00
  %i.dm = fneg double %i.dk
  %i.dn = select i1 %i.dl, double %i.dk, double %i.dm
  %i.do = getelementptr [8 x i8], ptr %12, i64 %indvars.iv
  store double %i.dn, ptr %i.do, align 8, !tbaa !9
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.dp = load double, ptr %gep.2, align 8, !tbaa !9 ; 3 uses
  %i.dq = fcmp oge double %i.dp, 0.000000e+00
  %i.dr = fneg double %i.dp
  %i.ds = select i1 %i.dq, double %i.dp, double %i.dr
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next.1
  store double %i.ds, ptr %i.dt, align 8, !tbaa !9
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.du = load double, ptr %gep.3, align 8, !tbaa !9 ; 3 uses
  %i.dv = fcmp oge double %i.du, 0.000000e+00
  %i.dw = fneg double %i.du
  %i.dx = select i1 %i.dv, double %i.du, double %i.dw
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next.2
  store double %i.dx, ptr %i.dy, align 8, !tbaa !9
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge.thread, label %.lr.ph, !llvm.loop !19

._crit_edge.thread:                               ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %vec.epilog.middle.block669, %middle.block655
  %i.dz = add nuw i32 %i.bm, 1                    ; 3 uses
  br i1 %.not, label %.lr.ph420, label %.lr.ph408.preheader

.lr.ph408.preheader:                              ; preds = %._crit_edge.thread
  %wide.trip.count473 = zext i32 %i.dz to i64
  br label %.lr.ph408

.lr.ph420:                                        ; preds = %._crit_edge.thread
  %i.ea = zext nneg i32 %i.bm to i64
  %wide.trip.count492 = zext i32 %i.dz to i64
  %i.eb = add nsw i32 %i.bm, -2
  br label %bb.m

.lr.ph408:                                        ; preds = %.lr.ph408.preheader, %._crit_edge404
  %indvar679 = phi i64 [ 0, %.lr.ph408.preheader ], [ %indvar.next680, %._crit_edge404 ] ; 5 uses
  %indvars.iv470 = phi i64 [ 1, %.lr.ph408.preheader ], [ %indvars.iv.next471, %._crit_edge404 ] ; 5 uses
  %.0346407 = phi i32 [ 1, %.lr.ph408.preheader ], [ %i.gl, %._crit_edge404 ] ; 2 uses
  %gep549 = getelementptr [8 x i8], ptr %invariant.gep548, i64 %indvars.iv470
  %i.ec = load double, ptr %gep549, align 8, !tbaa !9 ; 3 uses
  %i.ed = fcmp oge double %i.ec, 0.000000e+00
  %i.ee = fneg double %i.ec
  %i.ef = select i1 %i.ed, double %i.ec, double %i.ee ; 4 uses
  %.not384.not398 = icmp samesign ugt i64 %indvars.iv470, 1
  br i1 %.not384.not398, label %.lr.ph403.preheader, label %._crit_edge404

.lr.ph403.preheader:                              ; preds = %.lr.ph408
  %i.eg = zext i32 %.0346407 to i64               ; 2 uses
  %xtraiter681 = and i64 %indvar679, 1
  %i.eh = icmp eq i64 %indvar679, 1
  br i1 %i.eh, label %.lr.ph403.epil.preheader, label %.lr.ph403.preheader.new

.lr.ph403.preheader.new:                          ; preds = %.lr.ph403.preheader
  %unroll_iter = and i64 %indvar679, -2
  br label %.lr.ph403

.lr.ph403:                                        ; preds = %.lr.ph403, %.lr.ph403.preheader.new
  %indvars.iv463 = phi i64 [ 1, %.lr.ph403.preheader.new ], [ %indvars.iv.next464.1, %.lr.ph403 ] ; 5 uses
  %indvars.iv461 = phi i64 [ %i.eg, %.lr.ph403.preheader.new ], [ %indvars.iv.next462.1, %.lr.ph403 ] ; 3 uses
  %.0351400 = phi double [ 0.000000e+00, %.lr.ph403.preheader.new ], [ %i.fq, %.lr.ph403 ]
  %niter = phi i64 [ 0, %.lr.ph403.preheader.new ], [ %niter.next.1, %.lr.ph403 ]
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv461 ; 2 uses
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !9 ; 3 uses
  %i.ek = fcmp oge double %i.ej, 0.000000e+00
  %i.el = fneg double %i.ej
  %i.em = select i1 %i.ek, double %i.ej, double %i.el
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv463 ; 2 uses
  %i.eo = load double, ptr %i.en, align 8, !tbaa !9
  %i.ep = call double @llvm.fmuladd.f64(double %i.em, double %i.ef, double %i.eo)
  store double %i.ep, ptr %i.en, align 8, !tbaa !9
  %i.eq = load double, ptr %i.ei, align 8, !tbaa !9 ; 3 uses
  %i.er = fcmp oge double %i.eq, 0.000000e+00
  %i.es = fneg double %i.eq
  %i.et = select i1 %i.er, double %i.eq, double %i.es
  %gep547 = getelementptr [8 x i8], ptr %invariant.gep546, i64 %indvars.iv463
  %i.eu = load double, ptr %gep547, align 8, !tbaa !9 ; 3 uses
  %i.ev = fcmp oge double %i.eu, 0.000000e+00
  %i.ew = fneg double %i.eu
  %i.ex = select i1 %i.ev, double %i.eu, double %i.ew
  %i.ey = call double @llvm.fmuladd.f64(double %i.et, double %i.ex, double %.0351400)
  %i.ez = getelementptr [8 x i8], ptr %3, i64 %indvars.iv461 ; 2 uses
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !9 ; 3 uses
  %i.fb = fcmp oge double %i.fa, 0.000000e+00
  %i.fc = fneg double %i.fa
  %i.fd = select i1 %i.fb, double %i.fa, double %i.fc
  %i.fe = getelementptr [8 x i8], ptr %12, i64 %indvars.iv463 ; 2 uses
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !9
  %i.fg = call double @llvm.fmuladd.f64(double %i.fd, double %i.ef, double %i.ff)
  store double %i.fg, ptr %i.fe, align 8, !tbaa !9
  %i.fh = load double, ptr %i.ez, align 8, !tbaa !9 ; 3 uses
  %i.fi = fcmp oge double %i.fh, 0.000000e+00
  %i.fj = fneg double %i.fh
  %i.fk = select i1 %i.fi, double %i.fh, double %i.fj
  %i.fl = getelementptr [8 x i8], ptr %invariant.gep546, i64 %indvars.iv463
  %gep547.1 = getelementptr i8, ptr %i.fl, i64 8
  %i.fm = load double, ptr %gep547.1, align 8, !tbaa !9 ; 3 uses
  %i.fn = fcmp oge double %i.fm, 0.000000e+00
  %i.fo = fneg double %i.fm
  %i.fp = select i1 %i.fn, double %i.fm, double %i.fo
  %i.fq = call double @llvm.fmuladd.f64(double %i.fk, double %i.fp, double %i.ey) ; 3 uses
  %indvars.iv.next462.1 = add nuw nsw i64 %indvars.iv461, 2 ; 2 uses
  %indvars.iv.next464.1 = add nuw nsw i64 %indvars.iv463, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge404.loopexit.unr-lcssa, label %.lr.ph403, !llvm.loop !20

._crit_edge404.loopexit.unr-lcssa:                ; preds = %.lr.ph403
  %lcmp.mod682.not = icmp eq i64 %xtraiter681, 0
  br i1 %lcmp.mod682.not, label %._crit_edge404, label %.lr.ph403.epil.preheader

.lr.ph403.epil.preheader:                         ; preds = %._crit_edge404.loopexit.unr-lcssa, %.lr.ph403.preheader
  %indvars.iv463.epil.init = phi i64 [ 1, %.lr.ph403.preheader ], [ %indvars.iv.next464.1, %._crit_edge404.loopexit.unr-lcssa ] ; 2 uses
  %indvars.iv461.epil.init = phi i64 [ %i.eg, %.lr.ph403.preheader ], [ %indvars.iv.next462.1, %._crit_edge404.loopexit.unr-lcssa ]
  %.0351400.epil.init = phi double [ 0.000000e+00, %.lr.ph403.preheader ], [ %i.fq, %._crit_edge404.loopexit.unr-lcssa ]
  %lcmp.mod684 = trunc i64 %indvar679 to i1
  call void @llvm.assume(i1 %lcmp.mod684)
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv461.epil.init ; 2 uses
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !9 ; 3 uses
  %i.ft = fcmp oge double %i.fs, 0.000000e+00
  %i.fu = fneg double %i.fs
  %i.fv = select i1 %i.ft, double %i.fs, double %i.fu
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv463.epil.init ; 2 uses
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !9
  %i.fy = call double @llvm.fmuladd.f64(double %i.fv, double %i.ef, double %i.fx)
  store double %i.fy, ptr %i.fw, align 8, !tbaa !9
  %i.fz = load double, ptr %i.fr, align 8, !tbaa !9 ; 3 uses
  %i.ga = fcmp oge double %i.fz, 0.000000e+00
  %i.gb = fneg double %i.fz
  %i.gc = select i1 %i.ga, double %i.fz, double %i.gb
  %gep547.epil = getelementptr [8 x i8], ptr %invariant.gep546, i64 %indvars.iv463.epil.init
  %i.gd = load double, ptr %gep547.epil, align 8, !tbaa !9 ; 3 uses
  %i.ge = fcmp oge double %i.gd, 0.000000e+00
  %i.gf = fneg double %i.gd
  %i.gg = select i1 %i.ge, double %i.gd, double %i.gf
  %i.gh = call double @llvm.fmuladd.f64(double %i.gc, double %i.gg, double %.0351400.epil.init)
  br label %._crit_edge404

._crit_edge404:                                   ; preds = %.lr.ph403.epil.preheader, %._crit_edge404.loopexit.unr-lcssa, %.lr.ph408
  %.0351.lcssa = phi double [ 0.000000e+00, %.lr.ph408 ], [ %i.fq, %._crit_edge404.loopexit.unr-lcssa ], [ %i.gh, %.lr.ph403.epil.preheader ]
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv470 ; 2 uses
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !9
  %i.gk = trunc nuw nsw i64 %indvars.iv470 to i32
  %i.gl = add nuw nsw i32 %.0346407, %i.gk        ; 2 uses
  %i.gm = zext nneg i32 %i.gl to i64
  %i.gn = getelementptr [8 x i8], ptr %i.f, i64 %i.gm
  %i.go = getelementptr i8, ptr %i.gn, i64 -8
  %i.gp = load double, ptr %i.go, align 8, !tbaa !9 ; 3 uses
  %i.gq = fcmp oge double %i.gp, 0.000000e+00
  %i.gr = fneg double %i.gp
  %i.gs = select i1 %i.gq, double %i.gp, double %i.gr
  %i.gt = call double @llvm.fmuladd.f64(double %i.gs, double %i.ef, double %i.gj)
  %i.gu = fadd double %.0351.lcssa, %i.gt
  store double %i.gu, ptr %i.gi, align 8, !tbaa !9
  %indvars.iv.next471 = add nuw nsw i64 %indvars.iv470, 1 ; 2 uses
  %exitcond474.not = icmp eq i64 %indvars.iv.next471, %wide.trip.count473
  %indvar.next680 = add i64 %indvar679, 1
  br i1 %exitcond474.not, label %.lr.ph425.preheader, label %.lr.ph408, !llvm.loop !21

bb.m:                                             ; preds = %.lr.ph420, %._crit_edge415
  %indvar685 = phi i32 [ 0, %.lr.ph420 ], [ %indvar.next686, %._crit_edge415 ] ; 3 uses
  %indvars.iv489 = phi i64 [ 1, %.lr.ph420 ], [ %indvars.iv.next490, %._crit_edge415 ] ; 4 uses
  %indvars.iv481 = phi i64 [ 2, %.lr.ph420 ], [ %indvars.iv.next482, %._crit_edge415 ] ; 5 uses
  %indvars.iv477 = phi i32 [ 1, %.lr.ph420 ], [ %indvars.iv.next478, %._crit_edge415 ] ; 2 uses
  %indvars.iv475 = phi i32 [ %i.bm, %.lr.ph420 ], [ %indvars.iv.next476, %._crit_edge415 ] ; 2 uses
  %i.gv = sext i32 %indvars.iv477 to i64          ; 4 uses
  %gep553 = getelementptr [8 x i8], ptr %invariant.gep552, i64 %indvars.iv489
  %i.gw = load double, ptr %gep553, align 8, !tbaa !9 ; 3 uses
  %i.gx = fcmp oge double %i.gw, 0.000000e+00
  %i.gy = fneg double %i.gw
  %i.gz = select i1 %i.gx, double %i.gw, double %i.gy ; 4 uses
  %i.ha = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.gv
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !9 ; 3 uses
  %i.hc = fcmp oge double %i.hb, 0.000000e+00
  %i.hd = fneg double %i.hb
  %i.he = select i1 %i.hc, double %i.hb, double %i.hd
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv489 ; 4 uses
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !9
  %i.hh = call double @llvm.fmuladd.f64(double %i.he, double %i.gz, double %i.hg) ; 2 uses
  store double %i.hh, ptr %i.hf, align 8, !tbaa !9
  %indvars.iv.next490 = add nuw nsw i64 %indvars.iv489, 1 ; 2 uses
  %.not376409.not = icmp samesign ult i64 %indvars.iv489, %i.ea
  br i1 %.not376409.not, label %.lr.ph414.preheader, label %._crit_edge415

.lr.ph414.preheader:                              ; preds = %bb.m
  %i.hi = sub i32 %indvar685, %i.bm
  %i.hj = and i32 %i.hi, 1
  %lcmp.mod688.not.not = icmp eq i32 %i.hj, 0
  br i1 %lcmp.mod688.not.not, label %.lr.ph414.prol, label %.lr.ph414.prol.loopexit

.lr.ph414.prol:                                   ; preds = %.lr.ph414.preheader
  %indvars.iv.next480.prol = add nsw i64 %i.gv, 1
  %i.hk = getelementptr [8 x i8], ptr %3, i64 %i.gv ; 2 uses
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !9 ; 3 uses
  %i.hm = fcmp oge double %i.hl, 0.000000e+00
  %i.hn = fneg double %i.hl
  %i.ho = select i1 %i.hm, double %i.hl, double %i.hn
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv481 ; 2 uses
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !9
  %i.hr = call double @llvm.fmuladd.f64(double %i.ho, double %i.gz, double %i.hq)
  store double %i.hr, ptr %i.hp, align 8, !tbaa !9
  %i.hs = load double, ptr %i.hk, align 8, !tbaa !9 ; 3 uses
  %i.ht = fcmp oge double %i.hs, 0.000000e+00
  %i.hu = fneg double %i.hs
  %i.hv = select i1 %i.ht, double %i.hs, double %i.hu
  %gep551.prol = getelementptr [8 x i8], ptr %invariant.gep550, i64 %indvars.iv481
  %i.hw = load double, ptr %gep551.prol, align 8, !tbaa !9 ; 3 uses
  %i.hx = fcmp oge double %i.hw, 0.000000e+00
  %i.hy = fneg double %i.hw
  %i.hz = select i1 %i.hx, double %i.hw, double %i.hy
  %i.ia = call double @llvm.fmuladd.f64(double %i.hv, double %i.hz, double 0.000000e+00) ; 2 uses
  %indvars.iv.next484.prol = add nuw nsw i64 %indvars.iv481, 1
  br label %.lr.ph414.prol.loopexit

.lr.ph414.prol.loopexit:                          ; preds = %.lr.ph414.prol, %.lr.ph414.preheader
  %.lcssa675.unr = phi double [ poison, %.lr.ph414.preheader ], [ %i.ia, %.lr.ph414.prol ]
  %indvars.iv483.unr = phi i64 [ %indvars.iv481, %.lr.ph414.preheader ], [ %indvars.iv.next484.prol, %.lr.ph414.prol ]
  %indvars.iv479.unr = phi i64 [ %i.gv, %.lr.ph414.preheader ], [ %indvars.iv.next480.prol, %.lr.ph414.prol ]
  %.1352411.unr = phi double [ 0.000000e+00, %.lr.ph414.preheader ], [ %i.ia, %.lr.ph414.prol ]
  %i.ib = icmp eq i32 %i.eb, %indvar685
  br i1 %i.ib, label %._crit_edge415.loopexit, label %.lr.ph414

.lr.ph414:                                        ; preds = %.lr.ph414.prol.loopexit, %.lr.ph414
  %indvars.iv483 = phi i64 [ %indvars.iv.next484.1, %.lr.ph414 ], [ %indvars.iv483.unr, %.lr.ph414.prol.loopexit ] ; 5 uses
  %indvars.iv479 = phi i64 [ %indvars.iv.next480.1, %.lr.ph414 ], [ %indvars.iv479.unr, %.lr.ph414.prol.loopexit ] ; 3 uses
  %.1352411 = phi double [ %i.jl, %.lr.ph414 ], [ %.1352411.unr, %.lr.ph414.prol.loopexit ]
  %i.ic = getelementptr [8 x i8], ptr %3, i64 %indvars.iv479 ; 2 uses
  %i.id = load double, ptr %i.ic, align 8, !tbaa !9 ; 3 uses
  %i.ie = fcmp oge double %i.id, 0.000000e+00
  %i.if = fneg double %i.id
  %i.ig = select i1 %i.ie, double %i.id, double %i.if
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv483 ; 2 uses
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !9
  %i.ij = call double @llvm.fmuladd.f64(double %i.ig, double %i.gz, double %i.ii)
  store double %i.ij, ptr %i.ih, align 8, !tbaa !9
  %i.ik = load double, ptr %i.ic, align 8, !tbaa !9 ; 3 uses
  %i.il = fcmp oge double %i.ik, 0.000000e+00
  %i.im = fneg double %i.ik
  %i.in = select i1 %i.il, double %i.ik, double %i.im
  %gep551 = getelementptr [8 x i8], ptr %invariant.gep550, i64 %indvars.iv483
  %i.io = load double, ptr %gep551, align 8, !tbaa !9 ; 3 uses
  %i.ip = fcmp oge double %i.io, 0.000000e+00
  %i.iq = fneg double %i.io
  %i.ir = select i1 %i.ip, double %i.io, double %i.iq
  %i.is = call double @llvm.fmuladd.f64(double %i.in, double %i.ir, double %.1352411)
  %indvars.iv.next480.1 = add nsw i64 %indvars.iv479, 2
  %i.it = getelementptr [8 x i8], ptr %3, i64 %indvars.iv479
  %i.iu = getelementptr i8, ptr %i.it, i64 8      ; 2 uses
  %i.iv = load double, ptr %i.iu, align 8, !tbaa !9 ; 3 uses
  %i.iw = fcmp oge double %i.iv, 0.000000e+00
  %i.ix = fneg double %i.iv
  %i.iy = select i1 %i.iw, double %i.iv, double %i.ix
  %i.iz = getelementptr [8 x i8], ptr %12, i64 %indvars.iv483 ; 2 uses
  %i.ja = load double, ptr %i.iz, align 8, !tbaa !9
  %i.jb = call double @llvm.fmuladd.f64(double %i.iy, double %i.gz, double %i.ja)
  store double %i.jb, ptr %i.iz, align 8, !tbaa !9
  %i.jc = load double, ptr %i.iu, align 8, !tbaa !9 ; 3 uses
  %i.jd = fcmp oge double %i.jc, 0.000000e+00
  %i.je = fneg double %i.jc
  %i.jf = select i1 %i.jd, double %i.jc, double %i.je
  %i.jg = getelementptr [8 x i8], ptr %invariant.gep550, i64 %indvars.iv483
  %gep551.1 = getelementptr i8, ptr %i.jg, i64 8
  %i.jh = load double, ptr %gep551.1, align 8, !tbaa !9 ; 3 uses
  %i.ji = fcmp oge double %i.jh, 0.000000e+00
  %i.jj = fneg double %i.jh
  %i.jk = select i1 %i.ji, double %i.jh, double %i.jj
  %i.jl = call double @llvm.fmuladd.f64(double %i.jf, double %i.jk, double %i.is) ; 2 uses
  %indvars.iv.next484.1 = add nuw nsw i64 %indvars.iv483, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next484.1 to i32
  %exitcond488.not.1 = icmp eq i32 %i.dz, %lftr.wideiv.1
  br i1 %exitcond488.not.1, label %._crit_edge415.loopexit, label %.lr.ph414, !llvm.loop !22

._crit_edge415.loopexit:                          ; preds = %.lr.ph414, %.lr.ph414.prol.loopexit
  %.lcssa675 = phi double [ %.lcssa675.unr, %.lr.ph414.prol.loopexit ], [ %i.jl, %.lr.ph414 ]
  %.pre = load double, ptr %i.hf, align 8, !tbaa !9
  br label %._crit_edge415

._crit_edge415:                                   ; preds = %._crit_edge415.loopexit, %bb.m
  %i.jm = phi double [ %i.hh, %bb.m ], [ %.pre, %._crit_edge415.loopexit ]
  %.1352.lcssa = phi double [ 0.000000e+00, %bb.m ], [ %.lcssa675, %._crit_edge415.loopexit ]
  %i.jn = fadd double %.1352.lcssa, %i.jm
  store double %i.jn, ptr %i.hf, align 8, !tbaa !9
  %indvars.iv.next478 = add i32 %indvars.iv477, %indvars.iv475
  %indvars.iv.next476 = add i32 %indvars.iv475, -1
  %indvars.iv.next482 = add nuw nsw i64 %indvars.iv481, 1
  %exitcond493.not = icmp eq i64 %indvars.iv.next490, %wide.trip.count492
  %indvar.next686 = add i32 %indvar685, 1
  br i1 %exitcond493.not, label %.lr.ph425.preheader, label %bb.m, !llvm.loop !23

.lr.ph425.preheader:                              ; preds = %._crit_edge404, %._crit_edge415
  %i.jo = zext nneg i32 %i.bm to i64              ; 2 uses
  %invariant.gep554 = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.jo ; 3 uses
  %invariant.gep556 = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.jo ; 3 uses
  %i.jp = zext nneg i32 %i.bm to i64              ; 2 uses
  %xtraiter690 = and i64 %i.jp, 1
  %i.jq = icmp eq i32 %i.bn, 2
  br i1 %i.jq, label %.lr.ph425.epil.preheader, label %.lr.ph425.preheader.new

.lr.ph425.preheader.new:                          ; preds = %.lr.ph425.preheader
  %unroll_iter694 = and i64 %i.jp, 2147483646
  br label %.lr.ph425

.lr.ph425:                                        ; preds = %bb.r, %.lr.ph425.preheader.new
  %indvars.iv494 = phi i64 [ 1, %.lr.ph425.preheader.new ], [ %indvars.iv.next495.1, %bb.r ] ; 6 uses
  %.2423 = phi double [ 0.000000e+00, %.lr.ph425.preheader.new ], [ %i.ky, %bb.r ] ; 2 uses
  %niter695 = phi i64 [ 0, %.lr.ph425.preheader.new ], [ %niter695.next.1, %bb.r ]
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv494
  %i.js = load double, ptr %i.jr, align 8, !tbaa !9 ; 3 uses
  %i.jt = fcmp ogt double %i.js, %i.ak
  br i1 %i.jt, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph425
  %gep557 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep556, i64 %indvars.iv494
  %i.ju = load double, ptr %gep557, align 8, !tbaa !9 ; 3 uses
  %i.jv = fcmp oge double %i.ju, 0.000000e+00
  %i.jw = fneg double %i.ju
  %i.jx = select i1 %i.jv, double %i.ju, double %i.jw
  %i.jy = fdiv double %i.jx, %i.js
  br label %.lr.ph425.1

bb.o:                                             ; preds = %.lr.ph425
  %gep555 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep554, i64 %indvars.iv494
  %i.jz = load double, ptr %gep555, align 8, !tbaa !9 ; 3 uses
  %i.ka = fcmp oge double %i.jz, 0.000000e+00
  %i.kb = fneg double %i.jz
  %i.kc = select i1 %i.ka, double %i.jz, double %i.kb
  %i.kd = fadd double %i.aj, %i.kc
  %i.ke = fadd double %i.aj, %i.js
  %i.kf = fdiv double %i.kd, %i.ke
  br label %.lr.ph425.1

.lr.ph425.1:                                      ; preds = %bb.n, %bb.o
  %.sink570 = phi double [ %i.jy, %bb.n ], [ %i.kf, %bb.o ] ; 2 uses
  %i.kg = fcmp oge double %.2423, %.sink570
  %i.kh = select i1 %i.kg, double %.2423, double %.sink570 ; 2 uses
  %indvars.iv.next495 = add nuw nsw i64 %indvars.iv494, 1 ; 2 uses
  %i.ki = getelementptr [8 x i8], ptr %12, i64 %indvars.iv494
  %i.kj = load double, ptr %i.ki, align 8, !tbaa !9 ; 3 uses
  %i.kk = fcmp ogt double %i.kj, %i.ak
  br i1 %i.kk, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph425.1
  %gep555.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep554, i64 %indvars.iv.next495
  %i.kl = load double, ptr %gep555.1, align 8, !tbaa !9 ; 3 uses
  %i.km = fcmp oge double %i.kl, 0.000000e+00
  %i.kn = fneg double %i.kl
  %i.ko = select i1 %i.km, double %i.kl, double %i.kn
  %i.kp = fadd double %i.aj, %i.ko
  %i.kq = fadd double %i.aj, %i.kj
  %i.kr = fdiv double %i.kp, %i.kq
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph425.1
  %gep557.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep556, i64 %indvars.iv.next495
  %i.ks = load double, ptr %gep557.1, align 8, !tbaa !9 ; 3 uses
  %i.kt = fcmp oge double %i.ks, 0.000000e+00
  %i.ku = fneg double %i.ks
  %i.kv = select i1 %i.kt, double %i.ks, double %i.ku
  %i.kw = fdiv double %i.kv, %i.kj
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sink570.1 = phi double [ %i.kw, %bb.q ], [ %i.kr, %bb.p ] ; 2 uses
  %i.kx = fcmp oge double %i.kh, %.sink570.1
  %i.ky = select i1 %i.kx, double %i.kh, double %.sink570.1 ; 3 uses
  %indvars.iv.next495.1 = add nuw nsw i64 %indvars.iv494, 2 ; 2 uses
  %niter695.next.1 = add i64 %niter695, 2         ; 2 uses
  %niter695.ncmp.1 = icmp eq i64 %niter695.next.1, %unroll_iter694
  br i1 %niter695.ncmp.1, label %._crit_edge426.loopexit.unr-lcssa, label %.lr.ph425, !llvm.loop !24

._crit_edge426.loopexit.unr-lcssa:                ; preds = %bb.r
  %lcmp.mod691.not = icmp eq i64 %xtraiter690, 0
  br i1 %lcmp.mod691.not, label %._crit_edge426, label %.lr.ph425.epil.preheader

.lr.ph425.epil.preheader:                         ; preds = %._crit_edge426.loopexit.unr-lcssa, %.lr.ph425.preheader
  %indvars.iv494.epil.init = phi i64 [ 1, %.lr.ph425.preheader ], [ %indvars.iv.next495.1, %._crit_edge426.loopexit.unr-lcssa ] ; 3 uses
  %.2423.epil.init = phi double [ 0.000000e+00, %.lr.ph425.preheader ], [ %i.ky, %._crit_edge426.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod693 = trunc i32 %i.bm to i1
  call void @llvm.assume(i1 %lcmp.mod693)
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv494.epil.init
  %i.la = load double, ptr %i.kz, align 8, !tbaa !9 ; 3 uses
  %i.lb = fcmp ogt double %i.la, %i.ak
  br i1 %i.lb, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph425.epil.preheader
  %gep555.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep554, i64 %indvars.iv494.epil.init
  %i.lc = load double, ptr %gep555.epil, align 8, !tbaa !9 ; 3 uses
  %i.ld = fcmp oge double %i.lc, 0.000000e+00
  %i.le = fneg double %i.lc
  %i.lf = select i1 %i.ld, double %i.lc, double %i.le
  %i.lg = fadd double %i.aj, %i.lf
  %i.lh = fadd double %i.aj, %i.la
  %i.li = fdiv double %i.lg, %i.lh
  br label %._crit_edge426.loopexit.epilog-lcssa

bb.t:                                             ; preds = %.lr.ph425.epil.preheader
  %gep557.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep556, i64 %indvars.iv494.epil.init
  %i.lj = load double, ptr %gep557.epil, align 8, !tbaa !9 ; 3 uses
  %i.lk = fcmp oge double %i.lj, 0.000000e+00
  %i.ll = fneg double %i.lj
  %i.lm = select i1 %i.lk, double %i.lj, double %i.ll
  %i.ln = fdiv double %i.lm, %i.la
  br label %._crit_edge426.loopexit.epilog-lcssa

._crit_edge426.loopexit.epilog-lcssa:             ; preds = %bb.t, %bb.s
  %.sink570.epil = phi double [ %i.ln, %bb.t ], [ %i.li, %bb.s ] ; 2 uses
  %i.lo = fcmp oge double %.2423.epil.init, %.sink570.epil
  %i.lp = select i1 %i.lo, double %.2423.epil.init, double %.sink570.epil
  br label %._crit_edge426

._crit_edge426:                                   ; preds = %._crit_edge426.loopexit.epilog-lcssa, %._crit_edge426.loopexit.unr-lcssa, %bb.l
  %.2.lcssa = phi double [ 0.000000e+00, %bb.l ], [ %i.ky, %._crit_edge426.loopexit.unr-lcssa ], [ %i.lp, %._crit_edge426.loopexit.epilog-lcssa ] ; 3 uses
  store double %.2.lcssa, ptr %i.ax, align 8, !tbaa !9
  %i.lq = fcmp ogt double %.2.lcssa, %i.ag
  br i1 %i.lq, label %bb.u, label %bb.w

bb.u:                                             ; preds = %._crit_edge426
  %i.lr = fmul double %.2.lcssa, 2.000000e+00
  %i.ls = fcmp ole double %i.lr, %.0
  %i.lt = icmp samesign ult i32 %.0350, 6
  %or.cond = select i1 %i.ls, i1 %i.lt, i1 false
  br i1 %or.cond, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.lu = sext i32 %i.bm to i64
  %i.lv = getelementptr [8 x i8], ptr %i.o, i64 %i.lu
  %i.lw = getelementptr i8, ptr %i.lv, i64 8
  call void @dsptrs_(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @c__1, ptr noundef %4, ptr noundef %5, ptr noundef %i.lw, ptr noundef nonnull %1, ptr noundef nonnull %14) #7
  %i.lx = load i32, ptr %1, align 4, !tbaa !8
  %i.ly = sext i32 %i.lx to i64
  %i.lz = getelementptr [8 x i8], ptr %i.o, i64 %i.ly
  %i.ma = getelementptr i8, ptr %i.lz, i64 8
  call void @daxpy_(ptr noundef nonnull %1, ptr noundef nonnull @c_b14, ptr noundef %i.ma, ptr noundef nonnull @c__1, ptr noundef %i.bd, ptr noundef nonnull @c__1) #7
  %i.mb = load double, ptr %i.ax, align 8, !tbaa !9
  %i.mc = add nuw nsw i32 %.0350, 1
  br label %bb.l

bb.w:                                             ; preds = %bb.u, %._crit_edge426
  br i1 %.not374396, label %._crit_edge432, label %.lr.ph431.preheader

.lr.ph431.preheader:                              ; preds = %bb.w
  %i.md = zext nneg i32 %i.bm to i64              ; 2 uses
  %i.me = add nuw i32 %i.bm, 1
  %wide.trip.count503 = zext i32 %i.me to i64
  %invariant.gep558 = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.md ; 2 uses
  %invariant.gep560 = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.md ; 2 uses
  %i.mf = zext nneg i32 %i.bm to i64              ; 2 uses
  %min.iters.check624 = icmp ult i32 %i.bm, 8
  br i1 %min.iters.check624, label %.lr.ph431.preheader674, label %vector.ph625

vector.ph625:                                     ; preds = %.lr.ph431.preheader
  %n.vec626 = and i64 %i.mf, 2147483640           ; 3 uses
  %i.mg = or disjoint i64 %n.vec626, 1
  br label %vector.body631

vector.body631:                                   ; preds = %vector.body631, %vector.ph625
  %index632 = phi i64 [ 0, %vector.ph625 ], [ %index.next639, %vector.body631 ] ; 3 uses
  %i.mh = or disjoint i64 %index632, 1            ; 2 uses
  %i.mi = getelementptr [8 x i8], ptr %12, i64 %index632 ; 3 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 32 ; 2 uses
  %wide.load633 = load <4 x double>, ptr %i.mi, align 8, !tbaa !9 ; 3 uses
  %wide.load634 = load <4 x double>, ptr %i.mj, align 8, !tbaa !9 ; 3 uses
  %i.mk = fcmp ogt <4 x double> %wide.load633, %broadcast.splat ; 3 uses
  %i.ml = fcmp ogt <4 x double> %wide.load634, %broadcast.splat ; 3 uses
  %i.mm = xor <4 x i1> %i.mk, splat (i1 true)
  %i.mn = xor <4 x i1> %i.ml, splat (i1 true)
  %i.mo = getelementptr [8 x i8], ptr %invariant.gep558, i64 %i.mh ; 2 uses
  %i.mp = getelementptr i8, ptr %i.mo, i64 32
  %wide.masked.load = call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.mo, <4 x i1> %i.mm, <4 x double> poison), !tbaa !9 ; 3 uses
  %wide.masked.load635 = call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.mp, <4 x i1> %i.mn, <4 x double> poison), !tbaa !9 ; 3 uses
  %i.mq = fcmp oge <4 x double> %wide.masked.load, zeroinitializer
  %i.mr = fcmp oge <4 x double> %wide.masked.load635, zeroinitializer
  %i.ms = fneg <4 x double> %wide.masked.load
  %i.mt = fneg <4 x double> %wide.masked.load635
  %i.mu = select <4 x i1> %i.mq, <4 x double> %wide.masked.load, <4 x double> %i.ms
  %i.mv = select <4 x i1> %i.mr, <4 x double> %wide.masked.load635, <4 x double> %i.mt
  %i.mw = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat628, <4 x double> %wide.load633, <4 x double> %i.mu)
  %i.mx = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat628, <4 x double> %wide.load634, <4 x double> %i.mv)
  %i.my = fadd <4 x double> %broadcast.splat630, %i.mw
  %i.mz = fadd <4 x double> %broadcast.splat630, %i.mx
  %i.na = getelementptr [8 x i8], ptr %invariant.gep560, i64 %i.mh ; 2 uses
  %i.nb = getelementptr i8, ptr %i.na, i64 32
  %wide.masked.load636 = call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.na, <4 x i1> %i.mk, <4 x double> poison), !tbaa !9 ; 3 uses
  %wide.masked.load637 = call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.nb, <4 x i1> %i.ml, <4 x double> poison), !tbaa !9 ; 3 uses
  %i.nc = fcmp oge <4 x double> %wide.masked.load636, zeroinitializer
end_hunk_0
