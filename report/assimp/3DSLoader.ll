inline.NumInlined: 2736
inline.NumDeleted: 1010
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_Z34ComputeNormalsWithSmoothingsGroupsIN6Assimp4D3DS4FaceEEvR23MeshWithSmoothingGroupsIT_E:bb.a
.lr.ph240.2:                                      ; preds = %bb.z
  %i.kb = load ptr, ptr %i.a, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.lr.ph240.2
  %.sroa.0142.0238.2 = phi ptr [ %i.jz, %.lr.ph240.2 ], [ %i.kl, %bb.aa ] ; 2 uses
  %.sroa.14.0235.2 = phi float [ 0.000000e+00, %.lr.ph240.2 ], [ %i.kk, %bb.aa ]
  %i.kc = phi <2 x float> [ zeroinitializer, %.lr.ph240.2 ], [ %i.kh, %bb.aa ]
  %i.kd = load i32, ptr %.sroa.0142.0238.2, align 4
  %i.ke = zext i32 %i.kd to i64
  %i.kf = getelementptr inbounds nuw [12 x i8], ptr %i.kb, i64 %i.ke ; 2 uses
  %i.kg = load <2 x float>, ptr %i.kf, align 4
  %i.kh = fadd <2 x float> %i.kc, %i.kg           ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.kj = load float, ptr %i.ki, align 4
  %i.kk = fadd float %.sroa.14.0235.2, %i.kj      ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.0142.0238.2, i64 4 ; 2 uses
  %.not210.2 = icmp eq ptr %i.kl, %i.ka
  br i1 %.not210.2, label %._crit_edge241.2, label %bb.aa, !llvm.loop !16

._crit_edge241.2:                                 ; preds = %bb.aa, %bb.z
  %.sroa.14.0.lcssa.2 = phi float [ 0.000000e+00, %bb.z ], [ %i.kk, %bb.aa ] ; 4 uses
  %i.km = phi <2 x float> [ zeroinitializer, %bb.z ], [ %i.kh, %bb.aa ] ; 5 uses
  %foldExtExtBinop330 = fmul <2 x float> %i.km, %i.km
  %i.kn = extractelement <2 x float> %foldExtExtBinop330, i64 1
  %i.ko = extractelement <2 x float> %i.km, i64 0 ; 2 uses
  %i.kp = call float @llvm.fmuladd.f32(float %i.ko, float %i.ko, float %i.kn)
  %i.kq = call noundef float @llvm.fmuladd.f32(float %.sroa.14.0.lcssa.2, float %.sroa.14.0.lcssa.2, float %i.kp) ; 2 uses
  %i.kr = fcmp ogt float %i.kq, 0.000000e+00
  br i1 %i.kr, label %_ZN10aiVector3tIfEdVEf.exit.i.2, label %_ZN10aiVector3tIfE13NormalizeSafeEv.exit.2

_ZN10aiVector3tIfEdVEf.exit.i.2:                  ; preds = %._crit_edge241.2
  %sqrt.i.i.2 = call noundef float @llvm.sqrt.f32(float %i.kq)
  %i.ks = fdiv float 1.000000e+00, %sqrt.i.i.2    ; 2 uses
  %i.kt = insertelement <2 x float> poison, float %i.ks, i64 0
  %i.ku = shufflevector <2 x float> %i.kt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kv = fmul <2 x float> %i.km, %i.ku
  %i.kw = fmul float %.sroa.14.0.lcssa.2, %i.ks
  br label %_ZN10aiVector3tIfE13NormalizeSafeEv.exit.2

_ZN10aiVector3tIfE13NormalizeSafeEv.exit.2:       ; preds = %_ZN10aiVector3tIfEdVEf.exit.i.2, %._crit_edge241.2
  %.sroa.14.1.2 = phi float [ %i.kw, %_ZN10aiVector3tIfEdVEf.exit.i.2 ], [ %.sroa.14.0.lcssa.2, %._crit_edge241.2 ]
  %i.kx = phi <2 x float> [ %i.kv, %_ZN10aiVector3tIfEdVEf.exit.i.2 ], [ %i.km, %._crit_edge241.2 ]
  br i1 %.not210234.2, label %.loopexit.2, label %.lr.ph247.2

.lr.ph247.2:                                      ; preds = %_ZN10aiVector3tIfE13NormalizeSafeEv.exit.2, %.lr.ph247.2
  %.sroa.0137.0246.2 = phi ptr [ %i.lh, %.lr.ph247.2 ], [ %i.jz, %_ZN10aiVector3tIfE13NormalizeSafeEv.exit.2 ] ; 2 uses
  %i.ky = load i32, ptr %.sroa.0137.0246.2, align 4 ; 2 uses
  %i.kz = zext i32 %i.ky to i64                   ; 2 uses
  %i.la = getelementptr inbounds nuw [12 x i8], ptr %i.dv, i64 %i.kz ; 2 uses
  store <2 x float> %i.kx, ptr %i.la, align 4
  %.sroa.14.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  store float %.sroa.14.1.2, ptr %.sroa.14.0..sroa_idx.2, align 4
  %i.lb = lshr i32 %i.ky, 6
  %.zext207.2 = zext nneg i32 %i.lb to i64
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0157.0, i64 %.zext207.2 ; 2 uses
  %i.ld = and i64 %i.kz, 63
  %i.le = shl nuw i64 1, %i.ld
  %i.lf = load i64, ptr %i.lc, align 8
  %i.lg = or i64 %i.lf, %i.le
  store i64 %i.lg, ptr %i.lc, align 8
  %i.lh = getelementptr inbounds nuw i8, ptr %.sroa.0137.0246.2, i64 4 ; 2 uses
  %.not211.2 = icmp eq ptr %i.lh, %i.ka
  br i1 %.not211.2, label %.loopexit.2, label %.lr.ph247.2, !llvm.loop !17

