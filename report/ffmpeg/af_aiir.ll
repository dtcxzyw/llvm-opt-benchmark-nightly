inline.NumInlined: 30
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 47
begin_hunk_0_@convert_serial2parallel:bb.a
  %i.ea = load double, ptr %gep204.i, align 8, !tbaa !77
  %i.eb = mul nuw nsw i64 %indvars.iv151.i, %i.bk
  %gep206.i = getelementptr [8 x i8], ptr %i.dw, i64 %i.eb
  %i.ec = load double, ptr %gep206.i, align 8, !tbaa !77
  %i.ed = tail call nsz double @llvm.fmuladd.f64(double %i.ea, double %i.ec, double %.1117.us.i)
  %indvars.iv.next152.i = or disjoint i64 %indvars.iv151.i, 1 ; 2 uses
  %gep204.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep203.i, i64 %indvars.iv.next152.i
  %i.ee = load double, ptr %gep204.i.1, align 8, !tbaa !77
  %i.ef = mul nuw nsw i64 %indvars.iv.next152.i, %i.bk
  %gep206.i.1 = getelementptr [8 x i8], ptr %i.dw, i64 %i.ef
  %i.eg = load double, ptr %gep206.i.1, align 8, !tbaa !77
  %i.eh = tail call nsz double @llvm.fmuladd.f64(double %i.ee, double %i.eg, double %i.ed)
  %indvars.iv.next152.i.1 = or disjoint i64 %indvars.iv151.i, 2 ; 2 uses
  %gep204.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep203.i, i64 %indvars.iv.next152.i.1
  %i.ei = load double, ptr %gep204.i.2, align 8, !tbaa !77
  %i.ej = mul nuw nsw i64 %indvars.iv.next152.i.1, %i.bk
  %gep206.i.2 = getelementptr [8 x i8], ptr %i.dw, i64 %i.ej
  %i.ek = load double, ptr %gep206.i.2, align 8, !tbaa !77
  %i.el = tail call nsz double @llvm.fmuladd.f64(double %i.ei, double %i.ek, double %i.eh)
  %indvars.iv.next152.i.2 = or disjoint i64 %indvars.iv151.i, 3 ; 2 uses
  %gep204.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep203.i, i64 %indvars.iv.next152.i.2
  %i.em = load double, ptr %gep204.i.3, align 8, !tbaa !77
  %i.en = mul nuw nsw i64 %indvars.iv.next152.i.2, %i.bk
  %gep206.i.3 = getelementptr [8 x i8], ptr %i.dw, i64 %i.en
  %i.eo = load double, ptr %gep206.i.3, align 8, !tbaa !77
  %i.ep = tail call nsz double @llvm.fmuladd.f64(double %i.em, double %i.eo, double %i.el) ; 3 uses
  %indvars.iv.next152.i.3 = add nuw nsw i64 %indvars.iv151.i, 4 ; 2 uses
  %niter101.next.3 = add nuw i64 %niter101, 4     ; 2 uses
  %niter101.ncmp.3 = icmp eq i64 %niter101.next.3, %unroll_iter100
  br i1 %niter101.ncmp.3, label %._crit_edge.us120.i.unr-lcssa, label %.preheader111.us.i.new, !llvm.loop !201

._crit_edge.us120.i.unr-lcssa:                    ; preds = %.preheader111.us.i.new
  br i1 %lcmp.mod97.not, label %._crit_edge.us120.i, label %.epil.preheader94

