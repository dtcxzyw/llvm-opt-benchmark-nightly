inline.NumInlined: 1590
inline.NumDeleted: 550
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 57
begin_hunk_0_@_ZNK6casadi5Qrsqp5solveEPv:bb.a
  %i.et = load double, ptr %i.es, align 8, !tbaa !136
  %i.eu = call double @llvm.fmuladd.f64(double %i.ep, double %i.et, double %.promoted.i) ; 2 uses
  store double %i.eu, ptr %i.em, align 8, !tbaa !136
  %i.ev = add nsw i64 %i.eh, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i225
  %.unr = phi double [ %.promoted.i, %.lr.ph.i225 ], [ %i.eu, %.prol.loopexit.unr-lcssa ]
  %.04252.i.unr = phi i64 [ %i.eh, %.lr.ph.i225 ], [ %i.ev, %.prol.loopexit.unr-lcssa ]
  %i.ew = icmp eq i64 %i.ek, %.neg
  br i1 %i.ew, label %.loopexit48.i, label %.lr.ph.i225.new

.lr.ph.i225.new:                                  ; preds = %.prol.loopexit, %.lr.ph.i225.new
  %i.ex = phi double [ %i.fm, %.lr.ph.i225.new ], [ %.unr, %.prol.loopexit ]
  %.04252.i = phi i64 [ %i.fn, %.lr.ph.i225.new ], [ %.04252.i.unr, %.prol.loopexit ] ; 4 uses
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %.04252.i
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !136
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.ef, i64 %.04252.i
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !213
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.fb
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !136
  %i.fe = call double @llvm.fmuladd.f64(double %i.ez, double %i.fd, double %i.ex) ; 2 uses
  store double %i.fe, ptr %i.em, align 8, !tbaa !136
  %i.ff = add nsw i64 %.04252.i, 1                ; 2 uses
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.ff
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !136
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.ef, i64 %i.ff
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !213
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.fj
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !136
  %i.fm = call double @llvm.fmuladd.f64(double %i.fh, double %i.fl, double %i.fe) ; 2 uses
  store double %i.fm, ptr %i.em, align 8, !tbaa !136
  %i.fn = add nsw i64 %.04252.i, 2                ; 2 uses
  %exitcond.not.i226.1 = icmp eq i64 %i.fn, %i.ek
  br i1 %exitcond.not.i226.1, label %.loopexit48.i, label %.lr.ph.i225.new, !llvm.loop !215

_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit:    ; preds = %.loopexit48.i, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, %bb.f
  %or.cond.i227 = and i1 %i.dz, %i.ea
  %i.fo = icmp sgt i64 %i.dv, 0                   ; 2 uses
  %or.cond15.i = and i1 %i.fo, %or.cond.i227
  br i1 %or.cond15.i, label %.lr.ph.i228.preheader, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit

.lr.ph.i228.preheader:                            ; preds = %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit
  %min.iters.check1067 = icmp ult i64 %i.dv, 4
  br i1 %min.iters.check1067, label %.lr.ph.i228.preheader1127, label %vector.memcheck1060

vector.memcheck1060:                              ; preds = %.lr.ph.i228.preheader
  %i.fp = shl i64 %i.dv, 3                        ; 2 uses
  %scevgep1061 = getelementptr i8, ptr %i.dx, i64 %i.fp
  %scevgep1062 = getelementptr i8, ptr %i.du, i64 %i.fp
  %bound01063 = icmp ult ptr %i.dx, %scevgep1062
  %bound11064 = icmp ult ptr %i.du, %scevgep1061
  %found.conflict1065 = and i1 %bound01063, %bound11064
  br i1 %found.conflict1065, label %.lr.ph.i228.preheader1127, label %vector.ph1068

vector.ph1068:                                    ; preds = %vector.memcheck1060
  %n.vec1070 = and i64 %i.dv, 9223372036854775804 ; 4 uses
  %i.fq = shl i64 %n.vec1070, 3                   ; 2 uses
  %i.fr = getelementptr i8, ptr %i.dx, i64 %i.fq
  %i.fs = getelementptr i8, ptr %i.du, i64 %i.fq
  br label %vector.body1071

vector.body1071:                                  ; preds = %vector.body1071, %vector.ph1068
  %index1072 = phi i64 [ 0, %vector.ph1068 ], [ %index.next1079, %vector.body1071 ] ; 2 uses
  %i.ft = shl i64 %index1072, 3                   ; 2 uses
  %next.gep1073 = getelementptr i8, ptr %i.dx, i64 %i.ft ; 3 uses
  %next.gep1074 = getelementptr i8, ptr %i.du, i64 %i.ft ; 2 uses
  %i.fu = getelementptr i8, ptr %next.gep1074, i64 16
  %wide.load1075 = load <2 x double>, ptr %next.gep1074, align 8, !tbaa !136, !alias.scope !216
  %wide.load1076 = load <2 x double>, ptr %i.fu, align 8, !tbaa !136, !alias.scope !216
  %i.fv = getelementptr i8, ptr %next.gep1073, i64 16 ; 2 uses
  %wide.load1077 = load <2 x double>, ptr %next.gep1073, align 8, !tbaa !136, !alias.scope !219, !noalias !216
  %wide.load1078 = load <2 x double>, ptr %i.fv, align 8, !tbaa !136, !alias.scope !219, !noalias !216
  %i.fw = fadd <2 x double> %wide.load1075, %wide.load1077
  %i.fx = fadd <2 x double> %wide.load1076, %wide.load1078
  store <2 x double> %i.fw, ptr %next.gep1073, align 8, !tbaa !136, !alias.scope !219, !noalias !216
  store <2 x double> %i.fx, ptr %i.fv, align 8, !tbaa !136, !alias.scope !219, !noalias !216
  %index.next1079 = add nuw i64 %index1072, 4     ; 2 uses
  %i.fy = icmp eq i64 %index.next1079, %n.vec1070
  br i1 %i.fy, label %middle.block1080, label %vector.body1071, !llvm.loop !221

middle.block1080:                                 ; preds = %vector.body1071
  %cmp.n1081 = icmp eq i64 %i.dv, %n.vec1070
  br i1 %cmp.n1081, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit, label %.lr.ph.i228.preheader1127

.lr.ph.i228.preheader1127:                        ; preds = %vector.memcheck1060, %.lr.ph.i228.preheader, %middle.block1080
  %.014.i.ph = phi i64 [ 0, %vector.memcheck1060 ], [ 0, %.lr.ph.i228.preheader ], [ %n.vec1070, %middle.block1080 ] ; 3 uses
  %.0813.i.ph = phi ptr [ %i.dx, %vector.memcheck1060 ], [ %i.dx, %.lr.ph.i228.preheader ], [ %i.fr, %middle.block1080 ] ; 2 uses
  %.0912.i.ph = phi ptr [ %i.du, %vector.memcheck1060 ], [ %i.du, %.lr.ph.i228.preheader ], [ %i.fs, %middle.block1080 ] ; 2 uses
  %xtraiter1151 = and i64 %i.dv, 3                ; 2 uses
  %lcmp.mod1152.not = icmp eq i64 %xtraiter1151, 0
  br i1 %lcmp.mod1152.not, label %.lr.ph.i228.prol.loopexit, label %.lr.ph.i228.prol

.lr.ph.i228.prol:                                 ; preds = %.lr.ph.i228.preheader1127, %.lr.ph.i228.prol
  %.014.i.prol = phi i64 [ %i.ge, %.lr.ph.i228.prol ], [ %.014.i.ph, %.lr.ph.i228.preheader1127 ]
  %.0813.i.prol = phi ptr [ %i.gb, %.lr.ph.i228.prol ], [ %.0813.i.ph, %.lr.ph.i228.preheader1127 ] ; 3 uses
  %.0912.i.prol = phi ptr [ %i.fz, %.lr.ph.i228.prol ], [ %.0912.i.ph, %.lr.ph.i228.preheader1127 ] ; 2 uses
  %prol.iter1153 = phi i64 [ %prol.iter1153.next, %.lr.ph.i228.prol ], [ 0, %.lr.ph.i228.preheader1127 ]
  %i.fz = getelementptr inbounds nuw i8, ptr %.0912.i.prol, i64 8 ; 2 uses
  %i.ga = load double, ptr %.0912.i.prol, align 8, !tbaa !136
  %i.gb = getelementptr inbounds nuw i8, ptr %.0813.i.prol, i64 8 ; 2 uses
  %i.gc = load double, ptr %.0813.i.prol, align 8, !tbaa !136
  %i.gd = fadd double %i.ga, %i.gc
  store double %i.gd, ptr %.0813.i.prol, align 8, !tbaa !136
  %i.ge = add nuw nsw i64 %.014.i.prol, 1         ; 2 uses
  %prol.iter1153.next = add i64 %prol.iter1153, 1 ; 2 uses
  %prol.iter1153.cmp.not = icmp eq i64 %prol.iter1153.next, %xtraiter1151
  br i1 %prol.iter1153.cmp.not, label %.lr.ph.i228.prol.loopexit, label %.lr.ph.i228.prol, !llvm.loop !222

.lr.ph.i228.prol.loopexit:                        ; preds = %.lr.ph.i228.prol, %.lr.ph.i228.preheader1127
  %.014.i.unr = phi i64 [ %.014.i.ph, %.lr.ph.i228.preheader1127 ], [ %i.ge, %.lr.ph.i228.prol ]
  %.0813.i.unr = phi ptr [ %.0813.i.ph, %.lr.ph.i228.preheader1127 ], [ %i.gb, %.lr.ph.i228.prol ]
  %.0912.i.unr = phi ptr [ %.0912.i.ph, %.lr.ph.i228.preheader1127 ], [ %i.fz, %.lr.ph.i228.prol ]
  %i.gf = sub nsw i64 %.014.i.ph, %i.dv
  %i.gg = icmp ugt i64 %i.gf, -4
  br i1 %i.gg, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit, label %.lr.ph.i228

.lr.ph.i228:                                      ; preds = %.lr.ph.i228.prol.loopexit, %.lr.ph.i228
  %.014.i = phi i64 [ %i.hb, %.lr.ph.i228 ], [ %.014.i.unr, %.lr.ph.i228.prol.loopexit ]
  %.0813.i = phi ptr [ %i.gy, %.lr.ph.i228 ], [ %.0813.i.unr, %.lr.ph.i228.prol.loopexit ] ; 6 uses
  %.0912.i = phi ptr [ %i.gw, %.lr.ph.i228 ], [ %.0912.i.unr, %.lr.ph.i228.prol.loopexit ] ; 5 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.0912.i, i64 8
  %i.gi = load double, ptr %.0912.i, align 8, !tbaa !136
  %i.gj = getelementptr inbounds nuw i8, ptr %.0813.i, i64 8 ; 2 uses
  %i.gk = load double, ptr %.0813.i, align 8, !tbaa !136
  %i.gl = fadd double %i.gi, %i.gk
  store double %i.gl, ptr %.0813.i, align 8, !tbaa !136
  %i.gm = getelementptr inbounds nuw i8, ptr %.0912.i, i64 16
  %i.gn = load double, ptr %i.gh, align 8, !tbaa !136
  %i.go = getelementptr inbounds nuw i8, ptr %.0813.i, i64 16 ; 2 uses
  %i.gp = load double, ptr %i.gj, align 8, !tbaa !136
  %i.gq = fadd double %i.gn, %i.gp
  store double %i.gq, ptr %i.gj, align 8, !tbaa !136
  %i.gr = getelementptr inbounds nuw i8, ptr %.0912.i, i64 24
  %i.gs = load double, ptr %i.gm, align 8, !tbaa !136
  %i.gt = getelementptr inbounds nuw i8, ptr %.0813.i, i64 24 ; 2 uses
  %i.gu = load double, ptr %i.go, align 8, !tbaa !136
  %i.gv = fadd double %i.gs, %i.gu
  store double %i.gv, ptr %i.go, align 8, !tbaa !136
  %i.gw = getelementptr inbounds nuw i8, ptr %.0912.i, i64 32
  %i.gx = load double, ptr %i.gr, align 8, !tbaa !136
  %i.gy = getelementptr inbounds nuw i8, ptr %.0813.i, i64 32
  %i.gz = load double, ptr %i.gt, align 8, !tbaa !136
  %i.ha = fadd double %i.gx, %i.gz
  store double %i.ha, ptr %i.gt, align 8, !tbaa !136
  %i.hb = add nuw nsw i64 %.014.i, 4              ; 2 uses
  %exitcond.not.i229.3 = icmp eq i64 %i.hb, %i.dv
  br i1 %exitcond.not.i229.3, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit, label %.lr.ph.i228, !llvm.loop !223

_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit:    ; preds = %.lr.ph.i228.prol.loopexit, %.lr.ph.i228, %middle.block1080, %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit
  %i.hc = load i64, ptr %i.t, align 8, !tbaa !153
  %i.hd = add nsw i64 %i.hc, %i.dv                ; 2 uses
  %i.he = icmp sgt i64 %i.hd, 0
  br i1 %i.he, label %.lr.ph.i230.preheader, label %_ZN6casadi15casadi_max_violIdEET_xPKS1_S3_S3_.exit

.lr.ph.i230.preheader:                            ; preds = %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit
  %i.hf = load ptr, ptr %i.v, align 8, !tbaa !224
  %i.hg = load ptr, ptr %i.u, align 8, !tbaa !225
  %i.hh = load ptr, ptr %i.g, align 8, !tbaa !202
  br label %.lr.ph.i230

.lr.ph.i230:                                      ; preds = %.lr.ph.i230.preheader, %bb.l
  %.027.i = phi ptr [ %.1.i, %bb.l ], [ %i.hh, %.lr.ph.i230.preheader ] ; 3 uses
  %.01526.i = phi ptr [ %.116.i, %bb.l ], [ %i.hg, %.lr.ph.i230.preheader ] ; 3 uses
  %.01725.i = phi ptr [ %.118.i, %bb.l ], [ %i.hf, %.lr.ph.i230.preheader ] ; 3 uses
  %.01924.i = phi double [ %i.hs, %bb.l ], [ 0.000000e+00, %.lr.ph.i230.preheader ]
  %.02023.i = phi i64 [ %i.ht, %bb.l ], [ 0, %.lr.ph.i230.preheader ]
  %.not.i231 = icmp eq ptr %.027.i, null
  br i1 %.not.i231, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i230
  %i.hi = getelementptr inbounds nuw i8, ptr %.027.i, i64 8
  %i.hj = load double, ptr %.027.i, align 8, !tbaa !136
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i230
  %.1.i = phi ptr [ %i.hi, %bb.g ], [ null, %.lr.ph.i230 ]
  %i.hk = phi double [ %i.hj, %bb.g ], [ 0.000000e+00, %.lr.ph.i230 ] ; 2 uses
  %.not21.i = icmp eq ptr %.01526.i, null
  br i1 %.not21.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.hl = getelementptr inbounds nuw i8, ptr %.01526.i, i64 8
  %i.hm = load double, ptr %.01526.i, align 8, !tbaa !136
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.116.i = phi ptr [ %i.hl, %bb.i ], [ null, %bb.h ]
  %i.hn = phi double [ %i.hm, %bb.i ], [ 0.000000e+00, %bb.h ]
  %.not22.i = icmp eq ptr %.01725.i, null
  br i1 %.not22.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ho = getelementptr inbounds nuw i8, ptr %.01725.i, i64 8
  %i.hp = load double, ptr %.01725.i, align 8, !tbaa !136
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.118.i = phi ptr [ %i.ho, %bb.k ], [ null, %bb.j ]
  %i.hq = phi double [ %i.hp, %bb.k ], [ 0.000000e+00, %bb.j ]
  %5 = insertelement <2 x double> poison, double %i.hk, i64 0
  %6 = insertelement <2 x double> %5, double %i.hn, i64 1
  %7 = insertelement <2 x double> poison, double %i.hq, i64 0
  %8 = insertelement <2 x double> %7, double %i.hk, i64 1
  %9 = fsub nsz <2 x double> %6, %8
  %10 = call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %9, <2 x double> zeroinitializer) ; 2 uses
  %11 = extractelement <2 x double> %10, i64 0
  %i.hr = call nsz double @llvm.maxnum.f64(double %.01924.i, double %11)
  %12 = extractelement <2 x double> %10, i64 1
  %i.hs = call nsz double @llvm.maxnum.f64(double %i.hr, double %12) ; 2 uses
  %i.ht = add nuw nsw i64 %.02023.i, 1            ; 2 uses
  %exitcond.not.i232 = icmp eq i64 %i.ht, %i.hd
  br i1 %exitcond.not.i232, label %_ZN6casadi15casadi_max_violIdEET_xPKS1_S3_S3_.exit, label %.lr.ph.i230, !llvm.loop !226

