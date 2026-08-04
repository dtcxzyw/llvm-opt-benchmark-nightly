inline.NumInlined: 4990
inline.NumDeleted: 678
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 96
loop-unroll.NumUnrolled: 119
begin_hunk_0_@_ZNK6casadi9Sqpmethod5solveEPv:._crit_edge.i.i
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !144
  %i.gk = call double @llvm.fmuladd.f64(double %i.gf, double %i.gj, double %.promoted.i) ; 2 uses
  store double %i.gk, ptr %i.gc, align 8, !tbaa !144
  %i.gl = add nsw i64 %i.fx, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i462
  %.unr = phi double [ %.promoted.i, %.lr.ph.i462 ], [ %i.gk, %.prol.loopexit.unr-lcssa ]
  %.04252.i.unr = phi i64 [ %i.fx, %.lr.ph.i462 ], [ %i.gl, %.prol.loopexit.unr-lcssa ]
  %i.gm = icmp eq i64 %i.ga, %.neg
  br i1 %i.gm, label %.loopexit48.i, label %.lr.ph.i462.new

.lr.ph.i462.new:                                  ; preds = %.prol.loopexit, %.lr.ph.i462.new
  %i.gn = phi double [ %i.hc, %.lr.ph.i462.new ], [ %.unr, %.prol.loopexit ]
  %.04252.i = phi i64 [ %i.hd, %.lr.ph.i462.new ], [ %.04252.i.unr, %.prol.loopexit ] ; 4 uses
  %i.go = getelementptr inbounds [8 x i8], ptr %i.fi, i64 %.04252.i
  %i.gp = load double, ptr %i.go, align 8, !tbaa !144
  %i.gq = getelementptr inbounds [8 x i8], ptr %i.fv, i64 %.04252.i
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !208
  %i.gs = getelementptr inbounds [8 x i8], ptr %i.fm, i64 %i.gr
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !144
  %i.gu = call double @llvm.fmuladd.f64(double %i.gp, double %i.gt, double %i.gn) ; 2 uses
  store double %i.gu, ptr %i.gc, align 8, !tbaa !144
  %i.gv = add nsw i64 %.04252.i, 1                ; 2 uses
  %i.gw = getelementptr inbounds [8 x i8], ptr %i.fi, i64 %i.gv
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !144
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.fv, i64 %i.gv
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !208
  %i.ha = getelementptr inbounds [8 x i8], ptr %i.fm, i64 %i.gz
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !144
  %i.hc = call double @llvm.fmuladd.f64(double %i.gx, double %i.hb, double %i.gu) ; 2 uses
  store double %i.hc, ptr %i.gc, align 8, !tbaa !144
  %i.hd = add nsw i64 %.04252.i, 2                ; 2 uses
  %exitcond.not.i463.1 = icmp eq i64 %i.hd, %i.ga
  br i1 %exitcond.not.i463.1, label %.loopexit48.i, label %.lr.ph.i462.new, !llvm.loop !297

_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit:    ; preds = %.loopexit48.i, %bb.g, %bb.h
  %or.cond.i464 = and i1 %i.fp, %i.fq
  %i.he = icmp sgt i64 %i.fl, 0                   ; 2 uses
  %or.cond15.i = and i1 %i.he, %or.cond.i464
  br i1 %or.cond15.i, label %.lr.ph.i465.preheader, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit

.lr.ph.i465.preheader:                            ; preds = %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit
  %min.iters.check2332 = icmp ult i64 %i.fl, 4
  br i1 %min.iters.check2332, label %.lr.ph.i465.preheader2418, label %vector.memcheck2325

vector.memcheck2325:                              ; preds = %.lr.ph.i465.preheader
  %i.hf = shl i64 %i.fl, 3                        ; 2 uses
  %scevgep2326 = getelementptr i8, ptr %i.fn, i64 %i.hf
  %scevgep2327 = getelementptr i8, ptr %i.fk, i64 %i.hf
  %bound02328 = icmp ult ptr %i.fn, %scevgep2327
  %bound12329 = icmp ult ptr %i.fk, %scevgep2326
  %found.conflict2330 = and i1 %bound02328, %bound12329
  br i1 %found.conflict2330, label %.lr.ph.i465.preheader2418, label %vector.ph2333