.epil.preheader94:                                ; preds = %._crit_edge.us120.i.unr-lcssa, %.preheader111.us.i
  %indvars.iv151.i.epil.init = phi i64 [ 0, %.preheader111.us.i ], [ %indvars.iv.next152.i.3, %._crit_edge.us120.i.unr-lcssa ]
  %.1117.us.i.epil.init = phi double [ 0.000000e+00, %.preheader111.us.i ], [ %i.ep, %._crit_edge.us120.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod99)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader94
  %indvars.iv151.i.epil = phi i64 [ %indvars.iv151.i.epil.init, %.epil.preheader94 ], [ %indvars.iv.next152.i.epil, %bb.e ] ; 3 uses
  %.1117.us.i.epil = phi double [ %.1117.us.i.epil.init, %.epil.preheader94 ], [ %i.et, %bb.e ]
  %epil.iter96 = phi i64 [ 0, %.epil.preheader94 ], [ %epil.iter96.next, %bb.e ]
  %gep204.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep203.i, i64 %indvars.iv151.i.epil
  %i.eq = load double, ptr %gep204.i.epil, align 8, !tbaa !77
  %i.er = mul nuw nsw i64 %indvars.iv151.i.epil, %i.bk
  %gep206.i.epil = getelementptr [8 x i8], ptr %i.dw, i64 %i.er
  %i.es = load double, ptr %gep206.i.epil, align 8, !tbaa !77
  %i.et = tail call nsz double @llvm.fmuladd.f64(double %i.eq, double %i.es, double %.1117.us.i.epil) ; 2 uses
  %indvars.iv.next152.i.epil = add nuw nsw i64 %indvars.iv151.i.epil, 1
  %epil.iter96.next = add i64 %epil.iter96, 1     ; 2 uses
  %epil.iter96.cmp.not = icmp eq i64 %epil.iter96.next, %xtraiter95
  br i1 %epil.iter96.cmp.not, label %._crit_edge.us120.i, label %bb.e, !llvm.loop !202

._crit_edge.us120.i:                              ; preds = %bb.e, %._crit_edge.us120.i.unr-lcssa
  %.lcssa81 = phi double [ %i.ep, %._crit_edge.us120.i.unr-lcssa ], [ %i.et, %bb.e ]
  %i.eu = load double, ptr %i.dx, align 8, !tbaa !77
  %i.ev = fdiv nsz double 1.000000e+00, %i.eu
  %gep208.i = getelementptr [8 x i8], ptr %invariant.gep207.i, i64 %indvars.iv158.i
  %i.ew = load double, ptr %gep208.i, align 8, !tbaa !77
  %i.ex = fsub nsz double %i.ew, %.lcssa81
  %i.ey = fmul nsz double %i.ev, %i.ex
  %gep210.i = getelementptr [8 x i8], ptr %i.dw, i64 %i.dz
  store double %i.ey, ptr %gep210.i, align 8, !tbaa !77
  %indvars.iv.next159.i = add nuw nsw i64 %indvars.iv158.i, 1 ; 2 uses
  %exitcond162.not.i = icmp eq i64 %indvars.iv.next159.i, %i.bk
  br i1 %exitcond162.not.i, label %.loopexit.i, label %.preheader111.us.i, !llvm.loop !203

.preheader111.i:                                  ; preds = %.preheader111.i.prol.loopexit, %.preheader111.i
  %indvars.iv163.i = phi i64 [ %indvars.iv.next164.i.1, %.preheader111.i ], [ %indvars.iv163.i.unr, %.preheader111.i.prol.loopexit ] ; 4 uses
  %i.ez = load double, ptr %i.dk, align 8, !tbaa !77
  %i.fa = fdiv nsz double 1.000000e+00, %i.ez
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv163.i
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !77
  %i.fd = fmul nsz double %i.fa, %i.fc
  %i.fe = mul nuw nsw i64 %indvars.iv163.i, %i.bk
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.fe
  store double %i.fd, ptr %i.ff, align 8, !tbaa !77
  %indvars.iv.next164.i = add nuw nsw i64 %indvars.iv163.i, 1 ; 2 uses
  %i.fg = load double, ptr %i.dk, align 8, !tbaa !77
  %i.fh = fdiv nsz double 1.000000e+00, %i.fg
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next164.i
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !77
  %i.fk = fmul nsz double %i.fh, %i.fj
  %i.fl = mul nuw nsw i64 %indvars.iv.next164.i, %i.bk
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.fl
  store double %i.fk, ptr %i.fm, align 8, !tbaa !77
  %indvars.iv.next164.i.1 = add nuw nsw i64 %indvars.iv163.i, 2 ; 2 uses
  %exitcond167.not.i.1 = icmp eq i64 %indvars.iv.next164.i.1, %i.bk
  br i1 %exitcond167.not.i.1, label %.loopexit.i, label %.preheader111.i, !llvm.loop !203

