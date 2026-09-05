Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/types_seven_dof_expmap?download=true
inline.NumInlined: 15398
inline.NumDeleted: 8608
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 61
begin_hunk_0_@_ZN3g2o10BaseVertexILi7ENS_4Sim3EE11solveDirectEd:bb.a
  %i.de = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 2 uses
  %i.df = load <2 x double>, ptr %i.u, align 16, !tbaa !20
  store <2 x double> %i.df, ptr %i.de, align 16, !tbaa !20
  %i.dg = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 2 uses
  %i.dh = load <2 x double>, ptr %i.x, align 16, !tbaa !20
  store <2 x double> %i.dh, ptr %i.dg, align 16, !tbaa !20
  %i.di = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 2 uses
  %i.dj = load <2 x double>, ptr %i.aa, align 16, !tbaa !20
  store <2 x double> %i.dj, ptr %i.di, align 16, !tbaa !20
  %i.dk = getelementptr inbounds nuw i8, ptr %9, i64 112
  %i.dl = load <2 x double>, ptr %i.ad, align 16, !tbaa !20
  store <2 x double> %i.dl, ptr %i.dk, align 16, !tbaa !20
  %i.dm = getelementptr inbounds nuw i8, ptr %9, i64 128 ; 2 uses
  %i.dn = load <2 x double>, ptr %i.ag, align 16, !tbaa !20
  store <2 x double> %i.dn, ptr %i.dm, align 16, !tbaa !20
  %i.do = getelementptr inbounds nuw i8, ptr %9, i64 144 ; 2 uses
  %i.dp = load <2 x double>, ptr %i.aj, align 16, !tbaa !20
  store <2 x double> %i.dp, ptr %i.do, align 16, !tbaa !20
  %i.dq = getelementptr inbounds nuw i8, ptr %9, i64 160 ; 2 uses
  %i.dr = load <2 x double>, ptr %i.am, align 16, !tbaa !20
  store <2 x double> %i.dr, ptr %i.dq, align 16, !tbaa !20
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 176
  %i.dt = load <2 x double>, ptr %i.ap, align 16, !tbaa !20
  store <2 x double> %i.dt, ptr %i.ds, align 16, !tbaa !20
  %i.du = getelementptr inbounds nuw i8, ptr %9, i64 192 ; 2 uses
  %i.dv = load <2 x double>, ptr %i.as, align 16, !tbaa !20
  store <2 x double> %i.dv, ptr %i.du, align 16, !tbaa !20
  %i.dw = getelementptr inbounds nuw i8, ptr %9, i64 208 ; 2 uses
  %i.dx = load <2 x double>, ptr %i.av, align 16, !tbaa !20
  store <2 x double> %i.dx, ptr %i.dw, align 16, !tbaa !20
  %i.dy = getelementptr inbounds nuw i8, ptr %9, i64 224
  %i.dz = load <2 x double>, ptr %i.ay, align 16, !tbaa !20
  store <2 x double> %i.dz, ptr %i.dy, align 16, !tbaa !20
  %i.ea = getelementptr inbounds nuw i8, ptr %9, i64 240
  %i.eb = load <2 x double>, ptr %i.bb, align 16, !tbaa !20
  store <2 x double> %i.eb, ptr %i.ea, align 16, !tbaa !20
  %i.ec = getelementptr inbounds nuw i8, ptr %9, i64 256 ; 2 uses
  %i.ed = load <2 x double>, ptr %i.be, align 16, !tbaa !20
  store <2 x double> %i.ed, ptr %i.ec, align 16, !tbaa !20
  %i.ee = getelementptr inbounds nuw i8, ptr %9, i64 272 ; 2 uses
  %i.ef = load <2 x double>, ptr %i.bh, align 16, !tbaa !20
  store <2 x double> %i.ef, ptr %i.ee, align 16, !tbaa !20
  %i.eg = getelementptr inbounds nuw i8, ptr %9, i64 288
  %i.eh = load <2 x double>, ptr %i.bk, align 16, !tbaa !20
  store <2 x double> %i.eh, ptr %i.eg, align 16, !tbaa !20
  %i.ei = getelementptr inbounds nuw i8, ptr %9, i64 304
  %i.ej = load <2 x double>, ptr %i.bn, align 16, !tbaa !20
  store <2 x double> %i.ej, ptr %i.ei, align 16, !tbaa !20
  %i.ek = getelementptr inbounds nuw i8, ptr %9, i64 320 ; 2 uses
  %i.el = load <2 x double>, ptr %i.bq, align 16, !tbaa !20
  store <2 x double> %i.el, ptr %i.ek, align 16, !tbaa !20
  %i.em = getelementptr inbounds nuw i8, ptr %9, i64 336
  %i.en = load <2 x double>, ptr %i.bt, align 16, !tbaa !20
  store <2 x double> %i.en, ptr %i.em, align 16, !tbaa !20
  %i.eo = getelementptr inbounds nuw i8, ptr %9, i64 352
  %i.ep = load <2 x double>, ptr %i.bw, align 16, !tbaa !20
  store <2 x double> %i.ep, ptr %i.eo, align 16, !tbaa !20
  %i.eq = getelementptr inbounds nuw i8, ptr %9, i64 368
  %i.er = load <2 x double>, ptr %i.bz, align 16, !tbaa !20
  store <2 x double> %i.er, ptr %i.eq, align 16, !tbaa !20
  %i.es = getelementptr inbounds nuw i8, ptr %9, i64 384 ; 2 uses
  %i.et = load double, ptr %i.cc, align 16, !tbaa !36
  %i.eu = getelementptr inbounds nuw i8, ptr %9, i64 392
  %i.ev = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.et, i64 0
  store <2 x double> %i.ev, ptr %i.es, align 16, !tbaa !36
  %i.ew = extractelement <2 x double> %i.dd, i64 0
  %i.ex = call double @llvm.fabs.f64(double %i.ew)
  br label %bb.c

