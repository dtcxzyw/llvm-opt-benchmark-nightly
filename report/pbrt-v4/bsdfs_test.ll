Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/bsdfs_test?download=true
inline.NumInlined: 3152
inline.NumDeleted: 1010
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN4pbrt6detail8DispatchIRZNKS_4BxDF3PDFENS_7Vector3IfEES4_NS_13TransportModeENS_18BxDFReflTransFlagsEEUlT_E_fNS_23DiffuseTransmissionBxDFENS_11DiffuseBxDFENS_17CoatedDiffuseBxDFENS_19CoatedConductorBxDFENS_14DielectricBxDFENS_18ThinDielectricBxDFENS_8HairBxDFENS_12MeasuredBxDFEJNS_13ConductorBxDFENS_21NormalizedFresnelBxDFEEvEET0_OS7_PKvi:bb.a
  %i.cx = load ptr, ptr %0, align 8, !tbaa !430, !nonnull !43, !align !157 ; 3 uses
  br i1 %i.cw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.sroa.05.0.copyload.i.i = load <2 x float>, ptr %i.cx, align 4
  %.sroa.26.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %.sroa.26.0.copyload.i.i = load float, ptr %.sroa.26.0..sroa_idx.i.i, align 4
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !429, !nonnull !43, !align !157 ; 2 uses
  %.sroa.03.0.copyload.i.i = load <2 x float>, ptr %i.cz, align 4
  %.sroa.24.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %.sroa.24.0.copyload.i.i = load float, ptr %.sroa.24.0..sroa_idx.i.i, align 4
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !431, !nonnull !43, !align !157
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !54
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !428, !nonnull !43, !align !157
  %i.df = load i32, ptr %i.de, align 4, !tbaa !56
  %i.dg = tail call noundef float @_ZNK4pbrt13ConductorBxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsE(ptr noundef nonnull align 4 dereferenceable(40) %1, <2 x float> %.sroa.05.0.copyload.i.i, float %.sroa.26.0.copyload.i.i, <2 x float> %.sroa.03.0.copyload.i.i, float %.sroa.24.0.copyload.i.i, i32 noundef %i.dc, i32 noundef %i.df)
  br label %_ZZNK4pbrt4BxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsEENKUlT_E_clIPKNS_23DiffuseTransmissionBxDFEEEDaS5_.exit

bb.n:                                             ; preds = %bb.l
  %.sroa.26.0..sroa_idx.i5.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %.sroa.26.0.copyload.i6.i = load float, ptr %.sroa.26.0..sroa_idx.i5.i, align 4
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !429, !nonnull !43, !align !157
  %.sroa.24.0..sroa_idx.i7.i = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %.sroa.24.0.copyload.i8.i = load float, ptr %.sroa.24.0..sroa_idx.i7.i, align 4 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !428, !nonnull !43, !align !157
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !56
  %.not.i.i.i = trunc i32 %i.dl to i1
  %i.dm = fmul float %.sroa.26.0.copyload.i6.i, %.sroa.24.0.copyload.i8.i
  %i.dn = fcmp ogt float %i.dm, 0.000000e+00
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 %i.dn, i1 false
  %i.do = tail call float @llvm.fabs.f32(float %.sroa.24.0.copyload.i8.i)
  %i.dp = fmul float %i.do, f0x3EA2F983
  %.0.i.i.i = select i1 %or.cond.i.i.i, float %i.dp, float 0.000000e+00
  br label %_ZZNK4pbrt4BxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsEENKUlT_E_clIPKNS_23DiffuseTransmissionBxDFEEEDaS5_.exit

_ZZNK4pbrt4BxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsEENKUlT_E_clIPKNS_23DiffuseTransmissionBxDFEEEDaS5_.exit: ; preds = %bb.n, %bb.m, %bb.a, %bb.e, %bb.d, %bb.b, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.0 = phi float [ 0.000000e+00, %bb.a ], [ %i.cv, %bb.k ], [ %.0.i.i26, %bb.f ], [ %i.bh, %bb.g ], [ %i.br, %bb.h ], [ %i.cb, %bb.i ], [ 0.000000e+00, %bb.b ], [ %i.cl, %bb.j ], [ %i.an, %bb.e ], [ %i.al, %bb.d ], [ %i.dg, %bb.m ], [ %.0.i.i.i, %bb.n ]
  ret float %.0
}

; Function Attrs: mustprogress uwtable
declare noundef float @_ZNK4pbrt11LayeredBxDFINS_14DielectricBxDFENS_11DiffuseBxDFELb1EE3PDFENS_7Vector3IfEES5_NS_13TransportModeENS_18BxDFReflTransFlagsE(ptr noundef nonnull align 4 dereferenceable(60), <2 x float>, float, <2 x float>, float, i32 noundef, i32 noundef) local_unnamed_addr #6 align 2