_ZN6casadi15casadi_max_violIdEET_xPKS1_S3_S3_.exit: ; preds = %bb.l, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit
  %.019.lcssa.i = phi double [ 0.000000e+00, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit ], [ %i.hs, %bb.l ] ; 2 uses
  br i1 %i.fo, label %.lr.ph.i233.preheader, label %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit241

.lr.ph.i233.preheader:                            ; preds = %_ZN6casadi15casadi_max_violIdEET_xPKS1_S3_S3_.exit
  %i.hu = add nsw i64 %i.dv, -1                   ; 2 uses
  %xtraiter1154 = and i64 %i.dv, 1
  %i.hv = icmp eq i64 %i.hu, 0
  br i1 %i.hv, label %.lr.ph.i233.epil.preheader, label %.lr.ph.i233.preheader.new

.lr.ph.i233.preheader.new:                        ; preds = %.lr.ph.i233.preheader
  %unroll_iter = and i64 %i.dv, 9223372036854775806
  br label %.lr.ph.i233

.lr.ph.i233:                                      ; preds = %.lr.ph.i233, %.lr.ph.i233.preheader.new
  %.09.i = phi double [ 0.000000e+00, %.lr.ph.i233.preheader.new ], [ %i.id, %.lr.ph.i233 ]
  %.067.i = phi ptr [ %i.dx, %.lr.ph.i233.preheader.new ], [ %i.ia, %.lr.ph.i233 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i233.preheader.new ], [ %niter.next.1, %.lr.ph.i233 ]
  %i.hw = getelementptr inbounds nuw i8, ptr %.067.i, i64 8
  %i.hx = load double, ptr %.067.i, align 8, !tbaa !136
  %i.hy = call nsz double @llvm.fabs.f64(double %i.hx)
  %i.hz = call nsz double @llvm.maxnum.f64(double %.09.i, double %i.hy)
  %i.ia = getelementptr inbounds nuw i8, ptr %.067.i, i64 16 ; 2 uses
  %i.ib = load double, ptr %i.hw, align 8, !tbaa !136
  %i.ic = call nsz double @llvm.fabs.f64(double %i.ib)
  %i.id = call nsz double @llvm.maxnum.f64(double %i.hz, double %i.ic) ; 3 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit.unr-lcssa, label %.lr.ph.i233, !llvm.loop !227

_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit.unr-lcssa: ; preds = %.lr.ph.i233
  %lcmp.mod1155.not = icmp eq i64 %xtraiter1154, 0
  br i1 %lcmp.mod1155.not, label %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit, label %.lr.ph.i233.epil.preheader

.lr.ph.i233.epil.preheader:                       ; preds = %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit.unr-lcssa, %.lr.ph.i233.preheader
  %.09.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i233.preheader ], [ %i.id, %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit.unr-lcssa ]
  %.067.i.epil.init = phi ptr [ %i.dx, %.lr.ph.i233.preheader ], [ %i.ia, %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit.unr-lcssa ]
  %lcmp.mod1157 = trunc i64 %i.dv to i1
  call void @llvm.assume(i1 %lcmp.mod1157)
  %i.ie = load double, ptr %.067.i.epil.init, align 8, !tbaa !136
  %i.if = call nsz double @llvm.fabs.f64(double %i.ie)
  %i.ig = call nsz double @llvm.maxnum.f64(double %.09.i.epil.init, double %i.if)
  br label %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit

_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit:     ; preds = %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit.unr-lcssa, %.lr.ph.i233.epil.preheader
  %.lcssa1129 = phi double [ %i.id, %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit.unr-lcssa ], [ %i.ig, %.lr.ph.i233.epil.preheader ] ; 2 uses
  %i.ih = load ptr, ptr %i.w, align 8, !tbaa !195 ; 2 uses
  %xtraiter1158 = and i64 %i.dv, 1
  %i.ii = icmp eq i64 %i.hu, 0
  br i1 %i.ii, label %.lr.ph.i236.epil.preheader, label %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit.new

_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit.new: ; preds = %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit
  %unroll_iter1162 = and i64 %i.dv, 9223372036854775806
  br label %.lr.ph.i236

.lr.ph.i236:                                      ; preds = %.lr.ph.i236, %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit.new
  %.09.i237 = phi double [ 0.000000e+00, %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit.new ], [ %i.iq, %.lr.ph.i236 ]
  %.067.i239 = phi ptr [ %i.ih, %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit.new ], [ %i.in, %.lr.ph.i236 ] ; 3 uses
  %niter1163 = phi i64 [ 0, %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit.new ], [ %niter1163.next.1, %.lr.ph.i236 ]
  %i.ij = getelementptr inbounds nuw i8, ptr %.067.i239, i64 8
  %i.ik = load double, ptr %.067.i239, align 8, !tbaa !136
  %i.il = call nsz double @llvm.fabs.f64(double %i.ik)
  %i.im = call nsz double @llvm.maxnum.f64(double %.09.i237, double %i.il)
  %i.in = getelementptr inbounds nuw i8, ptr %.067.i239, i64 16 ; 2 uses
  %i.io = load double, ptr %i.ij, align 8, !tbaa !136
  %i.ip = call nsz double @llvm.fabs.f64(double %i.io)
  %i.iq = call nsz double @llvm.maxnum.f64(double %i.im, double %i.ip) ; 3 uses
  %niter1163.next.1 = add i64 %niter1163, 2       ; 2 uses
  %niter1163.ncmp.1 = icmp eq i64 %niter1163.next.1, %unroll_iter1162
  br i1 %niter1163.ncmp.1, label %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit241.loopexit.unr-lcssa, label %.lr.ph.i236, !llvm.loop !227

_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit241.loopexit.unr-lcssa: ; preds = %.lr.ph.i236
  %lcmp.mod1159.not = icmp eq i64 %xtraiter1158, 0
  br i1 %lcmp.mod1159.not, label %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit241, label %.lr.ph.i236.epil.preheader

.lr.ph.i236.epil.preheader:                       ; preds = %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit241.loopexit.unr-lcssa, %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit
  %.09.i237.epil.init = phi double [ 0.000000e+00, %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit ], [ %i.iq, %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit241.loopexit.unr-lcssa ]
  %.067.i239.epil.init = phi ptr [ %i.ih, %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit ], [ %i.in, %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit241.loopexit.unr-lcssa ]
  %lcmp.mod1161 = trunc i64 %i.dv to i1
  call void @llvm.assume(i1 %lcmp.mod1161)
  %i.ir = load double, ptr %.067.i239.epil.init, align 8, !tbaa !136
  %i.is = call nsz double @llvm.fabs.f64(double %i.ir)
  %i.it = call nsz double @llvm.maxnum.f64(double %.09.i237.epil.init, double %i.is)
  br label %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit241

_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit241:  ; preds = %.lr.ph.i236.epil.preheader, %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit241.loopexit.unr-lcssa, %_ZN6casadi15casadi_max_violIdEET_xPKS1_S3_S3_.exit
  %.0.lcssa.i518 = phi double [ 0.000000e+00, %_ZN6casadi15casadi_max_violIdEET_xPKS1_S3_S3_.exit ], [ %.lcssa1129, %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit241.loopexit.unr-lcssa ], [ %.lcssa1129, %.lr.ph.i236.epil.preheader ] ; 2 uses
  %.0.lcssa.i235 = phi double [ 0.000000e+00, %_ZN6casadi15casadi_max_violIdEET_xPKS1_S3_S3_.exit ], [ %i.iq, %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit241.loopexit.unr-lcssa ], [ %i.it, %.lr.ph.i236.epil.preheader ] ; 2 uses
  %i.iu = load i8, ptr %i.x, align 1, !tbaa !139, !range !145, !noundef !146
  %i.iv = trunc nuw i8 %i.iu to i1
  br i1 %i.iv, label %bb.m, label %bb.t

bb.m:                                             ; preds = %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit241
  %i.iw = load i32, ptr %i.c, align 8, !tbaa !200 ; 2 uses
  %i.ix = srem i32 %i.iw, 10
  %i.iy = icmp eq i32 %i.ix, 0
  br i1 %i.iy, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void (ptr, ptr, ...) @_ZNK6casadi13ProtoFunction5printEPKcz(ptr noundef nonnull align 8 dereferenceable(2105) %0, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.82)
  %.pre603 = load i32, ptr %i.c, align 8, !tbaa !200
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.iz = phi i32 [ %.pre603, %bb.n ], [ %i.iw, %bb.m ]
  %i.ja = sext i32 %i.iz to i64
  %i.jb = load double, ptr %i.j, align 8, !tbaa !228
  %i.jc = load double, ptr %i.f, align 8, !tbaa !229 ; 2 uses
  call void (ptr, ptr, ...) @_ZNK6casadi13ProtoFunction5printEPKcz(ptr noundef nonnull align 8 dereferenceable(2105) %0, ptr noundef nonnull @.str.83, i64 noundef %i.ja, double noundef %i.jb, double noundef %.019.lcssa.i, double noundef %.0.lcssa.i518, double noundef %.0.lcssa.i235)
  %i.jd = fcmp ogt double %i.jc, 0.000000e+00
  br i1 %i.jd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.je = call double @llvm.log10.f64(double %i.jc)
  call void (ptr, ptr, ...) @_ZNK6casadi13ProtoFunction5printEPKcz(ptr noundef nonnull align 8 dereferenceable(2105) %0, ptr noundef nonnull @.str.84, double noundef %i.je)
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  call void (ptr, ptr, ...) @_ZNK6casadi13ProtoFunction5printEPKcz(ptr noundef nonnull align 8 dereferenceable(2105) %0, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.86)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  call void (ptr, ptr, ...) @_ZNK6casadi13ProtoFunction5printEPKcz(ptr noundef nonnull align 8 dereferenceable(2105) %0, ptr noundef nonnull @.str.87, i64 noundef %.0187)
  br i1 %.0190, label %_ZNK6casadi5Qrsqp15print_iterationExdddddxb.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void (ptr, ptr, ...) @_ZNK6casadi13ProtoFunction5printEPKcz(ptr noundef nonnull align 8 dereferenceable(2105) %0, ptr noundef nonnull @.str.88)
  br label %_ZNK6casadi5Qrsqp15print_iterationExdddddxb.exit

_ZNK6casadi5Qrsqp15print_iterationExdddddxb.exit: ; preds = %bb.r, %bb.s
  call void (ptr, ptr, ...) @_ZNK6casadi13ProtoFunction5printEPKcz(ptr noundef nonnull align 8 dereferenceable(2105) %0, ptr noundef nonnull @.str.64)
  br label %bb.t

bb.t:                                             ; preds = %_ZNK6casadi5Qrsqp15print_iterationExdddddxb.exit, %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit241
  %i.jf = call noundef i32 @_ZNK6casadi6Nlpsol8callbackEPNS_12NlpsolMemoryE(ptr noundef nonnull align 8 dereferenceable(1984) %0, ptr noundef %1)
  %.not210 = icmp eq i32 %i.jf, 0
  br i1 %.not210, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void (ptr, ptr, ...) @_ZNK6casadi13ProtoFunction5printEPKcz(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull @.str.65)
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 536
  store ptr @.str.66, ptr %i.jg, align 8, !tbaa !230
  br label %.thread529

bb.v:                                             ; preds = %bb.t
  %i.jh = load i32, ptr %i.c, align 8, !tbaa !200 ; 4 uses
  %i.ji = sext i32 %i.jh to i64                   ; 3 uses
  %i.jj = load i64, ptr %i.y, align 8, !tbaa !56
  %.not211 = icmp sgt i64 %i.jj, %i.ji            ; 2 uses
  br i1 %.not211, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.jk = load double, ptr %i.z, align 8, !tbaa !141
  %i.jl = fcmp olt double %.019.lcssa.i, %i.jk
  br i1 %i.jl, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.jm = load double, ptr %i.aa, align 8, !tbaa !142
  %i.jn = fcmp olt double %.0.lcssa.i518, %i.jm
  br i1 %i.jn, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void (ptr, ptr, ...) @_ZNK6casadi13ProtoFunction5printEPKcz(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull @.str.67, i32 noundef %i.jh)
  %i.jo = getelementptr inbounds nuw i8, ptr %1, i64 536
  store ptr @.str.68, ptr %i.jo, align 8, !tbaa !230
  %i.jp = getelementptr inbounds nuw i8, ptr %1, i64 416
  store i8 1, ptr %i.jp, align 8, !tbaa !231
  br label %.thread529

bb.z:                                             ; preds = %bb.x, %bb.w, %bb.v
  %i.jq = load i64, ptr %i.ab, align 8, !tbaa !131
  %.not212 = icmp sgt i64 %i.jq, %i.ji
  br i1 %.not212, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void (ptr, ptr, ...) @_ZNK6casadi13ProtoFunction5printEPKcz(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull @.str.69)
  %i.jr = getelementptr inbounds nuw i8, ptr %1, i64 536
  store ptr @.str.70, ptr %i.jr, align 8, !tbaa !230
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 420
  store i32 2, ptr %i.js, align 4, !tbaa !232
  br label %.thread529

bb.ab:                                            ; preds = %bb.z
  %i.jt = icmp slt i32 %i.jh, 1
  %brmerge = or i1 %i.jt, %.not211
  br i1 %brmerge, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ju = load double, ptr %i.ac, align 8, !tbaa !143
  %i.jv = fcmp ugt double %.0.lcssa.i235, %i.ju
  br i1 %i.jv, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void (ptr, ptr, ...) @_ZNK6casadi13ProtoFunction5printEPKcz(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull @.str.71)
  %i.jw = getelementptr inbounds nuw i8, ptr %1, i64 536
  store ptr @.str.72, ptr %i.jw, align 8, !tbaa !230
end_hunk_0
begin_hunk_1_@_ZNK6casadi5Qrsqp5solveEPv:bb.a
  store double %i.abg, ptr %i.abe, align 8, !tbaa !136
  %i.abh = add nsw i64 %.14355.i, 2               ; 2 uses
  %exitcond61.not.i.1 = icmp eq i64 %i.abh, %i.aac
  br i1 %exitcond61.not.i.1, label %.loopexit.i353, label %.lr.ph56.i.new, !llvm.loop !268

