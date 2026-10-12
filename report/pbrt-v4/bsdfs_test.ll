Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/bsdfs_test?download=true
inline.NumInlined: 3152
inline.NumDeleted: 1010
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZNK4pbrt21NormalizedFresnelBxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE:bb.a
bb.a:
  %i.a = and i32 %7, 1
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %0, i8 0, i64 44, i1 false)
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !392
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.c = fmul <2 x float> %5, splat (float 2.000000e+00)
  %i.d = fadd <2 x float> %i.c, splat (float -1.000000e+00) ; 3 uses
  %i.e = extractelement <2 x float> %i.d, i64 0   ; 4 uses
  %i.f = fcmp oeq float %i.e, 0.000000e+00
  %i.g = extractelement <2 x float> %i.d, i64 1   ; 4 uses
  %i.h = fcmp oeq float %i.g, 0.000000e+00
  %or.cond.i.i = select i1 %i.f, i1 %i.h, i1 false
  br i1 %or.cond.i.i, label %_ZN4pbrt22SampleCosineHemisphereENS_6Point2IfEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.d) ; 2 uses
  %shift = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.j = fcmp ogt <2 x float> %i.i, %shift
  %i.k = extractelement <2 x i1> %i.j, i64 0
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = fdiv float %i.g, %i.e
  %i.m = fmul float %i.l, f0x3F490FDB
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.n = fdiv float %i.e, %i.g
  %i.o = fmul float %i.n, f0x3F490FDB
  %i.p = fsub float f0x3FC90FDB, %i.o
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.024.i.i = phi float [ %i.m, %bb.e ], [ %i.p, %bb.f ] ; 2 uses
  %.0.i.i = phi float [ %i.e, %bb.e ], [ %i.g, %bb.f ] ; 2 uses
  %i.q = tail call noundef float @cosf(float noundef %.024.i.i) #31
  %i.r = tail call noundef float @sinf(float noundef %.024.i.i) #31
  %i.s = fmul float %.0.i.i, %i.q
  %i.t = fmul float %.0.i.i, %i.r
  %.sroa.0.0.vec.insert.i.i29.i.i = insertelement <2 x float> poison, float %i.s, i64 0
  %.sroa.0.4.vec.insert.i.i30.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i29.i.i, float %i.t, i64 1
  br label %_ZN4pbrt22SampleCosineHemisphereENS_6Point2IfEE.exit

_ZN4pbrt22SampleCosineHemisphereENS_6Point2IfEE.exit: ; preds = %bb.c, %bb.g
  %.sroa.035.0.i.i = phi <2 x float> [ %.sroa.0.4.vec.insert.i.i30.i.i, %bb.g ], [ zeroinitializer, %bb.c ] ; 3 uses
  %i.u = fmul <2 x float> %.sroa.035.0.i.i, %.sroa.035.0.i.i ; 2 uses
  %i.v = extractelement <2 x float> %i.u, i64 0
  %i.w = fsub float 1.000000e+00, %i.v
  %i.x = extractelement <2 x float> %i.u, i64 1
  %i.y = fsub float %i.w, %i.x                    ; 2 uses
  %i.z = fcmp ogt float %i.y, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.z, float %i.y, float 0.000000e+00
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i) ; 3 uses
  %i.aa = fcmp olt float %3, 0.000000e+00
  %i.ab = fneg float %sqrt.i.i
  %spec.select = select i1 %i.aa, float %i.ab, float %sqrt.i.i ; 5 uses
  %i.ac = fmul float %3, %spec.select
  %i.ad = fcmp ogt float %i.ac, 0.000000e+00      ; 2 uses
  br i1 %i.ad, label %bb.h, label %_ZNK4pbrt21NormalizedFresnelBxDF1fENS_7Vector3IfEES2_NS_13TransportModeE.exit