bb.c:                                             ; preds = %bb.i, %bb.b
  %.049.i = phi i64 [ 0, %bb.b ], [ %i.im, %bb.i ] ; 14 uses
  %i.ey = phi double [ 0.000000e+00, %bb.b ], [ %i.il, %bb.i ] ; 2 uses
  %i.ez = add nsw i64 %.049.i, -1                 ; 2 uses
  %i.fa = add nsw i64 %.049.i, -2
  %i.fb = sub nsw i64 7, %.049.i                  ; 2 uses
  %i.fc = and i64 %i.fb, -2
  %i.fd = and i64 %i.fb, 1                        ; 2 uses
  %i.fe = add i64 %.049.i, %i.fc
  %.idx.i.i.i.i.i = mul nuw nsw i64 %.049.i, 56
  %i.ff = getelementptr inbounds nuw i8, ptr %9, i64 %.idx.i.i.i.i.i
  %i.fg = sub nuw nsw i64 7, %.049.i              ; 4 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %.049.i ; 9 uses
  %i.fi = and i64 %i.fg, 4                        ; 2 uses
  %i.fj = and i64 %i.fg, 6                        ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %.049.i, 6
  br i1 %.not.i.i.i.i.i.i, label %.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.fk = load <2 x double>, ptr %i.fh, align 8, !tbaa !20
  %i.fl = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.fk) ; 2 uses
  %i.fm = icmp samesign ult i64 %.049.i, 4
  br i1 %i.fm, label %._crit_edge.i.i.i.i.i.i, label %bb.f

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.d
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fo = load <2 x double>, ptr %i.fn, align 8, !tbaa !20
  %i.fp = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.fo)
  %i.fq = fadd <2 x double> %i.fl, %i.fp          ; 2 uses
  %i.fr = icmp samesign ugt i64 %i.fj, %i.fi
  br i1 %i.fr, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %i.fi
  %i.ft = load <2 x double>, ptr %i.fs, align 8, !tbaa !20
  %i.fu = call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ft)
  %i.fv = fadd <2 x double> %i.fq, %i.fu
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i.i.i, %bb.d
  %.274.i.i.i.i.i.i = phi <2 x double> [ %i.fl, %bb.d ], [ %i.fv, %bb.e ], [ %i.fq, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %shift = shufflevector <2 x double> %.274.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %.274.i.i.i.i.i.i, %shift
  %i.fw = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 3 uses
  %.not.i = icmp eq i64 %i.fj, %i.fg
  br i1 %.not.i, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi7ELi1ELb1EEELin1ELi1ELb0EEEE6lpNormILi1EEEdv.exit.i, label %.lr.ph85.i.i.i.i.i.i.preheader

.lr.ph85.i.i.i.i.i.i.preheader:                   ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %i.fd, 0
  br i1 %lcmp.mod.not, label %.lr.ph85.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.prol

.lr.ph85.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph85.i.i.i.i.i.i.preheader, %.lr.ph85.i.i.i.i.i.i.prol
  %.05283.i.i.i.i.i.i.prol = phi i64 [ %i.gb, %.lr.ph85.i.i.i.i.i.i.prol ], [ %i.fj, %.lr.ph85.i.i.i.i.i.i.preheader ] ; 2 uses
  %.182.i.i.i.i.i.i.prol = phi double [ %i.ga, %.lr.ph85.i.i.i.i.i.i.prol ], [ %i.fw, %.lr.ph85.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph85.i.i.i.i.i.i.prol ], [ 0, %.lr.ph85.i.i.i.i.i.i.preheader ]
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %.05283.i.i.i.i.i.i.prol
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !36
  %i.fz = call noundef double @llvm.fabs.f64(double %i.fy)
  %i.ga = fadd double %.182.i.i.i.i.i.i.prol, %i.fz ; 3 uses
  %i.gb = add nuw nsw i64 %.05283.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %i.fd
  br i1 %prol.iter.cmp.not, label %.lr.ph85.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.prol, !llvm.loop !470

.lr.ph85.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph85.i.i.i.i.i.i.prol, %.lr.ph85.i.i.i.i.i.i.preheader
  %.lcssa.unr = phi double [ poison, %.lr.ph85.i.i.i.i.i.i.preheader ], [ %i.ga, %.lr.ph85.i.i.i.i.i.i.prol ]
  %.05283.i.i.i.i.i.i.unr = phi i64 [ %i.fj, %.lr.ph85.i.i.i.i.i.i.preheader ], [ %i.gb, %.lr.ph85.i.i.i.i.i.i.prol ]
  %.182.i.i.i.i.i.i.unr = phi double [ %i.fw, %.lr.ph85.i.i.i.i.i.i.preheader ], [ %i.ga, %.lr.ph85.i.i.i.i.i.i.prol ]
  %i.gc = add i64 %i.fe, -4
  %i.gd = icmp ult i64 %i.gc, 3
  br i1 %i.gd, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi7ELi1ELb1EEELin1ELi1ELb0EEEE6lpNormILi1EEEdv.exit.i, label %.lr.ph85.i.i.i.i.i.i

.lr.ph85.i.i.i.i.i.i:                             ; preds = %.lr.ph85.i.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.i
  %.05283.i.i.i.i.i.i = phi i64 [ %i.gx, %.lr.ph85.i.i.i.i.i.i ], [ %.05283.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.182.i.i.i.i.i.i = phi double [ %i.gw, %.lr.ph85.i.i.i.i.i.i ], [ %.182.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.i.prol.loopexit ]
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %.05283.i.i.i.i.i.i
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !36
  %i.gg = call noundef double @llvm.fabs.f64(double %i.gf)
  %i.gh = fadd double %.182.i.i.i.i.i.i, %i.gg
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %.05283.i.i.i.i.i.i
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !36
  %i.gl = call noundef double @llvm.fabs.f64(double %i.gk)
  %i.gm = fadd double %i.gh, %i.gl
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %.05283.i.i.i.i.i.i
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.gp = load double, ptr %i.go, align 8, !tbaa !36
  %i.gq = call noundef double @llvm.fabs.f64(double %i.gp)
  %i.gr = fadd double %i.gm, %i.gq
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %.05283.i.i.i.i.i.i
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 24
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !36
  %i.gv = call noundef double @llvm.fabs.f64(double %i.gu)
  %i.gw = fadd double %i.gr, %i.gv                ; 2 uses
  %i.gx = add nuw nsw i64 %.05283.i.i.i.i.i.i, 4  ; 2 uses
  %exitcond.not.i.i.i.i.i.i.3 = icmp eq i64 %i.gx, %i.fg
  br i1 %exitcond.not.i.i.i.i.i.i.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi7ELi1ELb1EEELin1ELi1ELb0EEEE6lpNormILi1EEEdv.exit.i, label %.lr.ph85.i.i.i.i.i.i, !llvm.loop !471

.thread.i:                                        ; preds = %bb.c
  %i.gy = load double, ptr %i.fh, align 8, !tbaa !36
  %i.gz = call noundef double @llvm.fabs.f64(double %i.gy)
  br label %.lr.ph.i.i.i.i.i20.preheader.i

_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi7ELi1ELb1EEELin1ELi1ELb0EEEE6lpNormILi1EEEdv.exit.i: ; preds = %.lr.ph85.i.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.i, %bb.f
  %.0.i.i.i.i = phi double [ %i.fw, %bb.f ], [ %.lcssa.unr, %.lr.ph85.i.i.i.i.i.i.prol.loopexit ], [ %i.gw, %.lr.ph85.i.i.i.i.i.i ] ; 3 uses
  %i.ha = icmp eq i64 %.049.i, 0
  br i1 %i.ha, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi1ELi7ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi7ELi1ELb1EEELin1ELi1ELb0EEEE6lpNormILi1EEEdv.exit.i
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %.049.i
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !36
  %i.hd = call noundef double @llvm.fabs.f64(double %i.hc) ; 2 uses
  %.not47.i = icmp eq i64 %.049.i, 1
  br i1 %.not47.i, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi1ELi7ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.i, label %.lr.ph.i.i.i.i.i20.preheader.i

.lr.ph.i.i.i.i.i20.preheader.i:                   ; preds = %bb.g, %.thread.i
  %i.he = phi double [ %i.ex, %.thread.i ], [ %i.hd, %bb.g ] ; 2 uses
  %.0.i.i.i5963.i = phi double [ %i.gz, %.thread.i ], [ %.0.i.i.i.i, %bb.g ] ; 2 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %.049.i ; 5 uses
  %xtraiter45 = and i64 %i.ez, 3                  ; 3 uses
  %i.hg = icmp ult i64 %i.fa, 3
  br i1 %i.hg, label %.lr.ph.i.i.i.i.i20.i.epil.preheader, label %.lr.ph.i.i.i.i.i20.preheader.i.new

.lr.ph.i.i.i.i.i20.preheader.i.new:               ; preds = %.lr.ph.i.i.i.i.i20.preheader.i
  %unroll_iter = and i64 %i.ez, -4
  br label %.lr.ph.i.i.i.i.i20.i

.lr.ph.i.i.i.i.i20.i:                             ; preds = %.lr.ph.i.i.i.i.i20.i, %.lr.ph.i.i.i.i.i20.preheader.i.new
  %.01725.i.i.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.i20.preheader.i.new ], [ %i.id, %.lr.ph.i.i.i.i.i20.i ] ; 5 uses
  %.02324.i.i.i.i.i.i = phi double [ %i.he, %.lr.ph.i.i.i.i.i20.preheader.i.new ], [ %i.ic, %.lr.ph.i.i.i.i.i20.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i20.preheader.i.new ], [ %niter.next.3, %.lr.ph.i.i.i.i.i20.i ]
  %.idx.i.i.i.i.i.i.i.i.i = mul i64 %.01725.i.i.i.i.i.i, 56
  %i.hh = getelementptr i8, ptr %i.hf, i64 %.idx.i.i.i.i.i.i.i.i.i
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !36
  %i.hj = call noundef double @llvm.fabs.f64(double %i.hi)
  %i.hk = fadd double %.02324.i.i.i.i.i.i, %i.hj
  %i.hl = mul i64 %.01725.i.i.i.i.i.i, 56
  %i.hm = getelementptr i8, ptr %i.hf, i64 %i.hl
  %i.hn = getelementptr i8, ptr %i.hm, i64 56
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !36
  %i.hp = call noundef double @llvm.fabs.f64(double %i.ho)
  %i.hq = fadd double %i.hk, %i.hp
  %i.hr = mul i64 %.01725.i.i.i.i.i.i, 56
  %i.hs = getelementptr i8, ptr %i.hf, i64 %i.hr
  %i.ht = getelementptr i8, ptr %i.hs, i64 112
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !36
  %i.hv = call noundef double @llvm.fabs.f64(double %i.hu)
  %i.hw = fadd double %i.hq, %i.hv
  %i.hx = mul i64 %.01725.i.i.i.i.i.i, 56
  %i.hy = getelementptr i8, ptr %i.hf, i64 %i.hx
  %i.hz = getelementptr i8, ptr %i.hy, i64 168
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !36
  %i.ib = call noundef double @llvm.fabs.f64(double %i.ia)
  %i.ic = fadd double %i.hw, %i.ib                ; 3 uses
  %i.id = add nuw nsw i64 %.01725.i.i.i.i.i.i, 4  ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi1ELi7ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i20.i, !llvm.loop !472

_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi1ELi7ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i20.i
  %lcmp.mod46.not = icmp eq i64 %xtraiter45, 0
  br i1 %lcmp.mod46.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi1ELi7ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.i, label %.lr.ph.i.i.i.i.i20.i.epil.preheader

.lr.ph.i.i.i.i.i20.i.epil.preheader:              ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi1ELi7ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i20.preheader.i
  %.01725.i.i.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i20.preheader.i ], [ %i.id, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi1ELi7ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.i.loopexit.unr-lcssa ]
  %.02324.i.i.i.i.i.i.epil.init = phi double [ %i.he, %.lr.ph.i.i.i.i.i20.preheader.i ], [ %i.ic, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi1ELi7ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod48 = icmp ne i64 %xtraiter45, 0
  call void @llvm.assume(i1 %lcmp.mod48)
  br label %.lr.ph.i.i.i.i.i20.i.epil

.lr.ph.i.i.i.i.i20.i.epil:                        ; preds = %.lr.ph.i.i.i.i.i20.i.epil, %.lr.ph.i.i.i.i.i20.i.epil.preheader
  %.01725.i.i.i.i.i.i.epil = phi i64 [ %i.ii, %.lr.ph.i.i.i.i.i20.i.epil ], [ %.01725.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i20.i.epil.preheader ] ; 2 uses
  %.02324.i.i.i.i.i.i.epil = phi double [ %i.ih, %.lr.ph.i.i.i.i.i20.i.epil ], [ %.02324.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i20.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i20.i.epil ], [ 0, %.lr.ph.i.i.i.i.i20.i.epil.preheader ]
  %.idx.i.i.i.i.i.i.i.i.i.epil = mul i64 %.01725.i.i.i.i.i.i.epil, 56
  %i.ie = getelementptr i8, ptr %i.hf, i64 %.idx.i.i.i.i.i.i.i.i.i.epil
  %i.if = load double, ptr %i.ie, align 8, !tbaa !36
  %i.ig = call noundef double @llvm.fabs.f64(double %i.if)
  %i.ih = fadd double %.02324.i.i.i.i.i.i.epil, %i.ig ; 2 uses
  %i.ii = add nuw nsw i64 %.01725.i.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter45
  br i1 %epil.iter.cmp.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi1ELi7ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.i, label %.lr.ph.i.i.i.i.i20.i.epil, !llvm.loop !473

_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi1ELi7ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.i: ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi1ELi7ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i20.i.epil, %bb.g, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi7ELi1ELb1EEELin1ELi1ELb0EEEE6lpNormILi1EEEdv.exit.i
  %.0.i.i.i60.i = phi double [ %.0.i.i.i.i, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi7ELi1ELb1EEELin1ELi1ELb0EEEE6lpNormILi1EEEdv.exit.i ], [ %.0.i.i.i.i, %bb.g ], [ %.0.i.i.i5963.i, %.lr.ph.i.i.i.i.i20.i.epil ], [ %.0.i.i.i5963.i, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi1ELi7ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.i.loopexit.unr-lcssa ]
  %.0.i.i.i19.i = phi double [ 0.000000e+00, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi7ELi1ELb1EEELin1ELi1ELb0EEEE6lpNormILi1EEEdv.exit.i ], [ %i.hd, %bb.g ], [ %i.ic, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi1ELi7ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.i.loopexit.unr-lcssa ], [ %i.ih, %.lr.ph.i.i.i.i.i20.i.epil ]
  %i.ij = fadd double %.0.i.i.i60.i, %.0.i.i.i19.i ; 3 uses
  %i.ik = fcmp ogt double %i.ij, %i.ey
  br i1 %i.ik, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi1ELi7ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.i
  store double %i.ij, ptr %i.eu, align 8, !tbaa !481
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi1ELi7ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.i
  %i.il = phi double [ %i.ij, %bb.h ], [ %i.ey, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi1ELi7ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.i ]
  %i.im = add nuw nsw i64 %.049.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.im, 7
  br i1 %exitcond.not.i, label %bb.j, label %bb.c, !llvm.loop !474

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %i.cw, align 16, !tbaa !479
  %i.in = call noundef i64 @_ZN5Eigen8internal11llt_inplaceIdLi1EE9unblockedINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEEEElRT_(ptr noundef nonnull align 8 dereferenceable(408) %9)
  %i.io = icmp ne i64 %i.in, -1
  %i.ip = zext i1 %i.io to i32
  %i.iq = getelementptr inbounds nuw i8, ptr %9, i64 404
  store i32 %i.ip, ptr %i.iq, align 4, !tbaa !482
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.is = load <2 x double>, ptr %i.ir, align 16, !tbaa !20 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.iv = load <2 x double>, ptr %i.iu, align 16, !tbaa !20 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.iy = load <2 x double>, ptr %i.ix, align 16, !tbaa !20 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.jb = load double, ptr %i.ja, align 16, !tbaa !36
  %i.jc = load double, ptr %9, align 16, !tbaa !36 ; 2 uses
  %i.jd = extractelement <2 x double> %i.is, i64 0
  %i.je = fdiv double %i.jd, %i.jc                ; 7 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.jg = load double, ptr %i.jf, align 8, !tbaa !36
  %i.jh = fmul double %i.je, %i.jg
  %i.ji = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.jj = extractelement <2 x double> %i.is, i64 1
  %i.jk = fsub double %i.jj, %i.jh
  %i.jl = load double, ptr %i.de, align 16, !tbaa !36 ; 2 uses
  %i.jm = fdiv double %i.jk, %i.jl                ; 6 uses
  %i.jn = load double, ptr %i.cy, align 16, !tbaa !36
  %i.jo = fmul double %i.je, %i.jn
  %i.jp = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 2 uses
  %i.jq = load double, ptr %i.jp, align 8, !tbaa !36
  %i.jr = fmul double %i.jm, %i.jq
  %i.js = fadd double %i.jo, %i.jr
  %i.jt = extractelement <2 x double> %i.iv, i64 0
  %i.ju = fsub double %i.jt, %i.js
  %i.jv = load double, ptr %i.dm, align 16, !tbaa !36 ; 2 uses
  %i.jw = fdiv double %i.ju, %i.jv                ; 5 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.jy = load double, ptr %i.jx, align 8, !tbaa !36
  %i.jz = fmul double %i.je, %i.jy
  %i.ka = load double, ptr %i.dg, align 16, !tbaa !36
  %i.kb = fmul double %i.jm, %i.ka
  %i.kc = getelementptr inbounds nuw i8, ptr %9, i64 136 ; 2 uses
  %i.kd = load double, ptr %i.kc, align 8, !tbaa !36
  %i.ke = fmul double %i.jw, %i.kd
  %i.kf = fadd double %i.kb, %i.ke
  %i.kg = fadd double %i.jz, %i.kf
  %i.kh = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.ki = extractelement <2 x double> %i.iv, i64 1
  %i.kj = fsub double %i.ki, %i.kg
  %i.kk = load double, ptr %i.du, align 16, !tbaa !36 ; 2 uses
  %i.kl = fdiv double %i.kj, %i.kk                ; 4 uses
  %i.km = load double, ptr %i.da, align 16, !tbaa !36
  %i.kn = fmul double %i.je, %i.km
  %i.ko = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 2 uses
  %i.kp = load double, ptr %i.ko, align 8, !tbaa !36
  %i.kq = fmul double %i.jm, %i.kp
  %i.kr = fadd double %i.kn, %i.kq
  %i.ks = load double, ptr %i.do, align 16, !tbaa !36
  %i.kt = fmul double %i.jw, %i.ks
  %i.ku = getelementptr inbounds nuw i8, ptr %9, i64 200 ; 2 uses
  %i.kv = load double, ptr %i.ku, align 8, !tbaa !36
  %i.kw = fmul double %i.kl, %i.kv
  %i.kx = fadd double %i.kt, %i.kw
  %i.ky = fadd double %i.kr, %i.kx
  %i.kz = extractelement <2 x double> %i.iy, i64 0
  %i.la = fsub double %i.kz, %i.ky
  %i.lb = load double, ptr %i.ec, align 16, !tbaa !36 ; 2 uses
  %i.lc = fdiv double %i.la, %i.lb                ; 3 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  %i.le = load double, ptr %i.ld, align 8, !tbaa !36
  %i.lf = fmul double %i.je, %i.le
  %i.lg = load double, ptr %i.di, align 16, !tbaa !36
  %i.lh = fmul double %i.jm, %i.lg
  %i.li = fadd double %i.lf, %i.lh
  %i.lj = getelementptr inbounds nuw i8, ptr %9, i64 152 ; 2 uses
  %i.lk = load double, ptr %i.lj, align 8, !tbaa !36
  %i.ll = fmul double %i.jw, %i.lk
  %i.lm = load double, ptr %i.dw, align 16, !tbaa !36
  %i.ln = fmul double %i.kl, %i.lm
  %i.lo = getelementptr inbounds nuw i8, ptr %9, i64 264 ; 2 uses
  %i.lp = load double, ptr %i.lo, align 8, !tbaa !36
  %i.lq = fmul double %i.lc, %i.lp
  %i.lr = fadd double %i.ln, %i.lq
  %i.ls = fadd double %i.ll, %i.lr
  %i.lt = fadd double %i.li, %i.ls
  %i.lu = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.lv = extractelement <2 x double> %i.iy, i64 1
  %i.lw = fsub double %i.lv, %i.lt
  %i.lx = load double, ptr %i.ek, align 16, !tbaa !36 ; 2 uses
  %i.ly = fdiv double %i.lw, %i.lx                ; 2 uses
  %i.lz = load double, ptr %i.dc, align 16, !tbaa !36
  %i.ma = fmul double %i.je, %i.lz
  %i.mb = getelementptr inbounds nuw i8, ptr %9, i64 104
  %i.mc = load double, ptr %i.mb, align 8, !tbaa !36 ; 2 uses
  %i.md = fmul double %i.jm, %i.mc
  %i.me = load double, ptr %i.dq, align 16, !tbaa !36
  %i.mf = fmul double %i.jw, %i.me
  %i.mg = fadd double %i.md, %i.mf
  %i.mh = fadd double %i.ma, %i.mg
  %i.mi = getelementptr inbounds nuw i8, ptr %9, i64 216
  %i.mj = load double, ptr %i.mi, align 8, !tbaa !36 ; 2 uses
  %i.mk = fmul double %i.kl, %i.mj
  %i.ml = load double, ptr %i.ee, align 16, !tbaa !36
  %i.mm = fmul double %i.lc, %i.ml
  %i.mn = getelementptr inbounds nuw i8, ptr %9, i64 328
  %i.mo = load double, ptr %i.mn, align 8, !tbaa !36 ; 2 uses
  %i.mp = fmul double %i.ly, %i.mo
  %i.mq = fadd double %i.mm, %i.mp
  %i.mr = fadd double %i.mk, %i.mq
  %i.ms = fadd double %i.mh, %i.mr
  %i.mt = fsub double %i.jb, %i.ms
  %i.mu = load double, ptr %i.es, align 16, !tbaa !36 ; 2 uses
  %i.mv = fdiv double %i.mt, %i.mu
  %i.mw = fdiv double %i.mv, %i.mu                ; 2 uses
  store double %i.mw, ptr %i.iz, align 8, !tbaa !36
  %i.mx = fmul double %i.mo, %i.mw
  %i.my = fsub double %i.ly, %i.mx
  %i.mz = fdiv double %i.my, %i.lx
  store double %i.mz, ptr %i.lu, align 8, !tbaa !36
  %i.na = load <2 x double>, ptr %i.lo, align 8, !tbaa !20
  %i.nb = load <2 x double>, ptr %i.lu, align 8   ; 4 uses
  %i.nc = fmul <2 x double> %i.na, %i.nb          ; 2 uses
  %shift29 = shufflevector <2 x double> %i.nc, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop30 = fadd <2 x double> %i.nc, %shift29
  %i.nd = extractelement <2 x double> %foldExtExtBinop30, i64 0
  %i.ne = fsub double %i.lc, %i.nd
  %i.nf = fdiv double %i.ne, %i.lb
  store double %i.nf, ptr %i.iw, align 8, !tbaa !36
  %i.ng = load <2 x double>, ptr %i.ku, align 8, !tbaa !20
  %i.nh = load <2 x double>, ptr %i.iw, align 8, !tbaa !20 ; 2 uses
  %i.ni = fmul <2 x double> %i.ng, %i.nh          ; 2 uses
  %shift32 = shufflevector <2 x double> %i.ni, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop33 = fadd <2 x double> %i.ni, %shift32
  %i.nj = extractelement <2 x double> %foldExtExtBinop33, i64 0
  %i.nk = extractelement <2 x double> %i.nb, i64 1 ; 2 uses
  %i.nl = fmul double %i.mj, %i.nk
  %i.nm = fadd double %i.nl, %i.nj
  %i.nn = fsub double %i.kl, %i.nm
  %i.no = fdiv double %i.nn, %i.kk
  store double %i.no, ptr %i.kh, align 8, !tbaa !36
  %i.np = load <2 x double>, ptr %i.kc, align 8, !tbaa !20
  %i.nq = load <2 x double>, ptr %i.kh, align 8, !tbaa !20 ; 2 uses
  %i.nr = fmul <2 x double> %i.np, %i.nq
  %i.ns = load <2 x double>, ptr %i.lj, align 8, !tbaa !20
  %i.nt = fmul <2 x double> %i.nb, %i.ns
  %i.nu = fadd <2 x double> %i.nr, %i.nt          ; 2 uses
  %shift35 = shufflevector <2 x double> %i.nu, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop36 = fadd <2 x double> %i.nu, %shift35
  %i.nv = extractelement <2 x double> %foldExtExtBinop36, i64 0
  %i.nw = fsub double %i.jw, %i.nv
  %i.nx = fdiv double %i.nw, %i.jv
  store double %i.nx, ptr %i.it, align 8, !tbaa !36
  %i.ny = load <2 x double>, ptr %i.jp, align 8, !tbaa !20
  %i.nz = load <2 x double>, ptr %i.it, align 8, !tbaa !20
  %i.oa = fmul <2 x double> %i.ny, %i.nz
  %i.ob = load <2 x double>, ptr %i.ko, align 8, !tbaa !20
  %i.oc = fmul <2 x double> %i.nh, %i.ob
  %i.od = fadd <2 x double> %i.oa, %i.oc          ; 2 uses
  %shift38 = shufflevector <2 x double> %i.od, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop39 = fadd <2 x double> %i.od, %shift38
  %i.oe = extractelement <2 x double> %foldExtExtBinop39, i64 0
  %i.of = fmul double %i.mc, %i.nk
  %i.og = fadd double %i.of, %i.oe
  %i.oh = fsub double %i.jm, %i.og
  %i.oi = fdiv double %i.oh, %i.jl
  store double %i.oi, ptr %i.ji, align 8, !tbaa !36
  %i.oj = load <2 x double>, ptr %i.jf, align 8, !tbaa !20
  %i.ok = load <2 x double>, ptr %i.ji, align 8, !tbaa !20
  %i.ol = fmul <2 x double> %i.oj, %i.ok
  %i.om = load <2 x double>, ptr %i.jx, align 8, !tbaa !20
  %i.on = fmul <2 x double> %i.nq, %i.om
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEEEENS3_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_3MapIS5_Li0ENS_6StrideILi0ELi0EEEEEKNS7_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_identity_opIdEES5_EEKNSH_INS0_18scalar_constant_opIdEEKS5_EEEEEEEENS0_9assign_opIddEELi0EEELi0ELi1EE3runERSX_:.peel.next12
  %i.gf = getelementptr i8, ptr %i.b, i64 248
  %i.gg = getelementptr i8, ptr %i.f, i64 248
  %i.gh = load double, ptr %i.g, align 8, !tbaa !129
  %i.gi = fmul double %i.gh, 0.000000e+00
  %i.gj = load double, ptr %i.gg, align 8, !tbaa !36
  %i.gk = fadd double %i.gj, %i.gi
  store double %i.gk, ptr %i.gf, align 8, !tbaa !36
  %i.gl = getelementptr i8, ptr %i.b, i64 256
  %i.gm = getelementptr i8, ptr %i.f, i64 256
  %i.gn = load double, ptr %i.g, align 8, !tbaa !129
  %i.go = load double, ptr %i.gm, align 8, !tbaa !36
  %i.gp = fadd double %i.go, %i.gn
  store double %i.gp, ptr %i.gl, align 8, !tbaa !36
  %i.gq = getelementptr i8, ptr %i.b, i64 264
  %i.gr = getelementptr i8, ptr %i.f, i64 264
  %i.gs = load double, ptr %i.g, align 8, !tbaa !129
  %i.gt = fmul double %i.gs, 0.000000e+00
  %i.gu = load double, ptr %i.gr, align 8, !tbaa !36
  %i.gv = fadd double %i.gu, %i.gt
  store double %i.gv, ptr %i.gq, align 8, !tbaa !36
  %i.gw = getelementptr i8, ptr %i.b, i64 272
  %i.gx = getelementptr i8, ptr %i.f, i64 272
  %i.gy = load double, ptr %i.g, align 8, !tbaa !129
  %i.gz = fmul double %i.gy, 0.000000e+00
  %i.ha = load double, ptr %i.gx, align 8, !tbaa !36
  %i.hb = fadd double %i.ha, %i.gz
  store double %i.hb, ptr %i.gw, align 8, !tbaa !36
  %i.hc = getelementptr i8, ptr %i.b, i64 280
  %i.hd = getelementptr i8, ptr %i.f, i64 280
  %i.he = load double, ptr %i.g, align 8, !tbaa !129
  %i.hf = fmul double %i.he, 0.000000e+00
  %i.hg = load double, ptr %i.hd, align 8, !tbaa !36
  %i.hh = fadd double %i.hg, %i.hf
  store double %i.hh, ptr %i.hc, align 8, !tbaa !36
  %i.hi = getelementptr i8, ptr %i.b, i64 288
  %i.hj = getelementptr i8, ptr %i.f, i64 288
  %i.hk = load double, ptr %i.g, align 8, !tbaa !129
  %i.hl = fmul double %i.hk, 0.000000e+00
  %i.hm = load double, ptr %i.hj, align 8, !tbaa !36
  %i.hn = fadd double %i.hm, %i.hl
  store double %i.hn, ptr %i.hi, align 8, !tbaa !36
  %i.ho = getelementptr i8, ptr %i.b, i64 296
  %i.hp = getelementptr i8, ptr %i.f, i64 296
  %i.hq = load double, ptr %i.g, align 8, !tbaa !129
  %i.hr = fmul double %i.hq, 0.000000e+00
  %i.hs = load double, ptr %i.hp, align 8, !tbaa !36
  %i.ht = fadd double %i.hs, %i.hr
  store double %i.ht, ptr %i.ho, align 8, !tbaa !36
  %i.hu = getelementptr i8, ptr %i.b, i64 304
  %i.hv = getelementptr i8, ptr %i.f, i64 304
  %i.hw = load double, ptr %i.g, align 8, !tbaa !129
  %i.hx = fmul double %i.hw, 0.000000e+00
  %i.hy = load double, ptr %i.hv, align 8, !tbaa !36
  %i.hz = fadd double %i.hy, %i.hx
  store double %i.hz, ptr %i.hu, align 8, !tbaa !36
  %i.ia = getelementptr i8, ptr %i.b, i64 312
  %i.ib = getelementptr i8, ptr %i.f, i64 312
  %i.ic = load double, ptr %i.g, align 8, !tbaa !129
  %i.id = fmul double %i.ic, 0.000000e+00
  %i.ie = load double, ptr %i.ib, align 8, !tbaa !36
  %i.if = fadd double %i.ie, %i.id
  store double %i.if, ptr %i.ia, align 8, !tbaa !36
  %i.ig = getelementptr i8, ptr %i.b, i64 320
  %i.ih = getelementptr i8, ptr %i.f, i64 320
  %i.ii = load double, ptr %i.g, align 8, !tbaa !129
  %i.ij = load double, ptr %i.ih, align 8, !tbaa !36
  %i.ik = fadd double %i.ij, %i.ii
  store double %i.ik, ptr %i.ig, align 8, !tbaa !36
  %i.il = getelementptr i8, ptr %i.b, i64 328
  %i.im = getelementptr i8, ptr %i.f, i64 328
  %i.in = load double, ptr %i.g, align 8, !tbaa !129
  %i.io = fmul double %i.in, 0.000000e+00
  %i.ip = load double, ptr %i.im, align 8, !tbaa !36
  %i.iq = fadd double %i.ip, %i.io
  store double %i.iq, ptr %i.il, align 8, !tbaa !36
  %i.ir = getelementptr i8, ptr %i.b, i64 336
  %i.is = getelementptr i8, ptr %i.f, i64 336
  %i.it = load double, ptr %i.g, align 8, !tbaa !129
  %i.iu = fmul double %i.it, 0.000000e+00
  %i.iv = load double, ptr %i.is, align 8, !tbaa !36
  %i.iw = fadd double %i.iv, %i.iu
  store double %i.iw, ptr %i.ir, align 8, !tbaa !36
  %i.ix = getelementptr i8, ptr %i.b, i64 344
  %i.iy = getelementptr i8, ptr %i.f, i64 344
  %i.iz = load double, ptr %i.g, align 8, !tbaa !129
  %i.ja = fmul double %i.iz, 0.000000e+00
  %i.jb = load double, ptr %i.iy, align 8, !tbaa !36
  %i.jc = fadd double %i.jb, %i.ja
  store double %i.jc, ptr %i.ix, align 8, !tbaa !36
  %i.jd = getelementptr i8, ptr %i.b, i64 352
  %i.je = getelementptr i8, ptr %i.f, i64 352
  %i.jf = load double, ptr %i.g, align 8, !tbaa !129
  %i.jg = fmul double %i.jf, 0.000000e+00
  %i.jh = load double, ptr %i.je, align 8, !tbaa !36
  %i.ji = fadd double %i.jh, %i.jg
  store double %i.ji, ptr %i.jd, align 8, !tbaa !36
  %i.jj = getelementptr i8, ptr %i.b, i64 360
  %i.jk = getelementptr i8, ptr %i.f, i64 360
  %i.jl = load double, ptr %i.g, align 8, !tbaa !129
  %i.jm = fmul double %i.jl, 0.000000e+00
  %i.jn = load double, ptr %i.jk, align 8, !tbaa !36
  %i.jo = fadd double %i.jn, %i.jm
  store double %i.jo, ptr %i.jj, align 8, !tbaa !36
  %i.jp = getelementptr i8, ptr %i.b, i64 368
  %i.jq = getelementptr i8, ptr %i.f, i64 368
  %i.jr = load double, ptr %i.g, align 8, !tbaa !129
  %i.js = fmul double %i.jr, 0.000000e+00
  %i.jt = load double, ptr %i.jq, align 8, !tbaa !36
  %i.ju = fadd double %i.jt, %i.js
  store double %i.ju, ptr %i.jp, align 8, !tbaa !36
  %i.jv = getelementptr i8, ptr %i.b, i64 376
  %i.jw = getelementptr i8, ptr %i.f, i64 376
  %i.jx = load double, ptr %i.g, align 8, !tbaa !129
  %i.jy = fmul double %i.jx, 0.000000e+00
  %i.jz = load double, ptr %i.jw, align 8, !tbaa !36
  %i.ka = fadd double %i.jz, %i.jy
  store double %i.ka, ptr %i.jv, align 8, !tbaa !36
  %i.kb = getelementptr i8, ptr %i.b, i64 384
  %i.kc = getelementptr i8, ptr %i.f, i64 384
  %i.kd = load double, ptr %i.g, align 8, !tbaa !129
  %i.ke = load double, ptr %i.kc, align 8, !tbaa !36
  %i.kf = fadd double %i.ke, %i.kd
  store double %i.kf, ptr %i.kb, align 8, !tbaa !36
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN5Eigen8internal11llt_inplaceIdLi1EE9unblockedINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEEEElRT_(ptr noundef nonnull align 8 dereferenceable(392) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.Eigen::internal::evaluator.1847", align 8 ; 19 uses
  %2 = alloca %"struct.Eigen::internal::evaluator.1863", align 8 ; 4 uses
  %3 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.1871", align 8 ; 7 uses
  %4 = alloca %"struct.Eigen::internal::sub_assign_op", align 1 ; 3 uses
  %5 = alloca %"class.Eigen::Block.1779", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 48
  %.sroa.040.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0..sroa_idx3.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.6.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.6.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.6.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.6.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.6.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEdVERKd.exit
  %.03254 = phi i64 [ 0, %bb.a ], [ %i.p, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEdVERKd.exit ] ; 15 uses
  %i.m = add nsw i64 %.03254, -1                  ; 2 uses
  %i.n = add nsw i64 %.03254, -2
  %i.o = sub nuw nsw i64 6, %.03254               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.p = add nuw nsw i64 %.03254, 1               ; 5 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.p ; 3 uses
  %.idx.i.i.i = mul nuw nsw i64 %.03254, 56       ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx.i.i.i ; 3 uses
  store ptr %i.r, ptr %5, align 8, !tbaa !272
  store i64 %i.o, ptr %i.a, align 8, !tbaa !136
  store ptr %0, ptr %i.b, align 8, !tbaa !169
  store i64 %i.p, ptr %i.c, align 8, !tbaa !136
  store i64 %.03254, ptr %i.d, align 8, !tbaa !136
  store i64 7, ptr %i.e, align 8, !tbaa !881
  %i.s = getelementptr [8 x i8], ptr %0, i64 %.03254 ; 9 uses
  %i.t = getelementptr i8, ptr %i.s, i64 %.idx.i.i.i ; 2 uses
  %i.u = load double, ptr %i.t, align 8, !tbaa !36 ; 2 uses
  %.not55 = icmp eq i64 %.03254, 0
  br i1 %.not55, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = load double, ptr %i.s, align 8, !tbaa !36 ; 2 uses
  %i.w = fmul double %i.v, %i.v                   ; 3 uses
  %.not52 = icmp eq i64 %.03254, 1
  br i1 %.not52, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi1ELin1ELb0EEEE11squaredNormEv.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %xtraiter = and i64 %i.m, 3                     ; 3 uses
  %i.x = icmp ult i64 %i.n, 3
  br i1 %i.x, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter = and i64 %i.m, -4
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %.01725.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader.new ], [ %i.au, %.lr.ph.i.i.i.i ] ; 5 uses
  %.02324.i.i.i.i = phi double [ %i.w, %.lr.ph.i.i.i.i.preheader.new ], [ %i.at, %.lr.ph.i.i.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i.i ]
  %.idx.i.i.i.i.i.i.i = mul i64 %.01725.i.i.i.i, 56
  %i.y = getelementptr i8, ptr %i.s, i64 %.idx.i.i.i.i.i.i.i
  %i.z = load double, ptr %i.y, align 8, !tbaa !36 ; 2 uses
  %i.aa = fmul double %i.z, %i.z
  %i.ab = fadd double %.02324.i.i.i.i, %i.aa
  %i.ac = mul i64 %.01725.i.i.i.i, 56
  %i.ad = getelementptr i8, ptr %i.s, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 56
  %i.af = load double, ptr %i.ae, align 8, !tbaa !36 ; 2 uses
  %i.ag = fmul double %i.af, %i.af
  %i.ah = fadd double %i.ab, %i.ag
  %i.ai = mul i64 %.01725.i.i.i.i, 56
  %i.aj = getelementptr i8, ptr %i.s, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.aj, i64 112
  %i.al = load double, ptr %i.ak, align 8, !tbaa !36 ; 2 uses
  %i.am = fmul double %i.al, %i.al
  %i.an = fadd double %i.ah, %i.am
  %i.ao = mul i64 %.01725.i.i.i.i, 56
  %i.ap = getelementptr i8, ptr %i.s, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 168
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !36 ; 2 uses
  %i.as = fmul double %i.ar, %i.ar
  %i.at = fadd double %i.an, %i.as                ; 3 uses
  %i.au = add nuw nsw i64 %.01725.i.i.i.i, 4      ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi1ELin1ELb0EEEE11squaredNormEv.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !872

_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi1ELin1ELb0EEEE11squaredNormEv.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi1ELin1ELb0EEEE11squaredNormEv.exit, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi1ELin1ELb0EEEE11squaredNormEv.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.preheader
  %.01725.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader ], [ %i.au, %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi1ELin1ELb0EEEE11squaredNormEv.exit.loopexit.unr-lcssa ]
  %.02324.i.i.i.i.epil.init = phi double [ %i.w, %.lr.ph.i.i.i.i.preheader ], [ %i.at, %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi1ELin1ELb0EEEE11squaredNormEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod81 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod81)
  br label %.lr.ph.i.i.i.i.epil

