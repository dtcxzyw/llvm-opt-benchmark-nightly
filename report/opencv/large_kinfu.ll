inline.NumInlined: 2536
inline.NumDeleted: 1004
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN2cv6detail13SubmapManagerINS_3MatEE18estimateConstraintEiiRiRNS_7Affine3IfEE:bb.a
  %.not.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i, label %.loopexit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !132  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i32, ptr %i.r, align 4, !tbaa !9
  %i.t = icmp eq i32 %1, %i.s
  br i1 %i.t, label %.loopexit, label %.lr.ph.i.i.i.i.i

bb.h:                                             ; preds = %bb.i
  %i.u = icmp eq i32 %1, %i.x
  br i1 %i.u, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !422

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %bb.h
  %.020.i.i.i.i.i = phi ptr [ %i.v, %bb.h ], [ %i.q, %bb.g ]
  %i.v = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !132 ; 4 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i32, ptr %i.w, align 4, !tbaa !9    ; 2 uses
  %i.y = sext i32 %i.x to i64
  %i.z = urem i64 %i.y, %i.l
  %.not19.i.i.i.i.i = icmp eq i64 %i.z, %i.m
  br i1 %.not19.i.i.i.i.i, label %bb.h, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !422

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.i
  br label %.loopexit.i.i, !llvm.loop !422

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i, %bb.d, %..loopexit_crit_edge21.i.i.i.i.i, %bb.f
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.25) #23
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %.loopexit.i.i
  unreachable

.loopexit:                                        ; preds = %bb.h, %bb.e, %bb.g
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.e ], [ %i.q, %bb.g ], [ %i.v, %bb.h ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %i.aa = load ptr, ptr %12, align 8, !tbaa !161
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %14, ptr noundef nonnull align 4 dereferenceable(64) %i.ab, i64 64, i1 false), !tbaa.struct !148
  %i.ac = load ptr, ptr %13, align 8, !tbaa !161  ; 12 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 76
  %.sroa.0287.0.copyload = load float, ptr %i.ad, align 4 ; 3 uses
  %.sroa.5288.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  %.sroa.5288.0.copyload = load float, ptr %.sroa.5288.0..sroa_idx, align 4 ; 3 uses
  %.sroa.6289.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 84
  %.sroa.6289.0.copyload = load float, ptr %.sroa.6289.0..sroa_idx, align 4 ; 3 uses
  %.sroa.7290.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  %.sroa.7290.0.copyload = load float, ptr %.sroa.7290.0..sroa_idx, align 4
  %.sroa.8291.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 92
  %.sroa.8291.0.copyload = load float, ptr %.sroa.8291.0..sroa_idx, align 4 ; 3 uses
  %.sroa.9292.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 96
  %.sroa.9292.0.copyload = load float, ptr %.sroa.9292.0..sroa_idx, align 4 ; 3 uses
  %.sroa.10293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 100
  %.sroa.10293.0.copyload = load float, ptr %.sroa.10293.0..sroa_idx, align 4 ; 3 uses
  %.sroa.11294.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 104
  %.sroa.11294.0.copyload = load float, ptr %.sroa.11294.0..sroa_idx, align 4
  %.sroa.12295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 108
  %.sroa.13296.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 112
  %.sroa.14297.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 116
  %.sroa.15298.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 120
  %.sroa.15298.0.copyload = load float, ptr %.sroa.15298.0..sroa_idx, align 4
  %.sroa.14297.0.copyload = load float, ptr %.sroa.14297.0..sroa_idx, align 4 ; 3 uses
  %.sroa.13296.0.copyload = load float, ptr %.sroa.13296.0..sroa_idx, align 4 ; 3 uses
  %.sroa.12295.0.copyload = load float, ptr %.sroa.12295.0..sroa_idx, align 4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22, !noalias !477
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %11, i8 0, i64 64, i1 false), !tbaa !36, !noalias !477
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22, !noalias !477
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 -1056833531, ptr %9, align 8, !tbaa !19, !noalias !477
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %14, ptr %i.af, align 8, !tbaa !22, !noalias !477
  store i64 17179869188, ptr %i.ae, align 8, !noalias !477
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22, !noalias !477
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 -1040056315, ptr %10, align 8, !tbaa !19, !noalias !477
  store ptr %11, ptr %i.ag, align 8, !tbaa !22, !noalias !477
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 17179869188, ptr %i.ah, align 8, !noalias !477
  %i.ai = invoke noundef double @_ZN2cv6invertERKNS_11_InputArrayERKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef 1)
          to label %.noexc124 unwind label %bb.x

.noexc124:                                        ; preds = %.loopexit
  %i.aj = fcmp une double %i.ai, 0.000000e+00
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22, !noalias !477
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22, !noalias !477
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.noexc124
  %.sroa.0.i.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.sroa.0.i.sroa.6.0.copyload = load float, ptr %.sroa.0.i.sroa.6.0..sroa_idx, align 8, !noalias !482
  %.sroa.0.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 12
  %.sroa.0.i.sroa.7.0.copyload = load float, ptr %.sroa.0.i.sroa.7.0..sroa_idx, align 4, !noalias !482
  %.sroa.0.i.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 16
  %.sroa.0.i.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 24
  %.sroa.0.i.sroa.10.0.copyload = load float, ptr %.sroa.0.i.sroa.10.0..sroa_idx, align 8, !noalias !482
  %.sroa.0.i.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 28
  %.sroa.0.i.sroa.11.0.copyload = load float, ptr %.sroa.0.i.sroa.11.0..sroa_idx, align 4, !noalias !482
  %.sroa.0.i.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.ak = load <2 x float>, ptr %11, align 8, !noalias !482
  %i.al = load <2 x float>, ptr %.sroa.0.i.sroa.8.0..sroa_idx, align 8, !noalias !482
  %i.am = load <2 x float>, ptr %.sroa.0.i.sroa.12.0..sroa_idx, align 8, !noalias !482
  %.sroa.0.i.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 40
  %.sroa.0.i.sroa.14.0.copyload = load float, ptr %.sroa.0.i.sroa.14.0..sroa_idx, align 8, !noalias !482
  %.sroa.0.i.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 44
  %.sroa.0.i.sroa.15.0.copyload = load float, ptr %.sroa.0.i.sroa.15.0..sroa_idx, align 4, !noalias !482
  br label %bb.k

