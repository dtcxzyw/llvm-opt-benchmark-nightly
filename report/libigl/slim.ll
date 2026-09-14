Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/slim?download=true
inline.NumInlined: 5960
inline.NumDeleted: 2832
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 126
loop-unroll.NumUnrolled: 127
begin_hunk_0_@_ZN3igl56slim_update_weights_and_closest_rotations_with_jacobiansERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_17MappingEnergyTypeEdRS2_S6_:bb.a
  %i.if = icmp sgt i64 %i.id, 0
  br i1 %i.if, label %.lr.ph.i.i.i.i.i.i.i.i.i.i346.preheader, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_3MapINS1_IdLi1ELi4ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit349

.lr.ph.i.i.i.i.i.i.i.i.i.i346.preheader:          ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_3MapINS1_IdLi1ELi4ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit
  %min.iters.check826 = icmp ugt i64 %i.id, 5
  %ident.check822.not = icmp eq i64 %i.ie, 1
  %or.cond851 = select i1 %min.iters.check826, i1 %ident.check822.not, i1 false
  br i1 %or.cond851, label %vector.memcheck823, label %.lr.ph.i.i.i.i.i.i.i.i.i.i346.preheader858

vector.memcheck823:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i346.preheader
  %i.ig = add i64 %i.w, %i.ib
  %i.ih = add i64 %i.ig, -1
  %diff.check824 = icmp ult i64 %i.ih, 31
  br i1 %diff.check824, label %.lr.ph.i.i.i.i.i.i.i.i.i.i346.preheader858, label %vector.ph827

vector.ph827:                                     ; preds = %vector.memcheck823
  %n.vec828 = and i64 %i.id, 9223372036854775804  ; 3 uses
  br label %vector.body829

vector.body829:                                   ; preds = %vector.body829, %vector.ph827
  %index830 = phi i64 [ 0, %vector.ph827 ], [ %index.next833, %vector.body829 ] ; 3 uses
  %i.ii = getelementptr inbounds [8 x i8], ptr %i.ic, i64 %index830 ; 2 uses
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %21, i64 %index830 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %wide.load831 = load <2 x double>, ptr %i.ij, align 16, !tbaa !40
  %wide.load832 = load <2 x double>, ptr %i.ik, align 16, !tbaa !40
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  store <2 x double> %wide.load831, ptr %i.ii, align 8, !tbaa !40
  store <2 x double> %wide.load832, ptr %i.il, align 8, !tbaa !40
  %index.next833 = add nuw i64 %index830, 4       ; 2 uses
  %i.im = icmp eq i64 %index.next833, %n.vec828
  br i1 %i.im, label %middle.block834, label %vector.body829, !llvm.loop !349

middle.block834:                                  ; preds = %vector.body829
  %cmp.n835 = icmp eq i64 %i.id, %n.vec828
  br i1 %cmp.n835, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_3MapINS1_IdLi1ELi4ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit349, label %.lr.ph.i.i.i.i.i.i.i.i.i.i346.preheader858

.lr.ph.i.i.i.i.i.i.i.i.i.i346.preheader858:       ; preds = %vector.memcheck823, %.lr.ph.i.i.i.i.i.i.i.i.i.i346.preheader, %middle.block834
  %.05.i.i.i.i.i.i.i.i.i.i347.ph = phi i64 [ 0, %vector.memcheck823 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i346.preheader ], [ %n.vec828, %middle.block834 ] ; 3 uses
  %xtraiter868 = and i64 %i.id, 3                 ; 2 uses
  %lcmp.mod869.not = icmp eq i64 %xtraiter868, 0
  br i1 %lcmp.mod869.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i346.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i346.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i346.prol:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i346.preheader858, %.lr.ph.i.i.i.i.i.i.i.i.i.i346.prol
  %.05.i.i.i.i.i.i.i.i.i.i347.prol = phi i64 [ %i.ir, %.lr.ph.i.i.i.i.i.i.i.i.i.i346.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i347.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i346.preheader858 ] ; 3 uses
  %prol.iter870 = phi i64 [ %prol.iter870.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i346.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i346.preheader858 ]
  %i.in = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i347.prol, %i.ie
  %i.io = getelementptr inbounds [8 x i8], ptr %i.ic, i64 %i.in
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %21, i64 %.05.i.i.i.i.i.i.i.i.i.i347.prol
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !40
  store double %i.iq, ptr %i.io, align 8, !tbaa !40
  %i.ir = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i347.prol, 1 ; 2 uses
  %prol.iter870.next = add i64 %prol.iter870, 1   ; 2 uses
  %prol.iter870.cmp.not = icmp eq i64 %prol.iter870.next, %xtraiter868
  br i1 %prol.iter870.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i346.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i346.prol, !llvm.loop !350

.lr.ph.i.i.i.i.i.i.i.i.i.i346.prol.loopexit:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i346.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i346.preheader858
  %.05.i.i.i.i.i.i.i.i.i.i347.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i347.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i346.preheader858 ], [ %i.ir, %.lr.ph.i.i.i.i.i.i.i.i.i.i346.prol ]
  %i.is = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i347.ph, %i.id
  %i.it = icmp ugt i64 %i.is, -4
  br i1 %i.it, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_3MapINS1_IdLi1ELi4ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit349, label %.lr.ph.i.i.i.i.i.i.i.i.i.i346