vector.ph2333:                                    ; preds = %vector.memcheck2325
  %n.vec2335 = and i64 %i.fl, 9223372036854775804 ; 4 uses
  %i.hg = shl i64 %n.vec2335, 3                   ; 2 uses
  %i.hh = getelementptr i8, ptr %i.fn, i64 %i.hg
  %i.hi = getelementptr i8, ptr %i.fk, i64 %i.hg
  br label %vector.body2336

vector.body2336:                                  ; preds = %vector.body2336, %vector.ph2333
  %index2337 = phi i64 [ 0, %vector.ph2333 ], [ %index.next2344, %vector.body2336 ] ; 2 uses
  %i.hj = shl i64 %index2337, 3                   ; 2 uses
  %next.gep2338 = getelementptr i8, ptr %i.fn, i64 %i.hj ; 3 uses
  %next.gep2339 = getelementptr i8, ptr %i.fk, i64 %i.hj ; 2 uses
  %i.hk = getelementptr i8, ptr %next.gep2339, i64 16
  %wide.load2340 = load <2 x double>, ptr %next.gep2339, align 8, !tbaa !144, !alias.scope !298
  %wide.load2341 = load <2 x double>, ptr %i.hk, align 8, !tbaa !144, !alias.scope !298
  %i.hl = getelementptr i8, ptr %next.gep2338, i64 16 ; 2 uses
  %wide.load2342 = load <2 x double>, ptr %next.gep2338, align 8, !tbaa !144, !alias.scope !301, !noalias !298
  %wide.load2343 = load <2 x double>, ptr %i.hl, align 8, !tbaa !144, !alias.scope !301, !noalias !298
  %i.hm = fadd <2 x double> %wide.load2340, %wide.load2342
  %i.hn = fadd <2 x double> %wide.load2341, %wide.load2343
  store <2 x double> %i.hm, ptr %next.gep2338, align 8, !tbaa !144, !alias.scope !301, !noalias !298
  store <2 x double> %i.hn, ptr %i.hl, align 8, !tbaa !144, !alias.scope !301, !noalias !298
  %index.next2344 = add nuw i64 %index2337, 4     ; 2 uses
  %i.ho = icmp eq i64 %index.next2344, %n.vec2335
  br i1 %i.ho, label %middle.block2345, label %vector.body2336, !llvm.loop !303

middle.block2345:                                 ; preds = %vector.body2336
  %cmp.n2346 = icmp eq i64 %i.fl, %n.vec2335
  br i1 %cmp.n2346, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit, label %.lr.ph.i465.preheader2418

.lr.ph.i465.preheader2418:                        ; preds = %vector.memcheck2325, %.lr.ph.i465.preheader, %middle.block2345
  %.014.i.ph = phi i64 [ 0, %vector.memcheck2325 ], [ 0, %.lr.ph.i465.preheader ], [ %n.vec2335, %middle.block2345 ] ; 3 uses
  %.0813.i.ph = phi ptr [ %i.fn, %vector.memcheck2325 ], [ %i.fn, %.lr.ph.i465.preheader ], [ %i.hh, %middle.block2345 ] ; 2 uses
  %.0912.i.ph = phi ptr [ %i.fk, %vector.memcheck2325 ], [ %i.fk, %.lr.ph.i465.preheader ], [ %i.hi, %middle.block2345 ] ; 2 uses
  %xtraiter2479 = and i64 %i.fl, 3                ; 2 uses
  %lcmp.mod2480.not = icmp eq i64 %xtraiter2479, 0
  br i1 %lcmp.mod2480.not, label %.lr.ph.i465.prol.loopexit, label %.lr.ph.i465.prol