.loopexit.2:                                      ; preds = %.lr.ph247.2, %.loopexit.1..loopexit.2_crit_edge, %_ZN10aiVector3tIfE13NormalizeSafeEv.exit.2
  %i.li = phi ptr [ %.pre, %.loopexit.1..loopexit.2_crit_edge ], [ %i.jz, %_ZN10aiVector3tIfE13NormalizeSafeEv.exit.2 ], [ %i.jz, %.lr.ph247.2 ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.li, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.q

bb.ab:                                            ; preds = %bb.t
  %i.lj = load ptr, ptr %i.fj, align 8
  %i.lk = ptrtoint ptr %i.lj to i64
  %i.ll = ptrtoint ptr %i.gu to i64
  %i.lm = sub i64 %i.lk, %i.ll
  call void @_ZdlPvm(ptr noundef nonnull %i.gu, i64 noundef %i.lm) #29
  br label %.thread

.thread:                                          ; preds = %bb.ab, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.ah

bb.ac:                                            ; preds = %._crit_edge252
  %.not.i.i124 = icmp eq ptr %.sroa.0157.0, null
  br i1 %.not.i.i124, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ln = ptrtoint ptr %.sroa.15163.0 to i64
  %i.lo = ptrtoint ptr %.sroa.0157.0 to i64
  %i.lp = sub i64 %i.ln, %i.lo                    ; 2 uses
  %i.lq = ashr exact i64 %i.lp, 3
  %i.lr = sub nsw i64 0, %i.lq
  %i.ls = getelementptr inbounds [8 x i8], ptr %.sroa.15163.0, i64 %i.lr
  call void @_ZdlPvm(ptr noundef %i.ls, i64 noundef %i.lp) #29
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.ac, %bb.ad
  %i.lt = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.lu = load ptr, ptr %i.lt, align 8            ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.lu, null
  br i1 %.not.i.i.i.i, label %_ZN6Assimp13SGSpatialSortD2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.lv = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.lw = load ptr, ptr %i.lv, align 8
  %i.lx = ptrtoint ptr %i.lw to i64
  %i.ly = ptrtoint ptr %i.lu to i64
  %i.lz = sub i64 %i.lx, %i.ly
  call void @_ZdlPvm(ptr noundef nonnull %i.lu, i64 noundef %i.lz) #29
  br label %_ZN6Assimp13SGSpatialSortD2Ev.exit

_ZN6Assimp13SGSpatialSortD2Ev.exit:               ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.ma = load ptr, ptr %2, align 8               ; 3 uses
  %.not.i.i.i125 = icmp eq ptr %i.ma, null
  br i1 %.not.i.i.i125, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZN6Assimp13SGSpatialSortD2Ev.exit
  %i.mb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.mc = load ptr, ptr %i.mb, align 8
  %i.md = ptrtoint ptr %i.mc to i64
  %i.me = ptrtoint ptr %i.ma to i64
  %i.mf = sub i64 %i.md, %i.me
  call void @_ZdlPvm(ptr noundef nonnull %i.ma, i64 noundef %i.mf) #29
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit:    ; preds = %_ZN6Assimp13SGSpatialSortD2Ev.exit, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

bb.ag:                                            ; preds = %._crit_edge252
  %i.mg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i126 = icmp eq ptr %.sroa.0157.0, null
  br i1 %.not.i.i126, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit127, label %bb.ah

bb.ah:                                            ; preds = %.thread, %bb.ag
  %.pn.pn.pn204 = phi { ptr, i32 } [ %i.gt, %.thread ], [ %i.mg, %bb.ag ]
  %i.mh = ptrtoint ptr %.sroa.15163.0 to i64
  %i.mi = ptrtoint ptr %.sroa.0157.0 to i64
  %i.mj = sub i64 %i.mh, %i.mi                    ; 2 uses
  %i.mk = ashr exact i64 %i.mj, 3
  %i.ml = sub nsw i64 0, %i.mk
  %i.mm = getelementptr inbounds [8 x i8], ptr %.sroa.15163.0, i64 %i.ml
  call void @_ZdlPvm(ptr noundef %i.mm, i64 noundef %i.mj) #29
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit127

_ZNSt13_Bvector_baseISaIbEED2Ev.exit127:          ; preds = %bb.o, %bb.ag, %bb.ah, %bb.n, %bb.k
  %.pn91 = phi { ptr, i32 } [ %i.et, %bb.k ], [ %i.fl, %bb.n ], [ %i.fm, %bb.o ], [ %i.mg, %bb.ag ], [ %.pn.pn.pn204, %bb.ah ] ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.mo = load ptr, ptr %i.mn, align 8            ; 3 uses
  %.not.i.i.i.i128 = icmp eq ptr %i.mo, null
  br i1 %.not.i.i.i.i128, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit127
  %i.mp = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.mq = load ptr, ptr %i.mp, align 8
  %i.mr = ptrtoint ptr %i.mq to i64
  %i.ms = ptrtoint ptr %i.mo to i64
  %i.mt = sub i64 %i.mr, %i.ms
  call void @_ZdlPvm(ptr noundef nonnull %i.mo, i64 noundef %i.mt) #29
  br label %bb.aj

bb.aj:                                            ; preds = %bb.g, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit127, %bb.ai
  %.pn91.pn = phi { ptr, i32 } [ %i.ee, %bb.g ], [ %.pn91, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit127 ], [ %.pn91, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %.pre267 = load ptr, ptr %2, align 8            ; 3 uses
  %.not.i.i.i130 = icmp eq ptr %.pre267, null
  br i1 %.not.i.i.i130, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit131, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.mu = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.mv = load ptr, ptr %i.mu, align 8
  %i.mw = ptrtoint ptr %i.mv to i64
  %i.mx = ptrtoint ptr %.pre267 to i64
  %i.my = sub i64 %i.mw, %i.mx
  call void @_ZdlPvm(ptr noundef nonnull %.pre267, i64 noundef %i.my) #29
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit131

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit131: ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %.pn91.pn
}

declare void @_ZN6Assimp19Discreet3DSImporter22ReplaceDefaultMaterialEv(ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #3

declare void @_ZN6Assimp19Discreet3DSImporter12ConvertSceneEP7aiScene(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef) local_unnamed_addr #3

declare void @_ZN6Assimp19Discreet3DSImporter17GenerateNodeGraphEP7aiScene(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6Assimp19Discreet3DSImporter16ApplyMasterScaleEPK7aiScene(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(168) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.b = load float, ptr %i.a, align 4            ; 2 uses
  %i.c = fcmp une float %i.b, 0.000000e+00
  %i.d = fdiv float 1.000000e+00, %i.b
  %storemerge = select i1 %i.c, float %i.d, float 1.000000e+00 ; 7 uses
  store float %storemerge, ptr %i.a, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 14 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1028 ; 2 uses
  %i.h = load float, ptr %i.g, align 4            ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1032 ; 2 uses
  %i.j = load float, ptr %i.i, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 1036
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 1040
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 1044
  %i.n = load float, ptr %i.m, align 4            ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 1048 ; 2 uses
  %i.p = load float, ptr %i.o, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 1052
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 1060
  %i.s = load float, ptr %i.r, align 4            ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 1064 ; 2 uses
  %i.u = load float, ptr %i.t, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 1068
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 1076
  %i.x = load float, ptr %i.w, align 4            ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 1080 ; 2 uses
  %i.z = load float, ptr %i.y, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 1084
  %2 = load float, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 1088 ; 2 uses
  %3 = load float, ptr %i.ab, align 4             ; 3 uses
  %i.ac = load <2 x float>, ptr %i.k, align 4     ; 4 uses
  %i.ad = load float, ptr %i.l, align 4
  %4 = extractelement <2 x float> %i.ac, i64 0
  %i.ae = insertelement <2 x float> <float poison, float 0.000000e+00>, float %storemerge, i64 0 ; 4 uses
  %i.af = insertelement <2 x float> poison, float %i.j, i64 0
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer
  %5 = fmul <2 x float> %i.ae, %i.ag              ; 2 uses
  %6 = extractelement <2 x float> %5, i64 1
  %i.ah = tail call float @llvm.fmuladd.f32(float %storemerge, float %i.h, float %6)
  %7 = tail call float @llvm.fmuladd.f32(float %4, float 0.000000e+00, float %i.ah)
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.ad, float 0.000000e+00, float %7)
  %8 = insertelement <2 x float> poison, float %i.h, i64 0
  %9 = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> zeroinitializer
  %10 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %9, <2 x float> zeroinitializer, <2 x float> %5) ; 2 uses
  %11 = insertelement <2 x float> <float 0.000000e+00, float poison>, float %storemerge, i64 1 ; 4 uses
  %12 = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %13 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %11, <2 x float> %12, <2 x float> %10)
  %14 = shufflevector <2 x float> %13, <2 x float> %10, <4 x i32> <i32 0, i32 1, i32 3, i32 poison>
  %15 = shufflevector <2 x float> %i.ac, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %16 = shufflevector <4 x float> <float -0.000000e+00, float -0.000000e+00, float poison, float -0.000000e+00>, <4 x float> %15, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  store float %i.ai, ptr %i.g, align 4
  %17 = load <2 x float>, ptr %i.q, align 4       ; 5 uses
  %18 = extractelement <2 x float> %17, i64 0
  %19 = insertelement <2 x float> poison, float %i.p, i64 0
  %20 = shufflevector <2 x float> %19, <2 x float> poison, <2 x i32> zeroinitializer
  %21 = fmul <2 x float> %i.ae, %20               ; 2 uses
  %22 = extractelement <2 x float> %21, i64 1
  %23 = tail call float @llvm.fmuladd.f32(float %storemerge, float %i.n, float %22)
  %i.aj = insertelement <2 x float> poison, float %i.n, i64 0
  %24 = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ak = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %24, <2 x float> zeroinitializer, <2 x float> %21) ; 2 uses
  %25 = shufflevector <2 x float> %17, <2 x float> poison, <2 x i32> zeroinitializer
  %26 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %11, <2 x float> %25, <2 x float> %i.ak)
  %27 = shufflevector <2 x float> %26, <2 x float> %i.ak, <4 x i32> <i32 0, i32 1, i32 3, i32 poison>
  %28 = shufflevector <2 x float> %17, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %29 = shufflevector <4 x float> <float -0.000000e+00, float -0.000000e+00, float poison, float -0.000000e+00>, <4 x float> %28, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %30 = tail call float @llvm.fmuladd.f32(float %18, float 0.000000e+00, float %23)
  %31 = shufflevector <2 x float> %i.ac, <2 x float> %17, <4 x i32> <i32 1, i32 1, i32 0, i32 3>
  %i.al = insertelement <4 x float> %14, float %30, i64 3
  %32 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %31, <4 x float> zeroinitializer, <4 x float> %i.al)
  %33 = fadd <4 x float> %16, %32
  store <4 x float> %33, ptr %i.i, align 4
  %34 = load <2 x float>, ptr %i.v, align 4       ; 5 uses
  %35 = extractelement <2 x float> %34, i64 0
  %36 = insertelement <2 x float> poison, float %i.u, i64 0
  %37 = shufflevector <2 x float> %36, <2 x float> poison, <2 x i32> zeroinitializer
  %38 = fmul <2 x float> %i.ae, %37               ; 2 uses
  %39 = extractelement <2 x float> %38, i64 1
  %40 = tail call float @llvm.fmuladd.f32(float %storemerge, float %i.s, float %39)
  %i.am = insertelement <2 x float> poison, float %i.s, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %41 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.an, <2 x float> zeroinitializer, <2 x float> %38) ; 2 uses
  %42 = shufflevector <2 x float> %34, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %11, <2 x float> %42, <2 x float> %41)
  %43 = shufflevector <2 x float> %34, <2 x float> poison, <3 x i32> <i32 1, i32 0, i32 poison>
  %44 = insertelement <3 x float> %43, float %3, i64 2
  %45 = shufflevector <3 x float> %44, <3 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 2>
  %46 = shufflevector <2 x float> %i.ao, <2 x float> %41, <4 x i32> <i32 0, i32 1, i32 3, i32 poison>
  %47 = shufflevector <2 x float> %34, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %48 = shufflevector <4 x float> <float -0.000000e+00, float -0.000000e+00, float poison, float -0.000000e+00>, <4 x float> %47, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %49 = tail call float @llvm.fmuladd.f32(float %35, float 0.000000e+00, float %40)
  %50 = shufflevector <2 x float> %17, <2 x float> %34, <4 x i32> <i32 1, i32 1, i32 0, i32 3>
  %51 = insertelement <4 x float> %27, float %49, i64 3
  %i.ap = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %50, <4 x float> zeroinitializer, <4 x float> %51)
  %52 = fadd <4 x float> %29, %i.ap
  store <4 x float> %52, ptr %i.o, align 4
  %53 = insertelement <2 x float> poison, float %i.z, i64 0
  %54 = shufflevector <2 x float> %53, <2 x float> poison, <2 x i32> zeroinitializer
  %55 = fmul <2 x float> %i.ae, %54               ; 2 uses
  %56 = extractelement <2 x float> %55, i64 1
  %57 = tail call float @llvm.fmuladd.f32(float %storemerge, float %i.x, float %56)
  %i.aq = insertelement <2 x float> poison, float %i.x, i64 0
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> zeroinitializer
  %58 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ar, <2 x float> zeroinitializer, <2 x float> %55) ; 2 uses
  %i.as = insertelement <2 x float> poison, float %2, i64 0
  %59 = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.at = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %11, <2 x float> %59, <2 x float> %58)
  %60 = insertelement <2 x float> poison, float %3, i64 0
  %61 = shufflevector <2 x float> %60, <2 x float> poison, <2 x i32> zeroinitializer
  %62 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %61, <2 x float> zeroinitializer, <2 x float> %i.at)
  %63 = shufflevector <2 x float> %58, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %64 = insertelement <2 x float> %63, float %57, i64 1
  %65 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %59, <2 x float> zeroinitializer, <2 x float> %64) ; 2 uses
  %66 = extractelement <2 x float> %65, i64 0
  %67 = fadd float %3, %66
  %68 = shufflevector <2 x float> %65, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %69 = shufflevector <4 x float> %46, <4 x float> %68, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.au = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %45, <4 x float> zeroinitializer, <4 x float> %69)
  %70 = fadd <4 x float> %48, %i.au
  store <4 x float> %70, ptr %i.t, align 4
  store <2 x float> %62, ptr %i.y, align 4
  store float %67, ptr %i.ab, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp4D3DS4NodeD2Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(248) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.i, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6Assimp4D3DS10aiFloatKeyESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #29
  br label %_ZNSt6vectorIN6Assimp4D3DS10aiFloatKeyESaIS2_EED2Ev.exit