_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit354: ; preds = %.loopexit.i353, %_ZN6casadi11casadi_fillIdEEvPT_xS1_.exit349, %bb.ay
  %i.abi = load ptr, ptr %i.ag, align 8, !tbaa !197 ; 3 uses
  %i.abj = call noundef ptr @_ZNK6casadi8SparsitycvPKxEv(ptr noundef nonnull align 8 dereferenceable(8) %i.af) ; 2 uses
  %i.abk = load ptr, ptr %i.w, align 8, !tbaa !195 ; 4 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abj, i64 8
  %i.abm = load i64, ptr %i.abl, align 8, !tbaa !213 ; 3 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abj, i64 16 ; 3 uses
  %i.abo = getelementptr inbounds [8 x i8], ptr %i.abn, i64 %i.abm
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abo, i64 8 ; 3 uses
  %i.abq = icmp sgt i64 %i.abm, 0
  br i1 %i.abq, label %.lr.ph29.preheader.i, label %_ZN6casadi12casadi_bilinIdEET_PKS1_PKxS3_S3_.exit.thread

.lr.ph29.preheader.i:                             ; preds = %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit354
  %.pre.i357 = load i64, ptr %i.abn, align 8, !tbaa !213
  br label %.lr.ph29.i

.loopexit.i358:                                   ; preds = %.prol.loopexit1194, %.lr.ph.i359.new, %.lr.ph29.i
  %.1.lcssa.i = phi double [ %.028.i, %.lr.ph29.i ], [ %.lcssa1131.unr, %.prol.loopexit1194 ], [ %i.acz, %.lr.ph.i359.new ] ; 2 uses
  %exitcond31.not.i = icmp eq i64 %i.abs, %i.abm
  br i1 %exitcond31.not.i, label %_ZN6casadi12casadi_bilinIdEET_PKS1_PKxS3_S3_.exit, label %.lr.ph29.i, !llvm.loop !269

.lr.ph29.i:                                       ; preds = %.loopexit.i358, %.lr.ph29.preheader.i
  %i.abr = phi i64 [ %i.abu, %.loopexit.i358 ], [ %.pre.i357, %.lr.ph29.preheader.i ] ; 7 uses
  %.028.i = phi double [ %.1.lcssa.i, %.loopexit.i358 ], [ 0.000000e+00, %.lr.ph29.preheader.i ] ; 3 uses
  %.02227.i = phi i64 [ %i.abs, %.loopexit.i358 ], [ 0, %.lr.ph29.preheader.i ] ; 2 uses
  %i.abs = add nuw nsw i64 %.02227.i, 1           ; 3 uses
  %i.abt = getelementptr inbounds nuw [8 x i8], ptr %i.abn, i64 %i.abs
  %i.abu = load i64, ptr %i.abt, align 8, !tbaa !213 ; 5 uses
  %i.abv = icmp slt i64 %i.abr, %i.abu
  br i1 %i.abv, label %.lr.ph.i359, label %.loopexit.i358

.lr.ph.i359:                                      ; preds = %.lr.ph29.i
  %i.abw = getelementptr inbounds nuw [8 x i8], ptr %i.abk, i64 %.02227.i
  %i.abx = load double, ptr %i.abw, align 8, !tbaa !136 ; 3 uses
  %i.aby = sub i64 %i.abu, %i.abr
  %.neg1243 = add i64 %i.abr, 1
  %xtraiter1195 = and i64 %i.aby, 1
  %lcmp.mod1196.not = icmp eq i64 %xtraiter1195, 0
  br i1 %lcmp.mod1196.not, label %.prol.loopexit1194, label %.prol.loopexit1194.unr-lcssa

.prol.loopexit1194.unr-lcssa:                     ; preds = %.lr.ph.i359
  %i.abz = getelementptr inbounds [8 x i8], ptr %i.abp, i64 %i.abr
  %i.aca = load i64, ptr %i.abz, align 8, !tbaa !213
  %i.acb = getelementptr inbounds [8 x i8], ptr %i.abk, i64 %i.aca
  %i.acc = load double, ptr %i.acb, align 8, !tbaa !136
  %i.acd = getelementptr inbounds [8 x i8], ptr %i.abi, i64 %i.abr
  %i.ace = load double, ptr %i.acd, align 8, !tbaa !136
  %i.acf = fmul double %i.acc, %i.ace
  %i.acg = call double @llvm.fmuladd.f64(double %i.acf, double %i.abx, double %.028.i) ; 2 uses
  %i.ach = add nsw i64 %i.abr, 1
  br label %.prol.loopexit1194

.prol.loopexit1194:                               ; preds = %.prol.loopexit1194.unr-lcssa, %.lr.ph.i359
  %.lcssa1131.unr = phi double [ poison, %.lr.ph.i359 ], [ %i.acg, %.prol.loopexit1194.unr-lcssa ]
  %.125.i.unr = phi double [ %.028.i, %.lr.ph.i359 ], [ %i.acg, %.prol.loopexit1194.unr-lcssa ]
  %.02324.i.unr = phi i64 [ %i.abr, %.lr.ph.i359 ], [ %i.ach, %.prol.loopexit1194.unr-lcssa ]
  %i.aci = icmp eq i64 %i.abu, %.neg1243
  br i1 %i.aci, label %.loopexit.i358, label %.lr.ph.i359.new

.lr.ph.i359.new:                                  ; preds = %.prol.loopexit1194, %.lr.ph.i359.new
  %.125.i = phi double [ %i.acz, %.lr.ph.i359.new ], [ %.125.i.unr, %.prol.loopexit1194 ]
  %.02324.i = phi i64 [ %i.ada, %.lr.ph.i359.new ], [ %.02324.i.unr, %.prol.loopexit1194 ] ; 4 uses
  %i.acj = getelementptr inbounds [8 x i8], ptr %i.abp, i64 %.02324.i
  %i.ack = load i64, ptr %i.acj, align 8, !tbaa !213
  %i.acl = getelementptr inbounds [8 x i8], ptr %i.abk, i64 %i.ack
  %i.acm = load double, ptr %i.acl, align 8, !tbaa !136
  %i.acn = getelementptr inbounds [8 x i8], ptr %i.abi, i64 %.02324.i
  %i.aco = load double, ptr %i.acn, align 8, !tbaa !136
  %i.acp = fmul double %i.acm, %i.aco
  %i.acq = call double @llvm.fmuladd.f64(double %i.acp, double %i.abx, double %.125.i)
  %i.acr = add nsw i64 %.02324.i, 1               ; 2 uses
  %i.acs = getelementptr inbounds [8 x i8], ptr %i.abp, i64 %i.acr
  %i.act = load i64, ptr %i.acs, align 8, !tbaa !213
  %i.acu = getelementptr inbounds [8 x i8], ptr %i.abk, i64 %i.act
  %i.acv = load double, ptr %i.acu, align 8, !tbaa !136
  %i.acw = getelementptr inbounds [8 x i8], ptr %i.abi, i64 %i.acr
  %i.acx = load double, ptr %i.acw, align 8, !tbaa !136
  %i.acy = fmul double %i.acv, %i.acx
  %i.acz = call double @llvm.fmuladd.f64(double %i.acy, double %i.abx, double %i.acq) ; 2 uses
  %i.ada = add nsw i64 %.02324.i, 2               ; 2 uses
  %exitcond.not.i360.1 = icmp eq i64 %i.ada, %i.abu
  br i1 %exitcond.not.i360.1, label %.loopexit.i358, label %.lr.ph.i359.new, !llvm.loop !270

_ZN6casadi12casadi_bilinIdEET_PKS1_PKxS3_S3_.exit: ; preds = %.loopexit.i358
  %i.adb = fcmp olt double %.1.lcssa.i, 0.000000e+00
  br i1 %i.adb, label %bb.az, label %_ZN6casadi12casadi_bilinIdEET_PKS1_PKxS3_S3_.exit.thread

bb.az:                                            ; preds = %_ZN6casadi12casadi_bilinIdEET_PKS1_PKxS3_S3_.exit
  call void (ptr, ptr, ...) @_ZNK6casadi13ProtoFunction5printEPKcz(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull @.str.73)
  br label %_ZN6casadi12casadi_bilinIdEET_PKS1_PKxS3_S3_.exit.thread

_ZN6casadi12casadi_bilinIdEET_PKS1_PKxS3_S3_.exit.thread: ; preds = %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit354, %bb.az, %_ZN6casadi12casadi_bilinIdEET_PKS1_PKxS3_S3_.exit
  %i.adc = load double, ptr %i.e, align 8, !tbaa !271 ; 2 uses
  %i.add = load i64, ptr %i.m, align 8, !tbaa !147 ; 6 uses
  %i.ade = load i64, ptr %i.t, align 8, !tbaa !153 ; 2 uses
  %i.adf = add nsw i64 %i.ade, %i.add             ; 5 uses
  %i.adg = icmp sgt i64 %i.adf, 0
  br i1 %i.adg, label %.lr.ph.i363.preheader, label %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit368

.lr.ph.i363.preheader:                            ; preds = %_ZN6casadi12casadi_bilinIdEET_PKS1_PKxS3_S3_.exit.thread
  %i.adh = load ptr, ptr %i.ao, align 8, !tbaa !196 ; 2 uses
  %i.adi = add i64 %i.add, -1
  %xtraiter1198 = and i64 %i.adf, 1
  %i.adj = sub i64 0, %i.ade
  %i.adk = icmp eq i64 %i.adi, %i.adj
  br i1 %i.adk, label %.lr.ph.i363.epil.preheader, label %.lr.ph.i363.preheader.new

.lr.ph.i363.preheader.new:                        ; preds = %.lr.ph.i363.preheader
  %unroll_iter1202 = and i64 %i.adf, 9223372036854775806
  br label %.lr.ph.i363

.lr.ph.i363:                                      ; preds = %.lr.ph.i363, %.lr.ph.i363.preheader.new
  %.09.i364 = phi double [ 0.000000e+00, %.lr.ph.i363.preheader.new ], [ %i.ads, %.lr.ph.i363 ]
  %.067.i366 = phi ptr [ %i.adh, %.lr.ph.i363.preheader.new ], [ %i.adp, %.lr.ph.i363 ] ; 3 uses
  %niter1203 = phi i64 [ 0, %.lr.ph.i363.preheader.new ], [ %niter1203.next.1, %.lr.ph.i363 ]
  %i.adl = getelementptr inbounds nuw i8, ptr %.067.i366, i64 8
  %i.adm = load double, ptr %.067.i366, align 8, !tbaa !136
  %i.adn = call nsz double @llvm.fabs.f64(double %i.adm)
  %i.ado = call nsz double @llvm.maxnum.f64(double %.09.i364, double %i.adn)
  %i.adp = getelementptr inbounds nuw i8, ptr %.067.i366, i64 16 ; 2 uses
  %i.adq = load double, ptr %i.adl, align 8, !tbaa !136
  %i.adr = call nsz double @llvm.fabs.f64(double %i.adq)
  %i.ads = call nsz double @llvm.maxnum.f64(double %i.ado, double %i.adr) ; 3 uses
  %niter1203.next.1 = add i64 %niter1203, 2       ; 2 uses
  %niter1203.ncmp.1 = icmp eq i64 %niter1203.next.1, %unroll_iter1202
  br i1 %niter1203.ncmp.1, label %.lr.ph.i371.preheader.unr-lcssa, label %.lr.ph.i363, !llvm.loop !227

_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit368:  ; preds = %_ZN6casadi12casadi_bilinIdEET_PKS1_PKxS3_S3_.exit.thread
  %i.adt = call nsz double @llvm.maxnum.f64(double %i.adc, double 0.000000e+00) ; 2 uses
  store double %i.adt, ptr %i.e, align 8, !tbaa !271
  br label %_ZN6casadi15casadi_max_violIdEET_xPKS1_S3_S3_.exit384

.lr.ph.i371.preheader.unr-lcssa:                  ; preds = %.lr.ph.i363
  %lcmp.mod1199.not = icmp eq i64 %xtraiter1198, 0
  br i1 %lcmp.mod1199.not, label %.lr.ph.i371.preheader, label %.lr.ph.i363.epil.preheader

.lr.ph.i363.epil.preheader:                       ; preds = %.lr.ph.i371.preheader.unr-lcssa, %.lr.ph.i363.preheader
  %.09.i364.epil.init = phi double [ 0.000000e+00, %.lr.ph.i363.preheader ], [ %i.ads, %.lr.ph.i371.preheader.unr-lcssa ]
  %.067.i366.epil.init = phi ptr [ %i.adh, %.lr.ph.i363.preheader ], [ %i.adp, %.lr.ph.i371.preheader.unr-lcssa ]
  %lcmp.mod1201 = trunc i64 %i.adf to i1
  call void @llvm.assume(i1 %lcmp.mod1201)
  %i.adu = load double, ptr %.067.i366.epil.init, align 8, !tbaa !136
  %i.adv = call nsz double @llvm.fabs.f64(double %i.adu)
  %i.adw = call nsz double @llvm.maxnum.f64(double %.09.i364.epil.init, double %i.adv)
  br label %.lr.ph.i371.preheader

.lr.ph.i371.preheader:                            ; preds = %.lr.ph.i371.preheader.unr-lcssa, %.lr.ph.i363.epil.preheader
  %.lcssa1132 = phi double [ %i.ads, %.lr.ph.i371.preheader.unr-lcssa ], [ %i.adw, %.lr.ph.i363.epil.preheader ]
  %i.adx = fmul nsz double %.lcssa1132, 1.010000e+00
  %i.ady = call nsz double @llvm.maxnum.f64(double %i.adc, double %i.adx) ; 2 uses
  store double %i.ady, ptr %i.e, align 8, !tbaa !271
  %i.adz = load ptr, ptr %i.v, align 8, !tbaa !224
  %i.aea = load ptr, ptr %i.u, align 8, !tbaa !225
  %i.aeb = load ptr, ptr %i.g, align 8, !tbaa !202
  br label %.lr.ph.i371