.lr.ph.i.i.i.i.i.i.i.i.i.i346:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i346.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i346
  %.05.i.i.i.i.i.i.i.i.i.i347 = phi i64 [ %i.jn, %.lr.ph.i.i.i.i.i.i.i.i.i.i346 ], [ %.05.i.i.i.i.i.i.i.i.i.i347.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i346.prol.loopexit ] ; 6 uses
  %i.iu = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i347, %i.ie
  %i.iv = getelementptr inbounds [8 x i8], ptr %i.ic, i64 %i.iu
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %21, i64 %.05.i.i.i.i.i.i.i.i.i.i347
  %i.ix = load double, ptr %i.iw, align 8, !tbaa !40
  store double %i.ix, ptr %i.iv, align 8, !tbaa !40
  %i.iy = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i347, 1 ; 2 uses
  %i.iz = mul nsw i64 %i.iy, %i.ie
  %i.ja = getelementptr inbounds [8 x i8], ptr %i.ic, i64 %i.iz
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %21, i64 %i.iy
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !40
  store double %i.jc, ptr %i.ja, align 8, !tbaa !40
  %i.jd = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i347, 2 ; 2 uses
  %i.je = mul nsw i64 %i.jd, %i.ie
  %i.jf = getelementptr inbounds [8 x i8], ptr %i.ic, i64 %i.je
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %21, i64 %i.jd
  %i.jh = load double, ptr %i.jg, align 8, !tbaa !40
  store double %i.jh, ptr %i.jf, align 8, !tbaa !40
  %i.ji = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i347, 3 ; 2 uses
  %i.jj = mul nsw i64 %i.ji, %i.ie
  %i.jk = getelementptr inbounds [8 x i8], ptr %i.ic, i64 %i.jj
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %21, i64 %i.ji
  %i.jm = load double, ptr %i.jl, align 8, !tbaa !40
  store double %i.jm, ptr %i.jk, align 8, !tbaa !40
  %i.jn = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i347, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i348.3 = icmp eq i64 %i.jn, %i.id
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i348.3, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_3MapINS1_IdLi1ELi4ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit349, label %.lr.ph.i.i.i.i.i.i.i.i.i.i346, !llvm.loop !351

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_3MapINS1_IdLi1ELi4ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit349: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i346.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i346, %middle.block834, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_3MapINS1_IdLi1ELi4ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  %indvars.iv.next789 = add nuw nsw i64 %indvars.iv788, 1 ; 2 uses
  %i.jo = load i64, ptr %i.f, align 8, !tbaa !29  ; 2 uses
  %i.jp = icmp sgt i64 %i.jo, %indvars.iv.next789
  br i1 %i.jp, label %bb.b, label %.loopexit, !llvm.loop !352

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #28
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.jr = load i64, ptr %i.jq, align 8, !tbaa !29 ; 2 uses
  %i.js = icmp sgt i64 %i.jr, 0
  br i1 %i.js, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.l
  %i.jt = getelementptr inbounds nuw i8, ptr %27, i64 24
  %i.ju = getelementptr inbounds nuw i8, ptr %27, i64 48
  %i.jv = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.jw = getelementptr inbounds nuw i8, ptr %27, i64 32
  %i.jx = getelementptr inbounds nuw i8, ptr %27, i64 56
  %i.jy = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.jz = getelementptr inbounds nuw i8, ptr %27, i64 40
  %i.ka = getelementptr inbounds nuw i8, ptr %27, i64 64
  %i.kb = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.kc = ptrtoint ptr %31 to i64                 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ke = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 3 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.kg = getelementptr inbounds nuw i8, ptr %30, i64 24 ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.ki = getelementptr inbounds nuw i8, ptr %30, i64 40 ; 3 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.kk = getelementptr inbounds nuw i8, ptr %30, i64 48 ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.km = getelementptr inbounds nuw i8, ptr %30, i64 64 ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.ko = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.kp = getelementptr inbounds nuw i8, ptr %10, i64 88
  %i.kq = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.kr = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ks = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.kt = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ku = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.kw = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.ky = getelementptr inbounds nuw i8, ptr %28, i64 24 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.la = getelementptr inbounds nuw i8, ptr %28, i64 32 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.lc = getelementptr inbounds nuw i8, ptr %28, i64 40 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %14, i64 56
  %i.le = getelementptr inbounds nuw i8, ptr %28, i64 48 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.lg = getelementptr inbounds nuw i8, ptr %28, i64 56 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.li = getelementptr inbounds nuw i8, ptr %28, i64 64 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.lk = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ll = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.lm = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.ln = getelementptr inbounds nuw i8, ptr %15, i64 48
  %i.lo = getelementptr inbounds nuw i8, ptr %15, i64 64
  %i.lp = getelementptr inbounds nuw i8, ptr %15, i64 72
  %i.lq = getelementptr inbounds nuw i8, ptr %15, i64 80
  %i.lr = getelementptr inbounds nuw i8, ptr %15, i64 88
  %i.ls = getelementptr inbounds nuw i8, ptr %15, i64 96
  %i.lt = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.lu = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.lv = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.lw = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.lx = getelementptr inbounds nuw i8, ptr %19, i64 48
  %i.ly = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.lz = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.ma = getelementptr inbounds nuw i8, ptr %19, i64 56
  %i.mb = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.mc = getelementptr inbounds nuw i8, ptr %19, i64 40
  %i.md = getelementptr inbounds nuw i8, ptr %19, i64 64
  %i.me = ptrtoint ptr %30 to i64
  %i.mf = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.mg = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.mh = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.mi = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.mj = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.mk = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.ml = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.mm = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.mn = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.mo = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.mp = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.mq = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.mr = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.ms = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.mt = getelementptr inbounds nuw i8, ptr %33, i64 32
  %i.mu = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.mv = getelementptr inbounds nuw i8, ptr %33, i64 48
  %i.mw = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.mx = getelementptr inbounds nuw i8, ptr %33, i64 64
  %i.my = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.mz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.na = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.nb = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.nc = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.m

._crit_edge:                                      ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_3MapINS1_IdLi1ELi9ELi1ELi1ELi9EEELi0ENS_6StrideILi0ELi0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit500, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  br label %.loopexit