.lr.ph.i.i.i.i.epil:                              ; preds = %.lr.ph.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader
  %.01725.i.i.i.i.epil = phi i64 [ %i.az, %.lr.ph.i.i.i.i.epil ], [ %.01725.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.epil.preheader ] ; 2 uses
  %.02324.i.i.i.i.epil = phi double [ %i.ay, %.lr.ph.i.i.i.i.epil ], [ %.02324.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.epil.preheader ]
  %.idx.i.i.i.i.i.i.i.epil = mul i64 %.01725.i.i.i.i.epil, 56
  %i.av = getelementptr i8, ptr %i.s, i64 %.idx.i.i.i.i.i.i.i.epil
  %i.aw = load double, ptr %i.av, align 8, !tbaa !36 ; 2 uses
  %i.ax = fmul double %i.aw, %i.aw
  %i.ay = fadd double %.02324.i.i.i.i.epil, %i.ax ; 2 uses
  %i.az = add nuw nsw i64 %.01725.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi1ELin1ELb0EEEE11squaredNormEv.exit, label %.lr.ph.i.i.i.i.epil, !llvm.loop !873

_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi1ELin1ELb0EEEE11squaredNormEv.exit: ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi1ELin1ELb0EEEE11squaredNormEv.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.epil, %bb.c
  %.0.i.i = phi double [ %i.w, %bb.c ], [ %i.at, %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi1ELin1ELb0EEEE11squaredNormEv.exit.loopexit.unr-lcssa ], [ %i.ay, %.lr.ph.i.i.i.i.epil ]
  %i.ba = fsub double %i.u, %.0.i.i
  br label %bb.d

