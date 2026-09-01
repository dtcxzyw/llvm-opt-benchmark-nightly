Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/sampling_test?download=true
inline.NumInlined: 5175
inline.NumDeleted: 1203
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN33PiecewiseConstant2D_Integral_Test8TestBodyEv:bb.a
bb.cu:                                            ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i100
  %i.gl = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !43
  %i.gn = shl i64 %i.gm, 2
  %i.go = load ptr, ptr %i.fu, align 8, !tbaa !44 ; 2 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !29
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  %i.gr = load ptr, ptr %i.gq, align 8
  invoke void %i.gr(ptr noundef nonnull align 8 dereferenceable(8) %i.go, ptr noundef nonnull %i.gk, i64 noundef %i.gn, i64 noundef 4)
          to label %_ZN4pbrt19PiecewiseConstant2DD2Ev.exit102 unwind label %bb.cv, !inline_history !45

bb.cv:                                            ; preds = %bb.cu
  %i.gs = landingpad { ptr, i32 }
          catch ptr null
  %i.gt = extractvalue { ptr, i32 } %i.gs, 0
  call void @__clang_call_terminate(ptr %i.gt) #31
  unreachable

_ZN4pbrt19PiecewiseConstant2DD2Ev.exit102:        ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i100, %bb.cu
  %i.gu = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @_ZN4pstd6vectorIN4pbrt19PiecewiseConstant1DENS_3pmr21polymorphic_allocatorIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.gu) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  %i.gv = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.gw = getelementptr inbounds nuw i8, ptr %5, i64 104
  store i64 0, ptr %i.gw, align 8, !tbaa !37
  %i.gx = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !42 ; 2 uses
  %.not.i.i.i.i.i.i103 = icmp eq ptr %i.gy, null
  br i1 %.not.i.i.i.i.i.i103, label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i104, label %bb.cw

bb.cw:                                            ; preds = %_ZN4pbrt19PiecewiseConstant2DD2Ev.exit102
  %i.gz = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.ha = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !43
  %i.hc = shl i64 %i.hb, 2
  %i.hd = load ptr, ptr %i.gz, align 8, !tbaa !44 ; 2 uses
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !29
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 24
  %i.hg = load ptr, ptr %i.hf, align 8
  invoke void %i.hg(ptr noundef nonnull align 8 dereferenceable(8) %i.hd, ptr noundef nonnull %i.gy, i64 noundef %i.hc, i64 noundef 4)
          to label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i104 unwind label %bb.cx, !inline_history !45

bb.cx:                                            ; preds = %bb.cw
  %i.hh = landingpad { ptr, i32 }
          catch ptr null
  %i.hi = extractvalue { ptr, i32 } %i.hh, 0
  call void @__clang_call_terminate(ptr %i.hi) #31
  unreachable

_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i104: ; preds = %bb.cw, %_ZN4pbrt19PiecewiseConstant2DD2Ev.exit102
  %i.hj = getelementptr inbounds nuw i8, ptr %5, i64 72
  store i64 0, ptr %i.hj, align 8, !tbaa !37
  %i.hk = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !42 ; 2 uses
  %.not.i.i.i.i1.i.i105 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i.i.i1.i.i105, label %_ZN4pbrt19PiecewiseConstant2DD2Ev.exit106, label %bb.cy

bb.cy:                                            ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i104
  %i.hm = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !43
  %i.ho = shl i64 %i.hn, 2
  %i.hp = load ptr, ptr %i.gv, align 8, !tbaa !44 ; 2 uses
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !29
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 24
  %i.hs = load ptr, ptr %i.hr, align 8
  invoke void %i.hs(ptr noundef nonnull align 8 dereferenceable(8) %i.hp, ptr noundef nonnull %i.hl, i64 noundef %i.ho, i64 noundef 4)
          to label %_ZN4pbrt19PiecewiseConstant2DD2Ev.exit106 unwind label %bb.cz, !inline_history !45

bb.cz:                                            ; preds = %bb.cy
  %i.ht = landingpad { ptr, i32 }
          catch ptr null
  %i.hu = extractvalue { ptr, i32 } %i.ht, 0
  call void @__clang_call_terminate(ptr %i.hu) #31
  unreachable

