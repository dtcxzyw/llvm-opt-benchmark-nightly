Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/principal_curvature?download=true
inline.NumInlined: 17939
inline.NumDeleted: 8729
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 147
loop-unroll.NumUnrolled: 163
begin_hunk_0_@_ZN5Eigen9JacobiSVDINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7computeERKS2_j:bb.a

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i90: ; preds = %bb.x, %bb.w
  %i.iz = mul nsw i64 %i.it, %i.is
  call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %i.ir, i64 noundef %i.iz, i64 noundef %i.is, i64 noundef %i.it)
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !56 ; 6 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.jd = load i64, ptr %i.jc, align 8, !tbaa !57 ; 2 uses
  %i.je = load ptr, ptr %i.ir, align 8, !tbaa !55
  %i.jf = icmp sgt i64 %i.jd, 0
  %i.jg = icmp sgt i64 %i.jb, 0
  %or.cond.i.i.i.i.i.i.i.i.i.i91 = select i1 %i.jf, i1 %i.jg, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i91, label %.preheader.i.i.i.i.i.i.i.i.i.i.i92.preheader, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setIdentityEll.exit100

.preheader.i.i.i.i.i.i.i.i.i.i.i92.preheader:     ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i90
  %min.iters.check396 = icmp ult i64 %i.jb, 4
  %n.vec398 = and i64 %i.jb, 9223372036854775804  ; 3 uses
  %cmp.n408 = icmp eq i64 %i.jb, %n.vec398
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.i92

.preheader.i.i.i.i.i.i.i.i.i.i.i92:               ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i92.preheader, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i98
  %.0810.i.i.i.i.i.i.i.i.i.i.i93 = phi i64 [ %i.jp, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i98 ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i92.preheader ] ; 4 uses
  %i.jh = mul nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i93, %i.jb
  %invariant.gep.i.i.i.i.i.i.i.i.i.i.i94 = getelementptr [8 x i8], ptr %i.je, i64 %i.jh ; 2 uses
  br i1 %min.iters.check396, label %scalar.ph395.preheader, label %vector.ph397

vector.ph397:                                     ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i92
  %broadcast.splatinsert399 = insertelement <2 x i64> poison, i64 %.0810.i.i.i.i.i.i.i.i.i.i.i93, i64 0
  %broadcast.splat400 = shufflevector <2 x i64> %broadcast.splatinsert399, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body401

vector.body401:                                   ; preds = %vector.body401, %vector.ph397
  %index402 = phi i64 [ 0, %vector.ph397 ], [ %index.next405, %vector.body401 ] ; 2 uses
  %vec.ind403 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph397 ], [ %vec.ind.next406, %vector.body401 ] ; 3 uses
  %step.add404 = add nuw <2 x i64> %vec.ind403, splat (i64 2)
  %i.ji = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.i94, i64 %index402 ; 2 uses
  %i.jj = icmp eq <2 x i64> %vec.ind403, %broadcast.splat400
  %i.jk = icmp eq <2 x i64> %step.add404, %broadcast.splat400
  %i.jl = select <2 x i1> %i.jj, <2 x double> splat (double 1.000000e+00), <2 x double> zeroinitializer
  %i.jm = select <2 x i1> %i.jk, <2 x double> splat (double 1.000000e+00), <2 x double> zeroinitializer
  %i.jn = getelementptr i8, ptr %i.ji, i64 16
  store <2 x double> %i.jl, ptr %i.ji, align 8, !tbaa !60
  store <2 x double> %i.jm, ptr %i.jn, align 8, !tbaa !60
  %index.next405 = add nuw i64 %index402, 4       ; 2 uses
  %vec.ind.next406 = add nuw <2 x i64> %vec.ind403, splat (i64 4)
  %i.jo = icmp eq i64 %index.next405, %n.vec398
  br i1 %i.jo, label %middle.block407, label %vector.body401, !llvm.loop !499

middle.block407:                                  ; preds = %vector.body401
  br i1 %cmp.n408, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i98, label %scalar.ph395.preheader

scalar.ph395.preheader:                           ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i92, %middle.block407
  %.09.i.i.i.i.i.i.i.i.i.i.i95.ph = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i92 ], [ %n.vec398, %middle.block407 ]
  br label %scalar.ph395

._crit_edge.i.i.i.i.i.i.i.i.i.i.i98:              ; preds = %scalar.ph395, %middle.block407
  %i.jp = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.i93, 1 ; 2 uses
  %exitcond12.not.i.i.i.i.i.i.i.i.i.i.i99 = icmp eq i64 %i.jp, %i.jd
  br i1 %exitcond12.not.i.i.i.i.i.i.i.i.i.i.i99, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setIdentityEll.exit100, label %.preheader.i.i.i.i.i.i.i.i.i.i.i92, !llvm.loop !490