.lr.ph.i371:                                      ; preds = %.lr.ph.i371.preheader, %bb.bf
  %.027.i372 = phi ptr [ %.1.i378, %bb.bf ], [ %i.aeb, %.lr.ph.i371.preheader ] ; 3 uses
  %.01526.i373 = phi ptr [ %.116.i380, %bb.bf ], [ %i.aea, %.lr.ph.i371.preheader ] ; 3 uses
  %.01725.i374 = phi ptr [ %.118.i382, %bb.bf ], [ %i.adz, %.lr.ph.i371.preheader ] ; 3 uses
  %.01924.i375 = phi double [ %i.aem, %bb.bf ], [ 0.000000e+00, %.lr.ph.i371.preheader ]
  %.02023.i376 = phi i64 [ %i.aen, %bb.bf ], [ 0, %.lr.ph.i371.preheader ]
  %.not.i377 = icmp eq ptr %.027.i372, null
  br i1 %.not.i377, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph.i371
  %i.aec = getelementptr inbounds nuw i8, ptr %.027.i372, i64 8
  %i.aed = load double, ptr %.027.i372, align 8, !tbaa !136
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %.lr.ph.i371
  %.1.i378 = phi ptr [ %i.aec, %bb.ba ], [ null, %.lr.ph.i371 ]
  %i.aee = phi double [ %i.aed, %bb.ba ], [ 0.000000e+00, %.lr.ph.i371 ] ; 2 uses
  %.not21.i379 = icmp eq ptr %.01526.i373, null
  br i1 %.not21.i379, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.aef = getelementptr inbounds nuw i8, ptr %.01526.i373, i64 8
  %i.aeg = load double, ptr %.01526.i373, align 8, !tbaa !136
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.116.i380 = phi ptr [ %i.aef, %bb.bc ], [ null, %bb.bb ]
  %i.aeh = phi double [ %i.aeg, %bb.bc ], [ 0.000000e+00, %bb.bb ]
  %.not22.i381 = icmp eq ptr %.01725.i374, null
  br i1 %.not22.i381, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.aei = getelementptr inbounds nuw i8, ptr %.01725.i374, i64 8
  %i.aej = load double, ptr %.01725.i374, align 8, !tbaa !136
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.118.i382 = phi ptr [ %i.aei, %bb.be ], [ null, %bb.bd ]
  %i.aek = phi double [ %i.aej, %bb.be ], [ 0.000000e+00, %bb.bd ]
  %13 = insertelement <2 x double> poison, double %i.aee, i64 0
  %14 = insertelement <2 x double> %13, double %i.aeh, i64 1
  %15 = insertelement <2 x double> poison, double %i.aek, i64 0
  %16 = insertelement <2 x double> %15, double %i.aee, i64 1
  %17 = fsub nsz <2 x double> %14, %16
  %18 = call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %17, <2 x double> zeroinitializer) ; 2 uses
  %19 = extractelement <2 x double> %18, i64 0
  %i.ael = call nsz double @llvm.maxnum.f64(double %.01924.i375, double %19)
  %20 = extractelement <2 x double> %18, i64 1
  %i.aem = call nsz double @llvm.maxnum.f64(double %i.ael, double %20) ; 2 uses
  %i.aen = add nuw nsw i64 %.02023.i376, 1        ; 2 uses
  %exitcond.not.i383 = icmp eq i64 %i.aen, %i.adf
  br i1 %exitcond.not.i383, label %_ZN6casadi15casadi_max_violIdEET_xPKS1_S3_S3_.exit384, label %.lr.ph.i371, !llvm.loop !226

_ZN6casadi15casadi_max_violIdEET_xPKS1_S3_S3_.exit384: ; preds = %bb.bf, %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit368
  %i.aeo = phi double [ %i.adt, %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit368 ], [ %i.ady, %bb.bf ] ; 2 uses
  %.019.lcssa.i370 = phi double [ 0.000000e+00, %_ZN6casadi15casadi_norm_infIdEET_xPKS1_.exit368 ], [ %i.aem, %bb.bf ] ; 2 uses
  %i.aep = icmp sgt i64 %i.add, 0
  br i1 %i.aep, label %.lr.ph.i387.preheader, label %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit

.lr.ph.i387.preheader:                            ; preds = %_ZN6casadi15casadi_max_violIdEET_xPKS1_S3_S3_.exit384
  %i.aeq = load ptr, ptr %i.l, align 8, !tbaa !192 ; 2 uses
  %i.aer = load ptr, ptr %i.w, align 8, !tbaa !195 ; 2 uses
  %xtraiter1204 = and i64 %i.add, 3               ; 3 uses
  %i.aes = icmp ult i64 %i.add, 4
  br i1 %i.aes, label %.lr.ph.i387.epil.preheader, label %.lr.ph.i387.preheader.new

.lr.ph.i387.preheader.new:                        ; preds = %.lr.ph.i387.preheader
  %unroll_iter1208 = and i64 %i.add, 9223372036854775804
  br label %.lr.ph.i387

.lr.ph.i387:                                      ; preds = %.lr.ph.i387, %.lr.ph.i387.preheader.new
  %.012.i = phi double [ 0.000000e+00, %.lr.ph.i387.preheader.new ], [ %i.afm, %.lr.ph.i387 ]
  %.0710.i = phi ptr [ %i.aeq, %.lr.ph.i387.preheader.new ], [ %i.afk, %.lr.ph.i387 ] ; 5 uses
  %.089.i = phi ptr [ %i.aer, %.lr.ph.i387.preheader.new ], [ %i.afi, %.lr.ph.i387 ] ; 5 uses
  %niter1209 = phi i64 [ 0, %.lr.ph.i387.preheader.new ], [ %niter1209.next.3, %.lr.ph.i387 ]
  %i.aet = getelementptr inbounds nuw i8, ptr %.089.i, i64 8
  %i.aeu = load double, ptr %.089.i, align 8, !tbaa !136
  %i.aev = getelementptr inbounds nuw i8, ptr %.0710.i, i64 8
  %i.aew = load double, ptr %.0710.i, align 8, !tbaa !136
  %i.aex = call double @llvm.fmuladd.f64(double %i.aeu, double %i.aew, double %.012.i)
  %i.aey = getelementptr inbounds nuw i8, ptr %.089.i, i64 16
  %i.aez = load double, ptr %i.aet, align 8, !tbaa !136
  %i.afa = getelementptr inbounds nuw i8, ptr %.0710.i, i64 16
  %i.afb = load double, ptr %i.aev, align 8, !tbaa !136
  %i.afc = call double @llvm.fmuladd.f64(double %i.aez, double %i.afb, double %i.aex)
  %i.afd = getelementptr inbounds nuw i8, ptr %.089.i, i64 24
  %i.afe = load double, ptr %i.aey, align 8, !tbaa !136
  %i.aff = getelementptr inbounds nuw i8, ptr %.0710.i, i64 24
  %i.afg = load double, ptr %i.afa, align 8, !tbaa !136
  %i.afh = call double @llvm.fmuladd.f64(double %i.afe, double %i.afg, double %i.afc)
  %i.afi = getelementptr inbounds nuw i8, ptr %.089.i, i64 32 ; 2 uses
  %i.afj = load double, ptr %i.afd, align 8, !tbaa !136
  %i.afk = getelementptr inbounds nuw i8, ptr %.0710.i, i64 32 ; 2 uses
  %i.afl = load double, ptr %i.aff, align 8, !tbaa !136
  %i.afm = call double @llvm.fmuladd.f64(double %i.afj, double %i.afl, double %i.afh) ; 3 uses
  %niter1209.next.3 = add nuw nsw i64 %niter1209, 4 ; 2 uses
  %niter1209.ncmp.3 = icmp eq i64 %niter1209.next.3, %unroll_iter1208
  br i1 %niter1209.ncmp.3, label %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit.loopexit.unr-lcssa, label %.lr.ph.i387, !llvm.loop !272

_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i387
  %lcmp.mod1205.not = icmp eq i64 %xtraiter1204, 0
  br i1 %lcmp.mod1205.not, label %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit, label %.lr.ph.i387.epil.preheader

.lr.ph.i387.epil.preheader:                       ; preds = %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit.loopexit.unr-lcssa, %.lr.ph.i387.preheader
  %.012.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i387.preheader ], [ %i.afm, %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit.loopexit.unr-lcssa ]
  %.0710.i.epil.init = phi ptr [ %i.aeq, %.lr.ph.i387.preheader ], [ %i.afk, %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit.loopexit.unr-lcssa ]
  %.089.i.epil.init = phi ptr [ %i.aer, %.lr.ph.i387.preheader ], [ %i.afi, %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit.loopexit.unr-lcssa ]
  %lcmp.mod1207 = icmp ne i64 %xtraiter1204, 0
  call void @llvm.assume(i1 %lcmp.mod1207)
  br label %.lr.ph.i387.epil

.lr.ph.i387.epil:                                 ; preds = %.lr.ph.i387.epil, %.lr.ph.i387.epil.preheader
  %.012.i.epil = phi double [ %i.afr, %.lr.ph.i387.epil ], [ %.012.i.epil.init, %.lr.ph.i387.epil.preheader ]
  %.0710.i.epil = phi ptr [ %i.afp, %.lr.ph.i387.epil ], [ %.0710.i.epil.init, %.lr.ph.i387.epil.preheader ] ; 2 uses
  %.089.i.epil = phi ptr [ %i.afn, %.lr.ph.i387.epil ], [ %.089.i.epil.init, %.lr.ph.i387.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i387.epil ], [ 0, %.lr.ph.i387.epil.preheader ]
  %i.afn = getelementptr inbounds nuw i8, ptr %.089.i.epil, i64 8
  %i.afo = load double, ptr %.089.i.epil, align 8, !tbaa !136
  %i.afp = getelementptr inbounds nuw i8, ptr %.0710.i.epil, i64 8
  %i.afq = load double, ptr %.0710.i.epil, align 8, !tbaa !136
  %i.afr = call double @llvm.fmuladd.f64(double %i.afo, double %i.afq, double %.012.i.epil) ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1204
  br i1 %epil.iter.cmp.not, label %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit, label %.lr.ph.i387.epil, !llvm.loop !273

_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit:       ; preds = %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit.loopexit.unr-lcssa, %.lr.ph.i387.epil, %_ZN6casadi15casadi_max_violIdEET_xPKS1_S3_S3_.exit384
  %.0.lcssa.i386 = phi double [ 0.000000e+00, %_ZN6casadi15casadi_max_violIdEET_xPKS1_S3_S3_.exit384 ], [ %i.afm, %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit.loopexit.unr-lcssa ], [ %i.afr, %.lr.ph.i387.epil ]
  %i.afs = fneg double %i.aeo
  %i.aft = call double @llvm.fmuladd.f64(double %i.afs, double %.019.lcssa.i370, double %.0.lcssa.i386)
  %i.afu = load double, ptr %i.j, align 8, !tbaa !228
  %i.afv = call double @llvm.fmuladd.f64(double %i.aeo, double %.019.lcssa.i370, double %i.afu)
  %i.afw = load ptr, ptr %i.ap, align 8, !tbaa !199 ; 3 uses
  %i.afx = load i64, ptr %i.d, align 8, !tbaa !201 ; 2 uses
  %i.afy = getelementptr inbounds nuw [8 x i8], ptr %i.afw, i64 %i.afx
  store double %i.afv, ptr %i.afy, align 8, !tbaa !136
  %i.afz = load i64, ptr %i.aq, align 8, !tbaa !134 ; 3 uses
  %i.aga = add i64 %i.afx, 1
  %i.agb = urem i64 %i.aga, %i.afz
  store i64 %i.agb, ptr %i.d, align 8, !tbaa !201
  %i.agc = load double, ptr %i.afw, align 8, !tbaa !136 ; 2 uses
  %i.agd = icmp ugt i64 %i.afz, 1
  br i1 %i.agd, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit
  %i.age = load i32, ptr %i.c, align 8, !tbaa !200
  %i.agf = call i32 @llvm.umax.i32(i32 %i.age, i32 1)
  %umax = sext i32 %i.agf to i64
  br label %bb.bg

bb.bg:                                            ; preds = %.lr.ph, %bb.bh
  %.0579 = phi i64 [ 1, %.lr.ph ], [ %i.agl, %bb.bh ] ; 3 uses
  %.0184578 = phi double [ %i.agc, %.lr.ph ], [ %.1, %bb.bh ] ; 3 uses
  %exitcond.not = icmp eq i64 %.0579, %umax
  br i1 %exitcond.not, label %.critedge, label %bb.bh

.critedge:                                        ; preds = %bb.bg, %bb.bh, %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit
  %.0184.lcssa = phi double [ %i.agc, %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit ], [ %.1, %bb.bh ], [ %.0184578, %bb.bg ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.agg = load i8, ptr %i.ar, align 8, !tbaa !274, !range !145, !noundef !146
  %i.agh = trunc nuw i8 %i.agg to i1
  br i1 %i.agh, label %bb.bi, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %i.agi = getelementptr inbounds nuw [8 x i8], ptr %i.afw, i64 %.0579
  %i.agj = load double, ptr %i.agi, align 8, !tbaa !136 ; 2 uses
  %i.agk = fcmp olt double %.0184578, %i.agj
  %.1 = select i1 %i.agk, double %i.agj, double %.0184578 ; 2 uses
  %i.agl = add nuw i64 %.0579, 1                  ; 2 uses
  %exitcond602.not = icmp eq i64 %i.agl, %i.afz
  br i1 %exitcond602.not, label %.critedge, label %bb.bg, !llvm.loop !275

bb.bi:                                            ; preds = %.critedge
  call void (ptr, ptr, ...) @_ZNK6casadi13ProtoFunction5printEPKcz(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull @.str.74)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %.critedge
  %i.agm = load i64, ptr %i.as, align 8, !tbaa !132
  %i.agn = icmp sgt i64 %i.agm, 0
  br i1 %i.agn, label %.preheader.preheader, label %bb.bw

.preheader.preheader:                             ; preds = %bb.bj
  %i.ago = insertelement <2 x double> poison, double %i.aft, i64 1
  %i.agp = insertelement <2 x double> poison, double %.0184.lcssa, i64 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.backedge
  %.0194 = phi double [ %.0194.be, %.backedge ], [ 1.000000e+00, %.preheader.preheader ] ; 17 uses
  %.1188 = phi i64 [ %i.agq, %.backedge ], [ 0, %.preheader.preheader ]
  %i.agq = add nuw nsw i64 %.1188, 1              ; 5 uses
  %i.agr = load ptr, ptr %i.g, align 8, !tbaa !202 ; 5 uses
  %i.ags = ptrtoaddr ptr %i.agr to i64
  %i.agt = load i64, ptr %i.m, align 8, !tbaa !147 ; 16 uses
  %i.agu = load ptr, ptr %i.at, align 8, !tbaa !168 ; 13 uses
  %i.agv = ptrtoaddr ptr %i.agu to i64
  %.not.i389 = icmp eq ptr %i.agu, null
  br i1 %.not.i389, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit409, label %bb.bk

bb.bk:                                            ; preds = %.preheader
  %.not15.i390 = icmp eq ptr %i.agr, null
  %i.agw = icmp sgt i64 %i.agt, 0                 ; 2 uses
  br i1 %.not15.i390, label %.preheader.i398, label %.preheader16.i391

.preheader16.i391:                                ; preds = %bb.bk
  br i1 %i.agw, label %.lr.ph.i393.preheader, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit409

.lr.ph.i393.preheader:                            ; preds = %.preheader16.i391
  %min.iters.check892 = icmp ult i64 %i.agt, 4
  %i.agx = sub i64 %i.ags, %i.agv
  %diff.check890 = icmp ugt i64 %i.agx, -32
  %or.cond1107 = select i1 %min.iters.check892, i1 true, i1 %diff.check890
  br i1 %or.cond1107, label %.lr.ph.i393.preheader1111, label %vector.ph893

vector.ph893:                                     ; preds = %.lr.ph.i393.preheader
  %n.vec895 = and i64 %i.agt, 9223372036854775804 ; 4 uses
  %i.agy = shl i64 %n.vec895, 3                   ; 2 uses
  %i.agz = getelementptr i8, ptr %i.agu, i64 %i.agy
  %i.aha = getelementptr i8, ptr %i.agr, i64 %i.agy
  br label %vector.body896

vector.body896:                                   ; preds = %vector.body896, %vector.ph893
  %index897 = phi i64 [ 0, %vector.ph893 ], [ %index.next902, %vector.body896 ] ; 2 uses
  %i.ahb = shl i64 %index897, 3                   ; 2 uses
  %next.gep898 = getelementptr i8, ptr %i.agu, i64 %i.ahb ; 2 uses
  %next.gep899 = getelementptr i8, ptr %i.agr, i64 %i.ahb ; 2 uses
  %i.ahc = getelementptr i8, ptr %next.gep899, i64 16
  %wide.load900 = load <2 x double>, ptr %next.gep899, align 8, !tbaa !136
  %wide.load901 = load <2 x double>, ptr %i.ahc, align 8, !tbaa !136
  %i.ahd = getelementptr i8, ptr %next.gep898, i64 16
  store <2 x double> %wide.load900, ptr %next.gep898, align 8, !tbaa !136
  store <2 x double> %wide.load901, ptr %i.ahd, align 8, !tbaa !136
  %index.next902 = add nuw i64 %index897, 4       ; 2 uses
  %i.ahe = icmp eq i64 %index.next902, %n.vec895
  br i1 %i.ahe, label %middle.block903, label %vector.body896, !llvm.loop !276

middle.block903:                                  ; preds = %vector.body896
  %cmp.n904 = icmp eq i64 %i.agt, %n.vec895
  br i1 %cmp.n904, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit400, label %.lr.ph.i393.preheader1111

.lr.ph.i393.preheader1111:                        ; preds = %.lr.ph.i393.preheader, %middle.block903
  %.020.i394.ph = phi i64 [ 0, %.lr.ph.i393.preheader ], [ %n.vec895, %middle.block903 ] ; 4 uses
  %.01019.i395.ph = phi ptr [ %i.agu, %.lr.ph.i393.preheader ], [ %i.agz, %middle.block903 ] ; 2 uses
  %.01218.i396.ph = phi ptr [ %i.agr, %.lr.ph.i393.preheader ], [ %i.aha, %middle.block903 ] ; 2 uses
  %i.ahf = sub nsw i64 %i.agt, %.020.i394.ph
  %xtraiter1213 = and i64 %i.ahf, 7               ; 2 uses
  %lcmp.mod1214.not = icmp eq i64 %xtraiter1213, 0
  br i1 %lcmp.mod1214.not, label %.lr.ph.i393.prol.loopexit, label %.lr.ph.i393.prol

.lr.ph.i393.prol:                                 ; preds = %.lr.ph.i393.preheader1111, %.lr.ph.i393.prol
  %.020.i394.prol = phi i64 [ %i.ahj, %.lr.ph.i393.prol ], [ %.020.i394.ph, %.lr.ph.i393.preheader1111 ]
end_hunk_1
begin_hunk_2_@_ZNK6casadi5Qrsqp5solveEPv:bb.a
  br label %vector.body875

vector.body875:                                   ; preds = %vector.body875, %vector.ph870
  %index876 = phi i64 [ 0, %vector.ph870 ], [ %index.next883, %vector.body875 ] ; 2 uses
  %i.air = shl i64 %index876, 3                   ; 2 uses
  %next.gep877 = getelementptr i8, ptr %i.agu, i64 %i.air ; 3 uses
  %next.gep878 = getelementptr i8, ptr %i.aim, i64 %i.air ; 2 uses
  %i.ais = getelementptr i8, ptr %next.gep878, i64 16
  %wide.load879 = load <2 x double>, ptr %next.gep878, align 8, !tbaa !136, !alias.scope !279
  %wide.load880 = load <2 x double>, ptr %i.ais, align 8, !tbaa !136, !alias.scope !279
  %i.ait = getelementptr i8, ptr %next.gep877, i64 16 ; 2 uses
  %wide.load881 = load <2 x double>, ptr %next.gep877, align 8, !tbaa !136, !alias.scope !282, !noalias !279
  %wide.load882 = load <2 x double>, ptr %i.ait, align 8, !tbaa !136, !alias.scope !282, !noalias !279
  %i.aiu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat874, <2 x double> %wide.load879, <2 x double> %wide.load881)
  %i.aiv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat874, <2 x double> %wide.load880, <2 x double> %wide.load882)
  store <2 x double> %i.aiu, ptr %next.gep877, align 8, !tbaa !136, !alias.scope !282, !noalias !279
  store <2 x double> %i.aiv, ptr %i.ait, align 8, !tbaa !136, !alias.scope !282, !noalias !279
  %index.next883 = add nuw i64 %index876, 4       ; 2 uses
  %i.aiw = icmp eq i64 %index.next883, %n.vec872
  br i1 %i.aiw, label %middle.block884, label %vector.body875, !llvm.loop !284