bb.h:                                             ; preds = %_ZN4pbrt22SampleCosineHemisphereENS_6Point2IfEE.exit
  %i.ae = load float, ptr %1, align 4, !tbaa !394
  %i.af = fdiv float 1.000000e+00, %i.ae
  %i.ag = tail call noundef float @_ZN4pbrt14FresnelMoment1Ef(float noundef %i.af)
  %i.ah = fmul float %i.ag, 2.000000e+00
  %i.ai = fsub float 1.000000e+00, %i.ah
  %i.aj = load float, ptr %1, align 4, !tbaa !394 ; 4 uses
  %i.ak = fcmp olt float %spec.select, -1.000000e+00
  %i.al = fcmp ogt float %spec.select, 1.000000e+00
  %..i.i.i = select i1 %i.al, float 1.000000e+00, float %spec.select
  %.0.i.i.i = select i1 %i.ak, float -1.000000e+00, float %..i.i.i ; 3 uses
  %i.am = fcmp olt float %.0.i.i.i, 0.000000e+00  ; 2 uses
  %i.an = fdiv float 1.000000e+00, %i.aj
  %i.ao = fneg float %.0.i.i.i
  %.025.i.i = select i1 %i.am, float %i.an, float %i.aj ; 4 uses
  %.024.i.i37 = select i1 %i.am, float %i.ao, float %.0.i.i.i ; 5 uses
  %i.ap = fmul float %.024.i.i37, %.024.i.i37
  %i.aq = fsub float 1.000000e+00, %i.ap
  %i.ar = fmul float %.025.i.i, %.025.i.i
  %i.as = fdiv float %i.aq, %i.ar                 ; 2 uses
  %i.at = fcmp ult float %i.as, 1.000000e+00
  br i1 %i.at, label %bb.i, label %_ZN4pbrt12FrDielectricEff.exit.i

bb.i:                                             ; preds = %bb.h
  %i.au = fsub float 1.000000e+00, %i.as          ; 2 uses
  %i.av = fcmp ogt float %i.au, 0.000000e+00
  %.sroa.speculated.i.i.i = select i1 %i.av, float %i.au, float 0.000000e+00
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i.i) ; 3 uses
  %i.aw = fmul float %.024.i.i37, %.025.i.i       ; 2 uses
  %i.ax = fsub float %i.aw, %sqrt.i.i.i
  %i.ay = fadd float %i.aw, %sqrt.i.i.i
  %i.az = fdiv float %i.ax, %i.ay                 ; 2 uses
  %i.ba = fmul float %.025.i.i, %sqrt.i.i.i       ; 2 uses
  %i.bb = fsub float %.024.i.i37, %i.ba
  %i.bc = fadd float %.024.i.i37, %i.ba
  %i.bd = fdiv float %i.bb, %i.bc                 ; 2 uses
  %i.be = fmul float %i.az, %i.az
  %i.bf = fmul float %i.bd, %i.bd
  %i.bg = fadd float %i.be, %i.bf
  %i.bh = fmul float %i.bg, 5.000000e-01
  br label %_ZN4pbrt12FrDielectricEff.exit.i

_ZN4pbrt12FrDielectricEff.exit.i:                 ; preds = %bb.i, %bb.h
  %.0.i.i38 = phi float [ %i.bh, %bb.i ], [ 1.000000e+00, %bb.h ]
  %i.bi = fsub float 1.000000e+00, %.0.i.i38
  %i.bj = fmul float %i.ai, f0x40490FDB
  %i.bk = fdiv float %i.bi, %i.bj                 ; 2 uses
  %.sroa.0.0.vec.insert22.i = insertelement <2 x float> poison, float %i.bk, i64 0
  %.sroa.0.4.vec.insert27.i = shufflevector <2 x float> %.sroa.0.0.vec.insert22.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bl = icmp eq i32 %6, 0
  br i1 %i.bl, label %bb.j, label %_ZNK4pbrt21NormalizedFresnelBxDF1fENS_7Vector3IfEES2_NS_13TransportModeE.exit