scalar.ph395:                                     ; preds = %scalar.ph395.preheader, %scalar.ph395
  %.09.i.i.i.i.i.i.i.i.i.i.i95 = phi i64 [ %i.js, %scalar.ph395 ], [ %.09.i.i.i.i.i.i.i.i.i.i.i95.ph, %scalar.ph395.preheader ] ; 3 uses
  %gep.i.i.i.i.i.i.i.i.i.i.i96 = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.i94, i64 %.09.i.i.i.i.i.i.i.i.i.i.i95
  %i.jq = icmp eq i64 %.09.i.i.i.i.i.i.i.i.i.i.i95, %.0810.i.i.i.i.i.i.i.i.i.i.i93
  %i.jr = select i1 %i.jq, double 1.000000e+00, double 0.000000e+00
  store double %i.jr, ptr %gep.i.i.i.i.i.i.i.i.i.i.i96, align 8, !tbaa !60
  %i.js = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i95, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i97 = icmp eq i64 %i.js, %i.jb
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i97, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i98, label %scalar.ph395, !llvm.loop !500

_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setIdentityEll.exit100: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i98, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i90, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setIdentityEll.exit88, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKS1_KNS_14CwiseNullaryOpINS4_18scalar_constant_opIdEES7_EEEEEERS1_RKNS_9DenseBaseIT_EE.exit
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !55 ; 9 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !56 ; 18 uses
  %i.jx = load double, ptr %i.ju, align 8, !tbaa !60
  %i.jy = call noundef double @llvm.fabs.f64(double %i.jx) ; 3 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !57 ; 6 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i = call noundef i64 @llvm.smin.i64(i64 %i.ka, i64 %i.jw) ; 3 uses
  %i.kb = icmp sgt i64 %.sroa.speculated.i.i.i.i.i.i.i.i, 1
  br i1 %i.kb, label %.lr.ph.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_8DiagonalIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi0EEEE8maxCoeffEv.exit

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setIdentityEll.exit100
  %i.kc = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i.i, -1 ; 3 uses
  %xtraiter629 = and i64 %i.kc, 1
  %i.kd = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i, 2
  br i1 %i.kd, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter = and i64 %i.kc, -2
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %.01725.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader.new ], [ %i.kt, %.lr.ph.i.i.i.i ] ; 4 uses
  %.02324.i.i.i.i = phi double [ %i.jy, %.lr.ph.i.i.i.i.preheader.new ], [ %i.ks, %.lr.ph.i.i.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i.i ]
  %i.ke = mul nuw nsw i64 %.01725.i.i.i.i, %i.jw
  %i.kf = getelementptr [8 x i8], ptr %i.ju, i64 %.01725.i.i.i.i
  %i.kg = getelementptr [8 x i8], ptr %i.kf, i64 %i.ke
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !60
  %i.ki = call noundef double @llvm.fabs.f64(double %i.kh) ; 2 uses
  %i.kj = fcmp olt double %.02324.i.i.i.i, %i.ki
  %i.kk = select i1 %i.kj, double %i.ki, double %.02324.i.i.i.i ; 2 uses
  %i.kl = add nuw nsw i64 %.01725.i.i.i.i, 1      ; 2 uses
  %i.km = mul nuw nsw i64 %i.kl, %i.jw
  %i.kn = getelementptr [8 x i8], ptr %i.ju, i64 %i.kl
  %i.ko = getelementptr [8 x i8], ptr %i.kn, i64 %i.km
  %i.kp = load double, ptr %i.ko, align 8, !tbaa !60
  %i.kq = call noundef double @llvm.fabs.f64(double %i.kp) ; 2 uses
  %i.kr = fcmp olt double %i.kk, %i.kq
  %i.ks = select i1 %i.kr, double %i.kq, double %i.kk ; 3 uses
  %i.kt = add nuw nsw i64 %.01725.i.i.i.i, 2      ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK5Eigen9DenseBaseINS_8DiagonalIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi0EEEE8maxCoeffEv.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !501