middle.block884:                                  ; preds = %vector.body875
  %cmp.n885 = icmp eq i64 %i.agt, %n.vec872
  br i1 %cmp.n885, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit409, label %.lr.ph.i404.preheader1110

.lr.ph.i404.preheader1110:                        ; preds = %vector.memcheck862, %.lr.ph.i404.preheader, %middle.block884
  %.014.i405.ph = phi i64 [ 0, %vector.memcheck862 ], [ 0, %.lr.ph.i404.preheader ], [ %n.vec872, %middle.block884 ] ; 3 uses
  %.0813.i406.ph = phi ptr [ %i.agu, %vector.memcheck862 ], [ %i.agu, %.lr.ph.i404.preheader ], [ %i.aip, %middle.block884 ] ; 2 uses
  %.0912.i407.ph = phi ptr [ %i.aim, %vector.memcheck862 ], [ %i.aim, %.lr.ph.i404.preheader ], [ %i.aiq, %middle.block884 ] ; 2 uses
  %xtraiter1216 = and i64 %i.agt, 3               ; 2 uses
  %lcmp.mod1217.not = icmp eq i64 %xtraiter1216, 0
  br i1 %lcmp.mod1217.not, label %.lr.ph.i404.prol.loopexit, label %.lr.ph.i404.prol

.lr.ph.i404.prol:                                 ; preds = %.lr.ph.i404.preheader1110, %.lr.ph.i404.prol
  %.014.i405.prol = phi i64 [ %i.ajc, %.lr.ph.i404.prol ], [ %.014.i405.ph, %.lr.ph.i404.preheader1110 ]
  %.0813.i406.prol = phi ptr [ %i.aiz, %.lr.ph.i404.prol ], [ %.0813.i406.ph, %.lr.ph.i404.preheader1110 ] ; 3 uses
  %.0912.i407.prol = phi ptr [ %i.aix, %.lr.ph.i404.prol ], [ %.0912.i407.ph, %.lr.ph.i404.preheader1110 ] ; 2 uses
  %prol.iter1218 = phi i64 [ %prol.iter1218.next, %.lr.ph.i404.prol ], [ 0, %.lr.ph.i404.preheader1110 ]
  %i.aix = getelementptr inbounds nuw i8, ptr %.0912.i407.prol, i64 8 ; 2 uses
  %i.aiy = load double, ptr %.0912.i407.prol, align 8, !tbaa !136
  %i.aiz = getelementptr inbounds nuw i8, ptr %.0813.i406.prol, i64 8 ; 2 uses
  %i.aja = load double, ptr %.0813.i406.prol, align 8, !tbaa !136
  %i.ajb = call double @llvm.fmuladd.f64(double %.0194, double %i.aiy, double %i.aja)
  store double %i.ajb, ptr %.0813.i406.prol, align 8, !tbaa !136
  %i.ajc = add nuw nsw i64 %.014.i405.prol, 1     ; 2 uses
  %prol.iter1218.next = add i64 %prol.iter1218, 1 ; 2 uses
  %prol.iter1218.cmp.not = icmp eq i64 %prol.iter1218.next, %xtraiter1216
  br i1 %prol.iter1218.cmp.not, label %.lr.ph.i404.prol.loopexit, label %.lr.ph.i404.prol, !llvm.loop !285

.lr.ph.i404.prol.loopexit:                        ; preds = %.lr.ph.i404.prol, %.lr.ph.i404.preheader1110
  %.014.i405.unr = phi i64 [ %.014.i405.ph, %.lr.ph.i404.preheader1110 ], [ %i.ajc, %.lr.ph.i404.prol ]
  %.0813.i406.unr = phi ptr [ %.0813.i406.ph, %.lr.ph.i404.preheader1110 ], [ %i.aiz, %.lr.ph.i404.prol ]
  %.0912.i407.unr = phi ptr [ %.0912.i407.ph, %.lr.ph.i404.preheader1110 ], [ %i.aix, %.lr.ph.i404.prol ]
  %i.ajd = sub i64 %.014.i405.ph, %i.agt
  %i.aje = icmp ugt i64 %i.ajd, -4
  br i1 %i.aje, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit409, label %.lr.ph.i404

.lr.ph.i404:                                      ; preds = %.lr.ph.i404.prol.loopexit, %.lr.ph.i404
  %.014.i405 = phi i64 [ %i.ajz, %.lr.ph.i404 ], [ %.014.i405.unr, %.lr.ph.i404.prol.loopexit ]
  %.0813.i406 = phi ptr [ %i.ajw, %.lr.ph.i404 ], [ %.0813.i406.unr, %.lr.ph.i404.prol.loopexit ] ; 6 uses
  %.0912.i407 = phi ptr [ %i.aju, %.lr.ph.i404 ], [ %.0912.i407.unr, %.lr.ph.i404.prol.loopexit ] ; 5 uses
  %i.ajf = getelementptr inbounds nuw i8, ptr %.0912.i407, i64 8
  %i.ajg = load double, ptr %.0912.i407, align 8, !tbaa !136
  %i.ajh = getelementptr inbounds nuw i8, ptr %.0813.i406, i64 8 ; 2 uses
  %i.aji = load double, ptr %.0813.i406, align 8, !tbaa !136
  %i.ajj = call double @llvm.fmuladd.f64(double %.0194, double %i.ajg, double %i.aji)
  store double %i.ajj, ptr %.0813.i406, align 8, !tbaa !136
  %i.ajk = getelementptr inbounds nuw i8, ptr %.0912.i407, i64 16
  %i.ajl = load double, ptr %i.ajf, align 8, !tbaa !136
  %i.ajm = getelementptr inbounds nuw i8, ptr %.0813.i406, i64 16 ; 2 uses
  %i.ajn = load double, ptr %i.ajh, align 8, !tbaa !136
  %i.ajo = call double @llvm.fmuladd.f64(double %.0194, double %i.ajl, double %i.ajn)
  store double %i.ajo, ptr %i.ajh, align 8, !tbaa !136
  %i.ajp = getelementptr inbounds nuw i8, ptr %.0912.i407, i64 24
  %i.ajq = load double, ptr %i.ajk, align 8, !tbaa !136
  %i.ajr = getelementptr inbounds nuw i8, ptr %.0813.i406, i64 24 ; 2 uses
  %i.ajs = load double, ptr %i.ajm, align 8, !tbaa !136
  %i.ajt = call double @llvm.fmuladd.f64(double %.0194, double %i.ajq, double %i.ajs)
  store double %i.ajt, ptr %i.ajm, align 8, !tbaa !136
  %i.aju = getelementptr inbounds nuw i8, ptr %.0912.i407, i64 32
  %i.ajv = load double, ptr %i.ajp, align 8, !tbaa !136
  %i.ajw = getelementptr inbounds nuw i8, ptr %.0813.i406, i64 32
  %i.ajx = load double, ptr %i.ajr, align 8, !tbaa !136
  %i.ajy = call double @llvm.fmuladd.f64(double %.0194, double %i.ajv, double %i.ajx)
  store double %i.ajy, ptr %i.ajr, align 8, !tbaa !136
  %i.ajz = add nuw nsw i64 %.014.i405, 4          ; 2 uses
  %exitcond.not.i408.3 = icmp eq i64 %i.ajz, %i.agt
  br i1 %exitcond.not.i408.3, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit409, label %.lr.ph.i404, !llvm.loop !286

_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit409: ; preds = %.lr.ph.i404.prol.loopexit, %.lr.ph.i404, %middle.block884, %.preheader.i398, %.preheader16.i391, %.preheader, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit400
  %i.aka = load ptr, ptr %i.h, align 8, !tbaa !203 ; 2 uses
  store ptr %i.agu, ptr %i.aka, align 8, !tbaa !166
  %i.akb = load ptr, ptr %i.i, align 8, !tbaa !204
  %i.akc = getelementptr inbounds nuw i8, ptr %i.aka, i64 8
  store ptr %i.akb, ptr %i.akc, align 8, !tbaa !166
  %i.akd = load ptr, ptr %i.k, align 8, !tbaa !205 ; 2 uses
  store ptr %i.b, ptr %i.akd, align 8, !tbaa !166
  %i.ake = load ptr, ptr %i.at, align 8, !tbaa !168
  %i.akf = getelementptr inbounds [8 x i8], ptr %i.ake, i64 %i.agt
  %i.akg = getelementptr inbounds nuw i8, ptr %i.akd, i64 8
  store ptr %i.akf, ptr %i.akg, align 8, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store ptr %i.au, ptr %4, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.au, ptr noundef nonnull align 1 dereferenceable(6) @.str.41, i64 6, i1 false)
  store i64 6, ptr %i.av, align 8, !tbaa !17
  store i8 0, ptr %i.az, align 2, !tbaa !16
  %i.akh = invoke noundef i32 @_ZNK6casadi14OracleFunction13calc_functionEPNS_12OracleMemoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKPKdi(ptr noundef nonnull align 8 dereferenceable(1529) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef null, i32 noundef 0)
          to label %bb.bl unwind label %bb.bm

bb.bl:                                            ; preds = %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit409
  %.not221 = icmp eq i32 %i.akh, 0
  %i.aki = load ptr, ptr %4, align 8, !tbaa !14   ; 2 uses
  %i.akj = icmp eq ptr %i.aki, %i.au
  br i1 %i.akj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit416, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i414

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i414: ; preds = %bb.bl
  %i.akk = load i64, ptr %i.au, align 8, !tbaa !16
  %i.akl = add i64 %i.akk, 1
  call void @_ZdlPvm(ptr noundef %i.aki, i64 noundef %i.akl) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit416

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit416: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i414
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br i1 %.not221, label %bb.bn, label %.backedge

.backedge:                                        ; preds = %bb.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit416
  %.pn = load double, ptr %.pn.in, align 8, !tbaa !133
  %.0194.be = fmul double %.0194, %.pn
  br label %.preheader, !llvm.loop !287