_ZN4pbrt19PiecewiseConstant2DD2Ev.exit106:        ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i104, %bb.cy
  %i.hv = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @_ZN4pstd6vectorIN4pbrt19PiecewiseConstant1DENS_3pmr21polymorphic_allocatorIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.hv) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i64 0, ptr %i.hx, align 8, !tbaa !37
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !42 ; 2 uses
  %.not.i.i.i.i.i.i107 = icmp eq ptr %i.hz, null
  br i1 %.not.i.i.i.i.i.i107, label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i108, label %bb.da

bb.da:                                            ; preds = %_ZN4pbrt19PiecewiseConstant2DD2Ev.exit106
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !43
  %i.id = shl i64 %i.ic, 2
  %i.ie = load ptr, ptr %i.ia, align 8, !tbaa !44 ; 2 uses
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !29
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 24
  %i.ih = load ptr, ptr %i.ig, align 8
  invoke void %i.ih(ptr noundef nonnull align 8 dereferenceable(8) %i.ie, ptr noundef nonnull %i.hz, i64 noundef %i.id, i64 noundef 4)
          to label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i108 unwind label %bb.db, !inline_history !45

bb.db:                                            ; preds = %bb.da
  %i.ii = landingpad { ptr, i32 }
          catch ptr null
  %i.ij = extractvalue { ptr, i32 } %i.ii, 0
  call void @__clang_call_terminate(ptr %i.ij) #31
  unreachable

_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i108: ; preds = %bb.da, %_ZN4pbrt19PiecewiseConstant2DD2Ev.exit106
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 0, ptr %i.ik, align 8, !tbaa !37
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !42 ; 2 uses
  %.not.i.i.i.i1.i.i109 = icmp eq ptr %i.im, null
  br i1 %.not.i.i.i.i1.i.i109, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.dc

bb.dc:                                            ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i108
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.io = load i64, ptr %i.in, align 8, !tbaa !43
  %i.ip = shl i64 %i.io, 2
  %i.iq = load ptr, ptr %i.hw, align 8, !tbaa !44 ; 2 uses
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !29
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 24
  %i.it = load ptr, ptr %i.is, align 8
  invoke void %i.it(ptr noundef nonnull align 8 dereferenceable(8) %i.iq, ptr noundef nonnull %i.im, i64 noundef %i.ip, i64 noundef 4)
          to label %_ZNSt6vectorIfSaIfEED2Ev.exit unwind label %bb.dd, !inline_history !45

bb.dd:                                            ; preds = %bb.dc
  %i.iu = landingpad { ptr, i32 }
          catch ptr null
  %i.iv = extractvalue { ptr, i32 } %i.iu, 0
  call void @__clang_call_terminate(ptr %i.iv) #31
  unreachable

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i108, %bb.dc
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @_ZN4pstd6vectorIN4pbrt19PiecewiseConstant1DENS_3pmr21polymorphic_allocatorIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.iw) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 32) #32
  ret void

bb.de:                                            ; preds = %bb.ci, %bb.bu
  %.pn40.pn.pn = phi { ptr, i32 } [ %.pn40.pn, %bb.ci ], [ %i.dq, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @_ZN4pbrt19PiecewiseConstant2DD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %13) #30
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.bt
  %.pn40.pn.pn.pn = phi { ptr, i32 } [ %.pn40.pn.pn, %bb.de ], [ %i.dp, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.bs
  %.pn40.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn40.pn.pn.pn, %bb.df ], [ %.pn36.pn.pn, %bb.bs ]
  call void @_ZN4pbrt19PiecewiseConstant2DD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %9) #30
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.av
  %.pn40.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn40.pn.pn.pn.pn, %bb.dg ], [ %i.cg, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.au
  %.pn40.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn40.pn.pn.pn.pn.pn, %bb.dh ], [ %.pn32.pn.pn, %bb.au ]
  call void @_ZN4pbrt19PiecewiseConstant2DD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %5) #30
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.x
  %.pn40.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn40.pn.pn.pn.pn.pn.pn, %bb.di ], [ %i.ax, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.w
  %.pn40.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn40.pn.pn.pn.pn.pn.pn.pn, %bb.dj ], [ %.pn.pn.pn, %bb.w ]
  call void @_ZN4pbrt19PiecewiseConstant2DD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %1) #30
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit115

