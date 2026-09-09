Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/slim?download=true
inline.NumInlined: 5960
inline.NumDeleted: 2832
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 128
loop-unroll.NumUnrolled: 129
begin_hunk_0_@_ZN3igl56slim_update_weights_and_closest_rotations_with_jacobiansERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_17MappingEnergyTypeEdRS2_S6_:bb.a
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
  %i.nd = insertelement <2 x double> <double 9.000000e+00, double poison>, double %2, i64 1
  br label %bb.m

._crit_edge:                                      ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_3MapINS1_IdLi1ELi9ELi1ELi1ELi9EEELi0ENS_6StrideILi0ELi0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit500, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  br label %.loopexit

bb.m:                                             ; preds = %.lr.ph, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_3MapINS1_IdLi1ELi9ELi1ELi1ELi9EEELi0ENS_6StrideILi0ELi0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit500
  %.sroa.20.0 = phi double [ undef, %.lr.ph ], [ %.sroa.20.2, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_3MapINS1_IdLi1ELi9ELi1ELi1ELi9EEELi0ENS_6StrideILi0ELi0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit500 ]
  %.sroa.11.0 = phi double [ undef, %.lr.ph ], [ %.sroa.11.2, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_3MapINS1_IdLi1ELi9ELi1ELi1ELi9EEELi0ENS_6StrideILi0ELi0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit500 ]
  %.sroa.0794.0 = phi double [ undef, %.lr.ph ], [ %.sroa.0794.2, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_3MapINS1_IdLi1ELi9ELi1ELi1ELi9EEELi0ENS_6StrideILi0ELi0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit500 ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_3MapINS1_IdLi1ELi9ELi1ELi1ELi9EEELi0ENS_6StrideILi0ELi0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit500 ] ; 5 uses
  %i.ne = phi i64 [ %i.jr, %.lr.ph ], [ %i.acg, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS_3MapINS1_IdLi1ELi9ELi1ELi1ELi9EEELi0ENS_6StrideILi0ELi0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit500 ] ; 8 uses
  %i.nf = shl i64 %indvars.iv, 3
  %i.ng = sub i64 %i.nf, %i.b
  %i.nh = load ptr, ptr %0, align 8, !tbaa !27
  %i.ni = getelementptr [8 x i8], ptr %i.nh, i64 %indvars.iv ; 9 uses
  %i.nj = load double, ptr %i.ni, align 8, !tbaa !40, !noalias !368
  store double %i.nj, ptr %27, align 8, !tbaa !40, !noalias !368
  %i.nk = getelementptr [8 x i8], ptr %i.ni, i64 %i.ne
  %i.nl = load double, ptr %i.nk, align 8, !tbaa !40
  store double %i.nl, ptr %i.jt, align 8, !tbaa !40
  %.idx = shl i64 %i.ne, 4
  %i.nm = getelementptr i8, ptr %i.ni, i64 %.idx
  %i.nn = load double, ptr %i.nm, align 8, !tbaa !40
  store double %i.nn, ptr %i.ju, align 8, !tbaa !40
  %.idx776 = mul i64 %i.ne, 24
  %i.no = getelementptr i8, ptr %i.ni, i64 %.idx776
  %i.np = load double, ptr %i.no, align 8, !tbaa !40
  store double %i.np, ptr %i.jv, align 8, !tbaa !40
  %.idx777 = shl i64 %i.ne, 5
  %i.nq = getelementptr i8, ptr %i.ni, i64 %.idx777
  %i.nr = load double, ptr %i.nq, align 8, !tbaa !40
  store double %i.nr, ptr %i.jw, align 8, !tbaa !40
  %.idx778 = mul i64 %i.ne, 40
  %i.ns = getelementptr i8, ptr %i.ni, i64 %.idx778
  %i.nt = load double, ptr %i.ns, align 8, !tbaa !40
  store double %i.nt, ptr %i.jx, align 8, !tbaa !40
  %.idx779 = mul i64 %i.ne, 48
  %i.nu = getelementptr i8, ptr %i.ni, i64 %.idx779
  %i.nv = load double, ptr %i.nu, align 8, !tbaa !40
  store double %i.nv, ptr %i.jy, align 8, !tbaa !40
  %.idx780 = mul i64 %i.ne, 56
  %i.nw = getelementptr i8, ptr %i.ni, i64 %.idx780
  %i.nx = load double, ptr %i.nw, align 8, !tbaa !40
  store double %i.nx, ptr %i.jz, align 8, !tbaa !40
  %.idx781 = shl i64 %i.ne, 6
  %i.ny = getelementptr i8, ptr %i.ni, i64 %.idx781
  %i.nz = load double, ptr %i.ny, align 8, !tbaa !40
  store double %i.nz, ptr %i.ka, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #28
  call void @_ZN3igl9polar_svdIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEES3_S3_S3_NS2_IdLi3ELi1ELi0ELi3ELi1EEES3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSA_IT1_EERNSA_IT2_EERNSA_IT3_EERNSA_IT4_EE(ptr noundef nonnull align 1 dereferenceable(1) %27, ptr noundef nonnull align 8 dereferenceable(72) %28, ptr noundef nonnull align 8 dereferenceable(72) %29, ptr noundef nonnull align 8 dereferenceable(72) %30, ptr noundef nonnull align 8 dereferenceable(24) %32, ptr noundef nonnull align 8 dereferenceable(72) %31)
  %i.oa = load double, ptr %32, align 8, !tbaa !40 ; 24 uses
  %i.ob = load <2 x double>, ptr %i.kb, align 8, !tbaa !40 ; 15 uses
  %i.oc = extractelement <2 x double> %i.ob, i64 1 ; 20 uses
  %i.od = extractelement <2 x double> %i.ob, i64 0 ; 15 uses
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
  %i.oe = call double @log(double noundef %i.oa) #28
  %i.of = call double @log(double noundef %i.od) #28
  %i.og = call double @log(double noundef %i.oc) #28
  %i.oh = shufflevector <2 x double> %i.ob, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.oi = insertelement <2 x double> %i.oh, double %i.oa, i64 0 ; 2 uses
  %i.oj = fadd <2 x double> %i.oi, splat (double -1.000000e+00)
  %i.ok = insertelement <2 x double> poison, double %i.oe, i64 0
  %i.ol = insertelement <2 x double> %i.ok, double %i.of, i64 1
  %i.om = fdiv <2 x double> %i.ol, %i.oi
  %i.on = fmul <2 x double> %i.om, splat (double 2.000000e+00)
  %i.oo = fmul <2 x double> %i.oj, splat (double 2.000000e+00)
  %i.op = fdiv <2 x double> %i.on, %i.oo          ; 2 uses
  %i.oq = extractelement <2 x double> %i.op, i64 0
  %i.or = call double @sqrt(double noundef %i.oq) #28
  %i.os = extractelement <2 x double> %i.op, i64 1
  %i.ot = call double @sqrt(double noundef %i.os) #28
  %i.ou = fdiv double %i.og, %i.oc
  %i.ov = fmul double %i.ou, 2.000000e+00
  %i.ow = fadd double %i.oc, -1.000000e+00
  %i.ox = fmul double %i.ow, 2.000000e+00
  %i.oy = fdiv double %i.ov, %i.ox
  %i.oz = call double @sqrt(double noundef %i.oy) #28
  br label %bb.t