bb.m:                                             ; preds = %.lr.ph, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_3MapINS1_IdLi1ELi9ELi1ELi1ELi9EEELi0ENS_6StrideILi0ELi0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit500
  %.sroa.20.0 = phi double [ undef, %.lr.ph ], [ %.sroa.20.2, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_3MapINS1_IdLi1ELi9ELi1ELi1ELi9EEELi0ENS_6StrideILi0ELi0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit500 ]
  %.sroa.11.0 = phi double [ undef, %.lr.ph ], [ %.sroa.11.2, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_3MapINS1_IdLi1ELi9ELi1ELi1ELi9EEELi0ENS_6StrideILi0ELi0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit500 ]
  %.sroa.0794.0 = phi double [ undef, %.lr.ph ], [ %.sroa.0794.2, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_3MapINS1_IdLi1ELi9ELi1ELi1ELi9EEELi0ENS_6StrideILi0ELi0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit500 ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_3MapINS1_IdLi1ELi9ELi1ELi1ELi9EEELi0ENS_6StrideILi0ELi0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit500 ] ; 5 uses
  %i.nd = phi i64 [ %i.jr, %.lr.ph ], [ %i.acd, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_3MapINS1_IdLi1ELi9ELi1ELi1ELi9EEELi0ENS_6StrideILi0ELi0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit500 ] ; 8 uses
  %i.ne = shl i64 %indvars.iv, 3
  %i.nf = sub i64 %i.ne, %i.b
  %i.ng = load ptr, ptr %0, align 8, !tbaa !27
  %i.nh = getelementptr [8 x i8], ptr %i.ng, i64 %indvars.iv ; 9 uses
  %i.ni = load double, ptr %i.nh, align 8, !tbaa !40, !noalias !368
  store double %i.ni, ptr %27, align 8, !tbaa !40, !noalias !368
  %i.nj = getelementptr [8 x i8], ptr %i.nh, i64 %i.nd
  %i.nk = load double, ptr %i.nj, align 8, !tbaa !40
  store double %i.nk, ptr %i.jt, align 8, !tbaa !40
  %.idx = shl i64 %i.nd, 4
  %i.nl = getelementptr i8, ptr %i.nh, i64 %.idx
  %i.nm = load double, ptr %i.nl, align 8, !tbaa !40
  store double %i.nm, ptr %i.ju, align 8, !tbaa !40
  %.idx776 = mul i64 %i.nd, 24
  %i.nn = getelementptr i8, ptr %i.nh, i64 %.idx776
  %i.no = load double, ptr %i.nn, align 8, !tbaa !40
  store double %i.no, ptr %i.jv, align 8, !tbaa !40
  %.idx777 = shl i64 %i.nd, 5
  %i.np = getelementptr i8, ptr %i.nh, i64 %.idx777
  %i.nq = load double, ptr %i.np, align 8, !tbaa !40
  store double %i.nq, ptr %i.jw, align 8, !tbaa !40
  %.idx778 = mul i64 %i.nd, 40
  %i.nr = getelementptr i8, ptr %i.nh, i64 %.idx778
  %i.ns = load double, ptr %i.nr, align 8, !tbaa !40
  store double %i.ns, ptr %i.jx, align 8, !tbaa !40
  %.idx779 = mul i64 %i.nd, 48
  %i.nt = getelementptr i8, ptr %i.nh, i64 %.idx779
  %i.nu = load double, ptr %i.nt, align 8, !tbaa !40
  store double %i.nu, ptr %i.jy, align 8, !tbaa !40
  %.idx780 = mul i64 %i.nd, 56
  %i.nv = getelementptr i8, ptr %i.nh, i64 %.idx780
  %i.nw = load double, ptr %i.nv, align 8, !tbaa !40
  store double %i.nw, ptr %i.jz, align 8, !tbaa !40
  %.idx781 = shl i64 %i.nd, 6
  %i.nx = getelementptr i8, ptr %i.nh, i64 %.idx781
  %i.ny = load double, ptr %i.nx, align 8, !tbaa !40
  store double %i.ny, ptr %i.ka, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #28
  call void @_ZN3igl9polar_svdIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEES3_S3_S3_NS2_IdLi3ELi1ELi0ELi3ELi1EEES3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSA_IT1_EERNSA_IT2_EERNSA_IT3_EERNSA_IT4_EE(ptr noundef nonnull align 1 dereferenceable(1) %27, ptr noundef nonnull align 8 dereferenceable(72) %28, ptr noundef nonnull align 8 dereferenceable(72) %29, ptr noundef nonnull align 8 dereferenceable(72) %30, ptr noundef nonnull align 8 dereferenceable(24) %32, ptr noundef nonnull align 8 dereferenceable(72) %31)
  %i.nz = load double, ptr %32, align 8, !tbaa !40 ; 24 uses
  %i.oa = load <2 x double>, ptr %i.kb, align 8, !tbaa !40 ; 16 uses
  %i.ob = extractelement <2 x double> %i.oa, i64 1 ; 20 uses
  %i.oc = extractelement <2 x double> %i.oa, i64 0 ; 14 uses
  switch i32 %1, label %bb.t [
    i32 0, label %bb.n
    i32 1, label %bb.o
    i32 2, label %bb.p
    i32 5, label %bb.q
    i32 3, label %bb.r
    i32 4, label %bb.s
  ]

bb.n:                                             ; preds = %bb.m
  br label %bb.t

bb.o:                                             ; preds = %bb.m
  %i.od = call double @log(double noundef %i.nz) #28
  %i.oe = call double @log(double noundef %i.oc) #28
  %i.of = call double @log(double noundef %i.ob) #28
  %i.og = shufflevector <2 x double> %i.oa, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.oh = insertelement <2 x double> %i.og, double %i.nz, i64 0 ; 2 uses
  %i.oi = fadd <2 x double> %i.oh, splat (double -1.000000e+00)
  %i.oj = insertelement <2 x double> poison, double %i.od, i64 0
  %i.ok = insertelement <2 x double> %i.oj, double %i.oe, i64 1
  %i.ol = fdiv <2 x double> %i.ok, %i.oh
  %i.om = fmul <2 x double> %i.ol, splat (double 2.000000e+00)
  %i.on = fmul <2 x double> %i.oi, splat (double 2.000000e+00)
  %i.oo = fdiv <2 x double> %i.om, %i.on          ; 2 uses
  %i.op = extractelement <2 x double> %i.oo, i64 0
  %i.oq = call double @sqrt(double noundef %i.op) #28
  %i.or = extractelement <2 x double> %i.oo, i64 1
  %i.os = call double @sqrt(double noundef %i.or) #28
  %i.ot = fdiv double %i.of, %i.ob
  %i.ou = fmul double %i.ot, 2.000000e+00
  %i.ov = fadd double %i.ob, -1.000000e+00
  %i.ow = fmul double %i.ov, 2.000000e+00
  %i.ox = fdiv double %i.ou, %i.ow
  %i.oy = call double @sqrt(double noundef %i.ox) #28
  br label %bb.t

bb.p:                                             ; preds = %bb.m
  %i.oz = call double @pow(double noundef %i.nz, double noundef -3.000000e+00) #28
  %i.pa = fsub double %i.nz, %i.oz
  %i.pb = fmul double %i.pa, 2.000000e+00
  %i.pc = call double @pow(double noundef %i.oc, double noundef -3.000000e+00) #28
  %i.pd = call double @pow(double noundef %i.ob, double noundef -3.000000e+00) #28
  %i.pe = fadd double %i.nz, -1.000000e+00
  %i.pf = fmul double %i.pe, 2.000000e+00
  %i.pg = fdiv double %i.pb, %i.pf
  %i.ph = call double @sqrt(double noundef %i.pg) #28
  %i.pi = shufflevector <2 x double> %i.oa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pj = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.pc, i64 0
  %i.pk = fsub <2 x double> %i.pi, %i.pj
  %i.pl = fmul <2 x double> %i.pk, splat (double 2.000000e+00) ; 2 uses
  %i.pm = shufflevector <2 x double> %i.oa, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.pn = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.pd, i64 0
  %i.po = fsub <2 x double> %i.pm, %i.pn
  %i.pp = fmul <2 x double> %i.po, splat (double 2.000000e+00) ; 2 uses
  %i.pq = shufflevector <2 x double> %i.pl, <2 x double> %i.pp, <2 x i32> <i32 0, i32 2>
  %i.pr = shufflevector <2 x double> %i.pl, <2 x double> %i.pp, <2 x i32> <i32 1, i32 3>
  %i.ps = fdiv <2 x double> %i.pq, %i.pr          ; 2 uses
  %i.pt = extractelement <2 x double> %i.ps, i64 0
  %i.pu = call double @sqrt(double noundef %i.pt) #28
  %i.pv = extractelement <2 x double> %i.ps, i64 1
  %i.pw = call double @sqrt(double noundef %i.pv) #28
  br label %bb.t