declare noundef float @_ZNK4pbrt14DielectricBxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsE(ptr noundef nonnull align 4 dereferenceable(12), <2 x float>, float, <2 x float>, float, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
declare noundef float @_ZNK4pbrt11LayeredBxDFINS_14DielectricBxDFENS_13ConductorBxDFELb1EE3PDFENS_7Vector3IfEES5_NS_13TransportModeENS_18BxDFReflTransFlagsE(ptr noundef nonnull align 4 dereferenceable(84), <2 x float>, float, <2 x float>, float, i32 noundef, i32 noundef) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef float @_ZNK4pbrt13ConductorBxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsE(ptr noundef nonnull align 4 dereferenceable(40) %0, <2 x float> %1, float %2, <2 x float> %3, float %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = trunc i32 %6 to i1
  %i.a = fmul float %2, %4
  %i.b = fcmp ogt float %i.a, 0.000000e+00
  %or.cond = select i1 %.not, i1 %i.b, i1 false
  br i1 %or.cond, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load float, ptr %0, align 4, !tbaa !28   ; 2 uses
  %i.e = load float, ptr %i.c, align 4, !tbaa !28 ; 2 uses
  %i.f = fcmp olt float %i.d, %i.e
  %i.g = select i1 %i.f, float %i.e, float %i.d
  %i.h = fcmp olt float %i.g, 1.000000e-03
  br i1 %i.h, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = fadd <2 x float> %1, %3                  ; 3 uses
  %i.j = fadd float %2, %4                        ; 3 uses
  %i.k = load atomic i8, ptr @_ZGVZNK4pbrt13ConductorBxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsEE3reg acquire, align 8
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.g, !prof !165

bb.d:                                             ; preds = %bb.c
  %i.m = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK4pbrt13ConductorBxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsEE3reg) #31
  %.not70 = icmp eq i32 %i.m, 0
  br i1 %.not70, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZZNK4pbrt13ConductorBxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsEE3reg, ptr noundef nonnull @_ZZNK4pbrt13ConductorBxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsEENUlRNS_16StatsAccumulatorEE_8__invokeES6_, ptr noundef null)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK4pbrt13ConductorBxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsEE3reg) #31
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d, %bb.c
  %i.n = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZNK4pbrt13ConductorBxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsEE5total) ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !79
  %i.p = add nsw i64 %i.o, 1
  store i64 %i.p, ptr %i.n, align 8, !tbaa !79
  %i.q = fmul <2 x float> %i.i, %i.i              ; 2 uses
  %shift = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.q, %shift
  %i.r = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.s = fmul float %i.j, %i.j
  %i.t = fadd float %i.s, %i.r                    ; 2 uses
  %i.u = fcmp oeq float %i.t, 0.000000e+00
  br i1 %i.u, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.g
  %i.v = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZNK4pbrt13ConductorBxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsEE7numTrue) ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !79
  %i.x = add nsw i64 %i.w, 1
  store i64 %i.x, ptr %i.v, align 8, !tbaa !79
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZNK4pbrt13ConductorBxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsEE3reg) #31
  resume { ptr, i32 } %i.y

bb.i:                                             ; preds = %bb.g
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.t) ; 2 uses
  %i.z = fdiv float %i.j, %sqrt.i.i               ; 5 uses
  %i.aa = fneg float %i.z
  %i.ab = fsub float %i.z, %i.z
  %i.ac = insertelement <2 x float> poison, float %sqrt.i.i, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ae = fdiv <2 x float> %i.i, %i.ad            ; 4 uses
  %i.af = extractelement <2 x float> %i.ae, i64 1
  %i.ag = tail call noundef float @llvm.fma.f32(float %i.af, float 0.000000e+00, float %i.z)
  %i.ah = fadd float %i.ag, %i.ab
  %i.ai = extractelement <2 x float> %i.ae, i64 0
  %i.aj = tail call noundef float @llvm.fma.f32(float %i.ai, float 0.000000e+00, float %i.ah)
  %i.ak = fcmp olt float %i.aj, 0.000000e+00      ; 2 uses
  %i.al = fneg <2 x float> %i.ae
  %.sroa.0.4.vec.insert.i.pn.i = select i1 %i.ak, <2 x float> %i.al, <2 x float> %i.ae ; 2 uses
  %.pn.i = select i1 %i.ak, float %i.aa, float %i.z ; 2 uses
  %i.am = tail call noundef float @_ZNK4pbrt27TrowbridgeReitzDistribution1DENS_7Vector3IfEES2_(ptr noundef nonnull align 4 dereferenceable(8) %0, <2 x float> %1, float %2, <2 x float> %.sroa.0.4.vec.insert.i.pn.i, float %.pn.i)
  %i.an = fmul <2 x float> %1, %.sroa.0.4.vec.insert.i.pn.i ; 2 uses
  %shift87 = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop88 = fadd <2 x float> %i.an, %shift87
  %i.ao = extractelement <2 x float> %foldExtExtBinop88, i64 0
  %i.ap = fmul float %2, %.pn.i
  %i.aq = fadd float %i.ap, %i.ao
  %i.ar = tail call noundef float @llvm.fabs.f32(float %i.aq)
  %i.as = fmul float %i.ar, 4.000000e+00
  %i.at = fdiv float %i.am, %i.as
  br label %bb.j