bb.p:                                             ; preds = %bb.m
  %i.pa = call double @pow(double noundef %i.oa, double noundef -3.000000e+00) #28
  %i.pb = fsub double %i.oa, %i.pa
  %i.pc = fmul double %i.pb, 2.000000e+00
  %i.pd = call double @pow(double noundef %i.od, double noundef -3.000000e+00) #28
  %i.pe = call double @pow(double noundef %i.oc, double noundef -3.000000e+00) #28
  %i.pf = fadd double %i.oa, -1.000000e+00
  %i.pg = fmul double %i.pf, 2.000000e+00
  %i.ph = fdiv double %i.pc, %i.pg
  %i.pi = call double @sqrt(double noundef %i.ph) #28
  %i.pj = shufflevector <2 x double> %i.ob, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pk = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.pd, i64 0
  %i.pl = fsub <2 x double> %i.pj, %i.pk
  %i.pm = fmul <2 x double> %i.pl, splat (double 2.000000e+00) ; 2 uses
  %i.pn = shufflevector <2 x double> %i.ob, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.po = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.pe, i64 0
  %i.pp = fsub <2 x double> %i.pn, %i.po
  %i.pq = fmul <2 x double> %i.pp, splat (double 2.000000e+00) ; 2 uses
  %i.pr = shufflevector <2 x double> %i.pm, <2 x double> %i.pq, <2 x i32> <i32 0, i32 2>
  %i.ps = shufflevector <2 x double> %i.pm, <2 x double> %i.pq, <2 x i32> <i32 1, i32 3>
  %i.pt = fdiv <2 x double> %i.pr, %i.ps          ; 2 uses
  %i.pu = extractelement <2 x double> %i.pt, i64 0
  %i.pv = call double @sqrt(double noundef %i.pu) #28
  %i.pw = extractelement <2 x double> %i.pt, i64 1
  %i.px = call double @sqrt(double noundef %i.pw) #28
  br label %bb.t