_ZNSt6vectorIfSaIfEED2Ev.exit115:                 ; preds = %bb.dk, %bb.b
  %.pn40.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn40.pn.pn.pn.pn.pn.pn.pn.pn, %bb.dk ], [ %i.o, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 32) #32
  resume { ptr, i32 } %.pn40.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN31Sampling_SphericalTriangle_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
_ZN4pstd5arrayIN4pbrt6Point3IfEELi3EEC2ESt16initializer_listIS3_E.exit:
  %1 = alloca %"class.pstd::array.44", align 8    ; 11 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %2 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %3 = alloca %"class.testing::Message", align 8  ; 8 uses
  %4 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  store <8 x float> <float 4.000000e+00, float 1.000000e+00, float 1.000000e+00, float -1.000000e+01, float 3.000000e+00, float 3.000000e+00, float -2.000000e+00, float -8.000000e+00>, ptr %1, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  store float 1.000000e+01, ptr %.sroa.11.0..sroa_idx, align 8
  %5 = load <2 x i32>, ptr @_ZN4pbrt6PrimesE, align 16, !tbaa !9 ; 3 uses
  %6 = extractelement <2 x i32> %5, i64 0
  %7 = zext i32 %6 to i64                         ; 5 uses
  %8 = udiv i64 -1, %7
  %9 = sub nuw i64 %8, %7
  %10 = extractelement <2 x i32> %5, i64 1
  %i.d = zext i32 %10 to i64                      ; 5 uses
  %i.e = udiv i64 -1, %i.d
  %i.f = sub nuw i64 %i.e, %i.d
  %11 = shufflevector <2 x i32> %5, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %12 = uitofp <4 x i32> %11 to <4 x float>
  %13 = shufflevector <4 x float> <float f0x433694DC, float poison, float poison, float poison>, <4 x float> %12, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %14 = insertelement <4 x float> %13, float f0x42B694DC, i64 3
  %15 = fdiv <4 x float> <float 1.140000e+02, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %14 ; 4 uses
  %16 = extractelement <4 x float> %15, i64 0
  %17 = extractelement <4 x float> %15, i64 3
  %18 = extractelement <4 x float> %15, i64 1
  %19 = extractelement <4 x float> %15, i64 2
  br label %bb.b

bb.a:                                             ; preds = %_ZN4pbrt14RadicalInverseEim.exit267
  %i.g = fmul float %i.ay, f0x35800000
  %i.h = fmul float %i.cj, f0x35800000
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.i = fsub float %i.h, %i.g
  %i.j = call noundef float @llvm.fabs.f32(float %i.i)
  store float %i.j, ptr %i.b, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  store double 1.000000e-03, ptr %i.c, align 8, !tbaa !53
  call void @_ZN7testing8internal11CmpHelperLTIfdEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %2, ptr noundef nonnull @.str.161, ptr noundef nonnull @.str.19, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %i.k = load i8, ptr %2, align 8, !tbaa !12, !range !18, !noundef !19
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.q, label %bb.c

bb.b:                                             ; preds = %_ZN4pstd5arrayIN4pbrt6Point3IfEELi3EEC2ESt16initializer_listIS3_E.exit, %_ZN4pbrt14RadicalInverseEim.exit267
  %indvars.iv = phi i64 [ 0, %_ZN4pstd5arrayIN4pbrt6Point3IfEELi3EEC2ESt16initializer_listIS3_E.exit ], [ %indvars.iv.next, %_ZN4pbrt14RadicalInverseEim.exit267 ] ; 4 uses
  %.0219380 = phi float [ 0.000000e+00, %_ZN4pstd5arrayIN4pbrt6Point3IfEELi3EEC2ESt16initializer_listIS3_E.exit ], [ %i.ay, %_ZN4pbrt14RadicalInverseEim.exit267 ]
  %.0220379 = phi float [ 0.000000e+00, %_ZN4pstd5arrayIN4pbrt6Point3IfEELi3EEC2ESt16initializer_listIS3_E.exit ], [ %i.cj, %_ZN4pbrt14RadicalInverseEim.exit267 ]
  %.not.i256 = icmp eq i64 %indvars.iv, 0
  br i1 %.not.i256, label %_ZN4pbrt14RadicalInverseEim.exit267, label %.lr.ph.i257