.preheader109.i:                                  ; preds = %.loopexit.i, %._crit_edge.i
  %indvars.iv175.i = phi i64 [ %indvars.iv.next176.i, %._crit_edge.i ], [ 0, %.loopexit.i ] ; 8 uses
  %.not136.i = icmp eq i64 %indvars.iv175.i, 0
  br i1 %.not136.i, label %._crit_edge.i, label %.lr.ph.i115

.lr.ph.i115:                                      ; preds = %.preheader109.i
  %i.fn = mul nuw nsw i64 %indvars.iv175.i, %i.bk
  %invariant.gep211.i = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.fn ; 5 uses
  %xtraiter111 = and i64 %indvars.iv175.i, 3      ; 3 uses
  %i.fo = icmp samesign ult i64 %indvars.iv175.i, 4
  br i1 %i.fo, label %.epil.preheader110, label %.lr.ph.i115.new

.lr.ph.i115.new:                                  ; preds = %.lr.ph.i115
  %unroll_iter116 = and i64 %indvars.iv175.i, 9223372036854775804
  br label %bb.g

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.g
  %lcmp.mod113.not = icmp eq i64 %xtraiter111, 0
  br i1 %lcmp.mod113.not, label %._crit_edge.i, label %.epil.preheader110

.epil.preheader110:                               ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i115
  %indvars.iv171.i.epil.init = phi i64 [ 0, %.lr.ph.i115 ], [ %indvars.iv.next172.i.3, %._crit_edge.i.loopexit.unr-lcssa ]
  %.2123.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i115 ], [ %i.gm, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod115 = icmp ne i64 %xtraiter111, 0
  tail call void @llvm.assume(i1 %lcmp.mod115)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader110
  %indvars.iv171.i.epil = phi i64 [ %indvars.iv171.i.epil.init, %.epil.preheader110 ], [ %indvars.iv.next172.i.epil, %bb.f ] ; 3 uses
  %.2123.i.epil = phi double [ %.2123.i.epil.init, %.epil.preheader110 ], [ %i.fs, %bb.f ]
  %epil.iter112 = phi i64 [ 0, %.epil.preheader110 ], [ %epil.iter112.next, %bb.f ]
  %gep212.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep211.i, i64 %indvars.iv171.i.epil
  %i.fp = load double, ptr %gep212.i.epil, align 8, !tbaa !77
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv171.i.epil
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !77
  %i.fs = tail call nsz double @llvm.fmuladd.f64(double %i.fp, double %i.fr, double %.2123.i.epil) ; 2 uses
  %indvars.iv.next172.i.epil = add nuw nsw i64 %indvars.iv171.i.epil, 1
  %epil.iter112.next = add i64 %epil.iter112, 1   ; 2 uses
  %epil.iter112.cmp.not = icmp eq i64 %epil.iter112.next, %xtraiter111
  br i1 %epil.iter112.cmp.not, label %._crit_edge.i, label %bb.f, !llvm.loop !204

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %bb.f, %.preheader109.i
  %.2.lcssa.i = phi double [ 0.000000e+00, %.preheader109.i ], [ %i.gm, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.fs, %bb.f ]
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv175.i
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !77
  %i.fv = fsub nsz double %i.fu, %.2.lcssa.i
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv175.i
  store double %i.fv, ptr %i.fw, align 8, !tbaa !77
  %indvars.iv.next176.i = add nuw nsw i64 %indvars.iv175.i, 1 ; 2 uses
  %exitcond179.not.i = icmp eq i64 %indvars.iv.next176.i, %i.bk
  br i1 %exitcond179.not.i, label %.preheader.i, label %.preheader109.i, !llvm.loop !205

bb.g:                                             ; preds = %bb.g, %.lr.ph.i115.new
  %indvars.iv171.i = phi i64 [ 0, %.lr.ph.i115.new ], [ %indvars.iv.next172.i.3, %bb.g ] ; 6 uses
  %.2123.i = phi double [ 0.000000e+00, %.lr.ph.i115.new ], [ %i.gm, %bb.g ]
  %niter117 = phi i64 [ 0, %.lr.ph.i115.new ], [ %niter117.next.3, %bb.g ]
  %gep212.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep211.i, i64 %indvars.iv171.i
  %i.fx = load double, ptr %gep212.i, align 8, !tbaa !77
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv171.i
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !77
  %i.ga = tail call nsz double @llvm.fmuladd.f64(double %i.fx, double %i.fz, double %.2123.i)
  %indvars.iv.next172.i = or disjoint i64 %indvars.iv171.i, 1 ; 2 uses
  %gep212.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep211.i, i64 %indvars.iv.next172.i
  %i.gb = load double, ptr %gep212.i.1, align 8, !tbaa !77
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv.next172.i
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !77
  %i.ge = tail call nsz double @llvm.fmuladd.f64(double %i.gb, double %i.gd, double %i.ga)
  %indvars.iv.next172.i.1 = or disjoint i64 %indvars.iv171.i, 2 ; 2 uses
  %gep212.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep211.i, i64 %indvars.iv.next172.i.1
  %i.gf = load double, ptr %gep212.i.2, align 8, !tbaa !77
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv.next172.i.1
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !77
  %i.gi = tail call nsz double @llvm.fmuladd.f64(double %i.gf, double %i.gh, double %i.ge)
  %indvars.iv.next172.i.2 = or disjoint i64 %indvars.iv171.i, 3 ; 2 uses
  %gep212.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep211.i, i64 %indvars.iv.next172.i.2
  %i.gj = load double, ptr %gep212.i.3, align 8, !tbaa !77
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv.next172.i.2
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !77
  %i.gm = tail call nsz double @llvm.fmuladd.f64(double %i.gj, double %i.gl, double %i.gi) ; 3 uses
  %indvars.iv.next172.i.3 = add nuw nsw i64 %indvars.iv171.i, 4 ; 2 uses
  %niter117.next.3 = add i64 %niter117, 4         ; 2 uses
  %niter117.ncmp.3 = icmp eq i64 %niter117.next.3, %unroll_iter116
  br i1 %niter117.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.g, !llvm.loop !206

.preheader.i:                                     ; preds = %._crit_edge.i, %._crit_edge129.i
  %indvar118 = phi i64 [ %indvar.next119, %._crit_edge129.i ], [ 0, %._crit_edge.i ] ; 3 uses
  %indvars.iv180.i = phi i64 [ %indvars.iv.next181.i, %._crit_edge129.i ], [ %i.bk, %._crit_edge.i ] ; 6 uses
  %i.gn = add i64 %indvar118, -1
  %indvars.iv.next181.i = add nsw i64 %indvars.iv180.i, -1 ; 4 uses
  %i.go = icmp slt i64 %indvars.iv180.i, %i.bk
  br i1 %i.go, label %.lr.ph128.i, label %._crit_edge129.i

.lr.ph128.i:                                      ; preds = %.preheader.i
  %i.gp = mul nsw i64 %indvars.iv.next181.i, %i.bk
  %invariant.gep213.i = getelementptr [8 x i8], ptr %i.ab, i64 %i.gp ; 5 uses
  %xtraiter120 = and i64 %indvar118, 3            ; 2 uses
  %lcmp.mod121.not = icmp eq i64 %xtraiter120, 0
  br i1 %lcmp.mod121.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph128.i, %.prol.preheader
  %indvars.iv182.i.prol = phi i64 [ %indvars.iv.next183.i.prol, %.prol.preheader ], [ %indvars.iv180.i, %.lr.ph128.i ] ; 3 uses
  %.3126.i.prol = phi double [ %i.gt, %.prol.preheader ], [ 0.000000e+00, %.lr.ph128.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph128.i ]
  %gep214.i.prol = getelementptr [8 x i8], ptr %invariant.gep213.i, i64 %indvars.iv182.i.prol
  %i.gq = load double, ptr %gep214.i.prol, align 8, !tbaa !77
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv182.i.prol
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !77
  %i.gt = tail call nsz double @llvm.fmuladd.f64(double %i.gq, double %i.gs, double %.3126.i.prol) ; 3 uses
  %indvars.iv.next183.i.prol = add nsw i64 %indvars.iv182.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter120
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !207

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph128.i
  %.lcssa83.unr = phi double [ poison, %.lr.ph128.i ], [ %i.gt, %.prol.preheader ]
  %indvars.iv182.i.unr = phi i64 [ %indvars.iv180.i, %.lr.ph128.i ], [ %indvars.iv.next183.i.prol, %.prol.preheader ]
  %.3126.i.unr = phi double [ 0.000000e+00, %.lr.ph128.i ], [ %i.gt, %.prol.preheader ]
  %i.gu = icmp ult i64 %i.gn, 3
  br i1 %i.gu, label %._crit_edge129.i, label %.lr.ph128.i.new

._crit_edge129.i:                                 ; preds = %.prol.loopexit, %.lr.ph128.i.new, %.preheader.i
  %.3.lcssa.i = phi double [ 0.000000e+00, %.preheader.i ], [ %.lcssa83.unr, %.prol.loopexit ], [ %i.hw, %.lr.ph128.i.new ]
  %i.gv = trunc nuw nsw i64 %indvars.iv.next181.i to i32
  %i.gw = mul i32 %i.j, %i.gv
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.gx
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !77
  %i.ha = fdiv nsz double 1.000000e+00, %i.gz
  %i.hb = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv180.i
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !77
  %i.hd = fsub nsz double %i.hc, %.3.lcssa.i
  %i.he = fmul nsz double %i.ha, %i.hd
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next181.i
  store double %i.he, ptr %i.hf, align 8, !tbaa !77
  %i.hg = icmp samesign ugt i64 %indvars.iv180.i, 1
  %indvar.next119 = add i64 %indvar118, 1
  br i1 %i.hg, label %.preheader.i, label %solve.exit, !llvm.loop !208

.lr.ph128.i.new:                                  ; preds = %.prol.loopexit, %.lr.ph128.i.new
  %indvars.iv182.i = phi i64 [ %indvars.iv.next183.i.3, %.lr.ph128.i.new ], [ %indvars.iv182.i.unr, %.prol.loopexit ] ; 6 uses
  %.3126.i = phi double [ %i.hw, %.lr.ph128.i.new ], [ %.3126.i.unr, %.prol.loopexit ]
  %gep214.i = getelementptr [8 x i8], ptr %invariant.gep213.i, i64 %indvars.iv182.i
  %i.hh = load double, ptr %gep214.i, align 8, !tbaa !77
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv182.i
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !77
  %i.hk = tail call nsz double @llvm.fmuladd.f64(double %i.hh, double %i.hj, double %.3126.i)
  %indvars.iv.next183.i = add nsw i64 %indvars.iv182.i, 1 ; 2 uses
  %gep214.i.1 = getelementptr [8 x i8], ptr %invariant.gep213.i, i64 %indvars.iv.next183.i
  %i.hl = load double, ptr %gep214.i.1, align 8, !tbaa !77
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next183.i
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !77
  %i.ho = tail call nsz double @llvm.fmuladd.f64(double %i.hl, double %i.hn, double %i.hk)
  %indvars.iv.next183.i.1 = add nsw i64 %indvars.iv182.i, 2 ; 2 uses
  %gep214.i.2 = getelementptr [8 x i8], ptr %invariant.gep213.i, i64 %indvars.iv.next183.i.1
  %i.hp = load double, ptr %gep214.i.2, align 8, !tbaa !77
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next183.i.1
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !77
  %i.hs = tail call nsz double @llvm.fmuladd.f64(double %i.hp, double %i.hr, double %i.ho)
  %indvars.iv.next183.i.2 = add nsw i64 %indvars.iv182.i, 3 ; 2 uses
  %gep214.i.3 = getelementptr [8 x i8], ptr %invariant.gep213.i, i64 %indvars.iv.next183.i.2
  %i.ht = load double, ptr %gep214.i.3, align 8, !tbaa !77
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next183.i.2
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !77
  %i.hw = tail call nsz double @llvm.fmuladd.f64(double %i.ht, double %i.hv, double %i.hs) ; 2 uses
  %indvars.iv.next183.i.3 = add nsw i64 %indvars.iv182.i, 4 ; 2 uses
  %exitcond185.not.i.3 = icmp eq i64 %indvars.iv.next183.i.3, %i.bk
  br i1 %exitcond185.not.i.3, label %._crit_edge129.i, label %.lr.ph128.i.new, !llvm.loop !209

solve.exit.thread:                                ; preds = %bb.c
  %i.hx = load double, ptr %i.m, align 8, !tbaa !77
  %i.hy = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store double %i.hx, ptr %i.hy, align 8, !tbaa !210
  br label %._crit_edge14

solve.exit:                                       ; preds = %._crit_edge129.i
  %i.hz = load double, ptr %i.m, align 8, !tbaa !77
  %i.ia = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store double %i.hz, ptr %i.ia, align 8, !tbaa !210
  %i.ib = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !187 ; 3 uses
  %xtraiter123 = and i64 %wide.trip.count, 1
  %i.id = icmp slt i32 %., 3
  br i1 %i.id, label %.epil.preheader122, label %solve.exit.new

solve.exit.new:                                   ; preds = %solve.exit
  %unroll_iter127 = and i64 %wide.trip.count, 1073741822
  br label %bb.h

.lr.ph.i119.preheader:                            ; preds = %biquad_process.exit125, %.lr.ph11
  %indvars.iv32 = phi i64 [ 0, %.lr.ph11 ], [ %indvars.iv.next33, %biquad_process.exit125 ] ; 3 uses
  %i.ie = load ptr, ptr %i.af, align 8, !tbaa !187
  %i.if = getelementptr inbounds nuw [64 x i8], ptr %i.ie, i64 %indvars.iv32
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.ih = load <2 x double>, ptr %i.ig, align 8, !tbaa !77
  %i.ii = fneg nsz <2 x double> %i.ih             ; 2 uses
  %i.ij = extractelement <2 x double> %i.ii, i64 1
  %i.ik = shufflevector <2 x double> %i.ii, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  br label %.lr.ph.i119

.lr.ph.i119:                                      ; preds = %.lr.ph.i119.preheader, %.lr.ph.i119
  %indvars.iv.i120 = phi i64 [ %indvars.iv.next.i123, %.lr.ph.i119 ], [ 0, %.lr.ph.i119.preheader ] ; 3 uses
  %i.il = phi <2 x double> [ %i.iy, %.lr.ph.i119 ], [ zeroinitializer, %.lr.ph.i119.preheader ] ; 2 uses
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.i120
  %i.in = load double, ptr %i.im, align 8, !tbaa !77 ; 3 uses
  %i.io = extractelement <2 x double> %i.il, i64 1
  %i.ip = fadd nsz double %i.io, %i.in            ; 3 uses
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i120
  store double %i.ip, ptr %i.iq, align 8, !tbaa !77
  %i.ir = fmul nsz double %i.ip, %i.ij
  %i.is = extractelement <2 x double> %i.il, i64 0
  %i.it = tail call nsz double @llvm.fmuladd.f64(double %i.in, double 0.000000e+00, double %i.is)
  %i.iu = insertelement <2 x double> %i.ik, double %i.in, i64 0
  %i.iv = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.ip, i64 1
  %i.iw = insertelement <2 x double> poison, double %i.ir, i64 0
  %i.ix = insertelement <2 x double> %i.iw, double %i.it, i64 1
  %i.iy = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iu, <2 x double> %i.iv, <2 x double> %i.ix)
  %indvars.iv.next.i123 = add nuw nsw i64 %indvars.iv.i120, 1 ; 2 uses
  %exitcond.not.i124 = icmp eq i64 %indvars.iv.next.i123, %wide.trip.count.i118
  br i1 %exitcond.not.i124, label %biquad_process.exit125, label %.lr.ph.i119, !llvm.loop !194