bb.k:                                             ; preds = %.noexc124, %bb.j
  %.sroa.0.i.sroa.7.0 = phi float [ %.sroa.0.i.sroa.7.0.copyload, %bb.j ], [ 0.000000e+00, %.noexc124 ] ; 3 uses
  %.sroa.0.i.sroa.10.0 = phi float [ %.sroa.0.i.sroa.10.0.copyload, %bb.j ], [ 0.000000e+00, %.noexc124 ] ; 3 uses
  %.sroa.0.i.sroa.11.0 = phi float [ %.sroa.0.i.sroa.11.0.copyload, %bb.j ], [ 0.000000e+00, %.noexc124 ] ; 3 uses
  %.sroa.0.i.sroa.14.0 = phi float [ %.sroa.0.i.sroa.14.0.copyload, %bb.j ], [ 0.000000e+00, %.noexc124 ] ; 3 uses
  %.sroa.0.i.sroa.15.0 = phi float [ %.sroa.0.i.sroa.15.0.copyload, %bb.j ], [ 0.000000e+00, %.noexc124 ] ; 3 uses
  %.sroa.0.i.sroa.6.0 = phi float [ %.sroa.0.i.sroa.6.0.copyload, %bb.j ], [ 0.000000e+00, %.noexc124 ] ; 3 uses
  %i.an = phi <2 x float> [ %i.am, %bb.j ], [ zeroinitializer, %.noexc124 ] ; 3 uses
  %i.ao = phi <2 x float> [ %i.al, %bb.j ], [ zeroinitializer, %.noexc124 ] ; 3 uses
  %i.ap = phi <2 x float> [ %i.ak, %bb.j ], [ zeroinitializer, %.noexc124 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22, !noalias !477
  %i.aq = insertelement <2 x float> poison, float %.sroa.0287.0.copyload, i64 0
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.as = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ar, <2 x float> %i.ap, <2 x float> zeroinitializer)
  %i.at = insertelement <2 x float> poison, float %.sroa.5288.0.copyload, i64 0
  %i.au = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> zeroinitializer
  %i.av = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.au, <2 x float> %i.ao, <2 x float> %i.as)
  %i.aw = insertelement <2 x float> poison, float %.sroa.6289.0.copyload, i64 0
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ay = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ax, <2 x float> %i.an, <2 x float> %i.av) ; 2 uses
  %i.az = call float @llvm.fmuladd.f32(float %.sroa.0287.0.copyload, float %.sroa.0.i.sroa.6.0, float 0.000000e+00)
  %i.ba = call float @llvm.fmuladd.f32(float %.sroa.5288.0.copyload, float %.sroa.0.i.sroa.10.0, float %i.az)
  %i.bb = call float @llvm.fmuladd.f32(float %.sroa.6289.0.copyload, float %.sroa.0.i.sroa.14.0, float %i.ba) ; 2 uses
  %i.bc = call float @llvm.fmuladd.f32(float %.sroa.0287.0.copyload, float %.sroa.0.i.sroa.7.0, float 0.000000e+00)
  %i.bd = call float @llvm.fmuladd.f32(float %.sroa.5288.0.copyload, float %.sroa.0.i.sroa.11.0, float %i.bc)
  %i.be = call noundef float @llvm.fmuladd.f32(float %.sroa.6289.0.copyload, float %.sroa.0.i.sroa.15.0, float %i.bd)
  %i.bf = insertelement <2 x float> poison, float %.sroa.8291.0.copyload, i64 0
  %i.bg = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bg, <2 x float> %i.ap, <2 x float> zeroinitializer)
  %i.bi = insertelement <2 x float> poison, float %.sroa.9292.0.copyload, i64 0
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bj, <2 x float> %i.ao, <2 x float> %i.bh)
  %i.bl = insertelement <2 x float> poison, float %.sroa.10293.0.copyload, i64 0
  %i.bm = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bm, <2 x float> %i.an, <2 x float> %i.bk) ; 2 uses
  %i.bo = call float @llvm.fmuladd.f32(float %.sroa.8291.0.copyload, float %.sroa.0.i.sroa.6.0, float 0.000000e+00)
  %i.bp = call float @llvm.fmuladd.f32(float %.sroa.9292.0.copyload, float %.sroa.0.i.sroa.10.0, float %i.bo)
  %i.bq = call float @llvm.fmuladd.f32(float %.sroa.10293.0.copyload, float %.sroa.0.i.sroa.14.0, float %i.bp) ; 2 uses
  %i.br = call float @llvm.fmuladd.f32(float %.sroa.8291.0.copyload, float %.sroa.0.i.sroa.7.0, float 0.000000e+00)
  %i.bs = call float @llvm.fmuladd.f32(float %.sroa.9292.0.copyload, float %.sroa.0.i.sroa.11.0, float %i.br)
  %i.bt = call noundef float @llvm.fmuladd.f32(float %.sroa.10293.0.copyload, float %.sroa.0.i.sroa.15.0, float %i.bs)
  %i.bu = insertelement <2 x float> poison, float %.sroa.12295.0.copyload, i64 0
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> %i.ap, <2 x float> zeroinitializer)
  %i.bx = insertelement <2 x float> poison, float %.sroa.13296.0.copyload, i64 0
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.by, <2 x float> %i.ao, <2 x float> %i.bw)
  %i.ca = insertelement <2 x float> poison, float %.sroa.14297.0.copyload, i64 0
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cb, <2 x float> %i.an, <2 x float> %i.bz) ; 2 uses
  %i.cd = call float @llvm.fmuladd.f32(float %.sroa.12295.0.copyload, float %.sroa.0.i.sroa.6.0, float 0.000000e+00)
  %i.ce = call float @llvm.fmuladd.f32(float %.sroa.13296.0.copyload, float %.sroa.0.i.sroa.10.0, float %i.cd)
  %i.cf = call float @llvm.fmuladd.f32(float %.sroa.14297.0.copyload, float %.sroa.0.i.sroa.14.0, float %i.ce) ; 2 uses
  %i.cg = fadd float %.sroa.7290.0.copyload, %i.be ; 2 uses
  %i.ch = fadd float %.sroa.11294.0.copyload, %i.bt ; 2 uses
  %i.ci = call float @llvm.fmuladd.f32(float %.sroa.12295.0.copyload, float %.sroa.0.i.sroa.7.0, float 0.000000e+00)
  %i.cj = call float @llvm.fmuladd.f32(float %.sroa.13296.0.copyload, float %.sroa.0.i.sroa.11.0, float %i.ci)
  %i.ck = call noundef float @llvm.fmuladd.f32(float %.sroa.14297.0.copyload, float %.sroa.0.i.sroa.15.0, float %i.cj)
  %i.cl = fadd float %.sroa.15298.0.copyload, %i.ck ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 48 ; 3 uses
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !409
  %i.co = add nsw i32 %i.cn, 1
  store i32 %i.co, ptr %i.cm, align 8, !tbaa !409
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 24 ; 6 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 32 ; 4 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !145 ; 14 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 40 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !419
  %.not.i = icmp eq ptr %i.cr, %i.ct
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store <2 x float> %i.ay, ptr %i.cr, align 4
  %.sroa.7246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store float %i.bb, ptr %.sroa.7246.0..sroa_idx, align 4
  %.sroa.8249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  store float %i.cg, ptr %.sroa.8249.0..sroa_idx, align 4
  %.sroa.9252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store <2 x float> %i.bn, ptr %.sroa.9252.0..sroa_idx, align 4
  %.sroa.11258.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  store float %i.bq, ptr %.sroa.11258.0..sroa_idx, align 4
  %.sroa.12261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 28
  store float %i.ch, ptr %.sroa.12261.0..sroa_idx, align 4
  %.sroa.13264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  store <2 x float> %i.cc, ptr %.sroa.13264.0..sroa_idx, align 4
  %.sroa.15270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 40
  store float %i.cf, ptr %.sroa.15270.0..sroa_idx, align 4
  %.sroa.16273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 44
  store float %i.cl, ptr %.sroa.16273.0..sroa_idx, align 4
  %.sroa.17276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 48
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.17276.0..sroa_idx, align 4
  %i.cu = load ptr, ptr %i.cq, align 8, !tbaa !145
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 64 ; 2 uses
  store ptr %i.cv, ptr %i.cq, align 8, !tbaa !145
  %.pre = load ptr, ptr %i.cp, align 8, !tbaa !146
  br label %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE9push_backERKS2_.exit