.lr.ph.i257:                                      ; preds = %bb.b, %.lr.ph.i257
  %.023.i = phi i64 [ %i.m, %.lr.ph.i257 ], [ %indvars.iv, %bb.b ] ; 3 uses
  %.01922.i = phi i64 [ %i.n, %.lr.ph.i257 ], [ 0, %bb.b ]
  %.02021.i = phi float [ %i.o, %.lr.ph.i257 ], [ 1.000000e+00, %bb.b ]
  %i.m = udiv i64 %.023.i, %7                     ; 2 uses
  %reass.add.i = sub i64 %.01922.i, %i.m
  %reass.mul.i = mul i64 %reass.add.i, %7
  %i.n = add i64 %reass.mul.i, %.023.i            ; 3 uses
  %i.o = fmul float %18, %.02021.i                ; 2 uses
  %i.p = icmp samesign uge i64 %.023.i, %7
  %i.q = icmp ult i64 %i.n, %9
  %i.r = select i1 %i.p, i1 %i.q, i1 false
  br i1 %i.r, label %.lr.ph.i257, label %.lr.ph.i259.preheader, !llvm.loop !58

.lr.ph.i259.preheader:                            ; preds = %.lr.ph.i257
  %i.s = uitofp i64 %i.n to float
  %i.t = fmul float %i.o, %i.s                    ; 2 uses
  %i.u = fcmp ogt float %i.t, f0x3F7FFFFF
  %.sroa.speculated.i = select i1 %i.u, float f0x3F7FFFFF, float %i.t
  br label %.lr.ph.i259

.lr.ph.i259:                                      ; preds = %.lr.ph.i259.preheader, %.lr.ph.i259
  %.023.i260 = phi i64 [ %i.v, %.lr.ph.i259 ], [ %indvars.iv, %.lr.ph.i259.preheader ] ; 3 uses
  %.01922.i261 = phi i64 [ %i.w, %.lr.ph.i259 ], [ 0, %.lr.ph.i259.preheader ]
  %.02021.i262 = phi float [ %i.x, %.lr.ph.i259 ], [ 1.000000e+00, %.lr.ph.i259.preheader ]
  %i.v = udiv i64 %.023.i260, %i.d                ; 2 uses
  %reass.add.i263 = sub i64 %.01922.i261, %i.v
  %reass.mul.i264 = mul i64 %reass.add.i263, %i.d
  %i.w = add i64 %reass.mul.i264, %.023.i260      ; 3 uses
  %i.x = fmul float %19, %.02021.i262             ; 2 uses
  %i.y = icmp samesign uge i64 %.023.i260, %i.d
  %i.z = icmp ult i64 %i.w, %i.f
  %i.aa = select i1 %i.y, i1 %i.z, i1 false
  br i1 %i.aa, label %.lr.ph.i259, label %._crit_edge.loopexit.i265, !llvm.loop !58

._crit_edge.loopexit.i265:                        ; preds = %.lr.ph.i259
  %i.ab = uitofp i64 %i.w to float
  %i.ac = fmul float %i.x, %i.ab
  br label %_ZN4pbrt14RadicalInverseEim.exit267