bb.q:                                             ; preds = %bb.m
  %i.px = call double @pow(double noundef %i.nz, double noundef -3.000000e+00) #28
  %i.py = fsub double %i.nz, %i.px
  %i.pz = fmul double %i.py, 2.000000e+00         ; 2 uses
  %i.qa = call double @pow(double noundef %i.oc, double noundef -3.000000e+00) #28
  %i.qb = call double @pow(double noundef %i.ob, double noundef -3.000000e+00) #28
  %i.qc = fadd double %i.nz, -1.000000e+00
  %i.qd = fmul double %i.qc, 2.000000e+00         ; 2 uses
  %i.qe = fdiv double %i.pz, %i.qd
  %i.qf = call double @sqrt(double noundef %i.qe) #28 ; 0 uses
  %i.qg = shufflevector <2 x double> %i.oa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qh = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.qa, i64 0
  %i.qi = fsub <2 x double> %i.qg, %i.qh
  %i.qj = fmul <2 x double> %i.qi, splat (double 2.000000e+00) ; 4 uses
  %i.qk = extractelement <2 x double> %i.qj, i64 0
  %i.ql = extractelement <2 x double> %i.qj, i64 1
  %i.qm = fdiv double %i.qk, %i.ql
  %i.qn = call double @sqrt(double noundef %i.qm) #28 ; 0 uses
  %i.qo = shufflevector <2 x double> %i.oa, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.qp = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.qb, i64 0
  %i.qq = fsub <2 x double> %i.qo, %i.qp
  %i.qr = fmul <2 x double> %i.qq, splat (double 2.000000e+00) ; 4 uses
  %i.qs = extractelement <2 x double> %i.qr, i64 0
  %i.qt = extractelement <2 x double> %i.qr, i64 1
  %i.qu = fdiv double %i.qs, %i.qt
  %i.qv = call double @sqrt(double noundef %i.qu) #28 ; 0 uses
  %i.qw = call double @pow(double noundef %i.nz, double noundef 2.000000e+00) #28
  %i.qx = call double @pow(double noundef %i.nz, double noundef -2.000000e+00) #28
  %i.qy = fadd double %i.qw, %i.qx
  %i.qz = call double @pow(double noundef %i.oc, double noundef 2.000000e+00) #28
  %i.ra = fadd double %i.qy, %i.qz
  %i.rb = call double @pow(double noundef %i.oc, double noundef -2.000000e+00) #28
  %i.rc = fadd double %i.ra, %i.rb
  %i.rd = call double @pow(double noundef %i.ob, double noundef 2.000000e+00) #28
  %i.re = fadd double %i.rc, %i.rd
  %i.rf = call double @pow(double noundef %i.ob, double noundef -2.000000e+00) #28
  %i.rg = fadd double %i.re, %i.rf
  %i.rh = fmul double %2, %i.rg
  %i.ri = call double @exp(double noundef %i.rh) #28
  %i.rj = fmul double %2, %i.ri                   ; 2 uses
  %i.rk = fmul double %i.pz, %i.rj
  %i.rl = fdiv double %i.rk, %i.qd
  %i.rm = call double @sqrt(double noundef %i.rl) #28
  %i.rn = shufflevector <2 x double> %i.qj, <2 x double> %i.qr, <2 x i32> <i32 0, i32 2>
  %i.ro = insertelement <2 x double> poison, double %i.rj, i64 0
  %i.rp = shufflevector <2 x double> %i.ro, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rq = fmul <2 x double> %i.rn, %i.rp
  %i.rr = shufflevector <2 x double> %i.qj, <2 x double> %i.qr, <2 x i32> <i32 1, i32 3>
  %i.rs = fdiv <2 x double> %i.rq, %i.rr          ; 2 uses
  %i.rt = extractelement <2 x double> %i.rs, i64 0
  %i.ru = call double @sqrt(double noundef %i.rt) #28
  %i.rv = extractelement <2 x double> %i.rs, i64 1
  %i.rw = call double @sqrt(double noundef %i.rv) #28
  br label %bb.t