.lr.ph.i465.prol:                                 ; preds = %.lr.ph.i465.preheader2418, %.lr.ph.i465.prol
  %.014.i.prol = phi i64 [ %i.hu, %.lr.ph.i465.prol ], [ %.014.i.ph, %.lr.ph.i465.preheader2418 ]
  %.0813.i.prol = phi ptr [ %i.hr, %.lr.ph.i465.prol ], [ %.0813.i.ph, %.lr.ph.i465.preheader2418 ] ; 3 uses
  %.0912.i.prol = phi ptr [ %i.hp, %.lr.ph.i465.prol ], [ %.0912.i.ph, %.lr.ph.i465.preheader2418 ] ; 2 uses
  %prol.iter2481 = phi i64 [ %prol.iter2481.next, %.lr.ph.i465.prol ], [ 0, %.lr.ph.i465.preheader2418 ]
  %i.hp = getelementptr inbounds nuw i8, ptr %.0912.i.prol, i64 8 ; 2 uses
  %i.hq = load double, ptr %.0912.i.prol, align 8, !tbaa !144
  %i.hr = getelementptr inbounds nuw i8, ptr %.0813.i.prol, i64 8 ; 2 uses
  %i.hs = load double, ptr %.0813.i.prol, align 8, !tbaa !144
  %i.ht = fadd double %i.hq, %i.hs
  store double %i.ht, ptr %.0813.i.prol, align 8, !tbaa !144
  %i.hu = add nuw nsw i64 %.014.i.prol, 1         ; 2 uses
  %prol.iter2481.next = add i64 %prol.iter2481, 1 ; 2 uses
  %prol.iter2481.cmp.not = icmp eq i64 %prol.iter2481.next, %xtraiter2479
  br i1 %prol.iter2481.cmp.not, label %.lr.ph.i465.prol.loopexit, label %.lr.ph.i465.prol, !llvm.loop !304

.lr.ph.i465.prol.loopexit:                        ; preds = %.lr.ph.i465.prol, %.lr.ph.i465.preheader2418
  %.014.i.unr = phi i64 [ %.014.i.ph, %.lr.ph.i465.preheader2418 ], [ %i.hu, %.lr.ph.i465.prol ]
  %.0813.i.unr = phi ptr [ %.0813.i.ph, %.lr.ph.i465.preheader2418 ], [ %i.hr, %.lr.ph.i465.prol ]
  %.0912.i.unr = phi ptr [ %.0912.i.ph, %.lr.ph.i465.preheader2418 ], [ %i.hp, %.lr.ph.i465.prol ]
  %i.hv = sub nsw i64 %.014.i.ph, %i.fl
  %i.hw = icmp ugt i64 %i.hv, -4
  br i1 %i.hw, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit, label %.lr.ph.i465