bb.j:                                             ; preds = %.thread, %bb.i, %bb.b, %bb.a
  %.1 = phi float [ 0.000000e+00, %.thread ], [ 0.000000e+00, %bb.b ], [ 0.000000e+00, %bb.a ], [ %i.at, %bb.i ]
  ret float %.1
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZNK4pbrt13ConductorBxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsEENUlRNS_16StatsAccumulatorEE_8__invokeES6_(ptr noundef nonnull align 8 dereferenceable(8) %0) #12 comdat align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZNK4pbrt13ConductorBxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsEE7numTrue) ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !79
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZNK4pbrt13ConductorBxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsEE5total) ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !79
  tail call void @_ZN4pbrt16StatsAccumulator15ReportRareCheckEPKcfll(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.86, float noundef f0x3727C5AC, i64 noundef %i.b, i64 noundef %i.d)
  store i64 0, ptr %i.c, align 8, !tbaa !79
  store i64 0, ptr %i.a, align 8, !tbaa !79
  ret void
}

declare noundef float @_ZNK4pbrt8HairBxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsE(ptr noundef nonnull align 4 dereferenceable(76), <2 x float>, float, <2 x float>, float, i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef float @_ZNK4pbrt12MeasuredBxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsE(ptr noundef nonnull align 8 dereferenceable(40), <2 x float>, float, <2 x float>, float, i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPZ8Chi2TestB5cxx11PKfS3_iiiffiE4CellSt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZ8Chi2TestB5cxx11S3_S3_iiiffiE3$_0EEEvT_SE_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #25 {
bb.a:
  %3 = alloca %struct.Cell, align 8               ; 4 uses
  %4 = alloca %struct.Cell, align 8               ; 4 uses
  %5 = alloca %struct.Cell, align 8               ; 4 uses
  %6 = alloca %struct.Cell, align 8               ; 4 uses
  %7 = alloca %struct.Cell, align 8               ; 4 uses
  %8 = alloca %struct.Cell, align 8               ; 4 uses
  %9 = alloca %struct.Cell, align 8               ; 4 uses
  %.fr28 = freeze ptr %1                          ; 3 uses
  %.fr27 = freeze ptr %0                          ; 36 uses
  %i.a = ptrtoint ptr %.fr27 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr28 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPZ8Chi2TestB5cxx11PKfS3_iiiffiE4CellSt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ8Chi2TestB5cxx11S3_S3_iiiffiE3$_0EEEvT_SE_SE_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr27, i64 16 ; 6 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph43

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPZ8Chi2TestB5cxx11PKfS3_iiiffiE4CellSt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ8Chi2TestB5cxx11S3_S3_iiiffiE3$_0EEET_SE_SE_T0_.exit"
  %i.h = icmp eq i64 %i.bq, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph43, !llvm.loop !432

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i26.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.ce, %bb.b ] ; 3 uses
  %storemerge24.lcssa = phi ptr [ %.fr28, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.i = lshr i64 %.fr.i.i26.lcssa, 4             ; 2 uses
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 3 uses
  %i.l = add nsw i64 %i.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 2 uses
  %i.n = and i64 %.fr.i.i26.lcssa, 16
  %i.o = icmp eq i64 %i.n, 0
  %i.p = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %.fr27, i64 %i.p
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %.fr27, i64 %i.k
  br label %bb.c

bb.c:                                             ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZ8Chi2TestB5cxx11PKfS3_iiiffiE4CellSt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZ8Chi2TestB5cxx11S3_S3_iiiffiE3$_0EEEvT_T0_SF_T1_T2_.exit.i.i.i", %._crit_edge
  %.011.i.i.i = phi i64 [ %i.k, %._crit_edge ], [ %i.ak, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZ8Chi2TestB5cxx11PKfS3_iiiffiE4CellSt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZ8Chi2TestB5cxx11S3_S3_iiiffiE3$_0EEEvT_T0_SF_T1_T2_.exit.i.i.i" ] ; 8 uses
  %i.s = getelementptr inbounds [16 x i8], ptr %.fr27, i64 %.011.i.i.i ; 2 uses
  %.sroa.04.0.copyload.i.i.i = load float, ptr %i.s, align 8, !tbaa !28 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.5.0.copyload.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !tbaa !79
  %i.t = icmp slt i64 %.011.i.i.i, %i.m
  br i1 %i.t, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.042.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.011.i.i.i, %bb.c ] ; 2 uses
  %i.u = shl i64 %.042.i.i.i.i, 1                 ; 2 uses
  %i.v = add i64 %i.u, 2                          ; 2 uses
  %i.w = getelementptr inbounds [16 x i8], ptr %.fr27, i64 %i.v
  %i.x = or disjoint i64 %i.u, 1                  ; 2 uses
  %i.y = getelementptr inbounds [16 x i8], ptr %.fr27, i64 %i.x
  %.val2.i.i.i.i.i = load float, ptr %i.w, align 8, !tbaa !82
  %.val3.i.i.i.i.i = load float, ptr %i.y, align 8, !tbaa !82
  %i.z = fcmp olt float %.val2.i.i.i.i.i, %.val3.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.z, i64 %i.x, i64 %i.v ; 4 uses
  %i.aa = getelementptr inbounds [16 x i8], ptr %.fr27, i64 %spec.select.i.i.i.i
  %i.ab = getelementptr inbounds [16 x i8], ptr %.fr27, i64 %.042.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false), !tbaa.struct !80
  %i.ac = icmp slt i64 %spec.select.i.i.i.i, %i.m
  br i1 %i.ac, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !433

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ %.011.i.i.i, %bb.c ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ad = icmp eq i64 %.0.lcssa.i.i.i.i, %i.k
  %or.cond.i.i.i = select i1 %i.o, i1 %i.ad, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !80
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.p, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ae = icmp sgt i64 %.1.i.i.i.i, %.011.i.i.i
  br i1 %i.ae, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZ8Chi2TestB5cxx11PKfS3_iiiffiE4CellSt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZ8Chi2TestB5cxx11S3_S3_iiiffiE3$_0EEEvT_T0_SF_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.08.i.i.i.i.i = phi i64 [ %.099.i.i.i.i.i, %bb.f ], [ %.1.i.i.i.i, %bb.e ] ; 3 uses
  %.099.in.i.i.i.i.i = add nsw i64 %.08.i.i.i.i.i, -1
  %.099.i.i.i.i.i = sdiv i64 %.099.in.i.i.i.i.i, 2 ; 4 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %.fr27, i64 %.099.i.i.i.i.i ; 2 uses
  %.val2.i.i.i.i.i.i = load float, ptr %i.af, align 8, !tbaa !82
  %i.ag = fcmp olt float %.val2.i.i.i.i.i.i, %.sroa.04.0.copyload.i.i.i
  br i1 %i.ag, label %bb.f, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZ8Chi2TestB5cxx11PKfS3_iiiffiE4CellSt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZ8Chi2TestB5cxx11S3_S3_iiiffiE3$_0EEEvT_T0_SF_T1_T2_.exit.i.i.i"

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %.fr27, i64 %.08.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.af, i64 16, i1 false), !tbaa.struct !80
  %i.ai = icmp sgt i64 %.099.i.i.i.i.i, %.011.i.i.i
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZ8Chi2TestB5cxx11PKfS3_iiiffiE4CellSt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZ8Chi2TestB5cxx11S3_S3_iiiffiE3$_0EEEvT_T0_SF_T1_T2_.exit.i.i.i", !llvm.loop !434

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZ8Chi2TestB5cxx11PKfS3_iiiffiE4CellSt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZ8Chi2TestB5cxx11S3_S3_iiiffiE3$_0EEEvT_T0_SF_T1_T2_.exit.i.i.i": ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.08.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.099.i.i.i.i.i, %bb.f ]
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i.i.i ; 2 uses
  store float %.sroa.04.0.copyload.i.i.i, ptr %i.aj, align 8, !tbaa !28
  %.sroa.34.0..sroa.0.0..val13.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %.sroa.5.0.copyload.i.i.i, ptr %.sroa.34.0..sroa.0.0..val13.sroa_idx.i.i.i.i.i, align 8, !tbaa !79
  %.not.i.i.i = icmp eq i64 %.011.i.i.i, 0
  %i.ak = add nsw i64 %.011.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPZ8Chi2TestB5cxx11PKfS3_iiiffiE4CellSt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ8Chi2TestB5cxx11S3_S3_iiiffiE3$_0EEEvT_SE_RT0_.exit.i.i", label %bb.c, !llvm.loop !435

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPZ8Chi2TestB5cxx11PKfS3_iiiffiE4CellSt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ8Chi2TestB5cxx11S3_S3_iiiffiE3$_0EEEvT_SE_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPZ8Chi2TestB5cxx11PKfS3_iiiffiE4CellSt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZ8Chi2TestB5cxx11S3_S3_iiiffiE3$_0EEEvT_T0_SF_T1_T2_.exit.i.i.i"
  %10 = icmp sgt i64 %.fr.i.i26.lcssa, 16
  br i1 %10, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPZ8Chi2TestB5cxx11PKfS3_iiiffiE4CellSt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ8Chi2TestB5cxx11S3_S3_iiiffiE3$_0EEEvT_SE_SE_T0_.exit"

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPZ8Chi2TestB5cxx11PKfS3_iiiffiE4CellSt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ8Chi2TestB5cxx11S3_S3_iiiffiE3$_0EEEvT_SE_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZ8Chi2TestB5cxx11PKfS3_iiiffiE4CellSt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ8Chi2TestB5cxx11S3_S3_iiiffiE3$_0EEEvT_SE_SE_RT0_.exit.i.i"
  %.sroa.0.02.i.i = phi ptr [ %i.al, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZ8Chi2TestB5cxx11PKfS3_iiiffiE4CellSt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ8Chi2TestB5cxx11S3_S3_iiiffiE3$_0EEEvT_SE_SE_RT0_.exit.i.i" ], [ %storemerge24.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPZ8Chi2TestB5cxx11PKfS3_iiiffiE4CellSt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ8Chi2TestB5cxx11S3_S3_iiiffiE3$_0EEEvT_SE_RT0_.exit.i.i" ] ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %.sroa.0.02.i.i, i64 -16 ; 4 uses
  %.sroa.04.0.copyload.i.i10.i = load float, ptr %i.al, align 8, !tbaa !28 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i11.i = getelementptr inbounds i8, ptr %.sroa.0.02.i.i, i64 -8
  %.sroa.5.0.copyload.i.i12.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i11.i, align 8, !tbaa !79
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %.fr27, i64 16, i1 false), !tbaa.struct !80
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.am, %i.a                     ; 3 uses
  %i.ao = ashr exact i64 %i.an, 4                 ; 3 uses
  %i.ap = add nsw i64 %i.ao, -1
  %i.aq = lshr i64 %i.ap, 1
  %i.ar = icmp sgt i64 %i.ao, 2
  br i1 %i.ar, label %.lr.ph.i.i.i22.i, label %._crit_edge.i.i.i13.i