bb.d:                                             ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi1ELin1ELb0EEEE11squaredNormEv.exit, %bb.b
  %.0 = phi double [ %i.ba, %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELi1ELin1ELb0EEEE11squaredNormEv.exit ], [ %i.u, %bb.b ] ; 2 uses
  %i.bb = fcmp ugt double %.0, 0.000000e+00
  br i1 %i.bb, label %bb.e, label %.loopexit.sink.split

bb.e:                                             ; preds = %bb.d
  %i.bc = call double @sqrt(double noundef %.0) #26 ; 6 uses
  store double %i.bc, ptr %i.t, align 8, !tbaa !36
  switch i64 %.03254, label %.thread [
    i64 6, label %.loopexit.sink.split
    i64 0, label %bb.f
  ]

.thread:                                          ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  store ptr %i.q, ptr %1, align 8
  store i64 %i.o, ptr %.sroa.040.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store i64 %.03254, ptr %.sroa.4.0..sroa_idx3.i.i.i.i, align 8
  store ptr %0, ptr %.sroa.5.0..sroa_idx5.i.i.i.i, align 8
  store i64 %i.p, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx, align 8
  store i64 0, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx, align 8
  store i64 7, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx, align 8
  store ptr %i.s, ptr %i.f, align 8
  store i64 %.03254, ptr %.sroa.6.sroa.5.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.6.sroa.6.0..sroa_idx, align 8
  store i64 %.03254, ptr %.sroa.6.sroa.7.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.6.sroa.8.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.6.sroa.9.0..sroa_idx, align 8
  store ptr %i.q, ptr %i.g, align 8, !tbaa !274
  store ptr %i.s, ptr %i.h, align 8, !tbaa !276
  store i64 %.03254, ptr %i.i, align 8, !tbaa !296
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store ptr %i.r, ptr %2, align 8, !tbaa !298
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr %2, ptr %3, align 8, !tbaa !882
  store ptr %1, ptr %i.j, align 8, !tbaa !883
  store ptr %4, ptr %i.k, align 8, !tbaa !230
  store ptr %5, ptr %i.l, align 8, !tbaa !884
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS3_INS_7ProductINS4_IS6_Lin1ELin1ELb0EEENS_9TransposeIKNS4_IS6_Li1ELin1ELb0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi3ELi0EE3runERSJ_(ptr noundef nonnull align 8 dereferenceable(32) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %.pre = load ptr, ptr %5, align 8, !tbaa !272
  %.pre57 = load i64, ptr %i.a, align 8, !tbaa !136
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread
  %i.bd = phi i64 [ 6, %bb.e ], [ %.pre57, %.thread ] ; 6 uses
  %i.be = phi ptr [ %i.r, %bb.e ], [ %.pre, %.thread ] ; 6 uses
  %i.bf = ptrtoint ptr %i.be to i64               ; 2 uses
  %i.bg = and i64 %i.bf, 7
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.bh = lshr exact i64 %i.bf, 3
  %i.bi = and i64 %i.bh, 1
  %i.bj = call i64 @llvm.smin.i64(i64 %i.bi, i64 %i.bd)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i64 [ %i.bj, %bb.g ], [ %i.bd, %bb.f ] ; 9 uses
  %i.bk = sub nsw i64 %i.bd, %.0.i.i.i.i.i.i.i    ; 2 uses
  %i.bl = sdiv i64 %i.bk, 2
  %i.bm = shl nsw i64 %i.bl, 1                    ; 2 uses
  %i.bn = add nsw i64 %i.bm, %.0.i.i.i.i.i.i.i    ; 5 uses
  %i.bo = icmp sgt i64 %.0.i.i.i.i.i.i.i, 0
  br i1 %i.bo, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi7ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %min.iters.check66 = icmp eq i64 %.0.i.i.i.i.i.i.i, 1
  br i1 %min.iters.check66, label %.lr.ph.i.i.i.i.i.i.i.preheader79, label %vector.ph67

vector.ph67:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec68 = and i64 %.0.i.i.i.i.i.i.i, 9223372036854775806 ; 3 uses
  %broadcast.splatinsert69 = insertelement <2 x double> poison, double %i.bc, i64 0
  %broadcast.splat70 = shufflevector <2 x double> %broadcast.splatinsert69, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body71

vector.body71:                                    ; preds = %vector.body71, %vector.ph67
  %index72 = phi i64 [ 0, %vector.ph67 ], [ %index.next74, %vector.body71 ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %index72 ; 2 uses
  %wide.load73 = load <2 x double>, ptr %i.bp, align 8, !tbaa !36
  %i.bq = fdiv <2 x double> %wide.load73, %broadcast.splat70
  store <2 x double> %i.bq, ptr %i.bp, align 8, !tbaa !36
  %index.next74 = add nuw i64 %index72, 2         ; 2 uses
  %i.br = icmp eq i64 %index.next74, %n.vec68
  br i1 %i.br, label %middle.block75, label %vector.body71, !llvm.loop !874

middle.block75:                                   ; preds = %vector.body71
  %cmp.n76 = icmp eq i64 %.0.i.i.i.i.i.i.i, %n.vec68
  br i1 %cmp.n76, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi7ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader79

.lr.ph.i.i.i.i.i.i.i.preheader79:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block75
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %n.vec68, %middle.block75 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader79, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.bv, %.lr.ph.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader79 ] ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.05.i.i.i.i.i.i.i ; 2 uses
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !36
  %i.bu = fdiv double %i.bt, %i.bc
  store double %i.bu, ptr %i.bs, align 8, !tbaa !36
  %i.bv = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.bv, %.0.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi7ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !875

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi7ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block75, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.bw = icmp sgt i64 %i.bk, 1
  br i1 %i.bw, label %.lr.ph.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi7ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.bx = insertelement <2 x double> poison, double %i.bc, i64 0
  %i.by = shufflevector <2 x double> %i.bx, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELi7ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.bz = icmp slt i64 %i.bn, %i.bd
  br i1 %i.bz, label %.lr.ph.i17.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEdVERKd.exit

.lr.ph.i17.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i
  %i.ca = add i64 %.0.i.i.i.i.i.i.i, %i.bm
  %i.cb = sub i64 %i.bd, %i.ca                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.cb, 2
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i.preheader78, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.cb, -2                      ; 3 uses
  %i.cc = add i64 %i.bn, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.bc, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cd = getelementptr [8 x i8], ptr %i.be, i64 %i.bn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ce = getelementptr [8 x i8], ptr %i.cd, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.ce, align 8, !tbaa !36
  %i.cf = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.cf, ptr %i.ce, align 8, !tbaa !36
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cg = icmp eq i64 %index.next, %n.vec
  br i1 %i.cg, label %middle.block, label %vector.body, !llvm.loop !876

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cb, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEdVERKd.exit, label %.lr.ph.i17.i.i.i.i.i.i.preheader78

.lr.ph.i17.i.i.i.i.i.i.preheader78:               ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.bn, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.cc, %middle.block ]
  br label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader78, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.ck, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader78 ] ; 2 uses
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.be, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !36
  %i.cj = fdiv double %i.ci, %i.bc
  store double %i.cj, ptr %i.ch, align 8, !tbaa !36
  %i.ck = add nsw i64 %.05.i18.i.i.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i = icmp eq i64 %i.ck, %i.bd
  br i1 %exitcond.not.i19.i.i.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEdVERKd.exit, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !877

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %.021.i.i.i.i.i.i = phi i64 [ %i.co, %.lr.ph.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i ] ; 2 uses
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.be, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.cm = load <2 x double>, ptr %i.cl, align 16, !tbaa !20
  %i.cn = fdiv <2 x double> %i.cm, %i.by
  store <2 x double> %i.cn, ptr %i.cl, align 16, !tbaa !20
  %i.co = add nsw i64 %.021.i.i.i.i.i.i, 2        ; 2 uses
  %i.cp = icmp slt i64 %i.co, %i.bn
  br i1 %i.cp, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !878

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEdVERKd.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %exitcond.not = icmp eq i64 %i.p, 7
  br i1 %exitcond.not, label %.loopexit, label %bb.b

.loopexit.sink.split:                             ; preds = %bb.e, %bb.d
  %spec.select.ph = phi i64 [ %.03254, %bb.d ], [ -1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEdVERKd.exit, %.loopexit.sink.split
  %spec.select = phi i64 [ %spec.select.ph, %.loopexit.sink.split ], [ -1, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi7ELi7ELi0ELi7ELi7EEELin1ELi1ELb0EEEEdVERKd.exit ]
end_hunk_1