_ZN4pbrt14RadicalInverseEim.exit267:              ; preds = %bb.b, %._crit_edge.loopexit.i265
  %.sroa.speculated.i392 = phi float [ %.sroa.speculated.i, %._crit_edge.loopexit.i265 ], [ 0.000000e+00, %bb.b ] ; 4 uses
  %i.ad = phi float [ %i.ac, %._crit_edge.loopexit.i265 ], [ 0.000000e+00, %bb.b ] ; 2 uses
  %i.ae = fcmp ogt float %i.ad, f0x3F7FFFFF
  %.sroa.speculated.i266 = select i1 %i.ae, float f0x3F7FFFFF, float %i.ad ; 4 uses
  %.sroa.0367.0.vec.insert = insertelement <2 x float> poison, float %.sroa.speculated.i392, i64 0
  %.sroa.0367.4.vec.insert = insertelement <2 x float> %.sroa.0367.0.vec.insert, float %.sroa.speculated.i266, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.af = call { <2 x float>, float } @_ZN4pbrt23SampleSphericalTriangleERKN4pstd5arrayINS_6Point3IfEELi3EEES3_NS_6Point2IfEEPf(ptr noundef nonnull align 4 dereferenceable(36) %1, <2 x float> <float 5.000000e-01, float -4.000000e-01>, float f0x3F333333, <2 x float> %.sroa.0367.4.vec.insert, ptr noundef nonnull %i.a) ; 2 uses
  %.fca.0.extract125 = extractvalue { <2 x float>, float } %i.af, 0 ; 4 uses
  %.fca.1.extract126 = extractvalue { <2 x float>, float } %i.af, 1 ; 2 uses
  %.sroa.0365.0.vec.extract = extractelement <2 x float> %.fca.0.extract125, i64 0
  %.sroa.0123.0.copyload = load <2 x float>, ptr %1, align 8 ; 2 uses
  %.sroa.2124.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !10 ; 2 uses
  %i.ag = fmul float %.sroa.0365.0.vec.extract, %.sroa.2124.0.copyload
  %.sroa.0365.4.vec.extract = extractelement <2 x float> %.fca.0.extract125, i64 1
  %.sroa.0113.0.copyload = load <2 x float>, ptr %.sroa.6.0..sroa_idx, align 4 ; 2 uses
  %.sroa.2114.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !10 ; 2 uses
  %i.ah = fmul float %.sroa.0365.4.vec.extract, %.sroa.2114.0.copyload
  %i.ai = fadd float %i.ag, %i.ah
  %.sroa.097.0.copyload = load <2 x float>, ptr %.sroa.9.0..sroa_idx, align 8 ; 2 uses
  %.sroa.298.0.copyload = load float, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !10 ; 2 uses
  %i.aj = fmul float %.fca.1.extract126, %.sroa.298.0.copyload
  %i.ak = shufflevector <2 x float> %.fca.0.extract125, <2 x float> poison, <2 x i32> zeroinitializer
  %i.al = fmul <2 x float> %i.ak, %.sroa.0123.0.copyload
  %i.am = shufflevector <2 x float> %.fca.0.extract125, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.an = fmul <2 x float> %i.am, %.sroa.0113.0.copyload
  %i.ao = fadd <2 x float> %i.al, %i.an
  %i.ap = insertelement <2 x float> poison, float %.fca.1.extract126, i64 0
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ar = fmul <2 x float> %i.aq, %.sroa.097.0.copyload
  %i.as = fadd <2 x float> %i.ao, %i.ar           ; 2 uses
  %i.at = fadd float %i.ai, %i.aj
  %shift404 = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop405 = fmul <2 x float> %i.as, %shift404
  %i.au = extractelement <2 x float> %foldExtExtBinop405, i64 0
  %i.av = fmul float %i.at, %i.au
  %i.aw = load float, ptr %i.a, align 4, !tbaa !10
  %i.ax = fdiv float %i.av, %i.aw
  %i.ay = fadd float %.0219380, %i.ax             ; 2 uses
  %i.az = fcmp olt float %.sroa.speculated.i392, %.sroa.speculated.i266 ; 2 uses
  %i.ba = fmul float %.sroa.speculated.i392, 5.000000e-01 ; 2 uses
  %i.bb = fsub float %.sroa.speculated.i266, %i.ba
  %i.bc = fmul float %.sroa.speculated.i266, 5.000000e-01 ; 2 uses
  %i.bd = fsub float %.sroa.speculated.i392, %i.bc
  %.08.i = select i1 %i.az, float %i.bb, float %i.bc ; 3 uses
  %.0.i = select i1 %i.az, float %i.ba, float %i.bd ; 3 uses
  %i.be = fsub float 1.000000e+00, %.0.i
  %i.bf = fsub float %i.be, %.08.i                ; 2 uses
  %20 = fmul float %.sroa.2124.0.copyload, %.0.i
  %21 = fmul float %.08.i, %.sroa.2114.0.copyload
  %22 = fadd float %20, %21
  %i.bg = fmul float %i.bf, %.sroa.298.0.copyload
  %i.bh = insertelement <2 x float> poison, float %.0.i, i64 0
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bj = fmul <2 x float> %.sroa.0123.0.copyload, %i.bi
  %23 = insertelement <2 x float> poison, float %.08.i, i64 0
  %24 = shufflevector <2 x float> %23, <2 x float> poison, <2 x i32> zeroinitializer
  %25 = fmul <2 x float> %24, %.sroa.0113.0.copyload
  %26 = fadd <2 x float> %i.bj, %25
  %i.bk = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bm = fmul <2 x float> %i.bl, %.sroa.097.0.copyload
  %i.bn = fadd <2 x float> %26, %i.bm             ; 4 uses
  %i.bo = fadd float %22, %i.bg                   ; 3 uses
  %27 = extractelement <2 x float> %i.bn, i64 0
  %28 = extractelement <2 x float> %i.bn, i64 1   ; 2 uses
  %29 = fmul float %27, %28
  %i.bp = fmul float %i.bo, %29
  %i.bq = fadd float %28, 4.000000e-01            ; 3 uses
  %i.br = fmul float %i.bq, %i.bq
  %30 = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %31 = insertelement <2 x float> %30, float %i.bo, i64 0
  %i.bs = fadd <2 x float> %31, <float f0xBF333333, float -5.000000e-01> ; 3 uses
  %i.bt = fmul <2 x float> %i.bs, %i.bs           ; 2 uses
  %32 = extractelement <2 x float> %i.bt, i64 1
  %33 = fadd float %32, %i.br
  %i.bu = extractelement <2 x float> %i.bt, i64 0
  %i.bv = fadd float %i.bu, %33
  %sqrt.i.i340 = call noundef float @llvm.sqrt.f32(float %i.bv) ; 2 uses
  %34 = fdiv float %i.bq, %sqrt.i.i340
  %35 = insertelement <2 x float> poison, float %sqrt.i.i340, i64 0
  %i.bw = shufflevector <2 x float> %35, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bx = fdiv <2 x float> %i.bs, %i.bw
  %36 = fmul float %16, %34
  %i.by = fmul <2 x float> %i.bx, <float f0x3F417DE0, float f0x3E49E785> ; 2 uses
  %37 = extractelement <2 x float> %i.by, i64 1
  %38 = fadd float %37, %36
  %i.bz = extractelement <2 x float> %i.by, i64 0
  %i.ca = fadd float %i.bz, %38
  %i.cb = call noundef float @llvm.fabs.f32(float %i.ca)
  %i.cc = fmul float %i.bp, %i.cb
  %39 = fsub float f0x3F333333, %i.bo             ; 2 uses
  %40 = fsub <2 x float> <float 5.000000e-01, float -4.000000e-01>, %i.bn ; 2 uses
  %i.cd = fmul <2 x float> %40, %40               ; 2 uses
  %shift416 = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop417 = fadd <2 x float> %i.cd, %shift416
  %i.ce = extractelement <2 x float> %foldExtExtBinop417, i64 0
  %i.cf = fmul float %39, %39
  %i.cg = fadd float %i.cf, %i.ce
  %i.ch = fmul float %17, %i.cg
  %i.ci = fdiv float %i.cc, %i.ch
  %i.cj = fadd float %.0220379, %i.ci             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 1048576
  br i1 %exitcond.not, label %bb.a, label %bb.b, !llvm.loop !234

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !20 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !21
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.e, %bb.d
  %i.cn = phi ptr [ %i.cm, %bb.e ], [ @.str.360, %bb.d ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef 444, ptr noundef %i.cn)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %bb.f
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.co = load ptr, ptr %3, align 8, !tbaa !26
  %.not.i.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cp = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.k

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.cp, label %bb.i, label %_ZN7testing7MessageD2Ev.exit