.lr.ph.i465:                                      ; preds = %.lr.ph.i465.prol.loopexit, %.lr.ph.i465
  %.014.i = phi i64 [ %i.ir, %.lr.ph.i465 ], [ %.014.i.unr, %.lr.ph.i465.prol.loopexit ]
  %.0813.i = phi ptr [ %i.io, %.lr.ph.i465 ], [ %.0813.i.unr, %.lr.ph.i465.prol.loopexit ] ; 6 uses
  %.0912.i = phi ptr [ %i.im, %.lr.ph.i465 ], [ %.0912.i.unr, %.lr.ph.i465.prol.loopexit ] ; 5 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.0912.i, i64 8
  %i.hy = load double, ptr %.0912.i, align 8, !tbaa !144
  %i.hz = getelementptr inbounds nuw i8, ptr %.0813.i, i64 8 ; 2 uses
  %i.ia = load double, ptr %.0813.i, align 8, !tbaa !144
  %i.ib = fadd double %i.hy, %i.ia
  store double %i.ib, ptr %.0813.i, align 8, !tbaa !144
  %i.ic = getelementptr inbounds nuw i8, ptr %.0912.i, i64 16
  %i.id = load double, ptr %i.hx, align 8, !tbaa !144
  %i.ie = getelementptr inbounds nuw i8, ptr %.0813.i, i64 16 ; 2 uses
  %i.if = load double, ptr %i.hz, align 8, !tbaa !144
  %i.ig = fadd double %i.id, %i.if
  store double %i.ig, ptr %i.hz, align 8, !tbaa !144
  %i.ih = getelementptr inbounds nuw i8, ptr %.0912.i, i64 24
  %i.ii = load double, ptr %i.ic, align 8, !tbaa !144
  %i.ij = getelementptr inbounds nuw i8, ptr %.0813.i, i64 24 ; 2 uses
  %i.ik = load double, ptr %i.ie, align 8, !tbaa !144
  %i.il = fadd double %i.ii, %i.ik
  store double %i.il, ptr %i.ie, align 8, !tbaa !144
  %i.im = getelementptr inbounds nuw i8, ptr %.0912.i, i64 32
  %i.in = load double, ptr %i.ih, align 8, !tbaa !144
  %i.io = getelementptr inbounds nuw i8, ptr %.0813.i, i64 32
  %i.ip = load double, ptr %i.ij, align 8, !tbaa !144
  %i.iq = fadd double %i.in, %i.ip
  store double %i.iq, ptr %i.ij, align 8, !tbaa !144
  %i.ir = add nuw nsw i64 %.014.i, 4              ; 2 uses
  %exitcond.not.i466.3 = icmp eq i64 %i.ir, %i.fl
  br i1 %exitcond.not.i466.3, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit, label %.lr.ph.i465, !llvm.loop !305

_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit:    ; preds = %.lr.ph.i465.prol.loopexit, %.lr.ph.i465, %middle.block2345, %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit
  %i.is = load i64, ptr %i.ac, align 8, !tbaa !192
  %i.it = add nsw i64 %i.is, %i.fl                ; 2 uses
  %i.iu = icmp sgt i64 %i.it, 0
  br i1 %i.iu, label %.lr.ph.i467.preheader, label %_ZN6casadi15casadi_max_violIdEET_xPKS1_S3_S3_.exit

.lr.ph.i467.preheader:                            ; preds = %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit
  %i.iv = load ptr, ptr %i.ae, align 8, !tbaa !306
  %i.iw = load ptr, ptr %i.ad, align 8, !tbaa !307
  %i.ix = load ptr, ptr %i.q, align 8, !tbaa !283
  br label %.lr.ph.i467