_ZNSt6vectorIN6Assimp4D3DS10aiFloatKeyESaIS2_EED2Ev.exit: ; preds = %._crit_edge, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  %.not.i.i.i5 = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i5, label %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN6Assimp4D3DS10aiFloatKeyESaIS2_EED2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #29
  br label %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit

_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit:      ; preds = %_ZNSt6vectorIN6Assimp4D3DS10aiFloatKeyESaIS2_EED2Ev.exit, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.t = load ptr, ptr %i.s, align 8              ; 3 uses
  %.not.i.i.i6 = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i6, label %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit7, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #29
  br label %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit7

_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit7:     ; preds = %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aa = load ptr, ptr %i.z, align 8             ; 3 uses
  %.not.i.i.i8 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i8, label %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit9, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit7
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #29
  br label %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit9

_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit9:     ; preds = %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit7, %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %.not.i.i.i10 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorI9aiQuatKeySaIS0_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit9
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ak, %i.al
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.am) #29
  br label %_ZNSt6vectorI9aiQuatKeySaIS0_EED2Ev.exit

_ZNSt6vectorI9aiQuatKeySaIS0_EED2Ev.exit:         ; preds = %_ZNSt6vectorI11aiVectorKeySaIS0_EED2Ev.exit9, %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorI9aiQuatKeySaIS0_EED2Ev.exit
  %i.ar = load i64, ptr %i.ap, align 8
  %i.as = add i64 %i.ar, 1
  tail call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorI9aiQuatKeySaIS0_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ax = load i64, ptr %i.av, align 8
  %i.ay = add i64 %i.ax, 1
  tail call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  %i.az = load ptr, ptr %i.a, align 8             ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIPN6Assimp4D3DS4NodeESaIS3_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.az to i64
  %i.be = sub i64 %i.bc, %i.bd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.be) #29
  br label %_ZNSt6vectorIPN6Assimp4D3DS4NodeESaIS3_EED2Ev.exit