.lr.ph.i.i.i22.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i22.i
  %.042.i.i.i23.i = phi i64 [ %spec.select.i.i.i26.i, %.lr.ph.i.i.i22.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.as = shl i64 %.042.i.i.i23.i, 1              ; 2 uses
  %i.at = add i64 %i.as, 2                        ; 2 uses
  %i.au = getelementptr inbounds [16 x i8], ptr %.fr27, i64 %i.at
  %i.av = or disjoint i64 %i.as, 1                ; 2 uses
  %i.aw = getelementptr inbounds [16 x i8], ptr %.fr27, i64 %i.av
  %.val2.i.i.i.i24.i = load float, ptr %i.au, align 8, !tbaa !82
  %.val3.i.i.i.i25.i = load float, ptr %i.aw, align 8, !tbaa !82
  %i.ax = fcmp olt float %.val2.i.i.i.i24.i, %.val3.i.i.i.i25.i
  %spec.select.i.i.i26.i = select i1 %i.ax, i64 %i.av, i64 %i.at ; 4 uses
  %i.ay = getelementptr inbounds [16 x i8], ptr %.fr27, i64 %spec.select.i.i.i26.i
  %i.az = getelementptr inbounds [16 x i8], ptr %.fr27, i64 %.042.i.i.i23.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i64 16, i1 false), !tbaa.struct !80
  %i.ba = icmp slt i64 %spec.select.i.i.i26.i, %i.aq
  br i1 %i.ba, label %.lr.ph.i.i.i22.i, label %._crit_edge.i.i.i13.i, !llvm.loop !433