.lr.ph.i467:                                      ; preds = %.lr.ph.i467.preheader, %bb.n
  %.027.i = phi ptr [ %.1.i, %bb.n ], [ %i.ix, %.lr.ph.i467.preheader ] ; 3 uses
  %.01526.i = phi ptr [ %.116.i, %bb.n ], [ %i.iw, %.lr.ph.i467.preheader ] ; 3 uses
  %.01725.i = phi ptr [ %.118.i, %bb.n ], [ %i.iv, %.lr.ph.i467.preheader ] ; 3 uses
  %.01924.i = phi double [ %i.ji, %bb.n ], [ 0.000000e+00, %.lr.ph.i467.preheader ]
  %.02023.i = phi i64 [ %i.jj, %bb.n ], [ 0, %.lr.ph.i467.preheader ]
  %.not.i468 = icmp eq ptr %.027.i, null
  br i1 %.not.i468, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i467
  %i.iy = getelementptr inbounds nuw i8, ptr %.027.i, i64 8
  %i.iz = load double, ptr %.027.i, align 8, !tbaa !144
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i467
  %.1.i = phi ptr [ %i.iy, %bb.i ], [ null, %.lr.ph.i467 ]
  %i.ja = phi double [ %i.iz, %bb.i ], [ 0.000000e+00, %.lr.ph.i467 ] ; 2 uses
  %.not21.i = icmp eq ptr %.01526.i, null
  br i1 %.not21.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.jb = getelementptr inbounds nuw i8, ptr %.01526.i, i64 8
  %i.jc = load double, ptr %.01526.i, align 8, !tbaa !144
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.116.i = phi ptr [ %i.jb, %bb.k ], [ null, %bb.j ]
  %i.jd = phi double [ %i.jc, %bb.k ], [ 0.000000e+00, %bb.j ]
  %.not22.i = icmp eq ptr %.01725.i, null
  br i1 %.not22.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.je = getelementptr inbounds nuw i8, ptr %.01725.i, i64 8
  %i.jf = load double, ptr %.01725.i, align 8, !tbaa !144
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.118.i = phi ptr [ %i.je, %bb.m ], [ null, %bb.l ]
  %i.jg = phi double [ %i.jf, %bb.m ], [ 0.000000e+00, %bb.l ]
  %17 = insertelement <2 x double> poison, double %i.ja, i64 0
  %18 = insertelement <2 x double> %17, double %i.jd, i64 1
  %19 = insertelement <2 x double> poison, double %i.jg, i64 0
  %20 = insertelement <2 x double> %19, double %i.ja, i64 1
  %21 = fsub nsz <2 x double> %18, %20
  %22 = call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %21, <2 x double> zeroinitializer) ; 2 uses
  %23 = extractelement <2 x double> %22, i64 0
  %i.jh = call nsz double @llvm.maxnum.f64(double %.01924.i, double %23)
  %24 = extractelement <2 x double> %22, i64 1
  %i.ji = call nsz double @llvm.maxnum.f64(double %i.jh, double %24) ; 2 uses
  %i.jj = add nuw nsw i64 %.02023.i, 1            ; 2 uses
  %exitcond.not.i469 = icmp eq i64 %i.jj, %i.it
  br i1 %exitcond.not.i469, label %_ZN6casadi15casadi_max_violIdEET_xPKS1_S3_S3_.exit, label %.lr.ph.i467, !llvm.loop !308

_ZN6casadi15casadi_max_violIdEET_xPKS1_S3_S3_.exit: ; preds = %bb.n, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit
  %.019.lcssa.i = phi double [ 0.000000e+00, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit ], [ %i.ji, %bb.n ] ; 5 uses
  br i1 %i.he, label %.lr.ph.i470.preheader, label %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit478

.lr.ph.i470.preheader:                            ; preds = %_ZN6casadi15casadi_max_violIdEET_xPKS1_S3_S3_.exit
  %i.jk = add nsw i64 %i.fl, -1                   ; 2 uses
  %xtraiter2482 = and i64 %i.fl, 1
  %i.jl = icmp eq i64 %i.jk, 0
  br i1 %i.jl, label %.lr.ph.i470.epil.preheader, label %.lr.ph.i470.preheader.new

.lr.ph.i470.preheader.new:                        ; preds = %.lr.ph.i470.preheader
  %unroll_iter = and i64 %i.fl, 9223372036854775806
  br label %.lr.ph.i470

.lr.ph.i470:                                      ; preds = %.lr.ph.i470, %.lr.ph.i470.preheader.new
  %.09.i = phi double [ 0.000000e+00, %.lr.ph.i470.preheader.new ], [ %i.jt, %.lr.ph.i470 ]
  %.067.i = phi ptr [ %i.fn, %.lr.ph.i470.preheader.new ], [ %i.jq, %.lr.ph.i470 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i470.preheader.new ], [ %niter.next.1, %.lr.ph.i470 ]
  %i.jm = getelementptr inbounds nuw i8, ptr %.067.i, i64 8
  %i.jn = load double, ptr %.067.i, align 8, !tbaa !144
  %i.jo = call nsz double @llvm.fabs.f64(double %i.jn)
  %i.jp = call nsz double @llvm.maxnum.f64(double %.09.i, double %i.jo)
  %i.jq = getelementptr inbounds nuw i8, ptr %.067.i, i64 16 ; 2 uses
  %i.jr = load double, ptr %i.jm, align 8, !tbaa !144
  %i.js = call nsz double @llvm.fabs.f64(double %i.jr)
  %i.jt = call nsz double @llvm.maxnum.f64(double %i.jp, double %i.js) ; 3 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit.unr-lcssa, label %.lr.ph.i470, !llvm.loop !309