_ZNSt6vectorIPN6Assimp4D3DS4NodeESaIS3_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, %bb.g
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.i
  %i.bf = phi ptr [ %i.bl, %bb.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.bg = phi ptr [ %i.bm, %bb.i ], [ %i.c, %bb.a ]
  %i.bh = phi i64 [ %i.bo, %bb.i ], [ 0, %bb.a ]
  %.015 = phi i32 [ %i.bn, %bb.i ], [ 0, %bb.a ]
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bh
  %i.bj = load ptr, ptr %i.bi, align 8            ; 3 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  tail call void @_ZN6Assimp4D3DS4NodeD2Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(248) %i.bj) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef 248) #29
  %.pre = load ptr, ptr %i.b, align 8
  %.pre16 = load ptr, ptr %i.a, align 8
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.h
  %i.bl = phi ptr [ %i.bf, %.lr.ph ], [ %.pre16, %bb.h ] ; 2 uses
  %i.bm = phi ptr [ %i.bg, %.lr.ph ], [ %.pre, %bb.h ] ; 2 uses
  %i.bn = add i32 %.015, 1                        ; 2 uses
  %i.bo = zext i32 %i.bn to i64                   ; 2 uses
  %i.bp = ptrtoint ptr %i.bm to i64
  %i.bq = ptrtoint ptr %i.bl to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = ashr exact i64 %i.br, 3
  %i.bt = icmp ugt i64 %i.bs, %i.bo
  br i1 %i.bt, label %.lr.ph, label %._crit_edge, !llvm.loop !18
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp4D3DS5SceneD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIP7aiLightSaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #29
  br label %_ZNSt6vectorIP7aiLightSaIS1_EED2Ev.exit