bb.q:                                             ; preds = %bb.m
  %i.py = call double @pow(double noundef %i.oa, double noundef -3.000000e+00) #28
  %i.pz = fsub double %i.oa, %i.py
  %i.qa = fmul double %i.pz, 2.000000e+00         ; 2 uses
  %i.qb = call double @pow(double noundef %i.od, double noundef -3.000000e+00) #28
  %i.qc = call double @pow(double noundef %i.oc, double noundef -3.000000e+00) #28
  %i.qd = fadd double %i.oa, -1.000000e+00
  %i.qe = fmul double %i.qd, 2.000000e+00         ; 2 uses
  %i.qf = fdiv double %i.qa, %i.qe
  %i.qg = call double @sqrt(double noundef %i.qf) #28 ; 0 uses
  %i.qh = shufflevector <2 x double> %i.ob, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qi = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.qb, i64 0
  %i.qj = fsub <2 x double> %i.qh, %i.qi
  %i.qk = fmul <2 x double> %i.qj, splat (double 2.000000e+00) ; 4 uses
  %i.ql = extractelement <2 x double> %i.qk, i64 0
  %i.qm = extractelement <2 x double> %i.qk, i64 1
  %i.qn = fdiv double %i.ql, %i.qm
  %i.qo = call double @sqrt(double noundef %i.qn) #28 ; 0 uses
  %i.qp = shufflevector <2 x double> %i.ob, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.qq = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.qc, i64 0
  %i.qr = fsub <2 x double> %i.qp, %i.qq
  %i.qs = fmul <2 x double> %i.qr, splat (double 2.000000e+00) ; 4 uses
  %i.qt = extractelement <2 x double> %i.qs, i64 0
  %i.qu = extractelement <2 x double> %i.qs, i64 1
  %i.qv = fdiv double %i.qt, %i.qu
  %i.qw = call double @sqrt(double noundef %i.qv) #28 ; 0 uses
  %i.qx = call double @pow(double noundef %i.oa, double noundef 2.000000e+00) #28
  %i.qy = call double @pow(double noundef %i.oa, double noundef -2.000000e+00) #28
  %i.qz = fadd double %i.qx, %i.qy
  %i.ra = call double @pow(double noundef %i.od, double noundef 2.000000e+00) #28
  %i.rb = fadd double %i.qz, %i.ra
  %i.rc = call double @pow(double noundef %i.od, double noundef -2.000000e+00) #28
  %i.rd = fadd double %i.rb, %i.rc
  %i.re = call double @pow(double noundef %i.oc, double noundef 2.000000e+00) #28
  %i.rf = fadd double %i.rd, %i.re
  %i.rg = call double @pow(double noundef %i.oc, double noundef -2.000000e+00) #28
  %i.rh = fadd double %i.rf, %i.rg
  %i.ri = fmul double %2, %i.rh
  %i.rj = call double @exp(double noundef %i.ri) #28
  %i.rk = fmul double %2, %i.rj                   ; 2 uses
  %i.rl = fmul double %i.qa, %i.rk
  %i.rm = fdiv double %i.rl, %i.qe
  %i.rn = call double @sqrt(double noundef %i.rm) #28
  %i.ro = shufflevector <2 x double> %i.qk, <2 x double> %i.qs, <2 x i32> <i32 0, i32 2>
  %i.rp = insertelement <2 x double> poison, double %i.rk, i64 0
  %i.rq = shufflevector <2 x double> %i.rp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rr = fmul <2 x double> %i.ro, %i.rq
  %i.rs = shufflevector <2 x double> %i.qk, <2 x double> %i.qs, <2 x i32> <i32 1, i32 3>
  %i.rt = fdiv <2 x double> %i.rr, %i.rs          ; 2 uses
  %i.ru = extractelement <2 x double> %i.rt, i64 0
  %i.rv = call double @sqrt(double noundef %i.ru) #28
  %i.rw = extractelement <2 x double> %i.rt, i64 1
  %i.rx = call double @sqrt(double noundef %i.rw) #28
  br label %bb.t