bb.m:                                             ; preds = %bb.k
  %i.cw = load ptr, ptr %i.cp, align 8, !tbaa !146 ; 5 uses
  %i.cx = ptrtoint ptr %i.cr to i64
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.cx, %i.cy                    ; 4 uses
  %i.da = icmp eq i64 %i.cz, 9223372036854775744
  br i1 %i.da, label %bb.n, label %_ZNKSt6vectorIN2cv7Affine3IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #23
          to label %.noexc128 unwind label %bb.y

.noexc128:                                        ; preds = %bb.n
  unreachable

_ZNKSt6vectorIN2cv7Affine3IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.m
  %i.db = ashr exact i64 %i.cz, 6                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.db, i64 1)
  %i.dc = add nsw i64 %.sroa.speculated.i.i.i, %i.db ; 2 uses
  %i.dd = icmp ult i64 %i.dc, %i.db
  %i.de = call i64 @llvm.umin.i64(i64 %i.dc, i64 144115188075855871)
  %i.df = select i1 %i.dd, i64 144115188075855871, i64 %i.de ; 3 uses
  %.not.i.i.i125 = icmp ne i64 %i.df, 0
  call void @llvm.assume(i1 %.not.i.i.i125)
  %i.dg = shl nuw nsw i64 %i.df, 6
  %i.dh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dg) #25
          to label %.noexc129 unwind label %bb.y  ; 6 uses

.noexc129:                                        ; preds = %_ZNKSt6vectorIN2cv7Affine3IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.cz ; 10 uses
  store <2 x float> %i.ay, ptr %i.di, align 4
  %.sroa.7246.0..sroa_idx247 = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store float %i.bb, ptr %.sroa.7246.0..sroa_idx247, align 4
  %.sroa.8249.0..sroa_idx250 = getelementptr inbounds nuw i8, ptr %i.di, i64 12
  store float %i.cg, ptr %.sroa.8249.0..sroa_idx250, align 4
  %.sroa.9252.0..sroa_idx253 = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store <2 x float> %i.bn, ptr %.sroa.9252.0..sroa_idx253, align 4
  %.sroa.11258.0..sroa_idx259 = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  store float %i.bq, ptr %.sroa.11258.0..sroa_idx259, align 4
  %.sroa.12261.0..sroa_idx262 = getelementptr inbounds nuw i8, ptr %i.di, i64 28
  store float %i.ch, ptr %.sroa.12261.0..sroa_idx262, align 4
  %.sroa.13264.0..sroa_idx265 = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  store <2 x float> %i.cc, ptr %.sroa.13264.0..sroa_idx265, align 4
  %.sroa.15270.0..sroa_idx271 = getelementptr inbounds nuw i8, ptr %i.di, i64 40
  store float %i.cf, ptr %.sroa.15270.0..sroa_idx271, align 4
  %.sroa.16273.0..sroa_idx274 = getelementptr inbounds nuw i8, ptr %i.di, i64 44
  %i.dj = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.cl, i64 0
  store <4 x float> %i.dj, ptr %.sroa.16273.0..sroa_idx274, align 4
  %.sroa.20.0..sroa_idx285 = getelementptr inbounds nuw i8, ptr %i.di, i64 60
  store float 1.000000e+00, ptr %.sroa.20.0..sroa_idx285, align 4, !tbaa !8
  %.not10.i.i.i.i.i = icmp eq ptr %i.cw, %i.cr
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i126