bb.j:                                             ; preds = %_ZN4pbrt12FrDielectricEff.exit.i
  %i.bm = fmul float %i.aj, %i.aj
  %i.bn = fmul float %i.bm, %i.bk
  %.sroa.0.0.vec.insert25.i = insertelement <2 x float> poison, float %i.bn, i64 0
  %.sroa.0.4.vec.insert30.i = shufflevector <2 x float> %.sroa.0.0.vec.insert25.i, <2 x float> poison, <2 x i32> zeroinitializer
  br label %_ZNK4pbrt21NormalizedFresnelBxDF1fENS_7Vector3IfEES2_NS_13TransportModeE.exit

_ZNK4pbrt21NormalizedFresnelBxDF1fENS_7Vector3IfEES2_NS_13TransportModeE.exit: ; preds = %_ZN4pbrt22SampleCosineHemisphereENS_6Point2IfEE.exit, %_ZN4pbrt12FrDielectricEff.exit.i, %bb.j
  %.sroa.9.0.i = phi <2 x float> [ %.sroa.0.4.vec.insert30.i, %bb.j ], [ %.sroa.0.4.vec.insert27.i, %_ZN4pbrt12FrDielectricEff.exit.i ], [ zeroinitializer, %_ZN4pbrt22SampleCosineHemisphereENS_6Point2IfEE.exit ] ; 2 uses
  %i.bo = tail call float @llvm.fabs.f32(float %sqrt.i.i)
  %i.bp = fmul float %i.bo, f0x3EA2F983
  %.0.i = select i1 %i.ad, float %i.bp, float 0.000000e+00
  store <2 x float> %.sroa.9.0.i, ptr %0, align 4
  %.sroa.27.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %.sroa.9.0.i, ptr %.sroa.27.0..sroa_idx.i, align 4, !tbaa !77
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %.sroa.035.0.i.i, ptr %i.bq, align 4
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %spec.select, ptr %.sroa.25.0..sroa_idx.i, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %.0.i, ptr %i.br, align 4, !tbaa !156
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 5, ptr %i.bs, align 4, !tbaa !50
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float 1.000000e+00, ptr %i.bt, align 4, !tbaa !392
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.bu, align 4, !tbaa !395
  br label %bb.k

bb.k:                                             ; preds = %_ZNK4pbrt21NormalizedFresnelBxDF1fENS_7Vector3IfEES2_NS_13TransportModeE.exit, %bb.b
  ret void
}