bb.i:                                             ; preds = %.noexc.i.i
  %i.cq = load ptr, ptr %3, align 8, !tbaa !26    ; 3 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %_ZN7testing7MessageD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cs = load ptr, ptr %i.cq, align 8, !tbaa !29
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8
  call void %i.cu(ptr noundef nonnull align 8 dereferenceable(128) %i.cq) #30, !inline_history !31
  br label %_ZN7testing7MessageD2Ev.exit

bb.k:                                             ; preds = %bb.h
  %i.cv = landingpad { ptr, i32 }
          catch ptr null
  %i.cw = extractvalue { ptr, i32 } %i.cv, 0
  call void @__clang_call_terminate(ptr %i.cw) #31
  unreachable

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.g, %.noexc.i.i, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.q

bb.l:                                             ; preds = %bb.c
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.m:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.f
  %i.cz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #30
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.cz, %bb.n ], [ %i.cy, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #30
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.o ], [ %i.cx, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  resume { ptr, i32 } %.pn.pn

bb.q:                                             ; preds = %bb.a, %_ZN7testing7MessageD2Ev.exit
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !20
  %.not.i.i.i349 = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i349, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dc = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i350 unwind label %bb.u

.noexc.i.i350:                                    ; preds = %bb.r
  br i1 %i.dc, label %bb.s, label %_ZN7testing15AssertionResultD2Ev.exit

bb.s:                                             ; preds = %.noexc.i.i350
  %i.dd = load ptr, ptr %i.da, align 8, !tbaa !20 ; 4 uses
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.df = load ptr, ptr %i.dd, align 8, !tbaa !21 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 2 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.t
  %i.di = load i64, ptr %i.dg, align 8, !tbaa !32
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.dj) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef 32) #32
  br label %_ZN7testing15AssertionResultD2Ev.exit