.lr.ph.i.i.i.i.i126:                              ; preds = %.noexc129, %.lr.ph.i.i.i.i.i126
  %.012.i.i.i.i.i = phi ptr [ %i.dl, %.lr.ph.i.i.i.i.i126 ], [ %i.dh, %.noexc129 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.dk, %.lr.ph.i.i.i.i.i126 ], [ %i.cw, %.noexc129 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(64) %.0911.i.i.i.i.i, i64 64, i1 false), !tbaa.struct !148, !alias.scope !483
  %i.dk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 64 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i127 = icmp eq ptr %i.dk, %i.cr
  br i1 %.not.i.i.i.i.i127, label %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i126, !llvm.loop !487

_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i126, %.noexc129
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.dh, %.noexc129 ], [ %i.dl, %.lr.ph.i.i.i.i.i126 ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.cw, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef %i.cz) #24
  br label %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.o, %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.dh, ptr %i.cp, align 8, !tbaa !146
  store ptr %i.dm, ptr %i.cq, align 8, !tbaa !145
  %i.dn = getelementptr inbounds nuw [64 x i8], ptr %i.dh, i64 %i.df
  store ptr %i.dn, ptr %i.cs, align 8, !tbaa !419
  br label %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.l
  %i.do = phi ptr [ %i.dh, %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.pre, %bb.l ]
  %i.dp = phi ptr [ %i.dm, %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.cv, %bb.l ]
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = ptrtoint ptr %i.do to i64
  %i.ds = sub i64 %i.dq, %i.dr                    ; 2 uses
  %i.dt = ashr exact i64 %i.ds, 6
  %i.du = add nsw i64 %i.dt, 1                    ; 4 uses
  %i.dv = icmp ugt i64 %i.du, 2305843009213693951
  br i1 %i.dv, label %bb.p, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.p:                                             ; preds = %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE9push_backERKS2_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #23
          to label %.noexc130 unwind label %bb.z

.noexc130:                                        ; preds = %bb.p
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE9push_backERKS2_.exit
  %.not.i.i.i.i = icmp eq i64 %i.du, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.dw = shl nuw nsw i64 %i.du, 2                ; 2 uses
  %i.dx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dw) #25
          to label %.noexc131 unwind label %bb.z  ; 6 uses

.noexc131:                                        ; preds = %bb.q
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dw ; 2 uses
  %i.dz = ashr exact i64 %i.ds, 4                 ; 2 uses
  %i.ea = lshr i64 %i.dz, 2
  %i.eb = add nuw nsw i64 %i.ea, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dz, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.noexc131
  %n.vec = and i64 %i.eb, 9223372036854775800     ; 3 uses
  %i.ec = shl i64 %n.vec, 2
  %i.ed = getelementptr i8, ptr %i.dx, i64 %i.ec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ee = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.dx, i64 %i.ee ; 2 uses
  %i.ef = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %next.gep, align 4, !tbaa !36
  store <4 x float> splat (float 1.000000e+00), ptr %i.ef, align 4, !tbaa !36
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eg = icmp eq i64 %index.next, %n.vec
  br i1 %i.eg, label %middle.block, label %vector.body, !llvm.loop !488

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eb, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %.noexc131, %middle.block
  %.07.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.dx, %.noexc131 ], [ %i.ed, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i.i = phi ptr [ %i.eh, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store float 1.000000e+00, ptr %.07.i.i.i.i.i.i.i.i.i, align 4, !tbaa !36
  %i.eh = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.eh, %i.dy
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !491

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.loopexit:   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.du
  %i.ej = ptrtoint ptr %i.ei to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit:            ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.loopexit, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.0211.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.dx, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.loopexit ] ; 9 uses
  %.sroa.27.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ej, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.loopexit ] ; 2 uses
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.dy, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.loopexit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.ek = load ptr, ptr %12, align 8, !tbaa !161  ; 5 uses
  %i.el = load ptr, ptr %13, align 8, !tbaa !161  ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load i32, ptr %i.em, align 8, !tbaa !383 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.en, ptr %i.b, align 4, !tbaa !9
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 144
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ek, i64 160
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !405 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ek, i64 152 ; 3 uses
  %.not10.i.i.i.i.i132 = icmp eq ptr %i.eq, null
  br i1 %.not10.i.i.i.i.i132, label %.critedge.i.i, label %.lr.ph.i.i.i.i.i133

.lr.ph.i.i.i.i.i133:                              ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit, %.lr.ph.i.i.i.i.i133
  %.012.i.i.i.i.i134 = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i133 ], [ %i.eq, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i133 ], [ %i.er, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit ]
  %i.es = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i134, i64 32
  %i.et = load i32, ptr %i.es, align 4, !tbaa !9
  %i.eu = icmp slt i32 %i.et, %i.en               ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.eu, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i134 ; 6 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.eu, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i134, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8, !tbaa !406 ; 2 uses
  %.not.i.i.i.i.i135 = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i135, label %_ZNSt3mapIiN2cv6detail6SubmapINS0_3MatEE14PoseConstraintESt4lessIiESaISt4pairIKiS5_EEE11lower_boundERS9_.exit.i.i, label %.lr.ph.i.i.i.i.i133, !llvm.loop !407

_ZNSt3mapIiN2cv6detail6SubmapINS0_3MatEE14PoseConstraintESt4lessIiESaISt4pairIKiS5_EEE11lower_boundERS9_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i133
  %i.ev = icmp eq ptr %.19.i.i.i.i.i, %i.er
  br i1 %i.ev, label %.critedge.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt3mapIiN2cv6detail6SubmapINS0_3MatEE14PoseConstraintESt4lessIiESaISt4pairIKiS5_EEE11lower_boundERS9_.exit.i.i
  %i.ew = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !9
  %i.ey = icmp slt i32 %i.en, %i.ex
  br i1 %i.ey, label %.critedge.i.i, label %.thread

.thread:                                          ; preds = %bb.r
  %i.ez = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 36