._crit_edge.i.i.i13.i:                            ; preds = %.lr.ph.i.i.i22.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i14.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i26.i, %.lr.ph.i.i.i22.i ] ; 5 uses
  %i.bb = and i64 %i.an, 16
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i13.i
  %i.bd = add nsw i64 %i.ao, -2
  %i.be = ashr exact i64 %i.bd, 1
  %i.bf = icmp eq i64 %.0.lcssa.i.i.i14.i, %i.be
  br i1 %i.bf, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.bg = shl nuw nsw i64 %.0.lcssa.i.i.i14.i, 1
  %i.bh = or disjoint i64 %i.bg, 1                ; 2 uses
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %.fr27, i64 %i.bh
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i14.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i64 16, i1 false), !tbaa.struct !80
  br label %.lr.ph.i.i.i.i16.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i13.i
  %.not.i.i15.i = icmp eq i64 %.0.lcssa.i.i.i14.i, 0
  br i1 %.not.i.i15.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZ8Chi2TestB5cxx11PKfS3_iiiffiE4CellSt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ8Chi2TestB5cxx11S3_S3_iiiffiE3$_0EEEvT_SE_SE_RT0_.exit.i.i", label %.lr.ph.i.i.i.i16.i.preheader

.lr.ph.i.i.i.i16.i.preheader:                     ; preds = %bb.h, %.thread.i.i.i
  %.08.i.i.i.i17.i.ph = phi i64 [ %.0.lcssa.i.i.i14.i, %bb.h ], [ %i.bh, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i16.i

.lr.ph.i.i.i.i16.i:                               ; preds = %.lr.ph.i.i.i.i16.i.preheader, %bb.i
  %.08.i.i.i.i17.i = phi i64 [ %.099.i.i34.i.i.i, %bb.i ], [ %.08.i.i.i.i17.i.ph, %.lr.ph.i.i.i.i16.i.preheader ] ; 3 uses
  %.099.in.i.i.i.i18.i = add nsw i64 %.08.i.i.i.i17.i, -1
  %.099.i.i34.i.i.i = lshr i64 %.099.in.i.i.i.i18.i, 1 ; 3 uses
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %.fr27, i64 %.099.i.i34.i.i.i ; 2 uses
  %.val2.i.i.i.i.i19.i = load float, ptr %i.bk, align 8, !tbaa !82
  %i.bl = fcmp olt float %.val2.i.i.i.i.i19.i, %.sroa.04.0.copyload.i.i10.i
  br i1 %i.bl, label %bb.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZ8Chi2TestB5cxx11PKfS3_iiiffiE4CellSt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ8Chi2TestB5cxx11S3_S3_iiiffiE3$_0EEEvT_SE_SE_RT0_.exit.i.i"

bb.i:                                             ; preds = %.lr.ph.i.i.i.i16.i
  %i.bm = getelementptr inbounds [16 x i8], ptr %.fr27, i64 %.08.i.i.i.i17.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i64 16, i1 false), !tbaa.struct !80
  %.not5.i.i.i = icmp eq i64 %.099.i.i34.i.i.i, 0
  br i1 %.not5.i.i.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZ8Chi2TestB5cxx11PKfS3_iiiffiE4CellSt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ8Chi2TestB5cxx11S3_S3_iiiffiE3$_0EEEvT_SE_SE_RT0_.exit.i.i", label %.lr.ph.i.i.i.i16.i, !llvm.loop !434

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZ8Chi2TestB5cxx11PKfS3_iiiffiE4CellSt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ8Chi2TestB5cxx11S3_S3_iiiffiE3$_0EEEvT_SE_SE_RT0_.exit.i.i": ; preds = %bb.i, %.lr.ph.i.i.i.i16.i, %bb.h
  %.0.lcssa.i.i.i.i20.i = phi i64 [ 0, %bb.h ], [ %.08.i.i.i.i17.i, %.lr.ph.i.i.i.i16.i ], [ 0, %bb.i ]
  %i.bn = getelementptr inbounds [16 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i.i20.i ; 2 uses
  store float %.sroa.04.0.copyload.i.i10.i, ptr %i.bn, align 8, !tbaa !28
  %.sroa.34.0..sroa.0.0..val13.sroa_idx.i.i.i.i21.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i64 %.sroa.5.0.copyload.i.i12.i, ptr %.sroa.34.0..sroa.0.0..val13.sroa_idx.i.i.i.i21.i, align 8, !tbaa !79
  %i.bo = icmp sgt i64 %i.an, 16
  br i1 %i.bo, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPZ8Chi2TestB5cxx11PKfS3_iiiffiE4CellSt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ8Chi2TestB5cxx11S3_S3_iiiffiE3$_0EEEvT_SE_SE_T0_.exit", !llvm.loop !436

.lr.ph43:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2442 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %.fr28, %.lr.ph ] ; 3 uses
  %.02541 = phi i64 [ %i.bq, %bb.b ], [ %2, %.lr.ph ]
  %i.bp = phi i64 [ %i.cf, %bb.b ], [ %i.d, %.lr.ph ]
  %i.bq = add nsw i64 %.02541, -1                 ; 3 uses
  %i.br = lshr i64 %i.bp, 1
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %.fr27, i64 %i.br ; 5 uses
  %i.bt = getelementptr inbounds i8, ptr %storemerge2442, i64 -16 ; 5 uses
  %.val2.i.i.i = load float, ptr %i.f, align 8, !tbaa !82 ; 3 uses
  %.val3.i.i.i = load float, ptr %i.bs, align 8, !tbaa !82 ; 3 uses
  %i.bu = fcmp olt float %.val2.i.i.i, %.val3.i.i.i
  %.val3.i27.i.i = load float, ptr %i.bt, align 8, !tbaa !82 ; 4 uses
  br i1 %i.bu, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph43
  %i.bv = fcmp olt float %.val3.i.i.i, %.val3.i27.i.i
  br i1 %i.bv, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %.fr27, i64 16, i1 false), !tbaa.struct !80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr27, ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i64 16, i1 false), !tbaa.struct !80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !80
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZ8Chi2TestB5cxx11PKfS3_iiiffiE4CellSt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ8Chi2TestB5cxx11S3_S3_iiiffiE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader"