_ZNSt6vectorIP7aiLightSaIS1_EED2Ev.exit:          ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIP8aiCameraSaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIP7aiLightSaIS1_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #29
  br label %_ZNSt6vectorIP8aiCameraSaIS1_EED2Ev.exit

_ZNSt6vectorIP8aiCameraSaIS1_EED2Ev.exit:         ; preds = %_ZNSt6vectorIP7aiLightSaIS1_EED2Ev.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6Assimp4D3DS4MeshES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i
end_hunk_0
begin_hunk_1_@_ZN6Assimp19Discreet3DSImporter10ParseChunkEPKcj:bb.a
_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit58: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit57
  %i.in = load float, ptr %i.ig, align 1
  store ptr %i.ih, ptr %i.if, align 8
  %i.io = getelementptr inbounds nuw i8, ptr %i.fm, i64 1036 ; 2 uses
  store float %i.in, ptr %i.io, align 4
  %i.ip = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 24 ; 2 uses
  %i.ir = load ptr, ptr %i.iq, align 8            ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 4 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.ip, i64 40
  %i.iu = load ptr, ptr %i.it, align 8
  %i.iv = icmp ugt ptr %i.is, %i.iu
  br i1 %i.iv, label %bb.bk, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit59

bb.bk:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit58
  %i.iw = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.iw, ptr noundef nonnull @.str.39)
          to label %bb.bl unwind label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  call void @__cxa_throw(ptr nonnull %i.iw, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.bm:                                            ; preds = %bb.bk
  %i.ix = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.iw) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit59: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit58
  %i.iy = load float, ptr %i.ir, align 1
  store ptr %i.is, ptr %i.iq, align 8
  %i.iz = load float, ptr %i.hs, align 4
  %i.ja = fsub float %i.iy, %i.iz
  store float %i.ja, ptr %i.fp, align 4
  %i.jb = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 24 ; 2 uses
  %i.jd = load ptr, ptr %i.jc, align 8            ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 4 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jb, i64 40
  %i.jg = load ptr, ptr %i.jf, align 8
  %i.jh = icmp ugt ptr %i.je, %i.jg
  br i1 %i.jh, label %bb.bn, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit60

bb.bn:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit59
  %i.ji = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ji, ptr noundef nonnull @.str.39)
          to label %bb.bo unwind label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  call void @__cxa_throw(ptr nonnull %i.ji, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.bp:                                            ; preds = %bb.bn
  %i.jj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ji) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit60: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit59
  %i.jk = load float, ptr %i.jd, align 1
  store ptr %i.je, ptr %i.jc, align 8
  %i.jl = load float, ptr %i.id, align 4
  %i.jm = fsub float %i.jk, %i.jl
  store float %i.jm, ptr %i.fq, align 4
  %i.jn = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 24 ; 2 uses
  %i.jp = load ptr, ptr %i.jo, align 8            ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 4 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jn, i64 40
  %i.js = load ptr, ptr %i.jr, align 8
  %i.jt = icmp ugt ptr %i.jq, %i.js
  br i1 %i.jt, label %bb.bq, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit61