_ZNK5Eigen9DenseBaseINS_8DiagonalIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi0EEEE8maxCoeffEv.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod630.not = icmp eq i64 %xtraiter629, 0
  br i1 %lcmp.mod630.not, label %_ZNK5Eigen9DenseBaseINS_8DiagonalIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi0EEEE8maxCoeffEv.exit, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZNK5Eigen9DenseBaseINS_8DiagonalIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi0EEEE8maxCoeffEv.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.preheader
  %.01725.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader ], [ %i.kt, %_ZNK5Eigen9DenseBaseINS_8DiagonalIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi0EEEE8maxCoeffEv.exit.loopexit.unr-lcssa ] ; 2 uses
  %.02324.i.i.i.i.epil.init = phi double [ %i.jy, %.lr.ph.i.i.i.i.preheader ], [ %i.ks, %_ZNK5Eigen9DenseBaseINS_8DiagonalIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi0EEEE8maxCoeffEv.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod632 = trunc i64 %i.kc to i1
  call void @llvm.assume(i1 %lcmp.mod632)
  %i.ku = mul nuw nsw i64 %.01725.i.i.i.i.epil.init, %i.jw
  %i.kv = getelementptr [8 x i8], ptr %i.ju, i64 %.01725.i.i.i.i.epil.init
  %i.kw = getelementptr [8 x i8], ptr %i.kv, i64 %i.ku
  %i.kx = load double, ptr %i.kw, align 8, !tbaa !60
  %i.ky = call noundef double @llvm.fabs.f64(double %i.kx) ; 2 uses
  %i.kz = fcmp olt double %.02324.i.i.i.i.epil.init, %i.ky
  %i.la = select i1 %i.kz, double %i.ky, double %.02324.i.i.i.i.epil.init
  br label %_ZNK5Eigen9DenseBaseINS_8DiagonalIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi0EEEE8maxCoeffEv.exit

_ZNK5Eigen9DenseBaseINS_8DiagonalIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi0EEEE8maxCoeffEv.exit: ; preds = %.lr.ph.i.i.i.i.epil.preheader, %_ZNK5Eigen9DenseBaseINS_8DiagonalIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi0EEEE8maxCoeffEv.exit.loopexit.unr-lcssa, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setIdentityEll.exit100
  %.023.lcssa.i.i.i.i = phi double [ %i.jy, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setIdentityEll.exit100 ], [ %i.ks, %_ZNK5Eigen9DenseBaseINS_8DiagonalIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi0EEEE8maxCoeffEv.exit.loopexit.unr-lcssa ], [ %i.la, %.lr.ph.i.i.i.i.epil.preheader ]
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !468 ; 3 uses
  %i.ld = icmp sgt i64 %i.lc, 1
  %i.le = icmp sgt i64 %i.ka, 0
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 71 ; 3 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.li = icmp sgt i64 %i.jw, 0
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 74 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %i.ld, label %.preheader262.us.preheader, label %.preheader

.preheader262.us.preheader:                       ; preds = %_ZNK5Eigen9DenseBaseINS_8DiagonalIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi0EEEE8maxCoeffEv.exit
  %xtraiter633 = and i64 %i.ka, 1
  %i.ln = icmp eq i64 %i.ka, 1
  %unroll_iter636 = and i64 %i.ka, 9223372036854775806
  %lcmp.mod634.not = icmp eq i64 %xtraiter633, 0
  %lcmp.mod635 = trunc i64 %i.ka to i1
  %min.iters.check437 = icmp ugt i64 %i.jw, 1
  %.mask = and i64 %i.jw, 1152921504606846976
  %stride.check.not = icmp eq i64 %.mask, 0
  %or.cond614 = and i1 %min.iters.check437, %stride.check.not
  %n.vec439 = and i64 %i.jw, 8070450532247928830  ; 4 uses
  %i.lo = shl i64 %n.vec439, 3                    ; 2 uses
  %cmp.n454 = icmp eq i64 %i.jw, %n.vec439
  %xtraiter641 = and i64 %i.jw, 1
  %lcmp.mod642.not = icmp eq i64 %xtraiter641, 0
  br label %.preheader262.us

bb.z:                                             ; preds = %.preheader262.us, %bb.ah
  %.056272.us = phi i64 [ 0, %.preheader262.us ], [ %i.wt, %bb.ah ] ; 9 uses
  %.2271.us = phi i1 [ %.1275.us, %.preheader262.us ], [ %.3.us, %bb.ah ]
  %.2252270.us = phi double [ %.1251274.us, %.preheader262.us ], [ %.3253.us, %bb.ah ] ; 4 uses
  %i.lp = shl i64 %.056272.us, 3
  %i.lq = add i64 %i.lp, 8
  %i.lr = shl i64 %.056272.us, 3
  %i.ls = add i64 %i.lr, 8
  %i.lt = fmul double %.2252270.us, f0x3CC0000000000000 ; 2 uses
  %i.lu = fcmp ogt double %i.lt, f0x0010000000000000
  %.sroa.speculated221.us = select i1 %i.lu, double %i.lt, double f0x0010000000000000 ; 2 uses
  %i.lv = mul nsw i64 %.056272.us, %i.jw          ; 3 uses
  %i.lw = getelementptr [8 x i8], ptr %i.wz, i64 %i.lv
  %i.lx = load double, ptr %i.lw, align 8, !tbaa !60 ; 5 uses
  %i.ly = call noundef double @llvm.fabs.f64(double %i.lx) ; 2 uses
  %i.lz = fcmp ogt double %i.ly, %.sroa.speculated221.us
  br i1 %i.lz, label %._crit_edge291, label %bb.aa

._crit_edge291:                                   ; preds = %bb.z
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.056272.us
  %.pre = load double, ptr %gep, align 8, !tbaa !60
  br label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %gep.us = getelementptr [8 x i8], ptr %invariant.gep.us, i64 %.056272.us
  %i.ma = load double, ptr %gep.us, align 8, !tbaa !60 ; 2 uses
  %i.mb = call noundef double @llvm.fabs.f64(double %i.ma)
  %i.mc = fcmp ogt double %i.mb, %.sroa.speculated221.us
  br i1 %i.mc, label %bb.ab, label %bb.ah

bb.ab:                                            ; preds = %._crit_edge291, %bb.aa
  %i.md = phi double [ %.pre, %._crit_edge291 ], [ %i.ma, %bb.aa ] ; 2 uses
  %i.me = load double, ptr %i.xb, align 8, !tbaa !60 ; 3 uses
  %i.mf = getelementptr [8 x i8], ptr %i.ju, i64 %.056272.us ; 3 uses
  %i.mg = getelementptr [8 x i8], ptr %i.mf, i64 %i.lv ; 2 uses
  %i.mh = load double, ptr %i.mg, align 8, !tbaa !60 ; 4 uses
  %i.mi = fsub double %i.md, %i.lx                ; 2 uses
  %i.mj = call noundef double @llvm.fabs.f64(double %i.mi)
  %i.mk = fcmp olt double %i.mj, f0x0010000000000000
  br i1 %i.mk, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ml = fadd double %i.me, %i.mh
  %i.mm = fdiv double %i.ml, %i.mi                ; 3 uses
  %i.mn = fmul double %i.mm, %i.mm
  %i.mo = fadd double %i.mn, 1.000000e+00
  %sqrt.i.us = call double @llvm.sqrt.f64(double %i.mo)
  %i.mp = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.mm, i64 1
  %i.mq = insertelement <2 x double> poison, double %sqrt.i.us, i64 0
  %i.mr = shufflevector <2 x double> %i.mq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ms = fdiv <2 x double> %i.mp, %i.mr
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.mt = phi <2 x double> [ %i.ms, %bb.ac ], [ <double 0.000000e+00, double 1.000000e+00>, %bb.ab ] ; 6 uses
  %i.mu = extractelement <2 x double> %i.mt, i64 1 ; 2 uses
  %i.mv = fcmp oeq double %i.mu, 1.000000e+00
  %i.mw = extractelement <2 x double> %i.mt, i64 0 ; 2 uses
  %i.mx = fcmp oeq double %i.mw, 0.000000e+00
  %or.cond.i.i.i101.us = and i1 %i.mx, %i.mv
  br i1 %or.cond.i.i.i101.us, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.i.us, label %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.i.us

_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.i.us: ; preds = %bb.ad
  %5 = fneg double %i.mw
  %i.my = insertelement <2 x double> poison, double %i.md, i64 0
  %6 = insertelement <2 x double> %i.my, double %i.mh, i64 1
  %7 = shufflevector <2 x double> %i.mt, <2 x double> poison, <2 x i32> zeroinitializer
  %8 = fmul <2 x double> %6, %7
  %9 = shufflevector <2 x double> %i.mt, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %10 = insertelement <2 x double> poison, double %i.me, i64 0
  %i.mz = insertelement <2 x double> %10, double %i.lx, i64 1
  %i.na = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %9, <2 x double> %i.mz, <2 x double> %8) ; 2 uses
  %11 = fmul double %i.mh, %i.mu
  %12 = call double @llvm.fmuladd.f64(double %5, double %i.lx, double %11)
  %13 = extractelement <2 x double> %i.na, i64 1  ; 2 uses
  %.pre293 = call noundef double @llvm.fabs.f64(double %13)
  %14 = extractelement <2 x double> %i.na, i64 0
  br label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.i.us