bb.l:                                             ; preds = %bb.j
  %i.bw = fcmp olt float %.val2.i.i.i, %.val3.i27.i.i
  br i1 %i.bw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %.fr27, i64 16, i1 false), !tbaa.struct !80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr27, ptr noundef nonnull align 8 dereferenceable(16) %i.bt, i64 16, i1 false), !tbaa.struct !80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !80
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZ8Chi2TestB5cxx11PKfS3_iiiffiE4CellSt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ8Chi2TestB5cxx11S3_S3_iiiffiE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %.fr27, i64 16, i1 false), !tbaa.struct !80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr27, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !80
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZ8Chi2TestB5cxx11PKfS3_iiiffiE4CellSt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ8Chi2TestB5cxx11S3_S3_iiiffiE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader"

bb.o:                                             ; preds = %.lr.ph43
  %i.bx = fcmp olt float %.val2.i.i.i, %.val3.i27.i.i
  br i1 %i.bx, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %.fr27, i64 16, i1 false), !tbaa.struct !80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr27, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !80
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZ8Chi2TestB5cxx11PKfS3_iiiffiE4CellSt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ8Chi2TestB5cxx11S3_S3_iiiffiE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  %i.by = fcmp olt float %.val3.i.i.i, %.val3.i27.i.i
  br i1 %i.by, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %.fr27, i64 16, i1 false), !tbaa.struct !80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr27, ptr noundef nonnull align 8 dereferenceable(16) %i.bt, i64 16, i1 false), !tbaa.struct !80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !80
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZ8Chi2TestB5cxx11PKfS3_iiiffiE4CellSt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ8Chi2TestB5cxx11S3_S3_iiiffiE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader"

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %.fr27, i64 16, i1 false), !tbaa.struct !80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr27, ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i64 16, i1 false), !tbaa.struct !80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !80
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZ8Chi2TestB5cxx11PKfS3_iiiffiE4CellSt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ8Chi2TestB5cxx11S3_S3_iiiffiE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZ8Chi2TestB5cxx11PKfS3_iiiffiE4CellSt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ8Chi2TestB5cxx11S3_S3_iiiffiE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader": ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZ8Chi2TestB5cxx11PKfS3_iiiffiE4CellSt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ8Chi2TestB5cxx11S3_S3_iiiffiE3$_0EEEvT_SE_SE_SE_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZ8Chi2TestB5cxx11PKfS3_iiiffiE4CellSt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ8Chi2TestB5cxx11S3_S3_iiiffiE3$_0EEEvT_SE_SE_SE_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZ8Chi2TestB5cxx11PKfS3_iiiffiE4CellSt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ8Chi2TestB5cxx11S3_S3_iiiffiE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader", %bb.v
  %.sroa.012.0.i.i = phi ptr [ %i.ca, %bb.v ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZ8Chi2TestB5cxx11PKfS3_iiiffiE4CellSt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ8Chi2TestB5cxx11S3_S3_iiiffiE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge2442, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZ8Chi2TestB5cxx11PKfS3_iiiffiE4CellSt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ8Chi2TestB5cxx11S3_S3_iiiffiE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader" ]
  %.val3.i.i18.i = load float, ptr %.fr27, align 8, !tbaa !82 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZ8Chi2TestB5cxx11PKfS3_iiiffiE4CellSt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ8Chi2TestB5cxx11S3_S3_iiiffiE3$_0EEEvT_SE_SE_SE_T0_.exit.i"
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZ8Chi2TestB5cxx11PKfS3_iiiffiE4CellSt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ8Chi2TestB5cxx11S3_S3_iiiffiE3$_0EEEvT_SE_SE_SE_T0_.exit.i" ], [ %i.ca, %bb.t ] ; 9 uses
  %.val2.i.i19.i = load float, ptr %.sroa.012.1.i.i, align 8, !tbaa !82
  %i.bz = fcmp olt float %.val2.i.i19.i, %.val3.i.i18.i
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 16 ; 2 uses
  br i1 %i.bz, label %bb.t, label %.preheader.i.i, !llvm.loop !437

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 6 uses
  %.val3.i10.i.i = load float, ptr %.sroa.0.1.i.i, align 8, !tbaa !82
  %i.cb = fcmp olt float %.val3.i.i18.i, %.val3.i10.i.i
  br i1 %i.cb, label %.preheader.i.i, label %bb.u, !llvm.loop !438

bb.u:                                             ; preds = %.preheader.i.i
  %i.cc = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.cc, label %bb.v, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPZ8Chi2TestB5cxx11PKfS3_iiiffiE4CellSt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ8Chi2TestB5cxx11S3_S3_iiiffiE3$_0EEET_SE_SE_T0_.exit"

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.012.1.i.i, i64 16, i1 false), !tbaa.struct !80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.012.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.1.i.i, i64 16, i1 false), !tbaa.struct !80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !80
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPZ8Chi2TestB5cxx11PKfS3_iiiffiE4CellSt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ8Chi2TestB5cxx11S3_S3_iiiffiE3$_0EEEvT_SE_SE_SE_T0_.exit.i", !llvm.loop !439

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPZ8Chi2TestB5cxx11PKfS3_iiiffiE4CellSt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ8Chi2TestB5cxx11S3_S3_iiiffiE3$_0EEET_SE_SE_T0_.exit": ; preds = %bb.u
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPZ8Chi2TestB5cxx11PKfS3_iiiffiE4CellSt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZ8Chi2TestB5cxx11S3_S3_iiiffiE3$_0EEEvT_SE_T0_T1_"(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2442, i64 noundef %i.bq)
  %i.cd = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.ce = sub i64 %i.cd, %i.a                     ; 2 uses
  %i.cf = ashr exact i64 %i.ce, 4                 ; 2 uses
  %i.cg = icmp sgt i64 %i.cf, 16
  br i1 %i.cg, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPZ8Chi2TestB5cxx11PKfS3_iiiffiE4CellSt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ8Chi2TestB5cxx11S3_S3_iiiffiE3$_0EEEvT_SE_SE_T0_.exit", !llvm.loop !432

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPZ8Chi2TestB5cxx11PKfS3_iiiffiE4CellSt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ8Chi2TestB5cxx11S3_S3_iiiffiE3$_0EEEvT_SE_SE_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPZ8Chi2TestB5cxx11PKfS3_iiiffiE4CellSt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ8Chi2TestB5cxx11S3_S3_iiiffiE3$_0EEET_SE_SE_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPZ8Chi2TestB5cxx11PKfS3_iiiffiE4CellSt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ8Chi2TestB5cxx11S3_S3_iiiffiE3$_0EEEvT_SE_SE_RT0_.exit.i.i", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPZ8Chi2TestB5cxx11PKfS3_iiiffiE4CellSt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ8Chi2TestB5cxx11S3_S3_iiiffiE3$_0EEEvT_SE_RT0_.exit.i.i"
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt6detail21stringPrintfRecursiveIRKfJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @_ZN4pbrt6detail18copyToFormatStringEPPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull %i.a, ptr noundef %0)
  %i.b = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext 42, i64 noundef 0) #31
  %.not = icmp eq i64 %i.b, -1
  %i.c = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext 115, i64 noundef 0) #31
  %.not19 = icmp eq i64 %i.c, -1
  %i.d = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext 100, i64 noundef 0) #31
  %.not20 = icmp eq i64 %i.d, -1
  br i1 %.not, label %bb.c, label %.invoke