bb.r:                                             ; preds = %bb.m
  %i.ry = fmul double %i.oa, %i.od
  %i.rz = fmul double %i.ry, %i.oc
  %i.sa = call double @pow(double noundef %i.rz, double noundef f0x3FFAAAAAAAAAAAAB) #28
  %i.sb = insertelement <2 x double> %i.ob, double %i.oa, i64 1
  %i.sc = fmul <2 x double> %i.sb, splat (double -2.000000e+00) ; 2 uses
  %i.sd = call double @pow(double noundef %i.od, double noundef 2.000000e+00) #28
  %i.se = call double @pow(double noundef %i.oc, double noundef 2.000000e+00) #28
  %i.sf = call double @pow(double noundef %i.oa, double noundef 2.000000e+00) #28 ; 2 uses
  %i.sg = call double @pow(double noundef %i.oc, double noundef 2.000000e+00) #28
  %i.sh = call double @pow(double noundef %i.od, double noundef 2.000000e+00) #28
  %i.si = call double @pow(double noundef %i.oa, double noundef 2.000000e+00) #28
  %i.sj = call double @pow(double noundef %i.od, double noundef 2.000000e+00) #28
  %i.sk = call double @pow(double noundef %i.oc, double noundef 2.000000e+00) #28
  %i.sl = call double @pow(double noundef %i.oa, double noundef 2.000000e+00) #28
  %i.sm = call double @pow(double noundef %i.oc, double noundef 2.000000e+00) #28
  %i.sn = fadd double %i.sl, %i.sm
  %i.so = call double @sqrt(double noundef %i.sn) #28
  %i.sp = shufflevector <2 x double> %i.ob, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.sq = fmul <2 x double> %i.sc, %i.sp
  %i.sr = insertelement <2 x double> poison, double %i.sd, i64 0
  %i.ss = insertelement <2 x double> %i.sr, double %i.sf, i64 1
  %i.st = insertelement <2 x double> poison, double %i.se, i64 0
  %i.su = insertelement <2 x double> %i.st, double %i.sg, i64 1
  %i.sv = fadd <2 x double> %i.ss, %i.su
  %i.sw = insertelement <2 x double> poison, double %i.sf, i64 0
  %i.sx = insertelement <2 x double> %i.sw, double %i.sh, i64 1
  %i.sy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sx, <2 x double> splat (double -2.000000e+00), <2 x double> %i.sv)
  %i.sz = fmul <2 x double> %i.sq, %i.sy
  %i.ta = fdiv double %i.so, f0x3FF6A09E667F3BCD  ; 7 uses
  %i.tb = fmul double %i.sa, 9.000000e+00         ; 2 uses
  %i.tc = insertelement <2 x double> poison, double %i.tb, i64 0
  %i.td = shufflevector <2 x double> %i.tc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.te = fdiv <2 x double> %i.sz, %i.td
  %34 = fsub double %i.od, %i.ta
  %35 = fsub double %i.oa, %i.ta
  %i.tf = insertelement <2 x double> poison, double %35, i64 0
  %36 = insertelement <2 x double> %i.tf, double %34, i64 1
  %i.tg = fmul <2 x double> %36, splat (double 2.000000e+00)
  %i.th = fdiv <2 x double> %i.te, %i.tg          ; 2 uses
  %i.ti = extractelement <2 x double> %i.th, i64 0
  %i.tj = call double @sqrt(double noundef %i.ti) #28
  %i.tk = extractelement <2 x double> %i.th, i64 1
  %i.tl = call double @sqrt(double noundef %i.tk) #28
  %shift = shufflevector <2 x double> %i.sc, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %shift, %i.ob
  %i.tm = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.tn = fadd double %i.si, %i.sj
  %i.to = call double @llvm.fmuladd.f64(double %i.sk, double -2.000000e+00, double %i.tn)
  %i.tp = fmul double %i.tm, %i.to
  %i.tq = fdiv double %i.tp, %i.tb
  %i.tr = fsub double %i.oc, %i.ta
  %i.ts = fmul double %i.tr, 2.000000e+00
  %i.tt = fdiv double %i.tq, %i.ts
  %i.tu = call double @sqrt(double noundef %i.tt) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  %i.tv = load <2 x double>, ptr %30, align 16, !tbaa !47
  %37 = insertelement <2 x double> poison, double %i.ta, i64 0
  %38 = shufflevector <2 x double> %37, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.tw = fmul <2 x double> %i.tv, %38
  store <2 x double> %i.tw, ptr %15, align 16, !tbaa !47
  %i.tx = load double, ptr %i.ke, align 16, !tbaa !40
  %i.ty = fmul double %i.ta, %i.tx
  store double %i.ty, ptr %i.lk, align 16, !tbaa !40
  %i.tz = load <2 x double>, ptr %i.kg, align 8, !tbaa !47
  %i.ua = fmul <2 x double> %i.tz, %38
  store <2 x double> %i.ua, ptr %i.ll, align 8, !tbaa !47
  %i.ub = load double, ptr %i.ki, align 8, !tbaa !40
  %i.uc = fmul double %i.ta, %i.ub
  store double %i.uc, ptr %i.lm, align 8, !tbaa !40
  %i.ud = load <2 x double>, ptr %i.kk, align 16, !tbaa !47
  %i.ue = fmul <2 x double> %i.ud, %38
  store <2 x double> %i.ue, ptr %i.ln, align 16, !tbaa !47
  %i.uf = load double, ptr %i.km, align 16, !tbaa !40
  %i.ug = fmul double %i.ta, %i.uf
  store double %i.ug, ptr %i.lo, align 16, !tbaa !40
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
  %i.uh = load double, ptr %19, align 8, !tbaa !40
  store double %i.uh, ptr %28, align 8, !tbaa !40
  %i.ui = load double, ptr %i.lw, align 8, !tbaa !40
  store double %i.ui, ptr %i.ku, align 8, !tbaa !40
  %i.uj = load double, ptr %i.lx, align 8, !tbaa !40
  store double %i.uj, ptr %i.kw, align 8, !tbaa !40
  %i.uk = load double, ptr %i.ly, align 8, !tbaa !40
  store double %i.uk, ptr %i.ky, align 8, !tbaa !40
  %i.ul = load double, ptr %i.lz, align 8, !tbaa !40
  store double %i.ul, ptr %i.la, align 8, !tbaa !40
  %i.um = load double, ptr %i.ma, align 8, !tbaa !40
  store double %i.um, ptr %i.lc, align 8, !tbaa !40
  %i.un = load double, ptr %i.mb, align 8, !tbaa !40
  store double %i.un, ptr %i.le, align 8, !tbaa !40
  %i.uo = load double, ptr %i.mc, align 8, !tbaa !40
  store double %i.uo, ptr %i.lg, align 8, !tbaa !40
  %i.up = load double, ptr %i.md, align 8, !tbaa !40
  store double %i.up, ptr %i.li, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  br label %bb.t