_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.i.us: ; preds = %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.i.us, %bb.ad
  %.pre-phi = phi double [ %.pre293, %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.i.us ], [ %i.ly, %bb.ad ] ; 2 uses
  %.sroa.13.0.i.us = phi double [ %12, %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.i.us ], [ %i.mh, %bb.ad ]
  %.sroa.9.0.i.us = phi double [ %13, %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.i.us ], [ %i.lx, %bb.ad ]
  %.sroa.0.0.i.us = phi double [ %14, %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi2ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i.i.us ], [ %i.me, %bb.ad ]
  %i.nb = fmul double %.pre-phi, 2.000000e+00     ; 2 uses
  %i.nc = fcmp uge double %i.nb, f0x0010000000000000
  br i1 %i.nc, label %bb.ae, label %_ZN5Eigen8internal19real_2x2_jacobi_svdINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEdlEEvRKT_T1_S7_PNS_14JacobiRotationIT0_EESB_.exit.us

bb.ae:                                            ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.i.us
  %15 = fsub double %.sroa.0.0.i.us, %.sroa.13.0.i.us
  %i.nd = fdiv double %15, %i.nb                  ; 4 uses
  %i.ne = fmul double %i.nd, %i.nd
  %i.nf = fadd double %i.ne, 1.000000e+00
  %sqrt19.i.i.i.us = call double @llvm.sqrt.f64(double %i.nf) ; 2 uses
  %i.ng = fcmp ogt double %i.nd, 0.000000e+00
  %i.nh = fneg double %sqrt19.i.i.i.us
  %.pn.p.i.i.i.us = select i1 %i.ng, double %sqrt19.i.i.i.us, double %i.nh
  %.pn.i.i.i.us = fadd double %i.nd, %.pn.p.i.i.i.us
  %storemerge.i.i.i.us = fdiv double 1.000000e+00, %.pn.i.i.i.us ; 4 uses
  %i.ni = fcmp ogt double %storemerge.i.i.i.us, 0.000000e+00
  %i.nj = fmul double %storemerge.i.i.i.us, %storemerge.i.i.i.us
  %i.nk = fadd double %i.nj, 1.000000e+00
  %sqrt.i.i.i.us = call double @llvm.sqrt.f64(double %i.nk)
  %i.nl = fdiv double 1.000000e+00, %sqrt.i.i.i.us ; 2 uses
  %i.nm = fdiv double %.sroa.9.0.i.us, %.pre-phi  ; 2 uses
  %i.nn = fneg double %i.nm
  %i.no = select i1 %i.ni, double %i.nn, double %i.nm
  %i.np = call noundef double @llvm.fabs.f64(double %storemerge.i.i.i.us)
  %i.nq = fmul double %i.np, %i.no
  %i.nr = fmul double %i.nq, %i.nl
  br label %_ZN5Eigen8internal19real_2x2_jacobi_svdINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEdlEEvRKT_T1_S7_PNS_14JacobiRotationIT0_EESB_.exit.us