end_hunk_0
begin_hunk_1_@_ZN2cv6detail13SubmapManagerINS_4UMatEE18estimateConstraintEiiRiRNS_7Affine3IfEE:bb.a
  %.not.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i, label %.loopexit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !132  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i32, ptr %i.r, align 4, !tbaa !9
  %i.t = icmp eq i32 %1, %i.s
  br i1 %i.t, label %.loopexit, label %.lr.ph.i.i.i.i.i

bb.h:                                             ; preds = %bb.i
  %i.u = icmp eq i32 %1, %i.x
  br i1 %i.u, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !627

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %bb.h
  %.020.i.i.i.i.i = phi ptr [ %i.v, %bb.h ], [ %i.q, %bb.g ]
  %i.v = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !132 ; 4 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i32, ptr %i.w, align 4, !tbaa !9    ; 2 uses
  %i.y = sext i32 %i.x to i64
  %i.z = urem i64 %i.y, %i.l
  %.not19.i.i.i.i.i = icmp eq i64 %i.z, %i.m
  br i1 %.not19.i.i.i.i.i, label %bb.h, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !627

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.i
  br label %.loopexit.i.i, !llvm.loop !627

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i, %bb.d, %..loopexit_crit_edge21.i.i.i.i.i, %bb.f
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.25) #23
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %.loopexit.i.i
  unreachable

.loopexit:                                        ; preds = %bb.h, %bb.e, %bb.g
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.e ], [ %i.q, %bb.g ], [ %i.v, %bb.h ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %i.aa = load ptr, ptr %12, align 8, !tbaa !282
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %14, ptr noundef nonnull align 4 dereferenceable(64) %i.ab, i64 64, i1 false), !tbaa.struct !148
  %i.ac = load ptr, ptr %13, align 8, !tbaa !282  ; 12 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 76
  %.sroa.0285.0.copyload = load float, ptr %i.ad, align 4 ; 3 uses
  %.sroa.5286.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  %.sroa.5286.0.copyload = load float, ptr %.sroa.5286.0..sroa_idx, align 4 ; 3 uses
  %.sroa.6287.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 84
  %.sroa.6287.0.copyload = load float, ptr %.sroa.6287.0..sroa_idx, align 4 ; 3 uses
  %.sroa.7288.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  %.sroa.7288.0.copyload = load float, ptr %.sroa.7288.0..sroa_idx, align 4
  %.sroa.8289.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 92
  %.sroa.8289.0.copyload = load float, ptr %.sroa.8289.0..sroa_idx, align 4 ; 3 uses
  %.sroa.9290.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 96
  %.sroa.9290.0.copyload = load float, ptr %.sroa.9290.0..sroa_idx, align 4 ; 3 uses
  %.sroa.10291.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 100
  %.sroa.10291.0.copyload = load float, ptr %.sroa.10291.0..sroa_idx, align 4 ; 3 uses
  %.sroa.11292.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 104
  %.sroa.11292.0.copyload = load float, ptr %.sroa.11292.0..sroa_idx, align 4
  %.sroa.12293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 108
  %.sroa.13294.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 112
  %.sroa.14295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 116
  %.sroa.15296.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 120
  %.sroa.15296.0.copyload = load float, ptr %.sroa.15296.0..sroa_idx, align 4
  %.sroa.14295.0.copyload = load float, ptr %.sroa.14295.0..sroa_idx, align 4 ; 3 uses
  %.sroa.13294.0.copyload = load float, ptr %.sroa.13294.0..sroa_idx, align 4 ; 3 uses
  %.sroa.12293.0.copyload = load float, ptr %.sroa.12293.0..sroa_idx, align 4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22, !noalias !680
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %11, i8 0, i64 64, i1 false), !tbaa !36, !noalias !680
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22, !noalias !680
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 -1056833531, ptr %9, align 8, !tbaa !19, !noalias !680
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %14, ptr %i.af, align 8, !tbaa !22, !noalias !680
  store i64 17179869188, ptr %i.ae, align 8, !noalias !680
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22, !noalias !680
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 -1040056315, ptr %10, align 8, !tbaa !19, !noalias !680
  store ptr %11, ptr %i.ag, align 8, !tbaa !22, !noalias !680
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 17179869188, ptr %i.ah, align 8, !noalias !680
  %i.ai = invoke noundef double @_ZN2cv6invertERKNS_11_InputArrayERKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef 1)
          to label %.noexc122 unwind label %bb.x

.noexc122:                                        ; preds = %.loopexit
  %i.aj = fcmp une double %i.ai, 0.000000e+00
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22, !noalias !680
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22, !noalias !680
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.noexc122
  %.sroa.0.i.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.sroa.0.i.sroa.6.0.copyload = load float, ptr %.sroa.0.i.sroa.6.0..sroa_idx, align 8, !noalias !685
  %.sroa.0.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 12
  %.sroa.0.i.sroa.7.0.copyload = load float, ptr %.sroa.0.i.sroa.7.0..sroa_idx, align 4, !noalias !685
  %.sroa.0.i.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 16
  %.sroa.0.i.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 24
  %.sroa.0.i.sroa.10.0.copyload = load float, ptr %.sroa.0.i.sroa.10.0..sroa_idx, align 8, !noalias !685
  %.sroa.0.i.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 28
  %.sroa.0.i.sroa.11.0.copyload = load float, ptr %.sroa.0.i.sroa.11.0..sroa_idx, align 4, !noalias !685
  %.sroa.0.i.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.ak = load <2 x float>, ptr %11, align 8, !noalias !685
  %i.al = load <2 x float>, ptr %.sroa.0.i.sroa.8.0..sroa_idx, align 8, !noalias !685
  %i.am = load <2 x float>, ptr %.sroa.0.i.sroa.12.0..sroa_idx, align 8, !noalias !685
  %.sroa.0.i.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 40
  %.sroa.0.i.sroa.14.0.copyload = load float, ptr %.sroa.0.i.sroa.14.0..sroa_idx, align 8, !noalias !685
  %.sroa.0.i.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 44
  %.sroa.0.i.sroa.15.0.copyload = load float, ptr %.sroa.0.i.sroa.15.0..sroa_idx, align 4, !noalias !685
  br label %bb.k