_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit.unr-lcssa: ; preds = %.lr.ph.i470
  %lcmp.mod2483.not = icmp eq i64 %xtraiter2482, 0
  br i1 %lcmp.mod2483.not, label %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit, label %.lr.ph.i470.epil.preheader

.lr.ph.i470.epil.preheader:                       ; preds = %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit.unr-lcssa, %.lr.ph.i470.preheader
  %.09.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i470.preheader ], [ %i.jt, %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit.unr-lcssa ]
  %.067.i.epil.init = phi ptr [ %i.fn, %.lr.ph.i470.preheader ], [ %i.jq, %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit.unr-lcssa ]
  %lcmp.mod2485 = trunc i64 %i.fl to i1
  call void @llvm.assume(i1 %lcmp.mod2485)
  %i.ju = load double, ptr %.067.i.epil.init, align 8, !tbaa !144
  %i.jv = call nsz double @llvm.fabs.f64(double %i.ju)
  %i.jw = call nsz double @llvm.maxnum.f64(double %.09.i.epil.init, double %i.jv)
  br label %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit

_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit:     ; preds = %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit.unr-lcssa, %.lr.ph.i470.epil.preheader
  %.lcssa2420 = phi double [ %i.jt, %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit.unr-lcssa ], [ %i.jw, %.lr.ph.i470.epil.preheader ] ; 2 uses
  %i.jx = load ptr, ptr %i.k, align 8, !tbaa !266 ; 2 uses
  %xtraiter2486 = and i64 %i.fl, 1
  %i.jy = icmp eq i64 %i.jk, 0
  br i1 %i.jy, label %.lr.ph.i473.epil.preheader, label %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit.new

_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit.new: ; preds = %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit
  %unroll_iter2490 = and i64 %i.fl, 9223372036854775806
  br label %.lr.ph.i473

.lr.ph.i473:                                      ; preds = %.lr.ph.i473, %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit.new
  %.09.i474 = phi double [ 0.000000e+00, %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit.new ], [ %i.kg, %.lr.ph.i473 ]
  %.067.i476 = phi ptr [ %i.jx, %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit.new ], [ %i.kd, %.lr.ph.i473 ] ; 3 uses
  %niter2491 = phi i64 [ 0, %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit.new ], [ %niter2491.next.1, %.lr.ph.i473 ]
  %i.jz = getelementptr inbounds nuw i8, ptr %.067.i476, i64 8
  %i.ka = load double, ptr %.067.i476, align 8, !tbaa !144
  %i.kb = call nsz double @llvm.fabs.f64(double %i.ka)
  %i.kc = call nsz double @llvm.maxnum.f64(double %.09.i474, double %i.kb)
  %i.kd = getelementptr inbounds nuw i8, ptr %.067.i476, i64 16 ; 2 uses
  %i.ke = load double, ptr %i.jz, align 8, !tbaa !144
  %i.kf = call nsz double @llvm.fabs.f64(double %i.ke)
  %i.kg = call nsz double @llvm.maxnum.f64(double %i.kc, double %i.kf) ; 3 uses
  %niter2491.next.1 = add i64 %niter2491, 2       ; 2 uses
  %niter2491.ncmp.1 = icmp eq i64 %niter2491.next.1, %unroll_iter2490
  br i1 %niter2491.ncmp.1, label %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit478.loopexit.unr-lcssa, label %.lr.ph.i473, !llvm.loop !309

_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit478.loopexit.unr-lcssa: ; preds = %.lr.ph.i473
  %lcmp.mod2487.not = icmp eq i64 %xtraiter2486, 0
  br i1 %lcmp.mod2487.not, label %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit478, label %.lr.ph.i473.epil.preheader