_ZN5Eigen8internal19real_2x2_jacobi_svdINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEdlEEvRKT_T1_S7_PNS_14JacobiRotationIT0_EESB_.exit.us: ; preds = %bb.ae, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.i.us
  %.sink20.i.i.i.us = phi double [ %i.nr, %bb.ae ], [ 0.000000e+00, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.i.us ] ; 5 uses
  %.sink.i.i.i.us = phi double [ %i.nl, %bb.ae ], [ 1.000000e+00, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi2ELi2ELi0ELi2ELi2EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.i.us ] ; 5 uses
  %i.ns = fneg double %.sink20.i.i.i.us           ; 3 uses
  %i.nt = shufflevector <2 x double> %i.mt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nu = insertelement <2 x double> poison, double %.sink20.i.i.i.us, i64 0
  %i.nv = insertelement <2 x double> %i.nu, double %.sink.i.i.i.us, i64 1 ; 7 uses
  %i.nw = fmul <2 x double> %i.nt, %i.nv
  %i.nx = shufflevector <2 x double> %i.mt, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ny = insertelement <2 x double> poison, double %.sink.i.i.i.us, i64 0
  %i.nz = insertelement <2 x double> %i.ny, double %i.ns, i64 1 ; 7 uses
  %i.oa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nx, <2 x double> %i.nz, <2 x double> %i.nw) ; 15 uses
  %i.ob = extractelement <2 x double> %i.oa, i64 0
  %i.oc = fcmp une double %i.ob, 1.000000e+00
  %i.od = extractelement <2 x double> %i.oa, i64 1 ; 2 uses
  %i.oe = fcmp une double %i.od, 0.000000e+00
  %or.cond.not18.i.i.us = or i1 %i.oc, %i.oe      ; 2 uses
  %or.cond16.i.i.us = and i1 %i.le, %or.cond.not18.i.i.us
  br i1 %or.cond16.i.i.us, label %.lr.ph.i.i.i103.us, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.us