bb.u:                                             ; preds = %bb.r
  %i.dk = landingpad { ptr, i32 }
          catch ptr null
  %i.dl = extractvalue { ptr, i32 } %i.dk, 0
  call void @__clang_call_terminate(ptr %i.dl) #31
  unreachable

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.q, %.noexc.i.i350, %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  ret void
}

declare { <2 x float>, float } @_ZN4pbrt23SampleSphericalTriangleERKN4pstd5arrayINS_6Point3IfEELi3EEES3_NS_6Point2IfEEPf(ptr noundef nonnull align 4 dereferenceable(36), <2 x float>, float, <2 x float>, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN38Sampling_SphericalTriangleInverse_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.pstd::array.44", align 8    ; 12 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %6 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %7 = alloca %"class.testing::Message", align 8  ; 11 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %9 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.d = alloca float, align 4                    ; 4 uses
  %i.e = alloca float, align 4                    ; 4 uses
  %10 = alloca %"class.testing::Message", align 8 ; 11 uses
  %11 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  br label %_ZN4pstd5arrayIN4pbrt6Point3IfEELi3EEC2ESt16initializer_listIS3_E.exit

bb.b:                                             ; preds = %.loopexit
  ret void

_ZN4pstd5arrayIN4pbrt6Point3IfEELi3EEC2ESt16initializer_listIS3_E.exit: ; preds = %bb.a, %.loopexit
  %.0165397 = phi i32 [ 0, %bb.a ], [ %i.oq, %.loopexit ]
  %.sroa.0.0396 = phi i64 [ -8846114313915602277, %bb.a ], [ %.sroa.0.2, %.loopexit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.u = mul i64 %.sroa.0.0396, 6364136223846793005
  %i.v = add i64 %i.u, -2720673578348880933       ; 2 uses
  %i.w = mul i64 %i.v, 6364136223846793005
  %i.x = insertelement <2 x i64> poison, i64 %.sroa.0.0396, i64 0
  %i.y = insertelement <2 x i64> %i.x, i64 %i.v, i64 1 ; 3 uses
  %i.z = lshr <2 x i64> %i.y, splat (i64 45)
  %i.aa = lshr <2 x i64> %i.y, splat (i64 27)
  %i.ab = xor <2 x i64> %i.z, %i.aa
  %i.ac = trunc <2 x i64> %i.ab to <2 x i32>      ; 2 uses
end_hunk_0