declare noundef float @_ZN4pbrt14FresnelMoment1Ef(float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @acosf(float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #14

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4pbrt4Disk14BasicIntersectERKNS_3RayEf(ptr dead_on_unwind noalias writable sret(%"class.pstd::optional.93") align 4 %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, float noundef %3) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %4 = alloca %"class.pbrt::Point3fi", align 16   ; 7 uses
  %5 = alloca %"class.pbrt::Point3fi", align 8    ; 6 uses
  %6 = alloca %"class.pbrt::Vector3fi", align 16  ; 7 uses
  %7 = alloca %"class.pbrt::Vector3fi", align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.c = load <1 x float>, ptr %2, align 8
  %.sroa.07.4.vec.insert.i = shufflevector <1 x float> %i.c, <1 x float> poison, <2 x i32> zeroinitializer
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = load <1 x float>, ptr %i.d, align 4
  %.sroa.05.4.vec.insert.i = shufflevector <1 x float> %i.e, <1 x float> poison, <2 x i32> zeroinitializer
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load <1 x float>, ptr %i.f, align 8
  %.sroa.0.4.vec.insert.i = shufflevector <1 x float> %i.g, <1 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %.sroa.07.4.vec.insert.i, ptr %5, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %.sroa.05.4.vec.insert.i, ptr %i.h, align 8, !tbaa !28
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %i.i, align 8, !tbaa !28
  call void @_ZNK4pbrt9TransformclERKNS_8Point3fiE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Point3fi") align 4 %4, ptr noundef nonnull align 4 dereferenceable(128) %i.b, ptr noundef nonnull align 4 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.029.0.copyload = load <2 x float>, ptr %i.k, align 4 ; 2 uses
  %.sroa.230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  %8 = load <1 x float>, ptr %.sroa.230.0..sroa_idx, align 4
  %.sroa.05.4.vec.insert.i38 = shufflevector <2 x float> %.sroa.029.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %.sroa.03.4.vec.insert.i = shufflevector <2 x float> %.sroa.029.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %.sroa.0.4.vec.insert.i40 = shufflevector <1 x float> %8, <1 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %.sroa.05.4.vec.insert.i38, ptr %7, align 8, !tbaa !28
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <2 x float> %.sroa.03.4.vec.insert.i, ptr %i.l, align 8, !tbaa !28
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16
  store <2 x float> %.sroa.0.4.vec.insert.i40, ptr %i.m, align 8, !tbaa !28
  call void @_ZNK4pbrt9TransformclERKNS_9Vector3fiE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Vector3fi") align 4 %6, ptr noundef nonnull align 4 dereferenceable(128) %i.j, ptr noundef nonnull align 4 dereferenceable(24) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.o = load float, ptr %i.n, align 16, !tbaa !166
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.q = load float, ptr %i.p, align 4, !tbaa !167
  %i.r = fadd float %i.o, %i.q
  %i.s = fmul float %i.r, 5.000000e-01            ; 3 uses
  %i.t = fcmp oeq float %i.s, 0.000000e+00
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.v = load float, ptr %i.u, align 4, !tbaa !396
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.x = load float, ptr %i.w, align 16, !tbaa !166
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.z = load float, ptr %i.y, align 4, !tbaa !167
  %i.aa = fadd float %i.x, %i.z
  %i.ab = fmul float %i.aa, 5.000000e-01          ; 2 uses
  %i.ac = fsub float %i.v, %i.ab
  %i.ad = fdiv float %i.ac, %i.s                  ; 5 uses
  %i.ae = fcmp ugt float %i.ad, 0.000000e+00
  %i.af = fcmp ult float %i.ad, %3
  %or.cond = and i1 %i.ae, %i.af
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %.sroa.047.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.sroa.043.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ag = fmul float %i.ad, %i.s
  %i.ah = load <2 x float>, ptr %.sroa.047.sroa.2.0..sroa_idx, align 4
  %i.ai = load <4 x float>, ptr %4, align 16
  %i.aj = shufflevector <4 x float> %i.ai, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.ak = fadd <2 x float> %i.ah, %i.aj
  %i.al = fmul <2 x float> %i.ak, splat (float 5.000000e-01)
  %i.am = load <2 x float>, ptr %.sroa.043.sroa.2.0..sroa_idx, align 4
  %i.an = load <4 x float>, ptr %6, align 16
  %i.ao = shufflevector <4 x float> %i.an, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.ap = fadd <2 x float> %i.am, %i.ao
  %i.aq = fmul <2 x float> %i.ap, splat (float 5.000000e-01)
  %i.ar = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer
  %i.at = fmul <2 x float> %i.as, %i.aq
  %i.au = fadd <2 x float> %i.al, %i.at           ; 5 uses
  %i.av = fadd float %i.ab, %i.ag
  %i.aw = fmul <2 x float> %i.au, %i.au           ; 2 uses
  %shift = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.aw, %shift
  %i.ax = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.az = load float, ptr %i.ay, align 8, !tbaa !168 ; 2 uses
  %i.ba = fmul float %i.az, %i.az
  %i.bb = fcmp ogt float %i.ax, %i.ba
  br i1 %i.bb, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !169 ; 2 uses
  %i.be = fmul float %i.bd, %i.bd
  %i.bf = fcmp olt float %i.ax, %i.be
  br i1 %i.bf, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.bg = extractelement <2 x float> %i.au, i64 0
  %i.bh = extractelement <2 x float> %i.au, i64 1
  %i.bi = call noundef float @atan2f(float noundef %i.bh, float noundef %i.bg) #31 ; 3 uses
  %i.bj = fcmp olt float %i.bi, 0.000000e+00
  %i.bk = fadd float %i.bi, f0x40C90FDB
  %spec.select = select i1 %i.bj, float %i.bk, float %i.bi ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !170
  %i.bn = fcmp ogt float %spec.select, %i.bm
  br i1 %i.bn, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 1, ptr %i.bo, align 4, !tbaa !112
  store float %i.ad, ptr %0, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store <2 x float> %i.au, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.av, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %spec.select, ptr %.sroa.6.0..sroa_idx, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.d, %bb.i, %bb.j, %bb.g, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4pbrt4Disk27InteractionFromIntersectionERKNS_19QuadricIntersectionENS_7Vector3IfEEf(ptr dead_on_unwind noalias writable sret(%"class.pbrt::SurfaceInteraction") align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(20) %2, <2 x float> %3, float %4, float noundef %5) local_unnamed_addr #6 comdat align 2 {
_ZN4pbrt8Point3fiC2ENS_6Point3IfEENS_7Vector3IfEE.exit:
  %6 = alloca %"class.pbrt::SurfaceInteraction", align 8 ; 27 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.040.0.copyload = load <2 x float>, ptr %i.a, align 4 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load float, ptr %i.b, align 4, !tbaa !397
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load float, ptr %i.d, align 8, !tbaa !170 ; 2 uses
  %i.f = fmul <2 x float> %.sroa.040.0.copyload, %.sroa.040.0.copyload ; 2 uses
  %shift = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.f, %shift
  %i.g = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load float, ptr %i.h, align 8, !tbaa !168 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.k = load float, ptr %i.j, align 4, !tbaa !169 ; 2 uses
  %i.l = fsub float %i.i, %i.k
  %i.m = fneg float %i.e
  %i.n = fsub float %i.k, %i.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 20
  %7 = load <1 x float>, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load i8, ptr %i.p, align 8, !tbaa !105, !range !42, !noundef !43
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.s = load i8, ptr %i.r, align 1, !tbaa !106, !range !42, !noundef !43
  %.not = icmp eq i8 %i.q, %i.s
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !104  ; 4 uses
  %i.v = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 20
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.y = load <2 x float>, ptr %i.x, align 4, !tbaa !28
  %i.z = fmul <2 x float> %3, %i.y                ; 2 uses
  %shift103 = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop104 = fadd <2 x float> %i.z, %shift103
  %i.aa = extractelement <2 x float> %foldExtExtBinop104, i64 0
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !28
  %i.ad = fmul float %4, %i.ac
  %i.ae = fadd float %i.aa, %i.ad                 ; 3 uses
  %i.af = load ptr, ptr %1, align 8, !tbaa !103
  %.sroa.0.0.vec.insert.i.i = shufflevector <2 x float> %.sroa.040.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %.sroa.0.0.vec.insert.i24.i = shufflevector <2 x float> %.sroa.040.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %.sroa.0.0.vec.insert.i41.i = shufflevector <1 x float> %7, <1 x float> poison, <2 x i32> zeroinitializer
  %sqrt = tail call float @llvm.sqrt.f32(float %i.g) ; 2 uses
  %i.ag = fsub float %i.i, %sqrt
  %i.ah = insertelement <2 x float> poison, float %i.c, i64 0
  %i.ai = insertelement <2 x float> %i.ah, float %i.ag, i64 1
  %i.aj = insertelement <2 x float> poison, float %i.e, i64 0 ; 2 uses
  %i.ak = insertelement <2 x float> %i.aj, float %i.l, i64 1
  %i.al = fdiv <2 x float> %i.ai, %i.ak
  %i.am = insertelement <2 x float> %i.aj, float %i.m, i64 1
  %i.an = fmul <2 x float> %.sroa.040.0.copyload, %i.am ; 3 uses
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.ap = insertelement <2 x float> poison, float %i.n, i64 0
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ar = fmul <2 x float> %.sroa.040.0.copyload, %i.aq
  %i.as = shufflevector <2 x float> %.sroa.040.0.copyload, <2 x float> <float 0.000000e+00, float poison>, <2 x i32> <i32 2, i32 0>
  %i.at = fmul <2 x float> %i.as, %i.aq
  %i.au = insertelement <2 x float> poison, float %sqrt, i64 0
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aw = fdiv <2 x float> %i.ar, %i.av           ; 4 uses
  %i.ax = fdiv <2 x float> %i.at, %i.av           ; 3 uses
  %i.ay = extractelement <2 x float> %i.aw, i64 1 ; 2 uses
  %i.az = fmul float %i.ay, 0.000000e+00          ; 2 uses
  %i.ba = fneg float %i.az
  %i.bb = extractelement <2 x float> %i.an, i64 0
  %i.bc = extractelement <2 x float> %i.ax, i64 0 ; 3 uses
  %i.bd = tail call noundef float @llvm.fma.f32(float %i.bb, float %i.bc, float %i.ba)
  %i.be = tail call noundef float @llvm.fma.f32(float %i.ay, float -0.000000e+00, float %i.az)
  %i.bf = fadd float %i.bd, %i.be                 ; 3 uses
  %i.bg = fmul <2 x float> %i.ao, %i.ax           ; 2 uses
  %i.bh = fneg <2 x float> %i.bg
  %i.bi = insertelement <2 x float> %i.an, float 0.000000e+00, i64 0
  %i.bj = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.aw, <2 x float> %i.bi, <2 x float> %i.bh)
  %i.bk = fneg <2 x float> %i.ao
  %i.bl = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.bk, <2 x float> %i.ax, <2 x float> %i.bg)
  %i.bm = fadd <2 x float> %i.bj, %i.bl           ; 3 uses
  %i.bn = fmul float %i.bf, %i.bf
  %i.bo = fmul <2 x float> %i.bm, %i.bm           ; 2 uses
  %i.bp = extractelement <2 x float> %i.bo, i64 0
  %i.bq = fadd float %i.bn, %i.bp
  %i.br = extractelement <2 x float> %i.bo, i64 1
  %i.bs = fadd float %i.br, %i.bq
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.bs) ; 2 uses
  %i.bt = fdiv float %i.bf, %sqrt.i.i.i           ; 2 uses
  %i.bu = insertelement <2 x float> poison, float %sqrt.i.i.i, i64 0
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bw = fdiv <2 x float> %i.bm, %i.bv           ; 3 uses
  %.sroa.0.0.vec.insert.i64 = insertelement <2 x float> poison, float %i.bt, i64 0
  %i.bx = shufflevector <2 x float> %.sroa.0.0.vec.insert.i64, <2 x float> %i.bw, <2 x i32> <i32 0, i32 2>
  %.sroa.484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.ca = fmul float %i.ae, %i.ae
  %i.cb = tail call <5 x float> @llvm.masked.load.v5f32.p0(ptr align 4 %i.u, <5 x i1> <i1 true, i1 true, i1 true, i1 false, i1 true>, <5 x float> poison), !tbaa !28 ; 3 uses
  %i.cc = shufflevector <5 x float> %i.cb, <5 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cd = shufflevector <5 x float> %i.cb, <5 x float> poison, <2 x i32> <i32 1, i32 4>
  %i.ce = fmul <2 x float> %i.v, %i.cd
  %i.cf = load <2 x float>, ptr %i.w, align 4, !tbaa !28 ; 2 uses
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ch = shufflevector <4 x float> %i.cc, <4 x float> %i.cg, <2 x i32> <i32 0, i32 4>
  %i.ci = fmul <2 x float> %3, %i.ch
  %i.cj = fadd <2 x float> %i.ce, %i.ci
  %i.ck = insertelement <2 x float> poison, float %4, i64 0
  %i.cl = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cm = shufflevector <2 x float> %i.cf, <2 x float> poison, <5 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison>
  %i.cn = shufflevector <5 x float> %i.cb, <5 x float> %i.cm, <2 x i32> <i32 2, i32 6>
  %i.co = fmul <2 x float> %i.cl, %i.cn
  %i.cp = fadd <2 x float> %i.cj, %i.co           ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  store <2 x float> %.sroa.0.0.vec.insert.i.i, ptr %6, align 8
  store <2 x float> %.sroa.0.0.vec.insert.i24.i, ptr %.sroa.484.0..sroa_idx, align 8
  store <2 x float> %.sroa.0.0.vec.insert.i41.i, ptr %.sroa.585.0..sroa_idx, align 8
  store float %5, ptr %i.by, align 8, !tbaa !398
  %i.cq = fmul <2 x float> %i.cp, %i.cp           ; 2 uses
  %shift106 = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop107 = fadd <2 x float> %i.cq, %shift106
  %i.cr = extractelement <2 x float> %foldExtExtBinop107, i64 0
  %i.cs = fadd float %i.cr, %i.ca
  %sqrt.i.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.cs) ; 2 uses
  %i.ct = insertelement <2 x float> poison, float %sqrt.i.i.i.i, i64 0
  %i.cu = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cv = fdiv <2 x float> %i.cp, %i.cu
  %i.cw = fdiv float %i.ae, %sqrt.i.i.i.i
  store <2 x float> %i.cv, ptr %i.bz, align 4
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 36
  store float %i.cw, ptr %.sroa.2.0..sroa_idx.i.i, align 4
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  store <2 x float> %i.bx, ptr %i.cx, align 8
  %.sroa.214.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.cy = extractelement <2 x float> %i.bw, i64 1
  store float %i.cy, ptr %.sroa.214.0..sroa_idx.i.i, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 52
  store <2 x float> %i.al, ptr %i.cz, align 4
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.da, i8 0, i64 16, i1 false)
  %i.db = getelementptr inbounds nuw i8, ptr %6, i64 80
  store <2 x float> %i.ao, ptr %i.db, align 8
  %.sroa.439.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 88
  store float 0.000000e+00, ptr %.sroa.439.0..sroa_idx.i, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %6, i64 92
  store <2 x float> %i.aw, ptr %i.dc, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 100
  store float %i.bc, ptr %.sroa.4.0..sroa_idx.i, align 4
  %i.dd = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.de = getelementptr inbounds nuw i8, ptr %6, i64 128 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %6, i64 188
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %i.df, i8 0, i64 60, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dd, i8 0, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.de, ptr noundef nonnull align 8 dereferenceable(12) %i.cx, i64 12, i1 false)
  %i.dg = getelementptr inbounds nuw i8, ptr %6, i64 140
  store <2 x float> %i.ao, ptr %i.dg, align 4
  %.sroa.439.0..sroa_idx40.i = getelementptr inbounds nuw i8, ptr %6, i64 148
  store float 0.000000e+00, ptr %.sroa.439.0..sroa_idx40.i, align 4
  %i.dh = getelementptr inbounds nuw i8, ptr %6, i64 152
  store <2 x float> %i.aw, ptr %i.dh, align 8
  %.sroa.4.0..sroa_idx33.i = getelementptr inbounds nuw i8, ptr %6, i64 160
  store float %i.bc, ptr %.sroa.4.0..sroa_idx33.i, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 164
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.di, i8 0, i64 24, i1 false)
  br i1 %.not, label %_ZN4pbrt18SurfaceInteractionC2ENS_8Point3fiENS_6Point2IfEENS_7Vector3IfEES5_S5_NS_7Normal3IfEES7_fb.exit, label %bb.a