.lr.ph.i.i.i103.us:                               ; preds = %_ZN5Eigen8internal19real_2x2_jacobi_svdINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEdlEEvRKT_T1_S7_PNS_14JacobiRotationIT0_EESB_.exit.us
  %i.of = fneg <2 x double> %i.oa
  %i.og = shufflevector <2 x double> %i.of, <2 x double> %i.oa, <2 x i32> <i32 1, i32 2> ; 3 uses
  br i1 %i.ln, label %.epil.preheader, label %.lr.ph.i.i.i103.us.new

.lr.ph.i.i.i103.us.new:                           ; preds = %.lr.ph.i.i.i103.us, %.lr.ph.i.i.i103.us.new
  %.021.i.i.i.us = phi ptr [ %i.pd, %.lr.ph.i.i.i103.us.new ], [ %i.wz, %.lr.ph.i.i.i103.us ] ; 3 uses
  %.01420.i.i.i.us = phi ptr [ %i.pe, %.lr.ph.i.i.i103.us.new ], [ %i.mf, %.lr.ph.i.i.i103.us ] ; 3 uses
  %niter637 = phi i64 [ %niter637.next.1, %.lr.ph.i.i.i103.us.new ], [ 0, %.lr.ph.i.i.i103.us ]
  %i.oh = load double, ptr %.021.i.i.i.us, align 8, !tbaa !60
  %i.oi = load double, ptr %.01420.i.i.i.us, align 8, !tbaa !60
  %i.oj = insertelement <2 x double> poison, double %i.oi, i64 0
  %i.ok = shufflevector <2 x double> %i.oj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ol = fmul <2 x double> %i.oa, %i.ok
  %i.om = insertelement <2 x double> poison, double %i.oh, i64 0
  %i.on = shufflevector <2 x double> %i.om, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.og, <2 x double> %i.on, <2 x double> %i.ol) ; 2 uses
  %i.op = extractelement <2 x double> %i.oo, i64 1
  store double %i.op, ptr %.021.i.i.i.us, align 8, !tbaa !60
  %i.oq = extractelement <2 x double> %i.oo, i64 0
  store double %i.oq, ptr %.01420.i.i.i.us, align 8, !tbaa !60
  %i.or = getelementptr inbounds [8 x i8], ptr %.021.i.i.i.us, i64 %i.jw ; 3 uses
  %i.os = getelementptr inbounds [8 x i8], ptr %.01420.i.i.i.us, i64 %i.jw ; 3 uses
  %i.ot = load double, ptr %i.or, align 8, !tbaa !60
  %i.ou = load double, ptr %i.os, align 8, !tbaa !60
  %i.ov = insertelement <2 x double> poison, double %i.ou, i64 0
  %i.ow = shufflevector <2 x double> %i.ov, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ox = fmul <2 x double> %i.oa, %i.ow
  %i.oy = insertelement <2 x double> poison, double %i.ot, i64 0
  %i.oz = shufflevector <2 x double> %i.oy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.og, <2 x double> %i.oz, <2 x double> %i.ox) ; 2 uses
  %i.pb = extractelement <2 x double> %i.pa, i64 1
  store double %i.pb, ptr %i.or, align 8, !tbaa !60
  %i.pc = extractelement <2 x double> %i.pa, i64 0
  store double %i.pc, ptr %i.os, align 8, !tbaa !60
  %i.pd = getelementptr inbounds [8 x i8], ptr %i.or, i64 %i.jw ; 2 uses
  %i.pe = getelementptr inbounds [8 x i8], ptr %i.os, i64 %i.jw ; 2 uses
  %niter637.next.1 = add nuw nsw i64 %niter637, 2 ; 2 uses
  %niter637.ncmp.1 = icmp eq i64 %niter637.next.1, %unroll_iter636
  br i1 %niter637.ncmp.1, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.us.loopexit.unr-lcssa, label %.lr.ph.i.i.i103.us.new, !llvm.loop !502

_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.us.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i103.us.new
  br i1 %lcmp.mod634.not, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.us.loopexit.unr-lcssa, %.lr.ph.i.i.i103.us
  %.021.i.i.i.us.epil.init = phi ptr [ %i.wz, %.lr.ph.i.i.i103.us ], [ %i.pd, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.us.loopexit.unr-lcssa ] ; 2 uses
  %.01420.i.i.i.us.epil.init = phi ptr [ %i.mf, %.lr.ph.i.i.i103.us ], [ %i.pe, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.us.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod635)
  %i.pf = load double, ptr %.021.i.i.i.us.epil.init, align 8, !tbaa !60
  %i.pg = load double, ptr %.01420.i.i.i.us.epil.init, align 8, !tbaa !60
  %i.ph = insertelement <2 x double> poison, double %i.pg, i64 0
  %i.pi = shufflevector <2 x double> %i.ph, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pj = fmul <2 x double> %i.oa, %i.pi
  %i.pk = insertelement <2 x double> poison, double %i.pf, i64 0
  %i.pl = shufflevector <2 x double> %i.pk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.og, <2 x double> %i.pl, <2 x double> %i.pj) ; 2 uses
  %i.pn = extractelement <2 x double> %i.pm, i64 1
  store double %i.pn, ptr %.021.i.i.i.us.epil.init, align 8, !tbaa !60
  %i.po = extractelement <2 x double> %i.pm, i64 0
  store double %i.po, ptr %.01420.i.i.i.us.epil.init, align 8, !tbaa !60
  br label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.us