bb.s:                                             ; preds = %bb.m
  %i.uq = fmul double %i.oa, %i.od
  %i.ur = fmul double %i.uq, %i.oc                ; 2 uses
  %i.us = call double @pow(double noundef %i.ur, double noundef f0x3FFAAAAAAAAAAAAB) #28
  %i.ut = insertelement <2 x double> %i.ob, double %i.oa, i64 1
  %i.uu = fmul <2 x double> %i.ut, splat (double -2.000000e+00) ; 2 uses
  %i.uv = call double @pow(double noundef %i.od, double noundef 2.000000e+00) #28
  %i.uw = call double @pow(double noundef %i.oc, double noundef 2.000000e+00) #28
  %i.ux = call double @pow(double noundef %i.oa, double noundef 2.000000e+00) #28 ; 2 uses
  %i.uy = call double @pow(double noundef %i.oc, double noundef 2.000000e+00) #28
  %i.uz = call double @pow(double noundef %i.od, double noundef 2.000000e+00) #28
  %i.va = call double @pow(double noundef %i.oa, double noundef 2.000000e+00) #28
  %i.vb = call double @pow(double noundef %i.od, double noundef 2.000000e+00) #28
  %i.vc = call double @pow(double noundef %i.oc, double noundef 2.000000e+00) #28
  %i.vd = call double @pow(double noundef %i.oa, double noundef 2.000000e+00) #28
  %i.ve = call double @pow(double noundef %i.od, double noundef 2.000000e+00) #28
  %i.vf = fadd double %i.vd, %i.ve
  %i.vg = call double @pow(double noundef %i.oc, double noundef 2.000000e+00) #28
  %i.vh = fadd double %i.vf, %i.vg
  %i.vi = call double @pow(double noundef %i.ur, double noundef f0x3FE5555555555555) #28
  %i.vj = fmul double %i.vi, 3.000000e+00
  %i.vk = fdiv double %i.vh, %i.vj
  %i.vl = fmul double %2, %i.vk
  %i.vm = call double @exp(double noundef %i.vl) #28
  %i.vn = call double @pow(double noundef %i.oa, double noundef 2.000000e+00) #28
  %i.vo = call double @pow(double noundef %i.oc, double noundef 2.000000e+00) #28
  %i.vp = fadd double %i.vn, %i.vo
  %i.vq = call double @sqrt(double noundef %i.vp) #28
  %i.vr = fdiv double %i.vq, f0x3FF6A09E667F3BCD  ; 5 uses
  %i.vs = shufflevector <2 x double> %i.ob, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.vt = fmul <2 x double> %i.uu, %i.vs
  %i.vu = insertelement <2 x double> poison, double %i.uv, i64 0
  %i.vv = insertelement <2 x double> %i.vu, double %i.ux, i64 1
  %i.vw = insertelement <2 x double> poison, double %i.uw, i64 0
  %i.vx = insertelement <2 x double> %i.vw, double %i.uy, i64 1
  %i.vy = fadd <2 x double> %i.vv, %i.vx
  %i.vz = insertelement <2 x double> poison, double %i.ux, i64 0
  %i.wa = insertelement <2 x double> %i.vz, double %i.uz, i64 1
  %i.wb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wa, <2 x double> splat (double -2.000000e+00), <2 x double> %i.vy)
  %i.wc = fmul <2 x double> %i.vt, %i.wb
  %i.wd = insertelement <2 x double> poison, double %i.us, i64 0
  %i.we = insertelement <2 x double> %i.wd, double %i.vm, i64 1
  %i.wf = fmul <2 x double> %i.we, %i.nd          ; 4 uses
  %i.wg = shufflevector <2 x double> %i.wf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.wh = fdiv <2 x double> %i.wc, %i.wg
  %i.wi = shufflevector <2 x double> %i.wf, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.wj = fmul <2 x double> %i.wh, %i.wi
  %i.wk = shufflevector <2 x double> %i.ob, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.wl = insertelement <2 x double> %i.wk, double %i.oa, i64 0
  %i.wm = insertelement <2 x double> poison, double %i.vr, i64 0
  %i.wn = shufflevector <2 x double> %i.wm, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.wo = fsub <2 x double> %i.wl, %i.wn
  %i.wp = fmul <2 x double> %i.wo, splat (double 2.000000e+00)
  %i.wq = fdiv <2 x double> %i.wj, %i.wp          ; 2 uses
  %i.wr = extractelement <2 x double> %i.wq, i64 0
  %i.ws = call double @sqrt(double noundef %i.wr) #28
  %i.wt = extractelement <2 x double> %i.wq, i64 1
  %i.wu = call double @sqrt(double noundef %i.wt) #28
  %shift855 = shufflevector <2 x double> %i.uu, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop856 = fmul <2 x double> %shift855, %i.ob
  %i.wv = extractelement <2 x double> %foldExtExtBinop856, i64 0
  %i.ww = fadd double %i.va, %i.vb
  %i.wx = call double @llvm.fmuladd.f64(double %i.vc, double -2.000000e+00, double %i.ww)
  %i.wy = fmul double %i.wv, %i.wx
  %i.wz = extractelement <2 x double> %i.wf, i64 0
  %i.xa = fdiv double %i.wy, %i.wz
  %i.xb = extractelement <2 x double> %i.wf, i64 1
  %i.xc = fmul double %i.xa, %i.xb
  %i.xd = fsub double %i.oc, %i.vr
  %i.xe = fmul double %i.xd, 2.000000e+00
  %i.xf = fdiv double %i.xc, %i.xe
  %i.xg = call double @sqrt(double noundef %i.xf) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.xh = load <2 x double>, ptr %30, align 16, !tbaa !47
  %i.xi = fmul <2 x double> %i.xh, %i.wn
  store <2 x double> %i.xi, ptr %10, align 16, !tbaa !47
  %i.xj = load double, ptr %i.ke, align 16, !tbaa !40
  %i.xk = fmul double %i.vr, %i.xj
  store double %i.xk, ptr %i.kd, align 16, !tbaa !40
  %i.xl = load <2 x double>, ptr %i.kg, align 8, !tbaa !47
  %i.xm = fmul <2 x double> %i.xl, %i.wn
  store <2 x double> %i.xm, ptr %i.kf, align 8, !tbaa !47
  %i.xn = load double, ptr %i.ki, align 8, !tbaa !40
  %i.xo = fmul double %i.vr, %i.xn
  store double %i.xo, ptr %i.kh, align 8, !tbaa !40
  %i.xp = load <2 x double>, ptr %i.kk, align 16, !tbaa !47
  %i.xq = fmul <2 x double> %i.xp, %i.wn
  store <2 x double> %i.xq, ptr %i.kj, align 16, !tbaa !47
  %i.xr = load double, ptr %i.km, align 16, !tbaa !40
  %i.xs = fmul double %i.vr, %i.xr
  store double %i.xs, ptr %i.kl, align 16, !tbaa !40
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
  %i.xt = load double, ptr %14, align 8, !tbaa !40
  store double %i.xt, ptr %28, align 8, !tbaa !40
  %i.xu = load double, ptr %i.kv, align 8, !tbaa !40
  store double %i.xu, ptr %i.ku, align 8, !tbaa !40
  %i.xv = load double, ptr %i.kx, align 8, !tbaa !40
  store double %i.xv, ptr %i.kw, align 8, !tbaa !40
  %i.xw = load double, ptr %i.kz, align 8, !tbaa !40
  store double %i.xw, ptr %i.ky, align 8, !tbaa !40
  %i.xx = load double, ptr %i.lb, align 8, !tbaa !40
  store double %i.xx, ptr %i.la, align 8, !tbaa !40
  %i.xy = load double, ptr %i.ld, align 8, !tbaa !40
  store double %i.xy, ptr %i.lc, align 8, !tbaa !40
  %i.xz = load double, ptr %i.lf, align 8, !tbaa !40
  store double %i.xz, ptr %i.le, align 8, !tbaa !40
  %i.ya = load double, ptr %i.lh, align 8, !tbaa !40
  store double %i.ya, ptr %i.lg, align 8, !tbaa !40
  %i.yb = load double, ptr %i.lj, align 8, !tbaa !40
  store double %i.yb, ptr %i.li, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %bb.t