biquad_process.exit125:                           ; preds = %.lr.ph.i119
  %i.iz = trunc nuw nsw i64 %indvars.iv32 to i32
  %i.ja = mul i32 %i.y, %i.iz
  %i.jb = sext i32 %i.ja to i64
  %i.jc = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.jb ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.jc, ptr nonnull align 8 %i.n, i64 %i.ag, i1 false)
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %i.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.jd, ptr noundef nonnull align 8 dereferenceable(1) %i.n, i64 %i.aj, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.n, i8 0, i64 %i.ak, i1 false)
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1 ; 2 uses
  %exitcond37.not = icmp eq i64 %indvars.iv.next33, %wide.trip.count36
  br i1 %exitcond37.not, label %._crit_edge, label %.lr.ph.i119.preheader, !llvm.loop !211

bb.h:                                             ; preds = %bb.h, %solve.exit.new
  %indvars.iv39 = phi i64 [ 0, %solve.exit.new ], [ %indvars.iv.next40.1, %bb.h ] ; 4 uses
  %niter128 = phi i64 [ 0, %solve.exit.new ], [ %niter128.next.1, %bb.h ]
  %i.je = getelementptr inbounds nuw [64 x i8], ptr %i.ic, i64 %indvars.iv39 ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 24
  store double 0.000000e+00, ptr %i.jf, align 8, !tbaa !77
  %.idx = shl nuw nsw i64 %indvars.iv39, 4
  %i.jg = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx ; 2 uses
  %i.jh = load double, ptr %i.jg, align 8, !tbaa !77
  %i.ji = getelementptr inbounds nuw i8, ptr %i.je, i64 32
  store double %i.jh, ptr %i.ji, align 8, !tbaa !77
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.jk = load double, ptr %i.jj, align 8, !tbaa !77
  %i.jl = getelementptr inbounds nuw i8, ptr %i.je, i64 40
  store double %i.jk, ptr %i.jl, align 8, !tbaa !77
  %indvars.iv.next40 = or disjoint i64 %indvars.iv39, 1 ; 2 uses
  %i.jm = getelementptr inbounds nuw [64 x i8], ptr %i.ic, i64 %indvars.iv.next40 ; 3 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 24
  store double 0.000000e+00, ptr %i.jn, align 8, !tbaa !77
  %.idx.1 = shl nuw nsw i64 %indvars.iv.next40, 4
  %i.jo = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx.1 ; 2 uses
  %i.jp = load double, ptr %i.jo, align 8, !tbaa !77
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jm, i64 32
  store double %i.jp, ptr %i.jq, align 8, !tbaa !77
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %i.js = load double, ptr %i.jr, align 8, !tbaa !77
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jm, i64 40
  store double %i.js, ptr %i.jt, align 8, !tbaa !77
  %indvars.iv.next40.1 = add nuw nsw i64 %indvars.iv39, 2 ; 2 uses
  %niter128.next.1 = add i64 %niter128, 2         ; 2 uses
  %niter128.ncmp.1 = icmp eq i64 %niter128.next.1, %unroll_iter127
  br i1 %niter128.ncmp.1, label %._crit_edge14.loopexit.unr-lcssa, label %bb.h, !llvm.loop !212