bb.r:                                             ; preds = %bb.m
  %i.rx = fmul double %i.nz, %i.oc
  %i.ry = fmul double %i.rx, %i.ob
  %i.rz = call double @pow(double noundef %i.ry, double noundef f0x3FFAAAAAAAAAAAAB) #28
  %i.sa = insertelement <2 x double> %i.oa, double %i.nz, i64 1
  %i.sb = fmul <2 x double> %i.sa, splat (double -2.000000e+00) ; 2 uses
  %i.sc = call double @pow(double noundef %i.oc, double noundef 2.000000e+00) #28
  %i.sd = call double @pow(double noundef %i.ob, double noundef 2.000000e+00) #28
  %i.se = call double @pow(double noundef %i.nz, double noundef 2.000000e+00) #28 ; 2 uses
  %i.sf = call double @pow(double noundef %i.ob, double noundef 2.000000e+00) #28
  %i.sg = call double @pow(double noundef %i.oc, double noundef 2.000000e+00) #28
  %i.sh = call double @pow(double noundef %i.nz, double noundef 2.000000e+00) #28
  %i.si = call double @pow(double noundef %i.oc, double noundef 2.000000e+00) #28
  %i.sj = call double @pow(double noundef %i.ob, double noundef 2.000000e+00) #28
  %i.sk = call double @pow(double noundef %i.nz, double noundef 2.000000e+00) #28
  %i.sl = call double @pow(double noundef %i.ob, double noundef 2.000000e+00) #28
  %i.sm = fadd double %i.sk, %i.sl
  %i.sn = call double @sqrt(double noundef %i.sm) #28
  %i.so = shufflevector <2 x double> %i.oa, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.sp = fmul <2 x double> %i.sb, %i.so
  %i.sq = insertelement <2 x double> poison, double %i.sc, i64 0
  %i.sr = insertelement <2 x double> %i.sq, double %i.se, i64 1
  %i.ss = insertelement <2 x double> poison, double %i.sd, i64 0
  %i.st = insertelement <2 x double> %i.ss, double %i.sf, i64 1
  %i.su = fadd <2 x double> %i.sr, %i.st
  %i.sv = insertelement <2 x double> poison, double %i.se, i64 0
  %i.sw = insertelement <2 x double> %i.sv, double %i.sg, i64 1
  %i.sx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sw, <2 x double> splat (double -2.000000e+00), <2 x double> %i.su)
  %i.sy = fmul <2 x double> %i.sp, %i.sx
  %i.sz = fdiv double %i.sn, f0x3FF6A09E667F3BCD  ; 5 uses
  %i.ta = fmul double %i.rz, 9.000000e+00         ; 2 uses
  %i.tb = insertelement <2 x double> poison, double %i.ta, i64 0
  %i.tc = shufflevector <2 x double> %i.tb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.td = fdiv <2 x double> %i.sy, %i.tc
  %i.te = shufflevector <2 x double> %i.oa, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.tf = insertelement <2 x double> %i.te, double %i.nz, i64 0
  %i.tg = insertelement <2 x double> poison, double %i.sz, i64 0
  %i.th = shufflevector <2 x double> %i.tg, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.ti = fsub <2 x double> %i.tf, %i.th
  %i.tj = fmul <2 x double> %i.ti, splat (double 2.000000e+00)
  %i.tk = fdiv <2 x double> %i.td, %i.tj          ; 2 uses
  %i.tl = extractelement <2 x double> %i.tk, i64 0
  %i.tm = call double @sqrt(double noundef %i.tl) #28
  %i.tn = extractelement <2 x double> %i.tk, i64 1
  %i.to = call double @sqrt(double noundef %i.tn) #28
  %shift = shufflevector <2 x double> %i.sb, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %shift, %i.oa
  %i.tp = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.tq = fadd double %i.sh, %i.si
  %i.tr = call double @llvm.fmuladd.f64(double %i.sj, double -2.000000e+00, double %i.tq)
  %i.ts = fmul double %i.tp, %i.tr
  %i.tt = fdiv double %i.ts, %i.ta
  %i.tu = fsub double %i.ob, %i.sz
  %i.tv = fmul double %i.tu, 2.000000e+00
  %i.tw = fdiv double %i.tt, %i.tv
  %i.tx = call double @sqrt(double noundef %i.tw) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  %i.ty = load <2 x double>, ptr %30, align 16, !tbaa !47
  %i.tz = fmul <2 x double> %i.ty, %i.th
  store <2 x double> %i.tz, ptr %15, align 16, !tbaa !47
  %i.ua = load double, ptr %i.ke, align 16, !tbaa !40
  %i.ub = fmul double %i.sz, %i.ua
  store double %i.ub, ptr %i.lk, align 16, !tbaa !40
  %i.uc = load <2 x double>, ptr %i.kg, align 8, !tbaa !47
  %i.ud = fmul <2 x double> %i.uc, %i.th
  store <2 x double> %i.ud, ptr %i.ll, align 8, !tbaa !47
  %i.ue = load double, ptr %i.ki, align 8, !tbaa !40
  %i.uf = fmul double %i.sz, %i.ue
  store double %i.uf, ptr %i.lm, align 8, !tbaa !40
  %i.ug = load <2 x double>, ptr %i.kk, align 16, !tbaa !47
  %i.uh = fmul <2 x double> %i.ug, %i.th
  store <2 x double> %i.uh, ptr %i.ln, align 16, !tbaa !47
  %i.ui = load double, ptr %i.km, align 16, !tbaa !40
  %i.uj = fmul double %i.sz, %i.ui
  store double %i.uj, ptr %i.lo, align 16, !tbaa !40
  store i64 %i.kc, ptr %i.lp, align 8
  store ptr %15, ptr %i.lq, align 16, !tbaa !369
  store ptr %31, ptr %i.lr, align 8, !tbaa !369
  store i64 3, ptr %i.ls, align 16, !tbaa !379
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  store ptr %19, ptr %16, align 8, !tbaa !369
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  store ptr %16, ptr %17, align 8, !tbaa !380
  store ptr %15, ptr %i.lt, align 8, !tbaa !381
  store ptr %18, ptr %i.lu, align 8, !tbaa !382
  store ptr %19, ptr %i.lv, align 8, !tbaa !383
  call void @_ZN5Eigen8internal55copy_using_evaluator_DefaultTraversal_CompleteUnrollingINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi3ELi1ELi3ELi3EEEEENS3_INS_7ProductINS7_INS4_IdLi3ELi3ELi0ELi3ELi3EEENS_15DiagonalWrapperIKNS4_IdLi3ELi1ELi0ELi3ELi1EEEEELi1EEENS_9TransposeIS8_EELi1EEEEENS0_9assign_opIddEELi0EEELi0ELi9EE3runERSK_(ptr noundef nonnull align 8 dereferenceable(32) %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  %i.uk = load double, ptr %19, align 8, !tbaa !40
  store double %i.uk, ptr %28, align 8, !tbaa !40
  %i.ul = load double, ptr %i.lw, align 8, !tbaa !40
  store double %i.ul, ptr %i.ku, align 8, !tbaa !40
  %i.um = load double, ptr %i.lx, align 8, !tbaa !40
  store double %i.um, ptr %i.kw, align 8, !tbaa !40
  %i.un = load double, ptr %i.ly, align 8, !tbaa !40
  store double %i.un, ptr %i.ky, align 8, !tbaa !40
  %i.uo = load double, ptr %i.lz, align 8, !tbaa !40
  store double %i.uo, ptr %i.la, align 8, !tbaa !40
  %i.up = load double, ptr %i.ma, align 8, !tbaa !40
  store double %i.up, ptr %i.lc, align 8, !tbaa !40
  %i.uq = load double, ptr %i.mb, align 8, !tbaa !40
  store double %i.uq, ptr %i.le, align 8, !tbaa !40
  %i.ur = load double, ptr %i.mc, align 8, !tbaa !40
  store double %i.ur, ptr %i.lg, align 8, !tbaa !40
  %i.us = load double, ptr %i.md, align 8, !tbaa !40
  store double %i.us, ptr %i.li, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  br label %bb.t

bb.s:                                             ; preds = %bb.m
  %i.ut = fmul double %i.nz, %i.oc
  %i.uu = fmul double %i.ut, %i.ob                ; 2 uses
  %i.uv = call double @pow(double noundef %i.uu, double noundef f0x3FFAAAAAAAAAAAAB) #28
  %i.uw = insertelement <2 x double> %i.oa, double %i.nz, i64 1
  %i.ux = fmul <2 x double> %i.uw, splat (double -2.000000e+00) ; 2 uses
  %i.uy = call double @pow(double noundef %i.oc, double noundef 2.000000e+00) #28
  %i.uz = call double @pow(double noundef %i.ob, double noundef 2.000000e+00) #28
  %i.va = call double @pow(double noundef %i.nz, double noundef 2.000000e+00) #28 ; 2 uses
  %i.vb = call double @pow(double noundef %i.ob, double noundef 2.000000e+00) #28
  %i.vc = call double @pow(double noundef %i.oc, double noundef 2.000000e+00) #28
  %i.vd = call double @pow(double noundef %i.nz, double noundef 2.000000e+00) #28
  %i.ve = call double @pow(double noundef %i.oc, double noundef 2.000000e+00) #28
  %i.vf = call double @pow(double noundef %i.ob, double noundef 2.000000e+00) #28
  %i.vg = call double @pow(double noundef %i.nz, double noundef 2.000000e+00) #28
  %i.vh = call double @pow(double noundef %i.oc, double noundef 2.000000e+00) #28
  %i.vi = fadd double %i.vg, %i.vh
  %i.vj = call double @pow(double noundef %i.ob, double noundef 2.000000e+00) #28
  %i.vk = fadd double %i.vi, %i.vj
  %i.vl = call double @pow(double noundef %i.uu, double noundef f0x3FE5555555555555) #28
  %i.vm = fmul double %i.vl, 3.000000e+00
  %i.vn = fdiv double %i.vk, %i.vm
  %i.vo = fmul double %2, %i.vn
  %i.vp = call double @exp(double noundef %i.vo) #28
  %i.vq = call double @pow(double noundef %i.nz, double noundef 2.000000e+00) #28
  %i.vr = call double @pow(double noundef %i.ob, double noundef 2.000000e+00) #28
  %i.vs = fadd double %i.vq, %i.vr
  %i.vt = call double @sqrt(double noundef %i.vs) #28
  %i.vu = fdiv double %i.vt, f0x3FF6A09E667F3BCD  ; 5 uses
  %i.vv = shufflevector <2 x double> %i.oa, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.vw = fmul <2 x double> %i.ux, %i.vv
  %i.vx = insertelement <2 x double> poison, double %i.uy, i64 0
  %i.vy = insertelement <2 x double> %i.vx, double %i.va, i64 1
  %i.vz = insertelement <2 x double> poison, double %i.uz, i64 0
  %i.wa = insertelement <2 x double> %i.vz, double %i.vb, i64 1
  %i.wb = fadd <2 x double> %i.vy, %i.wa
  %i.wc = insertelement <2 x double> poison, double %i.va, i64 0
  %i.wd = insertelement <2 x double> %i.wc, double %i.vc, i64 1
  %i.we = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wd, <2 x double> splat (double -2.000000e+00), <2 x double> %i.wb)
  %i.wf = fmul <2 x double> %i.vw, %i.we
  %34 = fmul double %2, %i.vp                     ; 2 uses
  %35 = fmul double %i.uv, 9.000000e+00           ; 2 uses
  %36 = insertelement <2 x double> poison, double %35, i64 0
  %i.wg = shufflevector <2 x double> %36, <2 x double> poison, <2 x i32> zeroinitializer
  %i.wh = fdiv <2 x double> %i.wf, %i.wg
  %37 = insertelement <2 x double> poison, double %34, i64 0
  %38 = shufflevector <2 x double> %37, <2 x double> poison, <2 x i32> zeroinitializer
  %i.wi = fmul <2 x double> %i.wh, %38
  %i.wj = shufflevector <2 x double> %i.oa, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.wk = insertelement <2 x double> %i.wj, double %i.nz, i64 0
  %i.wl = insertelement <2 x double> poison, double %i.vu, i64 0
  %i.wm = shufflevector <2 x double> %i.wl, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.wn = fsub <2 x double> %i.wk, %i.wm
  %i.wo = fmul <2 x double> %i.wn, splat (double 2.000000e+00)
  %i.wp = fdiv <2 x double> %i.wi, %i.wo          ; 2 uses
  %i.wq = extractelement <2 x double> %i.wp, i64 0
  %i.wr = call double @sqrt(double noundef %i.wq) #28
  %i.ws = extractelement <2 x double> %i.wp, i64 1
  %i.wt = call double @sqrt(double noundef %i.ws) #28
  %shift855 = shufflevector <2 x double> %i.ux, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop856 = fmul <2 x double> %shift855, %i.oa
  %i.wu = extractelement <2 x double> %foldExtExtBinop856, i64 0
  %i.wv = fadd double %i.vd, %i.ve
  %i.ww = call double @llvm.fmuladd.f64(double %i.vf, double -2.000000e+00, double %i.wv)
  %i.wx = fmul double %i.wu, %i.ww
  %i.wy = fdiv double %i.wx, %35
  %i.wz = fmul double %i.wy, %34
  %i.xa = fsub double %i.ob, %i.vu
  %i.xb = fmul double %i.xa, 2.000000e+00
  %i.xc = fdiv double %i.wz, %i.xb
  %i.xd = call double @sqrt(double noundef %i.xc) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.xe = load <2 x double>, ptr %30, align 16, !tbaa !47
  %i.xf = fmul <2 x double> %i.xe, %i.wm
  store <2 x double> %i.xf, ptr %10, align 16, !tbaa !47
  %i.xg = load double, ptr %i.ke, align 16, !tbaa !40
  %i.xh = fmul double %i.vu, %i.xg
  store double %i.xh, ptr %i.kd, align 16, !tbaa !40
  %i.xi = load <2 x double>, ptr %i.kg, align 8, !tbaa !47
  %i.xj = fmul <2 x double> %i.xi, %i.wm
  store <2 x double> %i.xj, ptr %i.kf, align 8, !tbaa !47
  %i.xk = load double, ptr %i.ki, align 8, !tbaa !40
  %i.xl = fmul double %i.vu, %i.xk
  store double %i.xl, ptr %i.kh, align 8, !tbaa !40
  %i.xm = load <2 x double>, ptr %i.kk, align 16, !tbaa !47
  %i.xn = fmul <2 x double> %i.xm, %i.wm
  store <2 x double> %i.xn, ptr %i.kj, align 16, !tbaa !47
  %i.xo = load double, ptr %i.km, align 16, !tbaa !40
  %i.xp = fmul double %i.vu, %i.xo
  store double %i.xp, ptr %i.kl, align 16, !tbaa !40
  store i64 %i.kc, ptr %i.kn, align 8
  store ptr %10, ptr %i.ko, align 16, !tbaa !369
  store ptr %31, ptr %i.kp, align 8, !tbaa !369
  store i64 3, ptr %i.kq, align 16, !tbaa !379
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  store ptr %14, ptr %11, align 8, !tbaa !369
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  store ptr %11, ptr %12, align 8, !tbaa !380
  store ptr %10, ptr %i.kr, align 8, !tbaa !381
  store ptr %13, ptr %i.ks, align 8, !tbaa !382
  store ptr %14, ptr %i.kt, align 8, !tbaa !383
  call void @_ZN5Eigen8internal55copy_using_evaluator_DefaultTraversal_CompleteUnrollingINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi3ELi1ELi3ELi3EEEEENS3_INS_7ProductINS7_INS4_IdLi3ELi3ELi0ELi3ELi3EEENS_15DiagonalWrapperIKNS4_IdLi3ELi1ELi0ELi3ELi1EEEEELi1EEENS_9TransposeIS8_EELi1EEEEENS0_9assign_opIddEELi0EEELi0ELi9EE3runERSK_(ptr noundef nonnull align 8 dereferenceable(32) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  %i.xq = load double, ptr %14, align 8, !tbaa !40
  store double %i.xq, ptr %28, align 8, !tbaa !40
  %i.xr = load double, ptr %i.kv, align 8, !tbaa !40
  store double %i.xr, ptr %i.ku, align 8, !tbaa !40
  %i.xs = load double, ptr %i.kx, align 8, !tbaa !40
  store double %i.xs, ptr %i.kw, align 8, !tbaa !40
  %i.xt = load double, ptr %i.kz, align 8, !tbaa !40
  store double %i.xt, ptr %i.ky, align 8, !tbaa !40
  %i.xu = load double, ptr %i.lb, align 8, !tbaa !40
  store double %i.xu, ptr %i.la, align 8, !tbaa !40
  %i.xv = load double, ptr %i.ld, align 8, !tbaa !40
  store double %i.xv, ptr %i.lc, align 8, !tbaa !40
  %i.xw = load double, ptr %i.lf, align 8, !tbaa !40
  store double %i.xw, ptr %i.le, align 8, !tbaa !40
  %i.xx = load double, ptr %i.lh, align 8, !tbaa !40
  store double %i.xx, ptr %i.lg, align 8, !tbaa !40
  %i.xy = load double, ptr %i.lj, align 8, !tbaa !40
  store double %i.xy, ptr %i.li, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %bb.t

bb.t:                                             ; preds = %bb.m, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
  %.sroa.20.1 = phi double [ %.sroa.20.0, %bb.m ], [ 1.000000e+00, %bb.n ], [ %i.oy, %bb.o ], [ %i.pw, %bb.p ], [ %i.rw, %bb.q ], [ %i.tx, %bb.r ], [ %i.xd, %bb.s ]
  %.sroa.11.1 = phi double [ %.sroa.11.0, %bb.m ], [ 1.000000e+00, %bb.n ], [ %i.os, %bb.o ], [ %i.pu, %bb.p ], [ %i.ru, %bb.q ], [ %i.to, %bb.r ], [ %i.wt, %bb.s ]
  %.sroa.0794.1 = phi double [ %.sroa.0794.0, %bb.m ], [ 1.000000e+00, %bb.n ], [ %i.oq, %bb.o ], [ %i.ph, %bb.p ], [ %i.rm, %bb.q ], [ %i.tm, %bb.r ], [ %i.wr, %bb.s ]
  %i.xz = fadd double %i.nz, -1.000000e+00
  %i.ya = call noundef double @llvm.fabs.f64(double %i.xz)
  %i.yb = fcmp olt double %i.ya, 1.000000e-08
  %.sroa.0794.2 = select i1 %i.yb, double 1.000000e+00, double %.sroa.0794.1 ; 3 uses
  %i.yc = fadd <2 x double> %i.oa, splat (double -1.000000e+00)
  %i.yd = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.yc)
  %i.ye = fcmp olt <2 x double> %i.yd, splat (double 1.000000e-08) ; 2 uses
  %i.yf = extractelement <2 x i1> %i.ye, i64 0
  %.sroa.11.2 = select i1 %i.yf, double 1.000000e+00, double %.sroa.11.1 ; 3 uses
  %i.yg = extractelement <2 x i1> %i.ye, i64 1
  %.sroa.20.2 = select i1 %i.yg, double 1.000000e+00, double %.sroa.20.1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.yh = load <2 x double>, ptr %30, align 16, !tbaa !47
  %i.yi = insertelement <2 x double> poison, double %.sroa.0794.2, i64 0
  %i.yj = shufflevector <2 x double> %i.yi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.yk = fmul <2 x double> %i.yh, %i.yj
  store <2 x double> %i.yk, ptr %5, align 16, !tbaa !47
  %i.yl = load double, ptr %i.ke, align 16, !tbaa !40
  %i.ym = fmul double %.sroa.0794.2, %i.yl
  store double %i.ym, ptr %i.mf, align 16, !tbaa !40
  %i.yn = load <2 x double>, ptr %i.kg, align 8, !tbaa !47
  %i.yo = insertelement <2 x double> poison, double %.sroa.11.2, i64 0
  %i.yp = shufflevector <2 x double> %i.yo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.yq = fmul <2 x double> %i.yn, %i.yp
  store <2 x double> %i.yq, ptr %i.mg, align 8, !tbaa !47
  %i.yr = load double, ptr %i.ki, align 8, !tbaa !40
  %i.ys = fmul double %.sroa.11.2, %i.yr
  store double %i.ys, ptr %i.mh, align 8, !tbaa !40
  %i.yt = load <2 x double>, ptr %i.kk, align 16, !tbaa !47
  %i.yu = insertelement <2 x double> poison, double %.sroa.20.2, i64 0
  %i.yv = shufflevector <2 x double> %i.yu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.yw = fmul <2 x double> %i.yt, %i.yv
  store <2 x double> %i.yw, ptr %i.mi, align 16, !tbaa !47
  %i.yx = load double, ptr %i.km, align 16, !tbaa !40
  %i.yy = fmul double %.sroa.20.2, %i.yx
  store double %i.yy, ptr %i.mj, align 16, !tbaa !40
  store i64 %i.me, ptr %i.mk, align 8
  store ptr %5, ptr %i.ml, align 16, !tbaa !369
  store ptr %30, ptr %i.mm, align 8, !tbaa !369
  store i64 3, ptr %i.mn, align 16, !tbaa !379
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  store ptr %9, ptr %6, align 8, !tbaa !369
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  store ptr %6, ptr %7, align 8, !tbaa !380
  store ptr %5, ptr %i.mo, align 8, !tbaa !381
  store ptr %8, ptr %i.mp, align 8, !tbaa !382
  store ptr %9, ptr %i.mq, align 8, !tbaa !383
  call void @_ZN5Eigen8internal55copy_using_evaluator_DefaultTraversal_CompleteUnrollingINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi3ELi1ELi3ELi3EEEEENS3_INS_7ProductINS7_INS4_IdLi3ELi3ELi0ELi3ELi3EEENS_15DiagonalWrapperIKNS4_IdLi3ELi1ELi0ELi3ELi1EEEEELi1EEENS_9TransposeIS8_EELi1EEEEENS0_9assign_opIddEELi0EEELi0ELi9EE3runERSK_(ptr noundef nonnull align 8 dereferenceable(32) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.yz = load <2 x double>, ptr %9, align 16, !tbaa !47
  store <2 x double> %i.yz, ptr %33, align 16, !tbaa !47
  %i.za = load <2 x double>, ptr %i.ms, align 16, !tbaa !47
  store <2 x double> %i.za, ptr %i.mr, align 16, !tbaa !47
  %i.zb = load <2 x double>, ptr %i.mu, align 16, !tbaa !47
  store <2 x double> %i.zb, ptr %i.mt, align 16, !tbaa !47
  %i.zc = load <2 x double>, ptr %i.mw, align 16, !tbaa !47
  store <2 x double> %i.zc, ptr %i.mv, align 16, !tbaa !47
  %i.zd = load double, ptr %i.my, align 16, !tbaa !40
  store double %i.zd, ptr %i.mx, align 16, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %i.ze = load ptr, ptr %3, align 8, !tbaa !27, !noalias !384
  %i.zf = getelementptr inbounds nuw [8 x i8], ptr %i.ze, i64 %indvars.iv ; 6 uses
  %i.zg = load i64, ptr %i.mz, align 8, !tbaa !66, !noalias !384 ; 7 uses
  %i.zh = load i64, ptr %i.na, align 8, !tbaa !29 ; 6 uses
  %i.zi = icmp sgt i64 %i.zg, 0
  br i1 %i.zi, label %.lr.ph.i.i.i.i.i.i.i.i.i.i494.preheader, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_3MapINS1_IdLi1ELi9ELi1ELi1ELi9EEELi0ENS_6StrideILi0ELi0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i.i.i494.preheader:          ; preds = %bb.t
  %min.iters.check810 = icmp ugt i64 %i.zg, 3
  %ident.check808.not = icmp eq i64 %i.zh, 1
  %or.cond852 = select i1 %min.iters.check810, i1 %ident.check808.not, i1 false
  br i1 %or.cond852, label %vector.ph811, label %.lr.ph.i.i.i.i.i.i.i.i.i.i494.preheader861

vector.ph811:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i494.preheader
  %n.vec812 = and i64 %i.zg, 9223372036854775804  ; 3 uses
  br label %vector.body813

vector.body813:                                   ; preds = %vector.body813, %vector.ph811
  %index814 = phi i64 [ 0, %vector.ph811 ], [ %index.next817, %vector.body813 ] ; 3 uses
  %i.zj = getelementptr inbounds [8 x i8], ptr %i.zf, i64 %index814 ; 2 uses
  %i.zk = getelementptr inbounds nuw [8 x i8], ptr %33, i64 %index814 ; 2 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 16
  %wide.load815 = load <2 x double>, ptr %i.zk, align 16, !tbaa !40
  %wide.load816 = load <2 x double>, ptr %i.zl, align 16, !tbaa !40
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zj, i64 16
  store <2 x double> %wide.load815, ptr %i.zj, align 8, !tbaa !40
  store <2 x double> %wide.load816, ptr %i.zm, align 8, !tbaa !40
  %index.next817 = add nuw i64 %index814, 4       ; 2 uses
  %i.zn = icmp eq i64 %index.next817, %n.vec812
  br i1 %i.zn, label %middle.block818, label %vector.body813, !llvm.loop !357

middle.block818:                                  ; preds = %vector.body813
  %cmp.n819 = icmp eq i64 %i.zg, %n.vec812
  br i1 %cmp.n819, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_3MapINS1_IdLi1ELi9ELi1ELi1ELi9EEELi0ENS_6StrideILi0ELi0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i494.preheader861

.lr.ph.i.i.i.i.i.i.i.i.i.i494.preheader861:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i494.preheader, %middle.block818
  %.05.i.i.i.i.i.i.i.i.i.i495.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i494.preheader ], [ %n.vec812, %middle.block818 ] ; 3 uses
  %xtraiter = and i64 %i.zg, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i494.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i494.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i494.prol:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i494.preheader861, %.lr.ph.i.i.i.i.i.i.i.i.i.i494.prol
  %.05.i.i.i.i.i.i.i.i.i.i495.prol = phi i64 [ %i.zs, %.lr.ph.i.i.i.i.i.i.i.i.i.i494.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i495.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i494.preheader861 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i494.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i494.preheader861 ]
  %i.zo = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i495.prol, %i.zh
  %i.zp = getelementptr inbounds [8 x i8], ptr %i.zf, i64 %i.zo
  %i.zq = getelementptr inbounds nuw [8 x i8], ptr %33, i64 %.05.i.i.i.i.i.i.i.i.i.i495.prol
  %i.zr = load double, ptr %i.zq, align 8, !tbaa !40
  store double %i.zr, ptr %i.zp, align 8, !tbaa !40
  %i.zs = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i495.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i494.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i494.prol, !llvm.loop !358