bb.bq:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit60
  %i.ju = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ju, ptr noundef nonnull @.str.39)
          to label %bb.br unwind label %bb.bs

bb.br:                                            ; preds = %bb.bq
  call void @__cxa_throw(ptr nonnull %i.ju, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.bs:                                            ; preds = %bb.bq
  %i.jv = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ju) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit61: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit60
  %i.jw = load float, ptr %i.jp, align 1
  store ptr %i.jq, ptr %i.jo, align 8
  %i.jx = load float, ptr %i.io, align 4
  %i.jy = fsub float %i.jw, %i.jx                 ; 4 uses
  store float %i.jy, ptr %i.fr, align 4
  %i.jz = load <2 x float>, ptr %i.fp, align 4    ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.jz, %i.jz
  %i.ka = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.kb = extractelement <2 x float> %i.jz, i64 0 ; 2 uses
  %i.kc = call float @llvm.fmuladd.f32(float %i.kb, float %i.kb, float %i.ka)
  %i.kd = call noundef float @llvm.fmuladd.f32(float %i.jy, float %i.jy, float %i.kc) ; 2 uses
  %sqrt.i = call noundef float @llvm.sqrt.f32(float %i.kd) ; 2 uses
  %i.ke = fpext float %sqrt.i to double
  %i.kf = fcmp olt double %i.ke, 1.000000e-05
  br i1 %i.kf, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit61
  %i.kg = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.kg, ptr noundef nonnull @.str.10)
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.fp, align 4
  br label %_ZN10aiVector3tIfEdVEf.exit.sink.split

.loopexit104:                                     ; preds = %.noexc.i48
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

.loopexit.split-lp:                               ; preds = %bb.av
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.bu:                                            ; preds = %.loopexit.split-lp, %.loopexit104
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit104 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.cl

bb.bv:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit61
  %i.kh = fcmp oeq float %i.kd, 0.000000e+00
  br i1 %i.kh, label %_ZN10aiVector3tIfEdVEf.exit, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ki = fdiv float 1.000000e+00, %sqrt.i        ; 2 uses
  %i.kj = insertelement <2 x float> poison, float %i.ki, i64 0
  %i.kk = shufflevector <2 x float> %i.kj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kl = fmul <2 x float> %i.jz, %i.kk
  store <2 x float> %i.kl, ptr %i.fp, align 4
  %i.km = fmul float %i.jy, %i.ki
  br label %_ZN10aiVector3tIfEdVEf.exit.sink.split

_ZN10aiVector3tIfEdVEf.exit.sink.split:           ; preds = %bb.bt, %bb.bw
  %.sink = phi float [ %i.km, %bb.bw ], [ 0.000000e+00, %bb.bt ]
  store float %.sink, ptr %i.fr, align 4
  br label %_ZN10aiVector3tIfEdVEf.exit

_ZN10aiVector3tIfEdVEf.exit:                      ; preds = %_ZN10aiVector3tIfEdVEf.exit.sink.split, %bb.bv
  %i.kn = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 24 ; 2 uses
  %i.kp = load ptr, ptr %i.ko, align 8            ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 4 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kn, i64 40
  %i.ks = load ptr, ptr %i.kr, align 8
  %i.kt = icmp ugt ptr %i.kq, %i.ks
  br i1 %i.kt, label %bb.bx, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit62

bb.bx:                                            ; preds = %_ZN10aiVector3tIfEdVEf.exit
  %i.ku = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ku, ptr noundef nonnull @.str.39)
          to label %bb.by unwind label %bb.bz

bb.by:                                            ; preds = %bb.bx
  call void @__cxa_throw(ptr nonnull %i.ku, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.bz:                                            ; preds = %bb.bx
  %i.kv = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ku) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit62: ; preds = %_ZN10aiVector3tIfEdVEf.exit
  %i.kw = load float, ptr %i.kp, align 1
  store ptr %i.kq, ptr %i.ko, align 8
  %i.kx = fmul float %i.kw, f0x3C8EFA35
  %.sroa.04.0.copyload = load <2 x float>, ptr %i.fp, align 4 ; 5 uses
  %.sroa.25.0.copyload = load float, ptr %i.fr, align 4 ; 4 uses
  %.sroa.0.0.vec.extract8.i = extractelement <2 x float> %.sroa.04.0.copyload, i64 0 ; 2 uses
  %foldExtExtBinop161 = fmul <2 x float> %.sroa.04.0.copyload, %.sroa.04.0.copyload
  %i.ky = extractelement <2 x float> %foldExtExtBinop161, i64 1
  %i.kz = call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract8.i, float %.sroa.0.0.vec.extract8.i, float %i.ky)
  %i.la = call noundef float @llvm.fmuladd.f32(float %.sroa.25.0.copyload, float %.sroa.25.0.copyload, float %i.kz) ; 2 uses
  %i.lb = fcmp oeq float %i.la, 0.000000e+00
  br i1 %i.lb, label %_ZN13aiQuaterniontIfEC2E10aiVector3tIfEf.exit, label %_ZN10aiVector3tIfEdVEf.exit.i.i

_ZN10aiVector3tIfEdVEf.exit.i.i:                  ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit62
  %sqrt.i.i.i = call noundef float @llvm.sqrt.f32(float %i.la)
  %i.lc = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 2 uses
  %i.ld = insertelement <2 x float> poison, float %i.lc, i64 0
  %i.le = shufflevector <2 x float> %i.ld, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lf = fmul <2 x float> %.sroa.04.0.copyload, %i.le
  %i.lg = fmul float %.sroa.25.0.copyload, %i.lc
  br label %_ZN13aiQuaterniontIfEC2E10aiVector3tIfEf.exit