bb.b:                                             ; preds = %.invoke, %bb.ab
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !87   ; 2 uses
  %cond = icmp eq i64 %i.g, 2
  br i1 %cond, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32.thread80

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.c
  %i.h = load ptr, ptr %3, align 8, !tbaa !88     ; 2 uses
  %i.i = load i16, ptr %i.h, align 1
  %i.j = icmp ne i16 %i.i, 26149
  %i.k = zext i1 %i.j to i32
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.m = load i16, ptr %i.h, align 1
  %i.n = icmp ne i16 %i.m, 29477
  %i.o = zext i1 %i.n to i32
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32.thread80

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.q = load float, ptr %2, align 4, !tbaa !28
  invoke void @_ZN4pbrt6detail13FloatToStringB5cxx11Ef(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, float noundef %i.q)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !87   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !87
  %i.v = sub i64 4611686018427387903, %i.u
  %i.w = icmp ult i64 %i.v, %i.s
  br i1 %i.w, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.75) #32
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.d
  %i.x = load ptr, ptr %4, align 8, !tbaa !88
  %i.y = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.x, i64 noundef %i.s)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.g ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.z = load ptr, ptr %4, align 8, !tbaa !88     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !77
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.ab

bb.f:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %4, align 8, !tbaa !88    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %bb.g
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !77
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34, %bb.f
  %.pn27 = phi { ptr, i32 } [ %i.ae, %bb.f ], [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34 ], [ %i.af, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.ad

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32.thread80: ; preds = %bb.c, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32
  br i1 %.not20, label %bb.h, label %.invoke

bb.h:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32.thread80
  br i1 %.not19, label %bb.v, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %bb.j unwind label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.am = load float, ptr %2, align 4, !tbaa !28
  %i.an = fpext float %i.am to double
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.al, double noundef %i.an)
          to label %_ZNSolsEf.exit unwind label %bb.r ; 0 uses