bb.bm:                                            ; preds = %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit409
  %i.akm = landingpad { ptr, i32 }
          cleanup
  %i.akn = load ptr, ptr %4, align 8, !tbaa !14   ; 2 uses
  %i.ako = icmp eq ptr %i.akn, %i.au
  br i1 %i.ako, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit419, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i417

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i417: ; preds = %bb.bm
  %i.akp = load i64, ptr %i.au, align 8, !tbaa !16
  %i.akq = add i64 %i.akp, 1
  call void @_ZdlPvm(ptr noundef %i.akn, i64 noundef %i.akq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit419

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit419: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i417
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %bb.cb

bb.bn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit416
  %i.akr = load i64, ptr %i.m, align 8, !tbaa !147 ; 11 uses
  %i.aks = load i64, ptr %i.t, align 8, !tbaa !153 ; 3 uses
  %i.akt = add nsw i64 %i.aks, %i.akr             ; 11 uses
  %i.aku = icmp sgt i64 %i.akt, 0                 ; 3 uses
  br i1 %i.aku, label %.lr.ph.i422.preheader, label %_ZN6casadi15casadi_max_violIdEET_xPKS1_S3_S3_.exit435

.lr.ph.i422.preheader:                            ; preds = %bb.bn
  %i.akv = load ptr, ptr %i.v, align 8, !tbaa !224
  %i.akw = load ptr, ptr %i.u, align 8, !tbaa !225
  %i.akx = load ptr, ptr %i.at, align 8, !tbaa !168
  br label %.lr.ph.i422

.lr.ph.i422:                                      ; preds = %.lr.ph.i422.preheader, %bb.bt
  %.027.i423 = phi ptr [ %.1.i429, %bb.bt ], [ %i.akx, %.lr.ph.i422.preheader ] ; 3 uses
  %.01526.i424 = phi ptr [ %.116.i431, %bb.bt ], [ %i.akw, %.lr.ph.i422.preheader ] ; 3 uses
  %.01725.i425 = phi ptr [ %.118.i433, %bb.bt ], [ %i.akv, %.lr.ph.i422.preheader ] ; 3 uses
  %.01924.i426 = phi double [ %i.ali, %bb.bt ], [ 0.000000e+00, %.lr.ph.i422.preheader ]
  %.02023.i427 = phi i64 [ %i.alj, %bb.bt ], [ 0, %.lr.ph.i422.preheader ]
  %.not.i428 = icmp eq ptr %.027.i423, null
  br i1 %.not.i428, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %.lr.ph.i422
  %i.aky = getelementptr inbounds nuw i8, ptr %.027.i423, i64 8
  %i.akz = load double, ptr %.027.i423, align 8, !tbaa !136
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %.lr.ph.i422
  %.1.i429 = phi ptr [ %i.aky, %bb.bo ], [ null, %.lr.ph.i422 ]
  %i.ala = phi double [ %i.akz, %bb.bo ], [ 0.000000e+00, %.lr.ph.i422 ] ; 2 uses
  %.not21.i430 = icmp eq ptr %.01526.i424, null
  br i1 %.not21.i430, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.alb = getelementptr inbounds nuw i8, ptr %.01526.i424, i64 8
  %i.alc = load double, ptr %.01526.i424, align 8, !tbaa !136
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.116.i431 = phi ptr [ %i.alb, %bb.bq ], [ null, %bb.bp ]
  %i.ald = phi double [ %i.alc, %bb.bq ], [ 0.000000e+00, %bb.bp ]
  %.not22.i432 = icmp eq ptr %.01725.i425, null
  br i1 %.not22.i432, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ale = getelementptr inbounds nuw i8, ptr %.01725.i425, i64 8
  %i.alf = load double, ptr %.01725.i425, align 8, !tbaa !136
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.118.i433 = phi ptr [ %i.ale, %bb.bs ], [ null, %bb.br ]
  %i.alg = phi double [ %i.alf, %bb.bs ], [ 0.000000e+00, %bb.br ]
  %21 = insertelement <2 x double> poison, double %i.ala, i64 0
  %22 = insertelement <2 x double> %21, double %i.ald, i64 1
  %23 = insertelement <2 x double> poison, double %i.alg, i64 0
  %24 = insertelement <2 x double> %23, double %i.ala, i64 1
  %25 = fsub nsz <2 x double> %22, %24
  %26 = call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %25, <2 x double> zeroinitializer) ; 2 uses
  %27 = extractelement <2 x double> %26, i64 0
  %i.alh = call nsz double @llvm.maxnum.f64(double %.01924.i426, double %27)
  %28 = extractelement <2 x double> %26, i64 1
  %i.ali = call nsz double @llvm.maxnum.f64(double %i.alh, double %28) ; 2 uses
  %i.alj = add nuw nsw i64 %.02023.i427, 1        ; 2 uses
  %exitcond.not.i434 = icmp eq i64 %i.alj, %i.akt
  br i1 %exitcond.not.i434, label %_ZN6casadi15casadi_max_violIdEET_xPKS1_S3_S3_.exit435, label %.lr.ph.i422, !llvm.loop !226

_ZN6casadi15casadi_max_violIdEET_xPKS1_S3_S3_.exit435: ; preds = %bb.bt, %bb.bn
  %.019.lcssa.i421 = phi double [ 0.000000e+00, %bb.bn ], [ %i.ali, %bb.bt ]
  %i.alk = load double, ptr %i.b, align 8, !tbaa !136
  %i.all = load double, ptr %i.e, align 8, !tbaa !271
  %i.alm = load double, ptr %i.aw, align 8, !tbaa !140
  %i.aln = fmul double %.0194, %i.alm
  %i.alo = insertelement <2 x double> poison, double %i.all, i64 0
  %i.alp = insertelement <2 x double> %i.alo, double %i.aln, i64 1
  %i.alq = insertelement <2 x double> %i.ago, double %.019.lcssa.i421, i64 0
  %i.alr = insertelement <2 x double> %i.agp, double %i.alk, i64 0
  %i.als = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.alp, <2 x double> %i.alq, <2 x double> %i.alr) ; 2 uses
  %i.alt = extractelement <2 x double> %i.als, i64 0
  %i.alu = extractelement <2 x double> %i.als, i64 1
  %i.alv = fcmp ole double %i.alt, %i.alu         ; 4 uses
  br i1 %i.alv, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %_ZN6casadi15casadi_max_violIdEET_xPKS1_S3_S3_.exit435
  %i.alw = load i64, ptr %i.as, align 8, !tbaa !132
  %i.alx = icmp eq i64 %i.agq, %i.alw
  br i1 %i.alx, label %bb.bv, label %.backedge

bb.bv:                                            ; preds = %bb.bu, %_ZN6casadi15casadi_max_violIdEET_xPKS1_S3_S3_.exit435
  %i.aly = fsub double 1.000000e+00, %.0194       ; 2 uses
  %i.alz = load ptr, ptr %i.s, align 8, !tbaa !212 ; 10 uses
  %.not.i436 = icmp ne ptr %i.alz, null           ; 2 uses
  %or.cond.i437 = and i1 %i.aku, %.not.i436
  br i1 %or.cond.i437, label %.lr.ph.i439.preheader, label %_ZN6casadi11casadi_scalIdEEvxT_PS1_.exit

.lr.ph.i439.preheader:                            ; preds = %bb.bv
  %min.iters.check846 = icmp ult i64 %i.akt, 4
  br i1 %min.iters.check846, label %.lr.ph.i439.preheader1117, label %vector.ph847

vector.ph847:                                     ; preds = %.lr.ph.i439.preheader
  %n.vec849 = and i64 %i.akt, 9223372036854775804 ; 4 uses
  %i.ama = shl i64 %n.vec849, 3
  %i.amb = getelementptr i8, ptr %i.alz, i64 %i.ama
  %broadcast.splatinsert850 = insertelement <2 x double> poison, double %i.aly, i64 0
  %broadcast.splat851 = shufflevector <2 x double> %broadcast.splatinsert850, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body852

vector.body852:                                   ; preds = %vector.body852, %vector.ph847
  %index853 = phi i64 [ 0, %vector.ph847 ], [ %index.next857, %vector.body852 ] ; 2 uses
  %i.amc = shl i64 %index853, 3
  %next.gep854 = getelementptr i8, ptr %i.alz, i64 %i.amc ; 3 uses
  %i.amd = getelementptr i8, ptr %next.gep854, i64 16 ; 2 uses
  %wide.load855 = load <2 x double>, ptr %next.gep854, align 8, !tbaa !136
  %wide.load856 = load <2 x double>, ptr %i.amd, align 8, !tbaa !136
  %i.ame = fmul <2 x double> %broadcast.splat851, %wide.load855
  %i.amf = fmul <2 x double> %broadcast.splat851, %wide.load856
  store <2 x double> %i.ame, ptr %next.gep854, align 8, !tbaa !136
  store <2 x double> %i.amf, ptr %i.amd, align 8, !tbaa !136
  %index.next857 = add nuw i64 %index853, 4       ; 2 uses
  %i.amg = icmp eq i64 %index.next857, %n.vec849
  br i1 %i.amg, label %middle.block858, label %vector.body852, !llvm.loop !288

middle.block858:                                  ; preds = %vector.body852
  %cmp.n859 = icmp eq i64 %i.akt, %n.vec849
  br i1 %cmp.n859, label %_ZN6casadi11casadi_scalIdEEvxT_PS1_.exit, label %.lr.ph.i439.preheader1117

.lr.ph.i439.preheader1117:                        ; preds = %.lr.ph.i439.preheader, %middle.block858
  %.08.i440.ph = phi i64 [ 0, %.lr.ph.i439.preheader ], [ %n.vec849, %middle.block858 ]
  %.057.i441.ph = phi ptr [ %i.alz, %.lr.ph.i439.preheader ], [ %i.amb, %middle.block858 ]
  br label %.lr.ph.i439

.lr.ph.i439:                                      ; preds = %.lr.ph.i439.preheader1117, %.lr.ph.i439
  %.08.i440 = phi i64 [ %i.amk, %.lr.ph.i439 ], [ %.08.i440.ph, %.lr.ph.i439.preheader1117 ]
  %.057.i441 = phi ptr [ %i.amh, %.lr.ph.i439 ], [ %.057.i441.ph, %.lr.ph.i439.preheader1117 ] ; 3 uses
  %i.amh = getelementptr inbounds nuw i8, ptr %.057.i441, i64 8
  %i.ami = load double, ptr %.057.i441, align 8, !tbaa !136
  %i.amj = fmul double %i.aly, %i.ami
  store double %i.amj, ptr %.057.i441, align 8, !tbaa !136
  %i.amk = add nuw nsw i64 %.08.i440, 1           ; 2 uses
  %exitcond.not.i442 = icmp eq i64 %i.amk, %i.akt
  br i1 %exitcond.not.i442, label %_ZN6casadi11casadi_scalIdEEvxT_PS1_.exit, label %.lr.ph.i439, !llvm.loop !289

_ZN6casadi11casadi_scalIdEEvxT_PS1_.exit:         ; preds = %.lr.ph.i439, %middle.block858, %bb.bv
  %i.aml = load ptr, ptr %i.ao, align 8, !tbaa !196 ; 7 uses
  %i.amm = icmp ne ptr %i.aml, null
  %or.cond.i443 = and i1 %.not.i436, %i.amm
  %or.cond15.i444 = and i1 %i.aku, %or.cond.i443
  br i1 %or.cond15.i444, label %.lr.ph.i446.preheader, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit451

.lr.ph.i446.preheader:                            ; preds = %_ZN6casadi11casadi_scalIdEEvxT_PS1_.exit
  %min.iters.check825 = icmp ult i64 %i.akt, 4
  br i1 %min.iters.check825, label %.lr.ph.i446.preheader1116, label %vector.memcheck818

vector.memcheck818:                               ; preds = %.lr.ph.i446.preheader
  %i.amn = shl i64 %i.akt, 3                      ; 2 uses
  %scevgep819 = getelementptr i8, ptr %i.alz, i64 %i.amn
  %scevgep820 = getelementptr i8, ptr %i.aml, i64 %i.amn
  %bound0821 = icmp ult ptr %i.alz, %scevgep820
  %bound1822 = icmp ult ptr %i.aml, %scevgep819
  %found.conflict823 = and i1 %bound0821, %bound1822
  br i1 %found.conflict823, label %.lr.ph.i446.preheader1116, label %vector.ph826

vector.ph826:                                     ; preds = %vector.memcheck818
  %n.vec828 = and i64 %i.akt, 9223372036854775804 ; 4 uses
  %i.amo = shl i64 %n.vec828, 3                   ; 2 uses
  %i.amp = getelementptr i8, ptr %i.alz, i64 %i.amo
  %i.amq = getelementptr i8, ptr %i.aml, i64 %i.amo
  %broadcast.splatinsert829 = insertelement <2 x double> poison, double %.0194, i64 0
  %broadcast.splat830 = shufflevector <2 x double> %broadcast.splatinsert829, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body831

vector.body831:                                   ; preds = %vector.body831, %vector.ph826
  %index832 = phi i64 [ 0, %vector.ph826 ], [ %index.next839, %vector.body831 ] ; 2 uses
  %i.amr = shl i64 %index832, 3                   ; 2 uses
  %next.gep833 = getelementptr i8, ptr %i.alz, i64 %i.amr ; 3 uses
  %next.gep834 = getelementptr i8, ptr %i.aml, i64 %i.amr ; 2 uses
  %i.ams = getelementptr i8, ptr %next.gep834, i64 16
  %wide.load835 = load <2 x double>, ptr %next.gep834, align 8, !tbaa !136, !alias.scope !290
  %wide.load836 = load <2 x double>, ptr %i.ams, align 8, !tbaa !136, !alias.scope !290
  %i.amt = getelementptr i8, ptr %next.gep833, i64 16 ; 2 uses
  %wide.load837 = load <2 x double>, ptr %next.gep833, align 8, !tbaa !136, !alias.scope !293, !noalias !290
  %wide.load838 = load <2 x double>, ptr %i.amt, align 8, !tbaa !136, !alias.scope !293, !noalias !290
  %i.amu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat830, <2 x double> %wide.load835, <2 x double> %wide.load837)
  %i.amv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat830, <2 x double> %wide.load836, <2 x double> %wide.load838)
  store <2 x double> %i.amu, ptr %next.gep833, align 8, !tbaa !136, !alias.scope !293, !noalias !290
  store <2 x double> %i.amv, ptr %i.amt, align 8, !tbaa !136, !alias.scope !293, !noalias !290
  %index.next839 = add nuw i64 %index832, 4       ; 2 uses
  %i.amw = icmp eq i64 %index.next839, %n.vec828
  br i1 %i.amw, label %middle.block840, label %vector.body831, !llvm.loop !295

middle.block840:                                  ; preds = %vector.body831
  %cmp.n841 = icmp eq i64 %i.akt, %n.vec828
  br i1 %cmp.n841, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit451, label %.lr.ph.i446.preheader1116

.lr.ph.i446.preheader1116:                        ; preds = %vector.memcheck818, %.lr.ph.i446.preheader, %middle.block840
  %.014.i447.ph = phi i64 [ 0, %vector.memcheck818 ], [ 0, %.lr.ph.i446.preheader ], [ %n.vec828, %middle.block840 ] ; 3 uses
  %.0813.i448.ph = phi ptr [ %i.alz, %vector.memcheck818 ], [ %i.alz, %.lr.ph.i446.preheader ], [ %i.amp, %middle.block840 ] ; 2 uses
  %.0912.i449.ph = phi ptr [ %i.aml, %vector.memcheck818 ], [ %i.aml, %.lr.ph.i446.preheader ], [ %i.amq, %middle.block840 ] ; 2 uses
  %i.amx = add i64 %i.akr, %i.aks
  %xtraiter1221 = and i64 %i.amx, 3               ; 2 uses
  %lcmp.mod1222.not = icmp eq i64 %xtraiter1221, 0
  br i1 %lcmp.mod1222.not, label %.lr.ph.i446.prol.loopexit, label %.lr.ph.i446.prol