.lr.ph.i473.epil.preheader:                       ; preds = %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit478.loopexit.unr-lcssa, %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit
  %.09.i474.epil.init = phi double [ 0.000000e+00, %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit ], [ %i.kg, %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit478.loopexit.unr-lcssa ]
  %.067.i476.epil.init = phi ptr [ %i.jx, %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit ], [ %i.kd, %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit478.loopexit.unr-lcssa ]
  %lcmp.mod2489 = trunc i64 %i.fl to i1
  call void @llvm.assume(i1 %lcmp.mod2489)
  %i.kh = load double, ptr %.067.i476.epil.init, align 8, !tbaa !144
  %i.ki = call nsz double @llvm.fabs.f64(double %i.kh)
  %i.kj = call nsz double @llvm.maxnum.f64(double %.09.i474.epil.init, double %i.ki)
  br label %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit478

_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit478:  ; preds = %.lr.ph.i473.epil.preheader, %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit478.loopexit.unr-lcssa, %_ZN6casadi15casadi_max_violIdEET_xPKS1_S3_S3_.exit
  %.0.lcssa.i1079 = phi double [ 0.000000e+00, %_ZN6casadi15casadi_max_violIdEET_xPKS1_S3_S3_.exit ], [ %.lcssa2420, %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit478.loopexit.unr-lcssa ], [ %.lcssa2420, %.lr.ph.i473.epil.preheader ] ; 5 uses
  %.0.lcssa.i472 = phi double [ 0.000000e+00, %_ZN6casadi15casadi_max_violIdEET_xPKS1_S3_S3_.exit ], [ %i.kg, %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit478.loopexit.unr-lcssa ], [ %i.kj, %.lr.ph.i473.epil.preheader ] ; 5 uses
  %i.kk = load i8, ptr %i.af, align 1, !tbaa !149, !range !155, !noundef !181
  %i.kl = trunc nuw i8 %i.kk to i1
  br i1 %i.kl, label %bb.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

bb.o:                                             ; preds = %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit478
  %i.km = load i32, ptr %i.e, align 8, !tbaa !250 ; 2 uses
  %i.kn = srem i32 %i.km, 10
  %i.ko = icmp eq i32 %i.kn, 0
  br i1 %i.ko, label %bb.p, label %_ZNK6casadi9Sqpmethod15print_iterationEv.exit

bb.p:                                             ; preds = %bb.o
  invoke void (ptr, ptr, ...) @_ZNK6casadi13ProtoFunction5printEPKcz(ptr noundef nonnull align 8 dereferenceable(2394) %0, ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.134)
          to label %._ZNK6casadi9Sqpmethod15print_iterationEv.exit_crit_edge unwind label %.loopexit1134

._ZNK6casadi9Sqpmethod15print_iterationEv.exit_crit_edge: ; preds = %bb.p
  %.pre1314 = load i32, ptr %i.e, align 8, !tbaa !250
  br label %_ZNK6casadi9Sqpmethod15print_iterationEv.exit

.loopexit1134:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %bb.p, %.noexc.i481, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit485
  %lpad.loopexit1136 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit489

.loopexit.split-lp1135:                           ; preds = %bb.x, %bb.ad, %bb.ah, %bb.am
  %lpad.loopexit.split-lp1137 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit489

_ZNK6casadi9Sqpmethod15print_iterationEv.exit:    ; preds = %._ZNK6casadi9Sqpmethod15print_iterationEv.exit_crit_edge, %bb.o
  %i.kp = phi i32 [ %.pre1314, %._ZNK6casadi9Sqpmethod15print_iterationEv.exit_crit_edge ], [ %i.km, %bb.o ]
  %i.kq = load double, ptr %i.t, align 8, !tbaa !310
  %i.kr = load double, ptr %i.h, align 8, !tbaa !311
  store ptr %i.ag, ptr %4, align 8, !tbaa !8
  %i.ks = load ptr, ptr %2, align 8, !tbaa !14    ; 2 uses
  %i.kt = load i64, ptr %i.j, align 8, !tbaa !17  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.kt, ptr %i.a, align 8, !tbaa !12
  %i.ku = icmp ugt i64 %i.kt, 15
  br i1 %i.ku, label %.noexc.i481, label %._crit_edge.i.i480