_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.us: ; preds = %.epil.preheader, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.us.loopexit.unr-lcssa, %_ZN5Eigen8internal19real_2x2_jacobi_svdINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEdlEEvRKT_T1_S7_PNS_14JacobiRotationIT0_EESB_.exit.us
  %i.pp = load i8, ptr %i.lf, align 1, !tbaa !488, !range !232, !noundef !233
  %i.pq = trunc nuw i8 %i.pp to i1
  %i.pr = load i8, ptr %i.lg, align 8, !range !232
  %i.ps = trunc nuw i8 %i.pr to i1
  %i.pt = select i1 %i.pq, i1 true, i1 %i.ps
  br i1 %i.pt, label %bb.af, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us

bb.af:                                            ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14applyOnTheLeftIdEEvllRKNS_14JacobiRotationIT_EE.exit.us
  %i.pu = fneg double %i.od                       ; 4 uses
  %i.pv = load i64, ptr %i.lh, align 8, !tbaa !56, !noalias !503 ; 11 uses
  %i.pw = icmp sgt i64 %i.pv, 0
  %or.cond16.i.i106.us = select i1 %or.cond.not18.i.i.us, i1 %i.pw, i1 false
  br i1 %or.cond16.i.i106.us, label %.lr.ph.i.i.preheader.i.us, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us

.lr.ph.i.i.preheader.i.us:                        ; preds = %bb.af
  %i.px = load ptr, ptr %0, align 8, !tbaa !55, !noalias !503 ; 4 uses
  %i.py = mul i64 %i.pv, %.056272.us
  %i.pz = getelementptr [8 x i8], ptr %i.px, i64 %i.py ; 5 uses
  %i.qa = mul i64 %i.pv, %.057276.us
  %i.qb = getelementptr [8 x i8], ptr %i.px, i64 %i.qa ; 5 uses
  %min.iters.check465 = icmp ult i64 %i.pv, 2
  br i1 %min.iters.check465, label %.lr.ph.i.i.i107.us.preheader, label %vector.memcheck458

vector.memcheck458:                               ; preds = %.lr.ph.i.i.preheader.i.us
  %i.qc = mul i64 %i.ww, %i.pv
  %scevgep459 = getelementptr i8, ptr %i.px, i64 %i.qc
  %i.qd = mul i64 %i.pv, %i.lq
  %scevgep460 = getelementptr i8, ptr %i.px, i64 %i.qd
  %bound0461 = icmp ult ptr %i.qb, %scevgep460
  %bound1462 = icmp ult ptr %i.pz, %scevgep459
  %found.conflict463 = and i1 %bound0461, %bound1462
  br i1 %found.conflict463, label %.lr.ph.i.i.i107.us.preheader, label %vector.ph466

vector.ph466:                                     ; preds = %vector.memcheck458
  %n.vec467 = and i64 %i.pv, 9223372036854775806  ; 4 uses
  %i.qe = shl i64 %n.vec467, 3                    ; 2 uses
  %i.qf = getelementptr i8, ptr %i.qb, i64 %i.qe
  %i.qg = getelementptr i8, ptr %i.pz, i64 %i.qe
  %broadcast.splat469 = shufflevector <2 x double> %i.oa, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splat471 = shufflevector <2 x double> %i.oa, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert472 = insertelement <2 x double> poison, double %i.pu, i64 0
  %broadcast.splat473 = shufflevector <2 x double> %broadcast.splatinsert472, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body474