bb.k:                                             ; preds = %.noexc122, %bb.j
  %.sroa.0.i.sroa.7.0 = phi float [ %.sroa.0.i.sroa.7.0.copyload, %bb.j ], [ 0.000000e+00, %.noexc122 ] ; 3 uses
  %.sroa.0.i.sroa.10.0 = phi float [ %.sroa.0.i.sroa.10.0.copyload, %bb.j ], [ 0.000000e+00, %.noexc122 ] ; 3 uses
  %.sroa.0.i.sroa.11.0 = phi float [ %.sroa.0.i.sroa.11.0.copyload, %bb.j ], [ 0.000000e+00, %.noexc122 ] ; 3 uses
  %.sroa.0.i.sroa.14.0 = phi float [ %.sroa.0.i.sroa.14.0.copyload, %bb.j ], [ 0.000000e+00, %.noexc122 ] ; 3 uses
  %.sroa.0.i.sroa.15.0 = phi float [ %.sroa.0.i.sroa.15.0.copyload, %bb.j ], [ 0.000000e+00, %.noexc122 ] ; 3 uses
  %.sroa.0.i.sroa.6.0 = phi float [ %.sroa.0.i.sroa.6.0.copyload, %bb.j ], [ 0.000000e+00, %.noexc122 ] ; 3 uses
  %i.an = phi <2 x float> [ %i.am, %bb.j ], [ zeroinitializer, %.noexc122 ] ; 3 uses
  %i.ao = phi <2 x float> [ %i.al, %bb.j ], [ zeroinitializer, %.noexc122 ] ; 3 uses
  %i.ap = phi <2 x float> [ %i.ak, %bb.j ], [ zeroinitializer, %.noexc122 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22, !noalias !680
  %i.aq = insertelement <2 x float> poison, float %.sroa.0285.0.copyload, i64 0
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.as = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ar, <2 x float> %i.ap, <2 x float> zeroinitializer)
  %i.at = insertelement <2 x float> poison, float %.sroa.5286.0.copyload, i64 0
  %i.au = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> zeroinitializer
  %i.av = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.au, <2 x float> %i.ao, <2 x float> %i.as)
  %i.aw = insertelement <2 x float> poison, float %.sroa.6287.0.copyload, i64 0
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ay = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ax, <2 x float> %i.an, <2 x float> %i.av) ; 2 uses
  %i.az = call float @llvm.fmuladd.f32(float %.sroa.0285.0.copyload, float %.sroa.0.i.sroa.6.0, float 0.000000e+00)
  %i.ba = call float @llvm.fmuladd.f32(float %.sroa.5286.0.copyload, float %.sroa.0.i.sroa.10.0, float %i.az)
  %i.bb = call float @llvm.fmuladd.f32(float %.sroa.6287.0.copyload, float %.sroa.0.i.sroa.14.0, float %i.ba) ; 2 uses
  %i.bc = call float @llvm.fmuladd.f32(float %.sroa.0285.0.copyload, float %.sroa.0.i.sroa.7.0, float 0.000000e+00)
  %i.bd = call float @llvm.fmuladd.f32(float %.sroa.5286.0.copyload, float %.sroa.0.i.sroa.11.0, float %i.bc)
  %i.be = call noundef float @llvm.fmuladd.f32(float %.sroa.6287.0.copyload, float %.sroa.0.i.sroa.15.0, float %i.bd)
  %i.bf = insertelement <2 x float> poison, float %.sroa.8289.0.copyload, i64 0
  %i.bg = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bg, <2 x float> %i.ap, <2 x float> zeroinitializer)
  %i.bi = insertelement <2 x float> poison, float %.sroa.9290.0.copyload, i64 0
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bj, <2 x float> %i.ao, <2 x float> %i.bh)
  %i.bl = insertelement <2 x float> poison, float %.sroa.10291.0.copyload, i64 0
  %i.bm = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bm, <2 x float> %i.an, <2 x float> %i.bk) ; 2 uses
  %i.bo = call float @llvm.fmuladd.f32(float %.sroa.8289.0.copyload, float %.sroa.0.i.sroa.6.0, float 0.000000e+00)
  %i.bp = call float @llvm.fmuladd.f32(float %.sroa.9290.0.copyload, float %.sroa.0.i.sroa.10.0, float %i.bo)
  %i.bq = call float @llvm.fmuladd.f32(float %.sroa.10291.0.copyload, float %.sroa.0.i.sroa.14.0, float %i.bp) ; 2 uses
  %i.br = call float @llvm.fmuladd.f32(float %.sroa.8289.0.copyload, float %.sroa.0.i.sroa.7.0, float 0.000000e+00)
  %i.bs = call float @llvm.fmuladd.f32(float %.sroa.9290.0.copyload, float %.sroa.0.i.sroa.11.0, float %i.br)
  %i.bt = call noundef float @llvm.fmuladd.f32(float %.sroa.10291.0.copyload, float %.sroa.0.i.sroa.15.0, float %i.bs)
  %i.bu = insertelement <2 x float> poison, float %.sroa.12293.0.copyload, i64 0
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> %i.ap, <2 x float> zeroinitializer)
  %i.bx = insertelement <2 x float> poison, float %.sroa.13294.0.copyload, i64 0
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.by, <2 x float> %i.ao, <2 x float> %i.bw)
  %i.ca = insertelement <2 x float> poison, float %.sroa.14295.0.copyload, i64 0
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cb, <2 x float> %i.an, <2 x float> %i.bz) ; 2 uses
  %i.cd = call float @llvm.fmuladd.f32(float %.sroa.12293.0.copyload, float %.sroa.0.i.sroa.6.0, float 0.000000e+00)
  %i.ce = call float @llvm.fmuladd.f32(float %.sroa.13294.0.copyload, float %.sroa.0.i.sroa.10.0, float %i.cd)
  %i.cf = call float @llvm.fmuladd.f32(float %.sroa.14295.0.copyload, float %.sroa.0.i.sroa.14.0, float %i.ce) ; 2 uses
  %i.cg = fadd float %.sroa.7288.0.copyload, %i.be ; 2 uses
  %i.ch = fadd float %.sroa.11292.0.copyload, %i.bt ; 2 uses
  %i.ci = call float @llvm.fmuladd.f32(float %.sroa.12293.0.copyload, float %.sroa.0.i.sroa.7.0, float 0.000000e+00)
  %i.cj = call float @llvm.fmuladd.f32(float %.sroa.13294.0.copyload, float %.sroa.0.i.sroa.11.0, float %i.ci)
  %i.ck = call noundef float @llvm.fmuladd.f32(float %.sroa.14295.0.copyload, float %.sroa.0.i.sroa.15.0, float %i.cj)
  %i.cl = fadd float %.sroa.15296.0.copyload, %i.ck ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 48 ; 3 uses
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !619
  %i.co = add nsw i32 %i.cn, 1
  store i32 %i.co, ptr %i.cm, align 8, !tbaa !619
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 24 ; 6 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 32 ; 4 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !145 ; 14 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 40 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !419
  %.not.i = icmp eq ptr %i.cr, %i.ct
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store <2 x float> %i.ay, ptr %i.cr, align 4
  %.sroa.7244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store float %i.bb, ptr %.sroa.7244.0..sroa_idx, align 4
  %.sroa.8247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  store float %i.cg, ptr %.sroa.8247.0..sroa_idx, align 4
  %.sroa.9250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store <2 x float> %i.bn, ptr %.sroa.9250.0..sroa_idx, align 4
  %.sroa.11256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  store float %i.bq, ptr %.sroa.11256.0..sroa_idx, align 4
  %.sroa.12259.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 28
  store float %i.ch, ptr %.sroa.12259.0..sroa_idx, align 4
  %.sroa.13262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  store <2 x float> %i.cc, ptr %.sroa.13262.0..sroa_idx, align 4
  %.sroa.15268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 40
  store float %i.cf, ptr %.sroa.15268.0..sroa_idx, align 4
  %.sroa.16271.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 44
  store float %i.cl, ptr %.sroa.16271.0..sroa_idx, align 4
  %.sroa.17274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 48
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.17274.0..sroa_idx, align 4
  %i.cu = load ptr, ptr %i.cq, align 8, !tbaa !145
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 64 ; 2 uses
  store ptr %i.cv, ptr %i.cq, align 8, !tbaa !145
  %.pre = load ptr, ptr %i.cp, align 8, !tbaa !146
  br label %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE9push_backERKS2_.exit