.noexc.i481:                                      ; preds = %_ZNK6casadi9Sqpmethod15print_iterationEv.exit
  %i.kv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc482 unwind label %.loopexit1134 ; 2 uses

.noexc482:                                        ; preds = %.noexc.i481
  store ptr %i.kv, ptr %4, align 8, !tbaa !14
  %i.kw = load i64, ptr %i.a, align 8, !tbaa !12
  store i64 %i.kw, ptr %i.ag, align 8, !tbaa !16
  br label %._crit_edge.i.i480

._crit_edge.i.i480:                               ; preds = %.noexc482, %_ZNK6casadi9Sqpmethod15print_iterationEv.exit
  %i.kx = phi ptr [ %i.kv, %.noexc482 ], [ %i.ag, %_ZNK6casadi9Sqpmethod15print_iterationEv.exit ] ; 2 uses
  switch i64 %i.kt, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %bb.s
  ]

bb.q:                                             ; preds = %._crit_edge.i.i480
  %i.ky = load i8, ptr %i.ks, align 1, !tbaa !16
  store i8 %i.ky, ptr %i.kx, align 1, !tbaa !16
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge.i.i480
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kx, ptr align 1 %i.ks, i64 %i.kt, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %._crit_edge.i.i480
  %i.kz = load i64, ptr %i.a, align 8, !tbaa !12  ; 2 uses
  store i64 %i.kz, ptr %i.ah, align 8, !tbaa !17
  %i.la = load ptr, ptr %4, align 8, !tbaa !14
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 %i.kz
  store i8 0, ptr %i.lb, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.lc = trunc nuw i8 %.0351 to i1
  %i.ld = trunc nuw i8 %.0346 to i1
  %i.le = sext i32 %i.kp to i64
  invoke void @_ZNK6casadi9Sqpmethod15print_iterationExdddddxbbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2394) %0, i64 noundef %i.le, double noundef %i.kq, double noundef %.019.lcssa.i, double noundef %.0.lcssa.i1079, double noundef %.0.lcssa.i472, double noundef %i.kr, i64 noundef %.0322, i1 noundef zeroext %i.ld, i1 noundef zeroext %i.lc, ptr noundef nonnull align 8 %4)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.lf = load ptr, ptr %4, align 8, !tbaa !14    ; 2 uses
  %i.lg = icmp eq ptr %i.lf, %i.ag
  br i1 %i.lg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit485, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i483

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i483: ; preds = %bb.t
  %i.lh = load i64, ptr %i.ag, align 8, !tbaa !16
  %i.li = add i64 %i.lh, 1
  call void @_ZdlPvm(ptr noundef %i.lf, i64 noundef %i.li) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit485

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit485: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i483
  %i.lj = load i64, ptr %i.j, align 8, !tbaa !17
  %i.lk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %i.lj, ptr noundef nonnull @.str.113, i64 noundef 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %.loopexit1134 ; 0 uses

bb.u:                                             ; preds = %bb.s
  %i.ll = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lm = load ptr, ptr %4, align 8, !tbaa !14    ; 2 uses
  %i.ln = icmp eq ptr %i.lm, %i.ag
  br i1 %i.ln, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit489, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i487

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i487: ; preds = %bb.u
  %i.lo = load i64, ptr %i.ag, align 8, !tbaa !16
  %i.lp = add i64 %i.lo, 1
  call void @_ZdlPvm(ptr noundef %i.lm, i64 noundef %i.lp) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit489

end_hunk_0