vector.body474:                                   ; preds = %vector.body474, %vector.ph466
  %index475 = phi i64 [ 0, %vector.ph466 ], [ %index.next480, %vector.body474 ] ; 2 uses
  %i.qh = shl i64 %index475, 3                    ; 2 uses
  %next.gep476 = getelementptr i8, ptr %i.qb, i64 %i.qh ; 2 uses
  %next.gep477 = getelementptr i8, ptr %i.pz, i64 %i.qh ; 2 uses
  %wide.load478 = load <2 x double>, ptr %next.gep476, align 8, !tbaa !60, !alias.scope !506, !noalias !509 ; 2 uses
  %wide.load479 = load <2 x double>, ptr %next.gep477, align 8, !tbaa !60, !alias.scope !509 ; 2 uses
  %i.qi = fmul <2 x double> %broadcast.splat469, %wide.load479
  %i.qj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat471, <2 x double> %wide.load478, <2 x double> %i.qi)
  store <2 x double> %i.qj, ptr %next.gep476, align 8, !tbaa !60, !alias.scope !506, !noalias !509
  %i.qk = fmul <2 x double> %broadcast.splat471, %wide.load479
  %i.ql = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat473, <2 x double> %wide.load478, <2 x double> %i.qk)
  store <2 x double> %i.ql, ptr %next.gep477, align 8, !tbaa !60, !alias.scope !509
  %index.next480 = add nuw i64 %index475, 2       ; 2 uses
  %i.qm = icmp eq i64 %index.next480, %n.vec467
  br i1 %i.qm, label %middle.block481, label %vector.body474, !llvm.loop !511

middle.block481:                                  ; preds = %vector.body474
  %cmp.n482 = icmp eq i64 %i.pv, %n.vec467
  br i1 %cmp.n482, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us, label %.lr.ph.i.i.i107.us.preheader

.lr.ph.i.i.i107.us.preheader:                     ; preds = %vector.memcheck458, %.lr.ph.i.i.preheader.i.us, %middle.block481
  %.021.i.i.i108.us.ph = phi ptr [ %i.qb, %vector.memcheck458 ], [ %i.qb, %.lr.ph.i.i.preheader.i.us ], [ %i.qf, %middle.block481 ] ; 4 uses
  %.01420.i.i.i109.us.ph = phi ptr [ %i.pz, %vector.memcheck458 ], [ %i.pz, %.lr.ph.i.i.preheader.i.us ], [ %i.qg, %middle.block481 ] ; 4 uses
  %.01519.i.i.i110.us.ph = phi i64 [ 0, %vector.memcheck458 ], [ 0, %.lr.ph.i.i.preheader.i.us ], [ %n.vec467, %middle.block481 ] ; 3 uses
  %.neg666 = or disjoint i64 %.01519.i.i.i110.us.ph, 1
  %xtraiter638 = and i64 %i.pv, 1
  %lcmp.mod639.not = icmp eq i64 %xtraiter638, 0
  br i1 %lcmp.mod639.not, label %.lr.ph.i.i.i107.us.prol.loopexit, label %.lr.ph.i.i.i107.us.prol

.lr.ph.i.i.i107.us.prol:                          ; preds = %.lr.ph.i.i.i107.us.preheader
  %i.qn = load double, ptr %.021.i.i.i108.us.ph, align 8, !tbaa !60
  %i.qo = load double, ptr %.01420.i.i.i109.us.ph, align 8, !tbaa !60
  %i.qp = insertelement <2 x double> poison, double %i.qo, i64 0
  %i.qq = shufflevector <2 x double> %i.qp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qr = fmul <2 x double> %i.oa, %i.qq
  %i.qs = shufflevector <2 x double> %i.oa, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.qt = insertelement <2 x double> %i.qs, double %i.pu, i64 0
  %i.qu = insertelement <2 x double> poison, double %i.qn, i64 0
  %i.qv = shufflevector <2 x double> %i.qu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qt, <2 x double> %i.qv, <2 x double> %i.qr) ; 2 uses
  %i.qx = extractelement <2 x double> %i.qw, i64 1
  store double %i.qx, ptr %.021.i.i.i108.us.ph, align 8, !tbaa !60
  %i.qy = extractelement <2 x double> %i.qw, i64 0
  store double %i.qy, ptr %.01420.i.i.i109.us.ph, align 8, !tbaa !60
  %i.qz = getelementptr inbounds nuw i8, ptr %.021.i.i.i108.us.ph, i64 8
  %i.ra = getelementptr inbounds nuw i8, ptr %.01420.i.i.i109.us.ph, i64 8
  %i.rb = or disjoint i64 %.01519.i.i.i110.us.ph, 1
  br label %.lr.ph.i.i.i107.us.prol.loopexit

.lr.ph.i.i.i107.us.prol.loopexit:                 ; preds = %.lr.ph.i.i.i107.us.prol, %.lr.ph.i.i.i107.us.preheader
  %.021.i.i.i108.us.unr = phi ptr [ %.021.i.i.i108.us.ph, %.lr.ph.i.i.i107.us.preheader ], [ %i.qz, %.lr.ph.i.i.i107.us.prol ]
end_hunk_0