_ZN13aiQuaterniontIfEC2E10aiVector3tIfEf.exit:    ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit62, %_ZN10aiVector3tIfEdVEf.exit.i.i
  %.sroa.7.0.i = phi float [ %.sroa.25.0.copyload, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit62 ], [ %i.lg, %_ZN10aiVector3tIfEdVEf.exit.i.i ]
  %i.lh = phi <2 x float> [ %.sroa.04.0.copyload, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit62 ], [ %i.lf, %_ZN10aiVector3tIfEdVEf.exit.i.i ]
  %i.li = fmul float %i.kx, 5.000000e-01          ; 2 uses
  %i.lj = call noundef float @sinf(float noundef %i.li) #28 ; 2 uses
  %i.lk = call noundef float @cosf(float noundef %i.li) #28 ; 4 uses
  %i.ll = fmul float %.sroa.7.0.i, %i.lj          ; 6 uses
  %7 = fmul float %i.ll, %i.ll                    ; 2 uses
  %8 = fneg float %i.lk                           ; 2 uses
  %i.lm = fmul float %i.ll, %i.lk
  %i.ln = insertelement <2 x float> poison, float %i.lj, i64 0
  %i.lo = shufflevector <2 x float> %i.ln, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lp = fmul <2 x float> %i.lh, %i.lo           ; 7 uses
  %i.lq = extractelement <2 x float> %i.lp, i64 1 ; 3 uses
  %9 = call float @llvm.fmuladd.f32(float %i.lq, float %i.lq, float %7)
  %i.lr = extractelement <2 x float> %i.lp, i64 0 ; 3 uses
  %10 = call float @llvm.fmuladd.f32(float %i.lr, float %i.lq, float %i.lm)
  %i.ls = call float @llvm.fmuladd.f32(float %9, float -2.000000e+00, float 1.000000e+00)
  %11 = insertelement <2 x float> poison, float %i.ls, i64 0
  %i.lt = insertelement <2 x float> %11, float %10, i64 1
  %12 = fmul <2 x float> %i.lt, <float 1.000000e+00, float 2.000000e+00>
  %13 = call float @llvm.fmuladd.f32(float %i.lr, float %i.lr, float %7)
  %14 = call float @llvm.fmuladd.f32(float %13, float -2.000000e+00, float 1.000000e+00)
  %i.lu = insertelement <2 x float> poison, float %8, i64 0
  %i.lv = insertelement <2 x float> %i.lu, float %i.lk, i64 1
  %i.lw = fmul <2 x float> %i.lp, %i.lv
  %i.lx = shufflevector <2 x float> %i.lw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ly = insertelement <2 x float> poison, float %i.ll, i64 0
  %i.lz = shufflevector <2 x float> %i.ly, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ma = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lp, <2 x float> %i.lz, <2 x float> %i.lx)
  %i.mb = fmul <2 x float> %i.ma, splat (float 2.000000e+00)
  %15 = shufflevector <2 x float> %i.lp, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 1, i32 0> ; 2 uses
  %i.mc = insertelement <4 x float> %15, float %i.ll, i64 0
  %i.md = insertelement <4 x float> %15, float %8, i64 0
  %i.me = insertelement <4 x float> %i.md, float %i.lk, i64 3
  %16 = shufflevector <4 x float> %i.me, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.mf = fmul <4 x float> %i.mc, %16
  %17 = shufflevector <2 x float> %i.lp, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 1>
  %i.mg = insertelement <2 x float> %i.lp, float %i.ll, i64 1
  %i.mh = shufflevector <2 x float> %i.mg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.mi = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %17, <4 x float> %i.mh, <4 x float> %i.mf) ; 4 uses
  %18 = shufflevector <4 x float> %i.mi, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %19 = insertelement <2 x float> %18, float %14, i64 1
  %i.mj = fmul <2 x float> %19, <float 2.000000e+00, float 1.000000e+00>
  %i.mk = extractelement <4 x float> %i.mi, i64 1
  %i.ml = fmul float %i.mk, 2.000000e+00
  %i.mm = extractelement <4 x float> %i.mi, i64 3
  %i.mn = fmul float %i.mm, 2.000000e+00
  %i.mo = extractelement <4 x float> %i.mi, i64 2
  %i.mp = call float @llvm.fmuladd.f32(float %i.mo, float -2.000000e+00, float 1.000000e+00)
  %i.mq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %12, <2 x float> zeroinitializer, <2 x float> %i.mj)
  %i.mr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mb, <2 x float> zeroinitializer, <2 x float> %i.mq)
  %i.ms = call float @llvm.fmuladd.f32(float %i.ml, float 0.000000e+00, float %i.mn)
  %i.mt = call float @llvm.fmuladd.f32(float %i.mp, float 0.000000e+00, float %i.ms)
  %i.mu = getelementptr inbounds nuw i8, ptr %i.fm, i64 1040
  store <2 x float> %i.mr, ptr %i.mu, align 4
  store float %i.mt, ptr %i.fo, align 4
  %i.mv = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 24 ; 2 uses
  %i.mx = load ptr, ptr %i.mw, align 8            ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 4 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mv, i64 40
  %i.na = load ptr, ptr %i.mz, align 8
  %i.nb = icmp ugt ptr %i.my, %i.na
  br i1 %i.nb, label %bb.ca, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit63