_ZNSolsEf.exit:                                   ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.ap = load ptr, ptr %3, align 8, !tbaa !88    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !448)
  call void @llvm.experimental.noalias.scope.decl(metadata !449)
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.aq, ptr %7, align 8, !tbaa !85, !alias.scope !450
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.ar, align 8, !tbaa !87, !alias.scope !450
  store i8 0, ptr %i.aq, align 8, !tbaa !77, !alias.scope !450
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !159, !noalias !450 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.at, null
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.av = load ptr, ptr %i.au, align 8, !noalias !450 ; 2 uses
  %i.aw = icmp ugt ptr %i.at, %i.av
  %.08.i.i.i = select i1 %i.aw, ptr %i.at, ptr %i.av ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZNSolsEf.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !160, !noalias !450 ; 2 uses
  %i.az = ptrtoint ptr %.08.i.i.i to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef %i.ay, i64 noundef %i.bb)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.be = load ptr, ptr %7, align 8, !tbaa !88, !alias.scope !450 ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.aq
  br i1 %i.bf, label %.body, label %.body.sink.split

bb.m:                                             ; preds = %_ZNSolsEf.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.bg)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.l

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.m, %bb.k
  %i.bh = load ptr, ptr %7, align 8, !tbaa !88    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !451)
  %i.bi = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef %i.ap, ptr noundef %i.bh) #31, !noalias !451
  %i.bj = add nsw i32 %i.bi, 1
  %i.bk = sext i32 %i.bj to i64                   ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.bl, ptr %6, align 8, !tbaa !85, !alias.scope !451
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 0, ptr %i.bm, align 8, !tbaa !87, !alias.scope !451
  store i8 0, ptr %i.bl, align 8, !tbaa !77, !alias.scope !451
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.bk, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i unwind label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bn = load ptr, ptr %6, align 8, !tbaa !88, !alias.scope !451
end_hunk_0