.lr.ph.i.i.i.i.i.i.i.i.i.i494.prol.loopexit:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i494.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i494.preheader861
  %.05.i.i.i.i.i.i.i.i.i.i495.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i495.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i494.preheader861 ], [ %i.zs, %.lr.ph.i.i.i.i.i.i.i.i.i.i494.prol ]
  %i.zt = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i495.ph, %i.zg
  %i.zu = icmp ugt i64 %i.zt, -4
  br i1 %i.zu, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_3MapINS1_IdLi1ELi9ELi1ELi1ELi9EEELi0ENS_6StrideILi0ELi0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i494

.lr.ph.i.i.i.i.i.i.i.i.i.i494:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i494.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i494
  %.05.i.i.i.i.i.i.i.i.i.i495 = phi i64 [ %i.aao, %.lr.ph.i.i.i.i.i.i.i.i.i.i494 ], [ %.05.i.i.i.i.i.i.i.i.i.i495.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i494.prol.loopexit ] ; 6 uses
  %i.zv = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i495, %i.zh
  %i.zw = getelementptr inbounds [8 x i8], ptr %i.zf, i64 %i.zv
  %i.zx = getelementptr inbounds nuw [8 x i8], ptr %33, i64 %.05.i.i.i.i.i.i.i.i.i.i495
  %i.zy = load double, ptr %i.zx, align 8, !tbaa !40
  store double %i.zy, ptr %i.zw, align 8, !tbaa !40
  %i.zz = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i495, 1 ; 2 uses
end_hunk_0