bb.m:                                             ; preds = %bb.k
  %i.cw = load ptr, ptr %i.cp, align 8, !tbaa !146 ; 5 uses
  %i.cx = ptrtoint ptr %i.cr to i64
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.cx, %i.cy                    ; 4 uses
  %i.da = icmp eq i64 %i.cz, 9223372036854775744
  br i1 %i.da, label %bb.n, label %_ZNKSt6vectorIN2cv7Affine3IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #23
          to label %.noexc126 unwind label %bb.y

.noexc126:                                        ; preds = %bb.n
  unreachable

_ZNKSt6vectorIN2cv7Affine3IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.m
  %i.db = ashr exact i64 %i.cz, 6                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.db, i64 1)
  %i.dc = add nsw i64 %.sroa.speculated.i.i.i, %i.db ; 2 uses
  %i.dd = icmp ult i64 %i.dc, %i.db
  %i.de = call i64 @llvm.umin.i64(i64 %i.dc, i64 144115188075855871)
  %i.df = select i1 %i.dd, i64 144115188075855871, i64 %i.de ; 3 uses
  %.not.i.i.i123 = icmp ne i64 %i.df, 0
  call void @llvm.assume(i1 %.not.i.i.i123)
  %i.dg = shl nuw nsw i64 %i.df, 6
  %i.dh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dg) #25
          to label %.noexc127 unwind label %bb.y  ; 6 uses

.noexc127:                                        ; preds = %_ZNKSt6vectorIN2cv7Affine3IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.cz ; 10 uses
  store <2 x float> %i.ay, ptr %i.di, align 4
  %.sroa.7244.0..sroa_idx245 = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store float %i.bb, ptr %.sroa.7244.0..sroa_idx245, align 4
  %.sroa.8247.0..sroa_idx248 = getelementptr inbounds nuw i8, ptr %i.di, i64 12
  store float %i.cg, ptr %.sroa.8247.0..sroa_idx248, align 4
  %.sroa.9250.0..sroa_idx251 = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store <2 x float> %i.bn, ptr %.sroa.9250.0..sroa_idx251, align 4
  %.sroa.11256.0..sroa_idx257 = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  store float %i.bq, ptr %.sroa.11256.0..sroa_idx257, align 4
  %.sroa.12259.0..sroa_idx260 = getelementptr inbounds nuw i8, ptr %i.di, i64 28
  store float %i.ch, ptr %.sroa.12259.0..sroa_idx260, align 4
  %.sroa.13262.0..sroa_idx263 = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  store <2 x float> %i.cc, ptr %.sroa.13262.0..sroa_idx263, align 4
  %.sroa.15268.0..sroa_idx269 = getelementptr inbounds nuw i8, ptr %i.di, i64 40
  store float %i.cf, ptr %.sroa.15268.0..sroa_idx269, align 4
  %.sroa.16271.0..sroa_idx272 = getelementptr inbounds nuw i8, ptr %i.di, i64 44
  %i.dj = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.cl, i64 0
  store <4 x float> %i.dj, ptr %.sroa.16271.0..sroa_idx272, align 4
  %.sroa.20.0..sroa_idx283 = getelementptr inbounds nuw i8, ptr %i.di, i64 60
  store float 1.000000e+00, ptr %.sroa.20.0..sroa_idx283, align 4, !tbaa !8
  %.not10.i.i.i.i.i = icmp eq ptr %i.cw, %i.cr
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i124