bb.ca:                                            ; preds = %_ZN13aiQuaterniontIfEC2E10aiVector3tIfEf.exit
  %i.nc = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.nc, ptr noundef nonnull @.str.39)
          to label %bb.cb unwind label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  call void @__cxa_throw(ptr nonnull %i.nc, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.cc:                                            ; preds = %bb.ca
  %i.nd = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.nc) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit63: ; preds = %_ZN13aiQuaterniontIfEC2E10aiVector3tIfEf.exit
  %i.ne = load float, ptr %i.mx, align 1
  store ptr %i.my, ptr %i.mw, align 8
  %i.nf = fmul float %i.ne, f0x3C8EFA35           ; 2 uses
  %i.ng = fcmp olt float %i.nf, 1.000000e-03
  %storemerge = select i1 %i.ng, float f0x3F490FDB, float %i.nf
  store float %storemerge, ptr %i.fs, align 4
  %i.nh = load i8, ptr %i.w, align 1, !range !30, !noundef !31
  %i.ni = trunc nuw i8 %i.nh to i1
  br i1 %i.ni, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit63
  call void @_ZN6Assimp19Discreet3DSImporter16ParseCameraChunkEv(ptr noundef nonnull align 8 dereferenceable(168) %0)
  br label %bb.ce

bb.ce:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetF4Ev.exit63, %bb.cd, %bb.an, %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit
  %i.nj = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 40
  %i.nl = load ptr, ptr %i.nk, align 8
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nj, i64 24
  store ptr %i.nl, ptr %i.nm, align 8
  %i.nn = load ptr, ptr %i.d, align 8             ; 4 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 40 ; 2 uses
  %i.np = and i64 %i.bc, 4294967295               ; 2 uses
  %i.nq = icmp eq i64 %i.np, 4294967295
  br i1 %i.nq, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nn, i64 32
  %i.ns = load ptr, ptr %i.nr, align 8
  store ptr %i.ns, ptr %i.no, align 8
  br label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit64

bb.cg:                                            ; preds = %bb.ce
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nn, i64 16
  %i.nu = load ptr, ptr %i.nt, align 8
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 %i.np ; 2 uses
  store ptr %i.nv, ptr %i.no, align 8
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nn, i64 32
  %i.nx = load ptr, ptr %i.nw, align 8
  %i.ny = icmp ugt ptr %i.nv, %i.nx
  br i1 %i.ny, label %bb.ch, label %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit64

bb.ch:                                            ; preds = %bb.cg
  %i.nz = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.nz, ptr noundef nonnull @.str.41)
          to label %bb.ci unwind label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  call void @__cxa_throw(ptr nonnull %i.nz, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.cj:                                            ; preds = %bb.ch
  %i.oa = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.nz) #28
  br label %common.resume

_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit64: ; preds = %bb.cf, %bb.cg
  %i.ob = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 40
  %i.od = load ptr, ptr %i.oc, align 8
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ob, i64 24
  %i.of = load ptr, ptr %i.oe, align 8
  %i.og = ptrtoint ptr %i.od to i64
  %i.oh = ptrtoint ptr %i.of to i64
  %i.oi = sub i64 %i.og, %i.oh                    ; 2 uses
  %i.oj = and i64 %i.oi, 4294967295
  %i.ok = icmp eq i64 %i.oj, 0
  br i1 %i.ok, label %.thread, label %bb.ck

.thread:                                          ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit64
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %.loopexit

bb.ck:                                            ; preds = %._crit_edge, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit64
  %.pre-phi130 = phi i64 [ %.pre129, %._crit_edge ], [ %i.oi, %_ZN6Assimp12StreamReaderILb0ELb0EE12SetReadLimitEj.exit64 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.ol = and i64 %.pre-phi130, 4294967294
  %i.om = icmp samesign ult i64 %i.ol, 6
  br i1 %i.om, label %.loopexit, label %bb.b

bb.cl:                                            ; preds = %bb.bu, %bb.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30 ], [ %lpad.phi109, %bb.am ], [ %lpad.phi, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %common.resume

.loopexit:                                        ; preds = %bb.ck, %bb.a, %.thread
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_Z12ai_to_stringImENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 noundef %1) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %1)
          to label %_ZNSolsEm.exit unwind label %bb.e ; 0 uses

_ZNSolsEm.exit:                                   ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !32)
  call void @llvm.experimental.noalias.scope.decl(metadata !35)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !alias.scope !38
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !alias.scope !38
  store i8 0, ptr %i.b, align 8, !alias.scope !38
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !noalias !38 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !noalias !38 ; 2 uses
  %i.h = icmp ugt ptr %i.e, %i.g
  %.08.i.i.i = select i1 %i.h, ptr %i.e, ptr %i.g ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZNSolsEm.exit
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !noalias !38 ; 2 uses
  %i.k = ptrtoint ptr %.08.i.i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.j, i64 noundef %i.m)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !alias.scope !38 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.b
  br i1 %i.q, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.r = load i64, ptr %i.b, align 8, !alias.scope !38
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #29
  br label %.body

bb.d:                                             ; preds = %_ZNSolsEm.exit
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.u = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.u, ptr %2, align 8
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.w = getelementptr i8, ptr %i.u, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %2, i64 %i.x
  store ptr %i.v, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ae = load i64, ptr %i.ac, align 8
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #29
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.z, align 8
end_hunk_1