.lr.ph.i446.prol:                                 ; preds = %.lr.ph.i446.preheader1116, %.lr.ph.i446.prol
  %.014.i447.prol = phi i64 [ %i.and, %.lr.ph.i446.prol ], [ %.014.i447.ph, %.lr.ph.i446.preheader1116 ]
  %.0813.i448.prol = phi ptr [ %i.ana, %.lr.ph.i446.prol ], [ %.0813.i448.ph, %.lr.ph.i446.preheader1116 ] ; 3 uses
  %.0912.i449.prol = phi ptr [ %i.amy, %.lr.ph.i446.prol ], [ %.0912.i449.ph, %.lr.ph.i446.preheader1116 ] ; 2 uses
  %prol.iter1223 = phi i64 [ %prol.iter1223.next, %.lr.ph.i446.prol ], [ 0, %.lr.ph.i446.preheader1116 ]
  %i.amy = getelementptr inbounds nuw i8, ptr %.0912.i449.prol, i64 8 ; 2 uses
  %i.amz = load double, ptr %.0912.i449.prol, align 8, !tbaa !136
  %i.ana = getelementptr inbounds nuw i8, ptr %.0813.i448.prol, i64 8 ; 2 uses
  %i.anb = load double, ptr %.0813.i448.prol, align 8, !tbaa !136
  %i.anc = call double @llvm.fmuladd.f64(double %.0194, double %i.amz, double %i.anb)
  store double %i.anc, ptr %.0813.i448.prol, align 8, !tbaa !136
  %i.and = add nuw nsw i64 %.014.i447.prol, 1     ; 2 uses
  %prol.iter1223.next = add i64 %prol.iter1223, 1 ; 2 uses
  %prol.iter1223.cmp.not = icmp eq i64 %prol.iter1223.next, %xtraiter1221
  br i1 %prol.iter1223.cmp.not, label %.lr.ph.i446.prol.loopexit, label %.lr.ph.i446.prol, !llvm.loop !296

.lr.ph.i446.prol.loopexit:                        ; preds = %.lr.ph.i446.prol, %.lr.ph.i446.preheader1116
  %.014.i447.unr = phi i64 [ %.014.i447.ph, %.lr.ph.i446.preheader1116 ], [ %i.and, %.lr.ph.i446.prol ]
  %.0813.i448.unr = phi ptr [ %.0813.i448.ph, %.lr.ph.i446.preheader1116 ], [ %i.ana, %.lr.ph.i446.prol ]
  %.0912.i449.unr = phi ptr [ %.0912.i449.ph, %.lr.ph.i446.preheader1116 ], [ %i.amy, %.lr.ph.i446.prol ]
  %i.ane = add i64 %i.akr, %i.aks
  %i.anf = sub i64 %.014.i447.ph, %i.ane
  %i.ang = icmp ugt i64 %i.anf, -4
  br i1 %i.ang, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit451, label %.lr.ph.i446

.lr.ph.i446:                                      ; preds = %.lr.ph.i446.prol.loopexit, %.lr.ph.i446
  %.014.i447 = phi i64 [ %i.aob, %.lr.ph.i446 ], [ %.014.i447.unr, %.lr.ph.i446.prol.loopexit ]
  %.0813.i448 = phi ptr [ %i.any, %.lr.ph.i446 ], [ %.0813.i448.unr, %.lr.ph.i446.prol.loopexit ] ; 6 uses
  %.0912.i449 = phi ptr [ %i.anw, %.lr.ph.i446 ], [ %.0912.i449.unr, %.lr.ph.i446.prol.loopexit ] ; 5 uses
  %i.anh = getelementptr inbounds nuw i8, ptr %.0912.i449, i64 8
  %i.ani = load double, ptr %.0912.i449, align 8, !tbaa !136
  %i.anj = getelementptr inbounds nuw i8, ptr %.0813.i448, i64 8 ; 2 uses
  %i.ank = load double, ptr %.0813.i448, align 8, !tbaa !136
  %i.anl = call double @llvm.fmuladd.f64(double %.0194, double %i.ani, double %i.ank)
  store double %i.anl, ptr %.0813.i448, align 8, !tbaa !136
  %i.anm = getelementptr inbounds nuw i8, ptr %.0912.i449, i64 16
  %i.ann = load double, ptr %i.anh, align 8, !tbaa !136
  %i.ano = getelementptr inbounds nuw i8, ptr %.0813.i448, i64 16 ; 2 uses
  %i.anp = load double, ptr %i.anj, align 8, !tbaa !136
  %i.anq = call double @llvm.fmuladd.f64(double %.0194, double %i.ann, double %i.anp)
  store double %i.anq, ptr %i.anj, align 8, !tbaa !136
  %i.anr = getelementptr inbounds nuw i8, ptr %.0912.i449, i64 24
  %i.ans = load double, ptr %i.anm, align 8, !tbaa !136
  %i.ant = getelementptr inbounds nuw i8, ptr %.0813.i448, i64 24 ; 2 uses
  %i.anu = load double, ptr %i.ano, align 8, !tbaa !136
  %i.anv = call double @llvm.fmuladd.f64(double %.0194, double %i.ans, double %i.anu)
  store double %i.anv, ptr %i.ano, align 8, !tbaa !136
  %i.anw = getelementptr inbounds nuw i8, ptr %.0912.i449, i64 32
  %i.anx = load double, ptr %i.anr, align 8, !tbaa !136
  %i.any = getelementptr inbounds nuw i8, ptr %.0813.i448, i64 32
  %i.anz = load double, ptr %i.ant, align 8, !tbaa !136
  %i.aoa = call double @llvm.fmuladd.f64(double %.0194, double %i.anx, double %i.anz)
  store double %i.aoa, ptr %i.ant, align 8, !tbaa !136
  %i.aob = add nuw nsw i64 %.014.i447, 4          ; 2 uses
  %exitcond.not.i450.3 = icmp eq i64 %i.aob, %i.akt
  br i1 %exitcond.not.i450.3, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit451, label %.lr.ph.i446, !llvm.loop !297

_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit451: ; preds = %.lr.ph.i446.prol.loopexit, %.lr.ph.i446, %middle.block840, %_ZN6casadi11casadi_scalIdEEvxT_PS1_.exit
  %i.aoc = load ptr, ptr %i.w, align 8, !tbaa !195 ; 4 uses
  %.not.i452 = icmp ne ptr %i.aoc, null
end_hunk_2
begin_hunk_3_@_GLOBAL__sub_I_qrsqp.cpp:bb.a
  %i.aae = add i64 %i.aad, 1
  call void @_ZdlPvm(ptr noundef %i.aab, i64 noundef %i.aae) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit487.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit487.i: ; preds = %_ZN6casadi7Options5EntryD2Ev.exit484.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i485.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.bb

bb.bb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit487.i, %bb.r
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit487.i ], [ %i.vm, %bb.r ] ; 2 uses
  %.3342.i = phi ptr [ %.3140.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit487.i ], [ %i.dr, %bb.r ] ; 2 uses
  %.36.i = phi i1 [ %.34.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit487.i ], [ false, %bb.r ] ; 2 uses
  %i.aaf = load ptr, ptr %i.dv, align 8, !tbaa !14 ; 2 uses
  %i.aag = icmp eq ptr %i.aaf, %i.dw
  br i1 %i.aag, label %_ZN6casadi7Options5EntryD2Ev.exit490.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i488.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i488.i: ; preds = %bb.bb
  %i.aah = load i64, ptr %i.dw, align 8, !tbaa !16
  %i.aai = add i64 %i.aah, 1
  call void @_ZdlPvm(ptr noundef %i.aaf, i64 noundef %i.aai) #25
  br label %_ZN6casadi7Options5EntryD2Ev.exit490.i

_ZN6casadi7Options5EntryD2Ev.exit490.i:           ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i488.i, %bb.q
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.vl, %bb.q ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i488.i ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.bb ]
  %.3443.i = phi ptr [ %i.dr, %bb.q ], [ %.3342.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i488.i ], [ %.3342.i, %bb.bb ]
  %.37.i = phi i1 [ false, %bb.q ], [ %.36.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i488.i ], [ %.36.i, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.aaj = load ptr, ptr %7, align 8, !tbaa !14   ; 2 uses
  %i.aak = icmp eq ptr %i.aaj, %i.ds
  br i1 %i.aak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit493.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i491.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i491.i: ; preds = %_ZN6casadi7Options5EntryD2Ev.exit490.i
  %i.aal = load i64, ptr %i.ds, align 8, !tbaa !16
  %i.aam = add i64 %i.aal, 1
  call void @_ZdlPvm(ptr noundef %i.aaj, i64 noundef %i.aam) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit493.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit493.i: ; preds = %_ZN6casadi7Options5EntryD2Ev.exit490.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i491.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.bc

bb.bc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit493.i, %bb.p
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit493.i ], [ %i.vk, %bb.p ] ; 2 uses
  %.3645.i = phi ptr [ %.3443.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit493.i ], [ %i.dd, %bb.p ] ; 2 uses
  %.39.i = phi i1 [ %.37.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit493.i ], [ false, %bb.p ] ; 2 uses
  %i.aan = load ptr, ptr %i.dk, align 8, !tbaa !14 ; 2 uses
  %i.aao = icmp eq ptr %i.aan, %i.dl
  br i1 %i.aao, label %_ZN6casadi7Options5EntryD2Ev.exit496.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i494.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i494.i: ; preds = %bb.bc
  %i.aap = load i64, ptr %i.dl, align 8, !tbaa !16
  %i.aaq = add i64 %i.aap, 1
  call void @_ZdlPvm(ptr noundef %i.aan, i64 noundef %i.aaq) #25
  br label %_ZN6casadi7Options5EntryD2Ev.exit496.i

_ZN6casadi7Options5EntryD2Ev.exit496.i:           ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i494.i, %bb.o
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.vj, %bb.o ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i494.i ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.bc ] ; 2 uses
  %.3746.i = phi ptr [ %i.dd, %bb.o ], [ %.3645.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i494.i ], [ %.3645.i, %bb.bc ] ; 2 uses
  %.40.i = phi i1 [ false, %bb.o ], [ %.39.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i494.i ], [ %.39.i, %bb.bc ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.aar = load ptr, ptr %5, align 8, !tbaa !14   ; 2 uses
  %i.aas = icmp eq ptr %i.aar, %i.de
  br i1 %i.aas, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit499.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i497.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i497.i: ; preds = %_ZN6casadi7Options5EntryD2Ev.exit496.i
  %i.aat = load i64, ptr %i.de, align 8, !tbaa !16
  %i.aau = add i64 %i.aat, 1
  call void @_ZdlPvm(ptr noundef %i.aar, i64 noundef %i.aau) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit499.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit499.i: ; preds = %_ZN6casadi7Options5EntryD2Ev.exit496.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i497.i, %bb.n
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.vi, %bb.n ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i497.i ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %_ZN6casadi7Options5EntryD2Ev.exit496.i ]
  %.3847.i = phi ptr [ %i.dd, %bb.n ], [ %.3746.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i497.i ], [ %.3746.i, %_ZN6casadi7Options5EntryD2Ev.exit496.i ]
  %.41.i = phi i1 [ false, %bb.n ], [ %.40.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i497.i ], [ %.40.i, %_ZN6casadi7Options5EntryD2Ev.exit496.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.bd

bb.bd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit499.i, %bb.m
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit499.i ], [ %i.vh, %bb.m ] ; 2 uses
  %.3948.i = phi ptr [ %.3847.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit499.i ], [ %i.cs, %bb.m ] ; 2 uses
  %.42.i = phi i1 [ %.41.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit499.i ], [ false, %bb.m ] ; 2 uses
  %i.aav = load ptr, ptr %i.cw, align 8, !tbaa !14 ; 2 uses
  %i.aaw = icmp eq ptr %i.aav, %i.cx
  br i1 %i.aaw, label %_ZN6casadi7Options5EntryD2Ev.exit502.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i500.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i500.i: ; preds = %bb.bd
  %i.aax = load i64, ptr %i.cx, align 8, !tbaa !16
  %i.aay = add i64 %i.aax, 1
  call void @_ZdlPvm(ptr noundef %i.aav, i64 noundef %i.aay) #25
  br label %_ZN6casadi7Options5EntryD2Ev.exit502.i

_ZN6casadi7Options5EntryD2Ev.exit502.i:           ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i500.i, %bb.l
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.vg, %bb.l ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i500.i ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.bd ]
  %.4049.i = phi ptr [ %i.cs, %bb.l ], [ %.3948.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i500.i ], [ %.3948.i, %bb.bd ]
  %.43.i = phi i1 [ false, %bb.l ], [ %.42.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i500.i ], [ %.42.i, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.aaz = load ptr, ptr %3, align 8, !tbaa !14   ; 2 uses
  %i.aba = icmp eq ptr %i.aaz, %i.ct
  br i1 %i.aba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit505.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i503.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i503.i: ; preds = %_ZN6casadi7Options5EntryD2Ev.exit502.i
  %i.abb = load i64, ptr %i.ct, align 8, !tbaa !16
  %i.abc = add i64 %i.abb, 1
  call void @_ZdlPvm(ptr noundef %i.aaz, i64 noundef %i.abc) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit505.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit505.i: ; preds = %_ZN6casadi7Options5EntryD2Ev.exit502.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i503.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.be

bb.be:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit505.i, %bb.k
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit505.i ], [ %i.vf, %bb.k ] ; 2 uses
  %.4251.i = phi ptr [ %.4049.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit505.i ], [ %0, %bb.k ] ; 2 uses
  %.45.i = phi i1 [ %.43.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit505.i ], [ false, %bb.k ] ; 2 uses
  %i.abd = load ptr, ptr %i.cm, align 8, !tbaa !14 ; 2 uses
  %i.abe = icmp eq ptr %i.abd, %i.cn
  br i1 %i.abe, label %_ZN6casadi7Options5EntryD2Ev.exit508.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i506.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i506.i: ; preds = %bb.be
  %i.abf = load i64, ptr %i.cn, align 8, !tbaa !16
  %i.abg = add i64 %i.abf, 1
  call void @_ZdlPvm(ptr noundef %i.abd, i64 noundef %i.abg) #25
  br label %_ZN6casadi7Options5EntryD2Ev.exit508.i

_ZN6casadi7Options5EntryD2Ev.exit508.i:           ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i506.i, %bb.j
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.ve, %bb.j ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i506.i ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.be ] ; 2 uses
  %.4352.i = phi ptr [ %0, %bb.j ], [ %.4251.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i506.i ], [ %.4251.i, %bb.be ] ; 2 uses
  %.46.i = phi i1 [ false, %bb.j ], [ %.45.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i506.i ], [ %.45.i, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.abh = load ptr, ptr %1, align 8, !tbaa !14   ; 2 uses
  %i.abi = icmp eq ptr %i.abh, %i.cj
  br i1 %i.abi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit511.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i509.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i509.i: ; preds = %_ZN6casadi7Options5EntryD2Ev.exit508.i
  %i.abj = load i64, ptr %i.cj, align 8, !tbaa !16
  %i.abk = add i64 %i.abj, 1
  call void @_ZdlPvm(ptr noundef %i.abh, i64 noundef %i.abk) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit511.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit511.i: ; preds = %_ZN6casadi7Options5EntryD2Ev.exit508.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i509.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  %i.abl = icmp eq ptr %0, %.4352.i
  %or.cond.i = select i1 %.46.i, i1 true, i1 %i.abl
  br i1 %or.cond.i, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit511.i, %.preheader.i
  %i.abm = phi ptr [ %i.abn, %.preheader.i ], [ %.4352.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit511.i ]
  %i.abn = getelementptr inbounds i8, ptr %i.abm, i64 -72 ; 3 uses
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi7Options5EntryEED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.abn) #24
  %i.abo = icmp eq ptr %i.abn, %0
  br i1 %i.abo, label %.loopexit.i, label %.preheader.i

.loopexit.i:                                      ; preds = %.preheader.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit511.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #24
  %i.abp = load ptr, ptr @_ZN6casadi5Qrsqp8options_E, align 8, !tbaa !51 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.abp, null
  br i1 %.not.i.i.i.i, label %common.resume, label %bb.bf