.lr.ph.i.i.i.i.i124:                              ; preds = %.noexc127, %.lr.ph.i.i.i.i.i124
  %.012.i.i.i.i.i = phi ptr [ %i.dl, %.lr.ph.i.i.i.i.i124 ], [ %i.dh, %.noexc127 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.dk, %.lr.ph.i.i.i.i.i124 ], [ %i.cw, %.noexc127 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(64) %.0911.i.i.i.i.i, i64 64, i1 false), !tbaa.struct !148, !alias.scope !686
  %i.dk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 64 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i125 = icmp eq ptr %i.dk, %i.cr
  br i1 %.not.i.i.i.i.i125, label %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i124, !llvm.loop !487

_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i124, %.noexc127
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.dh, %.noexc127 ], [ %i.dl, %.lr.ph.i.i.i.i.i124 ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.cw, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef %i.cz) #24
  br label %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.o, %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.dh, ptr %i.cp, align 8, !tbaa !146
  store ptr %i.dm, ptr %i.cq, align 8, !tbaa !145
  %i.dn = getelementptr inbounds nuw [64 x i8], ptr %i.dh, i64 %i.df
  store ptr %i.dn, ptr %i.cs, align 8, !tbaa !419
  br label %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.l
  %i.do = phi ptr [ %i.dh, %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.pre, %bb.l ]
  %i.dp = phi ptr [ %i.dm, %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.cv, %bb.l ]
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = ptrtoint ptr %i.do to i64
  %i.ds = sub i64 %i.dq, %i.dr                    ; 2 uses
  %i.dt = ashr exact i64 %i.ds, 6
  %i.du = add nsw i64 %i.dt, 1                    ; 4 uses
  %i.dv = icmp ugt i64 %i.du, 2305843009213693951
  br i1 %i.dv, label %bb.p, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.p:                                             ; preds = %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE9push_backERKS2_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #23
          to label %.noexc128 unwind label %bb.z

.noexc128:                                        ; preds = %bb.p
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIN2cv7Affine3IfEESaIS2_EE9push_backERKS2_.exit
  %.not.i.i.i.i = icmp eq i64 %i.du, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.dw = shl nuw nsw i64 %i.du, 2                ; 2 uses
  %i.dx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dw) #25
          to label %.noexc129 unwind label %bb.z  ; 6 uses

.noexc129:                                        ; preds = %bb.q
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dw ; 2 uses
  %i.dz = ashr exact i64 %i.ds, 4                 ; 2 uses
  %i.ea = lshr i64 %i.dz, 2
  %i.eb = add nuw nsw i64 %i.ea, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dz, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.noexc129
  %n.vec = and i64 %i.eb, 9223372036854775800     ; 3 uses
  %i.ec = shl i64 %n.vec, 2
  %i.ed = getelementptr i8, ptr %i.dx, i64 %i.ec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ee = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.dx, i64 %i.ee ; 2 uses
  %i.ef = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %next.gep, align 4, !tbaa !36
  store <4 x float> splat (float 1.000000e+00), ptr %i.ef, align 4, !tbaa !36
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eg = icmp eq i64 %index.next, %n.vec
  br i1 %i.eg, label %middle.block, label %vector.body, !llvm.loop !690

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eb, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %.noexc129, %middle.block
  %.07.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.dx, %.noexc129 ], [ %i.ed, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i.i = phi ptr [ %i.eh, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store float 1.000000e+00, ptr %.07.i.i.i.i.i.i.i.i.i, align 4, !tbaa !36
  %i.eh = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.eh, %i.dy
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !691

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.loopexit:   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.du
  %i.ej = ptrtoint ptr %i.ei to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit:            ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.loopexit, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.0209.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.dx, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.loopexit ] ; 9 uses
  %.sroa.27.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ej, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.loopexit ] ; 2 uses
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.dy, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.loopexit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.ek = load ptr, ptr %12, align 8, !tbaa !282  ; 5 uses
  %i.el = load ptr, ptr %13, align 8, !tbaa !282  ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load i32, ptr %i.em, align 8, !tbaa !610 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.en, ptr %i.b, align 4, !tbaa !9
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 144
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ek, i64 160
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !405 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ek, i64 152 ; 3 uses
  %.not10.i.i.i.i.i130 = icmp eq ptr %i.eq, null
  br i1 %.not10.i.i.i.i.i130, label %.critedge.i.i, label %.lr.ph.i.i.i.i.i131

.lr.ph.i.i.i.i.i131:                              ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit, %.lr.ph.i.i.i.i.i131
  %.012.i.i.i.i.i132 = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i131 ], [ %i.eq, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i131 ], [ %i.er, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit ]
  %i.es = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i132, i64 32
  %i.et = load i32, ptr %i.es, align 4, !tbaa !9
  %i.eu = icmp slt i32 %i.et, %i.en               ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.eu, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i132 ; 6 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.eu, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i132, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8, !tbaa !406 ; 2 uses
  %.not.i.i.i.i.i133 = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i133, label %_ZNSt3mapIiN2cv6detail6SubmapINS0_4UMatEE14PoseConstraintESt4lessIiESaISt4pairIKiS5_EEE11lower_boundERS9_.exit.i.i, label %.lr.ph.i.i.i.i.i131, !llvm.loop !618

_ZNSt3mapIiN2cv6detail6SubmapINS0_4UMatEE14PoseConstraintESt4lessIiESaISt4pairIKiS5_EEE11lower_boundERS9_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i131
  %i.ev = icmp eq ptr %.19.i.i.i.i.i, %i.er
  br i1 %i.ev, label %.critedge.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt3mapIiN2cv6detail6SubmapINS0_4UMatEE14PoseConstraintESt4lessIiESaISt4pairIKiS5_EEE11lower_boundERS9_.exit.i.i
  %i.ew = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !9
  %i.ey = icmp slt i32 %i.en, %i.ex
  br i1 %i.ey, label %.critedge.i.i, label %.thread

.thread:                                          ; preds = %bb.r
  %i.ez = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 36
end_hunk_1