bb.t:                                             ; preds = %bb.m, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
  %.sroa.20.1 = phi double [ %.sroa.20.0, %bb.m ], [ 1.000000e+00, %bb.n ], [ %i.oz, %bb.o ], [ %i.px, %bb.p ], [ %i.rx, %bb.q ], [ %i.tu, %bb.r ], [ %i.xg, %bb.s ]
  %.sroa.11.1 = phi double [ %.sroa.11.0, %bb.m ], [ 1.000000e+00, %bb.n ], [ %i.ot, %bb.o ], [ %i.pv, %bb.p ], [ %i.rv, %bb.q ], [ %i.tl, %bb.r ], [ %i.wu, %bb.s ]
  %.sroa.0794.1 = phi double [ %.sroa.0794.0, %bb.m ], [ 1.000000e+00, %bb.n ], [ %i.or, %bb.o ], [ %i.pi, %bb.p ], [ %i.rn, %bb.q ], [ %i.tj, %bb.r ], [ %i.ws, %bb.s ]
  %i.yc = fadd double %i.oa, -1.000000e+00
  %i.yd = call noundef double @llvm.fabs.f64(double %i.yc)
  %i.ye = fcmp olt double %i.yd, 1.000000e-08
  %.sroa.0794.2 = select i1 %i.ye, double 1.000000e+00, double %.sroa.0794.1 ; 3 uses
  %i.yf = fadd <2 x double> %i.ob, splat (double -1.000000e+00)
  %i.yg = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.yf)
  %i.yh = fcmp olt <2 x double> %i.yg, splat (double 1.000000e-08) ; 2 uses
  %i.yi = extractelement <2 x i1> %i.yh, i64 0
  %.sroa.11.2 = select i1 %i.yi, double 1.000000e+00, double %.sroa.11.1 ; 3 uses
  %i.yj = extractelement <2 x i1> %i.yh, i64 1
  %.sroa.20.2 = select i1 %i.yj, double 1.000000e+00, double %.sroa.20.1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.yk = load <2 x double>, ptr %30, align 16, !tbaa !47
  %i.yl = insertelement <2 x double> poison, double %.sroa.0794.2, i64 0
  %i.ym = shufflevector <2 x double> %i.yl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.yn = fmul <2 x double> %i.yk, %i.ym
  store <2 x double> %i.yn, ptr %5, align 16, !tbaa !47
  %i.yo = load double, ptr %i.ke, align 16, !tbaa !40
  %i.yp = fmul double %.sroa.0794.2, %i.yo
  store double %i.yp, ptr %i.mf, align 16, !tbaa !40
  %i.yq = load <2 x double>, ptr %i.kg, align 8, !tbaa !47
  %i.yr = insertelement <2 x double> poison, double %.sroa.11.2, i64 0
end_hunk_0