bb.bf:                                            ; preds = %.loopexit.i
  %i.abq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6casadi5Qrsqp8options_E, i64 16), align 8, !tbaa !55
  %i.abr = ptrtoint ptr %i.abq to i64
  %i.abs = ptrtoint ptr %i.abp to i64
  %i.abt = sub i64 %i.abr, %i.abs
  call void @_ZdlPvm(ptr noundef nonnull %i.abp, i64 noundef %i.abt) #25
  br label %common.resume

__cxx_global_var_init.6.exit:                     ; preds = %_ZN6casadi7Options5EntryD2Ev.exit412.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i413.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #24
  %i.abu = call i32 @__cxa_atexit(ptr nonnull @_ZN6casadi7OptionsD2Ev, ptr nonnull @_ZN6casadi5Qrsqp8options_E, ptr nonnull @__dso_handle) #24 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log10.f64(double) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.maxnum.v2f64(<2 x double>, <2 x double>) #14

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { cold noreturn }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #23 = { noreturn }
attributes #24 = { nounwind }
attributes #25 = { builtin nounwind }
attributes #26 = { builtin allocsize(0) }
attributes #27 = { noreturn nounwind }
attributes #28 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!15, !10, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !9, i64 0, !13, i64 8, !6, i64 16}
!16 = !{!6, !6, i64 0}
!17 = !{!15, !13, i64 8}
!18 = !{!19, !20, i64 0}
!19 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !20, i64 0, !20, i64 8, !20, i64 16}
!20 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0}
!21 = !{!19, !20, i64 8}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!19, !20, i64 16}
!25 = !{!26, !11, i64 0}
!26 = !{!"_ZTSN6casadi15PluginInterfaceINS_6NlpsolEE6PluginE", !11, i64 0, !10, i64 8, !10, i64 16, !5, i64 24, !27, i64 28, !28, i64 32, !11, i64 40}
!27 = !{!"_ZTSN6casadi6Nlpsol7ExposedE"}
!28 = !{!"p1 _ZTSN6casadi7OptionsE", !11, i64 0}
!29 = !{!26, !10, i64 8}
!30 = !{!26, !10, i64 16}
!31 = !{!26, !5, i64 24}
!32 = !{!26, !28, i64 32}
!33 = !{!34, !34, i64 0}
!34 = !{!"vtable pointer", !7, i64 0}
!35 = !{!36, !37, i64 0}
!36 = !{!"_ZTSN6casadi7Options5EntryE", !37, i64 0, !15, i64 8}
!37 = !{!"_ZTSN6casadi6TypeIDE", !6, i64 0}
!38 = !{!39, !41, i64 0}
!39 = !{!"_ZTSSt15_Rb_tree_header", !40, i64 0, !13, i64 32}
!40 = !{!"_ZTSSt18_Rb_tree_node_base", !41, i64 0, !42, i64 8, !42, i64 16, !42, i64 24}
!41 = !{!"_ZTSSt14_Rb_tree_color", !6, i64 0}
!42 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !11, i64 0}
!43 = !{!39, !42, i64 8}
!44 = !{!39, !42, i64 16}
!45 = !{!39, !42, i64 24}
!46 = !{!39, !13, i64 32}
!47 = !{!48, !48, i64 0}
!48 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi7Options5EntryEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE", !11, i64 0}
!49 = !{!42, !42, i64 0}
!50 = distinct !{!50, !23}
!51 = !{!52, !53, i64 0}
!52 = !{!"_ZTSNSt12_Vector_baseIPKN6casadi7OptionsESaIS3_EE17_Vector_impl_dataE", !53, i64 0, !53, i64 8, !53, i64 16}
!53 = !{!"p2 _ZTSN6casadi7OptionsE", !54, i64 0}
!54 = !{!"any p2 pointer", !11, i64 0}
!55 = !{!52, !53, i64 16}
!56 = !{!57, !65, i64 2008}
!57 = !{!"_ZTSN6casadi5QrsqpE", !58, i64 0, !107, i64 1984, !66, i64 1992, !65, i64 2000, !65, i64 2008, !65, i64 2016, !112, i64 2024, !112, i64 2032, !112, i64 2040, !112, i64 2048, !112, i64 2056, !65, i64 2064, !65, i64 2072, !66, i64 2080, !66, i64 2081, !130, i64 2088, !130, i64 2096, !66, i64 2104}
!58 = !{!"_ZTSN6casadi6NlpsolE", !59, i64 0, !116, i64 1536, !117, i64 1544, !65, i64 1656, !65, i64 1664, !65, i64 1672, !107, i64 1680, !65, i64 1688, !15, i64 1696, !94, i64 1728, !120, i64 1776, !107, i64 1800, !124, i64 1808, !124, i64 1832, !66, i64 1856, !66, i64 1857, !66, i64 1858, !66, i64 1859, !66, i64 1860, !66, i64 1861, !66, i64 1862, !66, i64 1863, !66, i64 1864, !112, i64 1872, !66, i64 1880, !79, i64 1888, !79, i64 1928, !66, i64 1968, !128, i64 1976}
!59 = !{!"_ZTSN6casadi14OracleFunctionE", !60, i64 0, !107, i64 1312, !94, i64 1320, !94, i64 1368, !66, i64 1416, !5, i64 1420, !113, i64 1424, !91, i64 1472, !13, i64 1496, !13, i64 1504, !13, i64 1512, !13, i64 1520, !66, i64 1528}
!60 = !{!"_ZTSN6casadi16FunctionInternalE", !61, i64 0, !66, i64 168, !66, i64 169, !13, i64 176, !13, i64 184, !79, i64 192, !79, i64 232, !86, i64 272, !86, i64 296, !91, i64 320, !91, i64 344, !66, i64 368, !66, i64 369, !15, i64 376, !15, i64 408, !15, i64 440, !66, i64 472, !11, i64 480, !11, i64 488, !11, i64 496, !94, i64 504, !66, i64 552, !94, i64 560, !99, i64 608, !6, i64 664, !107, i64 712, !11, i64 720, !15, i64 728, !111, i64 760, !94, i64 768, !112, i64 816, !66, i64 824, !66, i64 825, !66, i64 826, !66, i64 827, !66, i64 828, !66, i64 829, !66, i64 830, !66, i64 831, !112, i64 832, !112, i64 840, !65, i64 848, !66, i64 856, !94, i64 864, !112, i64 912, !15, i64 920, !66, i64 952, !66, i64 953, !66, i64 954, !65, i64 960, !66, i64 968, !66, i64 969, !66, i64 970, !15, i64 976, !15, i64 1008, !94, i64 1040, !94, i64 1088, !94, i64 1136, !94, i64 1184, !107, i64 1232, !65, i64 1240, !13, i64 1248, !13, i64 1256, !13, i64 1264, !13, i64 1272, !13, i64 1280, !13, i64 1288, !13, i64 1296, !13, i64 1304}
!61 = !{!"_ZTSN6casadi13ProtoFunctionE", !62, i64 0, !15, i64 24, !66, i64 56, !66, i64 57, !66, i64 58, !66, i64 59, !66, i64 60, !67, i64 64, !71, i64 88}
!62 = !{!"_ZTSN6casadi20SharedObjectInternalE", !63, i64 0, !65, i64 16}
!63 = !{!"_ZTSN6casadi21GenericSharedInternalINS_12SharedObjectENS_20SharedObjectInternalEEE", !64, i64 8}
!64 = !{!"p1 _ZTSN6casadi14GenericWeakRefINS_12SharedObjectENS_20SharedObjectInternalEEE", !11, i64 0}
!65 = !{!"long long", !6, i64 0}
!66 = !{!"bool", !6, i64 0}
!67 = !{!"_ZTSSt6vectorIPvSaIS0_EE", !68, i64 0}
!68 = !{!"_ZTSSt12_Vector_baseIPvSaIS0_EE", !69, i64 0}
!69 = !{!"_ZTSNSt12_Vector_baseIPvSaIS0_EE12_Vector_implE", !70, i64 0}
!70 = !{!"_ZTSNSt12_Vector_baseIPvSaIS0_EE17_Vector_impl_dataE", !54, i64 0, !54, i64 8, !54, i64 16}
!71 = !{!"_ZTSSt5stackIiSt5dequeIiSaIiEEE", !72, i64 0}
!72 = !{!"_ZTSSt5dequeIiSaIiEE", !73, i64 0}
!73 = !{!"_ZTSSt11_Deque_baseIiSaIiEE", !74, i64 0}
!74 = !{!"_ZTSNSt11_Deque_baseIiSaIiEE11_Deque_implE", !75, i64 0}
!75 = !{!"_ZTSNSt11_Deque_baseIiSaIiEE16_Deque_impl_dataE", !76, i64 0, !13, i64 8, !77, i64 16, !77, i64 48}
!76 = !{!"p2 int", !54, i64 0}
!77 = !{!"_ZTSSt15_Deque_iteratorIiRiPiE", !78, i64 0, !78, i64 8, !78, i64 16, !76, i64 24}
!78 = !{!"p1 int", !11, i64 0}
!79 = !{!"_ZTSSt6vectorIbSaIbEE", !80, i64 0}
!80 = !{!"_ZTSSt13_Bvector_baseISaIbEE", !81, i64 0}
!81 = !{!"_ZTSNSt13_Bvector_baseISaIbEE13_Bvector_implE", !82, i64 0}
!82 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !83, i64 0, !83, i64 16, !85, i64 32}
!83 = !{!"_ZTSSt13_Bit_iterator", !84, i64 0}
!84 = !{!"_ZTSSt18_Bit_iterator_base", !85, i64 0, !5, i64 8}
!85 = !{!"p1 long", !11, i64 0}
!86 = !{!"_ZTSSt6vectorIN6casadi8SparsityESaIS1_EE", !87, i64 0}
!87 = !{!"_ZTSSt12_Vector_baseIN6casadi8SparsityESaIS1_EE", !88, i64 0}
!88 = !{!"_ZTSNSt12_Vector_baseIN6casadi8SparsityESaIS1_EE12_Vector_implE", !89, i64 0}
!89 = !{!"_ZTSNSt12_Vector_baseIN6casadi8SparsityESaIS1_EE17_Vector_impl_dataE", !90, i64 0, !90, i64 8, !90, i64 16}
!90 = !{!"p1 _ZTSN6casadi8SparsityE", !11, i64 0}
!91 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !92, i64 0}
!92 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !93, i64 0}
!93 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !19, i64 0}
!94 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEE", !95, i64 0}
!95 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE", !96, i64 0}
!96 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEE", !97, i64 0, !39, i64 8}
!97 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !98, i64 0}
!98 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!99 = !{!"_ZTSN6casadi9WeakCacheINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8FunctionEEE", !100, i64 0}
!100 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi14GenericWeakRefINS6_12SharedObjectENS6_20SharedObjectInternalEEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEE", !101, i64 0}
!101 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi14GenericWeakRefINS8_12SharedObjectENS8_20SharedObjectInternalEEEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE", !102, i64 0, !13, i64 8, !103, i64 16, !13, i64 24, !105, i64 32, !104, i64 48}
!102 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !54, i64 0}
!103 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !104, i64 0}
!104 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !11, i64 0}
!105 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !106, i64 0, !13, i64 8}
!106 = !{!"float", !6, i64 0}
!107 = !{!"_ZTSN6casadi8FunctionE", !108, i64 0}
!108 = !{!"_ZTSN6casadi12SharedObjectE", !109, i64 0}
!109 = !{!"_ZTSN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEE", !110, i64 0}
!110 = !{!"p1 _ZTSN6casadi20SharedObjectInternalE", !11, i64 0}
!111 = !{!"_ZTSN6casadi8ImporterE", !108, i64 0}
!112 = !{!"double", !6, i64 0}
!113 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi14OracleFunction6RegFunESt4lessIS5_ESaISt4pairIKS5_S8_EEE", !114, i64 0}
!114 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi14OracleFunction6RegFunEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE", !115, i64 0}
!115 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi14OracleFunction6RegFunEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE13_Rb_tree_implISF_Lb1EEE", !97, i64 0, !39, i64 8}
!116 = !{!"_ZTSN6casadi15PluginInterfaceINS_6NlpsolEEE"}
!117 = !{!"_ZTSN6casadi18casadi_nlpsol_probIdEE", !65, i64 0, !65, i64 8, !65, i64 16, !118, i64 24}
!118 = !{!"_ZTSN6casadi32casadi_nlpsol_detect_bounds_probIdEE", !65, i64 0, !65, i64 8, !65, i64 16, !65, i64 24, !65, i64 32, !65, i64 40, !119, i64 48, !119, i64 56, !10, i64 64, !11, i64 72, !11, i64 80}
!119 = !{!"p1 long long", !11, i64 0}
!120 = !{!"_ZTSSt6vectorIcSaIcEE", !121, i64 0}
!121 = !{!"_ZTSSt12_Vector_baseIcSaIcEE", !122, i64 0}
!122 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE12_Vector_implE", !123, i64 0}
!123 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataE", !10, i64 0, !10, i64 8, !10, i64 16}
!124 = !{!"_ZTSSt6vectorIxSaIxEE", !125, i64 0}
!125 = !{!"_ZTSSt12_Vector_baseIxSaIxEE", !126, i64 0}
!126 = !{!"_ZTSNSt12_Vector_baseIxSaIxEE12_Vector_implE", !127, i64 0}
!127 = !{!"_ZTSNSt12_Vector_baseIxSaIxEE17_Vector_impl_dataE", !119, i64 0, !119, i64 8, !119, i64 16}
!128 = !{!"_ZTSN6casadi7WeakRefE", !129, i64 0}
!129 = !{!"_ZTSN6casadi14GenericWeakRefINS_12SharedObjectENS_20SharedObjectInternalEEE", !109, i64 0}
!130 = !{!"_ZTSN6casadi8SparsityE", !108, i64 0}
!131 = !{!57, !65, i64 2000}
!132 = !{!57, !65, i64 2064}
!133 = !{!57, !112, i64 2056}
!134 = !{!57, !65, i64 2072}
!135 = !{!57, !65, i64 2016}
!136 = !{!112, !112, i64 0}
!137 = !{!57, !66, i64 2104}
!138 = !{!57, !66, i64 2080}
!139 = !{!57, !66, i64 2081}
!140 = !{!57, !112, i64 2048}
!141 = !{!57, !112, i64 2024}
!142 = !{!57, !112, i64 2032}
!143 = !{!57, !112, i64 2040}
!144 = !{!57, !66, i64 1992}
!145 = !{i8 0, i8 2}
!146 = !{}
!147 = !{!58, !65, i64 1656}
!148 = !{!149}
!149 = distinct !{!149, !150, !"_ZN6casadi6strvecB5cxx11Ev: argument 0"}
!150 = distinct !{!150, !"_ZN6casadi6strvecB5cxx11Ev"}
!151 = !{!152, !152, i64 0}
!152 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi8SparsityEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE", !11, i64 0}
!153 = !{!58, !65, i64 1664}
!154 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!155 = !{!20, !20, i64 0}
!156 = !{!157, !157, i64 0}
!157 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE", !11, i64 0}
!158 = distinct !{!158, !23}
!159 = !{!160}
!160 = distinct !{!160, !161, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!161 = distinct !{!161, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!162 = !{!163, !160}
!163 = distinct !{!163, !164, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!164 = distinct !{!164, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!165 = !{!109, !110, i64 0}
end_hunk_3