bb.a:                                             ; preds = %_ZN4pbrt8Point3fiC2ENS_6Point3IfEENS_7Vector3IfEE.exit
  %i.dj = fneg float %i.bt
  store float %i.dj, ptr %i.cx, align 8, !tbaa !399
  %i.dk = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.dl = fneg <2 x float> %i.bw
  store <2 x float> %i.dl, ptr %i.dk, align 4, !tbaa !28
  %i.dm = load <2 x float>, ptr %i.de, align 8, !tbaa !28
  %i.dn = fneg <2 x float> %i.dm
  store <2 x float> %i.dn, ptr %i.de, align 8, !tbaa !28
  %i.do = getelementptr inbounds nuw i8, ptr %6, i64 136 ; 2 uses
  %i.dp = load float, ptr %i.do, align 8, !tbaa !400
  %i.dq = fneg float %i.dp
  store float %i.dq, ptr %i.do, align 8, !tbaa !400
  br label %_ZN4pbrt18SurfaceInteractionC2ENS_8Point3fiENS_6Point2IfEENS_7Vector3IfEES5_S5_NS_7Normal3IfEES7_fb.exit

_ZN4pbrt18SurfaceInteractionC2ENS_8Point3fiENS_6Point2IfEENS_7Vector3IfEES5_S5_NS_7Normal3IfEES7_fb.exit: ; preds = %_ZN4pbrt8Point3fiC2ENS_6Point3IfEENS_7Vector3IfEE.exit, %bb.a
  call void @_ZNK4pbrt9TransformclERKNS_18SurfaceInteractionE(ptr dead_on_unwind writable sret(%"class.pbrt::SurfaceInteraction") align 8 %0, ptr noundef nonnull align 4 dereferenceable(128) %i.af, ptr noundef nonnull align 8 dereferenceable(248) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4pbrt9TransformclERKNS_8Point3fiE(ptr dead_on_unwind noalias writable sret(%"class.pbrt::Point3fi") align 4 %0, ptr noundef nonnull align 4 dereferenceable(128) %1, ptr noundef nonnull align 4 dereferenceable(24) %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %3 = alloca %"class.pbrt::Point3.29", align 8   ; 2 uses
  %4 = alloca %"class.pbrt::Point3fi", align 8    ; 6 uses
  %i.a = load float, ptr %2, align 4, !tbaa !166  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = load float, ptr %i.b, align 4, !tbaa !167 ; 2 uses
  %i.d = fadd float %i.a, %i.c
  %i.e = fmul float %i.d, 5.000000e-01            ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !166 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.i = load float, ptr %i.h, align 4, !tbaa !167 ; 2 uses
  %i.j = fadd float %i.g, %i.i
  %i.k = fmul float %i.j, 5.000000e-01            ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = load float, ptr %i.l, align 4, !tbaa !166 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.o = load float, ptr %i.n, align 4, !tbaa !167 ; 3 uses
  %i.p = fadd float %i.m, %i.o
  %i.q = fmul float %i.p, 5.000000e-01            ; 4 uses
  %i.r = load float, ptr %1, align 4, !tbaa !28   ; 2 uses
  %i.s = fmul float %i.e, %i.r                    ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.u = load float, ptr %i.t, align 4, !tbaa !28 ; 2 uses
  %i.v = fmul float %i.k, %i.u                    ; 3 uses
  %i.w = fadd float %i.s, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load float, ptr %i.x, align 4, !tbaa !28 ; 2 uses
  %i.z = fmul float %i.q, %i.y                    ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !28 ; 3 uses
  %i.ac = fadd float %i.z, %i.ab
  %i.ad = fadd float %i.w, %i.ac                  ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load float, ptr %i.ae, align 4, !tbaa !28 ; 2 uses
  %i.ag = fmul float %i.e, %i.af                  ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !28 ; 2 uses
  %i.aj = fmul float %i.k, %i.ai                  ; 3 uses
  %i.ak = fadd float %i.ag, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.am = load float, ptr %i.al, align 4, !tbaa !28 ; 2 uses
  %i.an = fmul float %i.q, %i.am                  ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !28 ; 3 uses
  %i.aq = fadd float %i.an, %i.ap
  %i.ar = fadd float %i.ak, %i.aq                 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.at = load float, ptr %i.as, align 4, !tbaa !28 ; 2 uses
  %i.au = fmul float %i.e, %i.at                  ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.aw = load float, ptr %i.av, align 4, !tbaa !28 ; 2 uses
  %i.ax = fmul float %i.k, %i.aw                  ; 3 uses
  %i.ay = fadd float %i.au, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ba = load float, ptr %i.az, align 4, !tbaa !28 ; 2 uses
  %i.bb = fmul float %i.q, %i.ba                  ; 3 uses
end_hunk_0