._crit_edge14.loopexit.unr-lcssa:                 ; preds = %bb.h
  %lcmp.mod125.not = icmp eq i64 %xtraiter123, 0
  br i1 %lcmp.mod125.not, label %._crit_edge14, label %.epil.preheader122

.epil.preheader122:                               ; preds = %._crit_edge14.loopexit.unr-lcssa, %solve.exit
  %indvars.iv39.epil.init = phi i64 [ 0, %solve.exit ], [ %indvars.iv.next40.1, %._crit_edge14.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod126 = trunc i32 %smax to i1
  tail call void @llvm.assume(i1 %lcmp.mod126)
  %i.ju = getelementptr inbounds nuw [64 x i8], ptr %i.ic, i64 %indvars.iv39.epil.init ; 3 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 24
  store double 0.000000e+00, ptr %i.jv, align 8, !tbaa !77
  %.idx.epil = shl nuw nsw i64 %indvars.iv39.epil.init, 4
  %i.jw = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx.epil ; 2 uses
  %i.jx = load double, ptr %i.jw, align 8, !tbaa !77
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ju, i64 32
  store double %i.jx, ptr %i.jy, align 8, !tbaa !77
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.ka = load double, ptr %i.jz, align 8, !tbaa !77
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ju, i64 40
  store double %i.ka, ptr %i.kb, align 8, !tbaa !77
  br label %._crit_edge14

._crit_edge14:                                    ; preds = %.epil.preheader122, %._crit_edge14.loopexit.unr-lcssa, %solve.exit.thread
  tail call void @av_free(ptr noundef nonnull %i.l) #14
  tail call void @av_free(ptr noundef nonnull %i.m) #14
  tail call void @av_free(ptr noundef nonnull %i.n) #14
  tail call void @av_free(ptr noundef nonnull %i.q) #14
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1 ; 2 uses
  %exitcond49.not = icmp eq i64 %indvars.iv.next46, %wide.trip.count48
  br i1 %exitcond49.not, label %.loopexit, label %bb.b, !llvm.loop !213

.loopexit:                                        ; preds = %._crit_edge14, %bb.a, %.thread
  %spec.select = phi i32 [ -12, %.thread ], [ 0, %bb.a ], [ 0, %._crit_edge14 ]
  ret i32 %spec.select
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @iir_ch_parallel_dblp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 %3) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load double, ptr %i.c, align 8, !tbaa !214
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.f = load double, ptr %i.e, align 8, !tbaa !215 ; 5 uses
  %i.g = fsub nsz double 1.000000e+00, %i.f       ; 4 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !59     ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !61
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !216
  %i.m = sext i32 %2 to i64                       ; 3 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !30   ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !216
  %i.r = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.m
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !30   ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !34
  %i.v = getelementptr inbounds [72 x i8], ptr %i.u, i64 %i.m ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load double, ptr %i.w, align 8, !tbaa !210 ; 4 uses
  %i.y = load i32, ptr %i.v, align 8, !tbaa !31
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !31
  %. = tail call i32 @llvm.smax.i32(i32 %i.y, i32 %i.aa) ; 2 uses
  %i.ab = icmp sgt i32 %., 0
  br i1 %i.ab, label %.lr.ph93, label %..preheader_crit_edge

..preheader_crit_edge:                            ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !53
  br label %.preheader

.lr.ph93:                                         ; preds = %bb.a
  %i.ac = add nuw nsw i32 %., 1
  %i.ad = lshr i32 %i.ac, 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.af = load double, ptr %i.ae, align 8, !tbaa !108
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !217
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !187
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !53 ; 3 uses
  %i.am = icmp sgt i32 %i.al, 0
  %i.an = fmul nsz double %i.ah, %i.af
  %smax106 = tail call i32 @llvm.smax.i32(i32 %i.ad, i32 1)
  %wide.trip.count107 = zext nneg i32 %smax106 to i64
  br i1 %i.am, label %.lr.ph.us.preheader, label %._crit_edge

.lr.ph.us.preheader:                              ; preds = %.lr.ph93
  %wide.trip.count101 = zext nneg i32 %i.al to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv103 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next104, %._crit_edge.us ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [64 x i8], ptr %i.aj, i64 %indvars.iv103 ; 4 uses
end_hunk_0
