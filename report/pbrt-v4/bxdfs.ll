Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/bxdfs?download=true
inline.NumInlined: 4082
inline.NumDeleted: 875
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 81
begin_hunk_0_@_ZNK4pbrt12MeasuredBxDF8ToStringB5cxx11Ev:bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt21NormalizedFresnelBxDF8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !36, !alias.scope !563
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !39, !alias.scope !563
  store i8 0, ptr %i.a, align 8, !tbaa !21, !alias.scope !563
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRKfJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %0, ptr noundef nonnull @.str.77, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %_ZN4pbrt12StringPrintfIJRKfEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = load ptr, ptr %0, align 8, !tbaa !40, !alias.scope !563 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !21, !alias.scope !563
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.c

_ZN4pbrt12StringPrintfIJRKfEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK4pbrt4BxDF3rhoENS_7Vector3IfEEN4pstd4spanIKfEENS4_IKNS_6Point2IfEEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, <2 x float> %1, float %2, ptr nofree readonly captures(none) %3, i64 %4, ptr nofree readonly captures(none) %5, i64 %6) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.pbrt::Vector3", align 8     ; 5 uses
  %8 = alloca %"class.pbrt::Point2", align 8      ; 4 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %9 = alloca %class.anon.78, align 8             ; 8 uses
  %10 = alloca %"class.pstd::optional", align 8   ; 8 uses
  %i.d = fcmp oeq float %2, 0.000000e+00
  br i1 %i.d, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 44
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 28
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 24
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %.preheader
  %.sroa.10.0.lcssa = phi <2 x float> [ zeroinitializer, %.preheader ], [ %.sroa.10.1, %bb.d ]
  %.sroa.047.0.lcssa = phi <2 x float> [ zeroinitializer, %.preheader ], [ %.sroa.047.1, %bb.d ]
  %i.k = uitofp i64 %4 to float
  %i.l = insertelement <2 x float> poison, float %i.k, i64 0
  %i.m = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.n = fdiv <2 x float> %.sroa.047.0.lcssa, %i.m
  %i.o = fdiv <2 x float> %.sroa.10.0.lcssa, %i.m
  br label %bb.e

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.071 = phi i64 [ 0, %.lr.ph ], [ %i.an, %bb.d ] ; 3 uses
  %.sroa.047.070 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.047.1, %bb.d ] ; 3 uses
  %.sroa.10.069 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.10.1, %bb.d ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.071
  %i.q = load float, ptr %i.p, align 4, !tbaa !20
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.071
  %.sroa.05.0.copyload = load <2 x float>, ptr %i.r, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store <2 x float> %1, ptr %7, align 8, !noalias !569
  store float %2, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !569
  store <2 x float> %.sroa.05.0.copyload, ptr %8, align 8, !noalias !569
  store float %i.q, ptr %i.a, align 4, !tbaa !20, !noalias !569
  store i32 0, ptr %i.b, align 4, !tbaa !181, !noalias !569
  store i32 3, ptr %i.c, align 4, !tbaa !183, !noalias !569
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31, !noalias !569
  store ptr %7, ptr %9, align 8, !tbaa !185, !noalias !569
  store ptr %i.a, ptr %i.e, align 8, !tbaa !149, !noalias !569
  store ptr %8, ptr %i.f, align 8, !tbaa !187, !noalias !569
  store ptr %i.b, ptr %i.g, align 8, !tbaa !188, !noalias !569
  store ptr %i.c, ptr %i.h, align 8, !tbaa !188, !noalias !569
  %i.s = load i64, ptr %0, align 8, !tbaa !190, !noalias !570 ; 2 uses
  %i.t = and i64 %i.s, 144115188075855871
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = lshr i64 %i.s, 57
  %i.w = trunc nuw nsw i64 %i.v to i32
  %i.x = add nsw i32 %i.w, -1
  call void @_ZN4pbrt6detail8DispatchIRZNKS_4BxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsEEUlT_E_N4pstd8optionalINS_10BSDFSampleEEENS_23DiffuseTransmissionBxDFENS_11DiffuseBxDFENS_17CoatedDiffuseBxDFENS_19CoatedConductorBxDFENS_14DielectricBxDFENS_18ThinDielectricBxDFENS_8HairBxDFENS_12MeasuredBxDFEJNS_13ConductorBxDFENS_21NormalizedFresnelBxDFEEvEET0_OS9_PKvi(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional") align 4 %10, ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef %i.u, i32 noundef %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31, !noalias !569
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.y = load i8, ptr %i.i, align 4, !tbaa !55, !range !56, !noundef !57
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit, label %bb.d

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit:  ; preds = %bb.b
  %i.aa = load float, ptr %i.j, align 4, !tbaa !62 ; 2 uses
  %i.ab = fcmp ogt float %i.aa, 0.000000e+00
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit
  %.sroa.22.0.copyload = load float, ptr %.sroa.22.0..sroa_idx, align 8
  %i.ac = call noundef float @llvm.fabs.f32(float %.sroa.22.0.copyload)
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %10, align 8
  %.sroa.6.0.copyload.i = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !21
  %i.ad = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.af = fmul <2 x float> %i.ae, %.sroa.0.0.copyload.i
  %i.ag = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ai = fdiv <2 x float> %i.af, %i.ah
  %i.aj = fadd <2 x float> %.sroa.047.070, %i.ai
  %i.ak = fmul <2 x float> %i.ae, %.sroa.6.0.copyload.i
  %i.al = fdiv <2 x float> %i.ak, %i.ah
  %i.am = fadd <2 x float> %.sroa.10.069, %i.al
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit, %bb.b
  %.sroa.10.1 = phi <2 x float> [ %i.am, %bb.c ], [ %.sroa.10.069, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit ], [ %.sroa.10.069, %bb.b ] ; 2 uses
  %.sroa.047.1 = phi <2 x float> [ %i.aj, %bb.c ], [ %.sroa.047.070, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit ], [ %.sroa.047.070, %bb.b ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  %i.an = add nuw i64 %.071, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.an, %4
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !568

bb.e:                                             ; preds = %bb.a, %._crit_edge
  %.sroa.066.0 = phi <2 x float> [ %i.n, %._crit_edge ], [ zeroinitializer, %bb.a ]
  %.sroa.4.0 = phi <2 x float> [ %i.o, %._crit_edge ], [ zeroinitializer, %bb.a ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.066.0, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.4.0, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK4pbrt4BxDF3rhoEN4pstd4spanIKNS_6Point2IfEEEENS2_IKfEES6_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree readonly captures(none) %1, i64 %2, ptr nofree readonly captures(none) %3, i64 %4, ptr nofree noundef readonly byval(%"class.pstd::span.53") align 8 captures(none) %5) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.pbrt::Vector3", align 8     ; 5 uses
  %7 = alloca %"class.pbrt::Point2", align 8      ; 4 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %8 = alloca %class.anon.78, align 8             ; 8 uses
  %9 = alloca %"class.pstd::optional", align 8    ; 8 uses
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %5, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 44
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 28
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 24
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.sroa.10.0.lcssa = phi <2 x float> [ zeroinitializer, %bb.a ], [ %.sroa.10.2, %bb.f ]
  %.sroa.074.0.lcssa = phi <2 x float> [ zeroinitializer, %bb.a ], [ %.sroa.074.2, %bb.f ]
  %i.k = uitofp i64 %4 to float
  %i.l = fmul nnan float %i.k, f0x40490FDB
  %i.m = shufflevector <2 x float> %.sroa.074.0.lcssa, <2 x float> %.sroa.10.0.lcssa, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.n = insertelement <4 x float> poison, float %i.l, i64 0
  %i.o = shufflevector <4 x float> %i.n, <4 x float> poison, <4 x i32> zeroinitializer
  %i.p = fdiv <4 x float> %i.m, %i.o              ; 2 uses
  %i.q = shufflevector <4 x float> %i.p, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.r = shufflevector <4 x float> %i.p, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.fca.0.insert.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.q, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i, <2 x float> %i.r, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.095 = phi i64 [ 0, %.lr.ph ], [ %i.az, %bb.f ] ; 4 uses
  %.sroa.074.094 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.074.2, %bb.f ] ; 4 uses
  %.sroa.10.093 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %.sroa.10.2, %bb.f ] ; 4 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.095
  %.sroa.015.0.copyload = load <2 x float>, ptr %i.s, align 4 ; 4 uses
  %.sroa.0.0.vec.extract.i29 = extractelement <2 x float> %.sroa.015.0.copyload, i64 0 ; 3 uses
  %.sroa.0.4.vec.extract.i30 = extractelement <2 x float> %.sroa.015.0.copyload, i64 1
  %i.t = fmul float %.sroa.0.4.vec.extract.i30, f0x40C90FDB ; 2 uses
  %i.u = call noundef float @cosf(float noundef %i.t) #31
  %i.v = call noundef float @sinf(float noundef %i.t) #31
  %i.w = fcmp oeq float %.sroa.0.0.vec.extract.i29, 0.000000e+00
  br i1 %i.w, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %foldExtExtBinop = fmul <2 x float> %.sroa.015.0.copyload, %.sroa.015.0.copyload
  %i.x = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.y = fsub float 1.000000e+00, %i.x            ; 2 uses
  %i.z = fcmp ogt float %i.y, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.z, float %i.y, float 0.000000e+00
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i) ; 2 uses
  %i.aa = fmul float %i.u, %sqrt.i.i
  %.sroa.06.0.vec.insert.i = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.ab = fmul float %i.v, %sqrt.i.i
  %.sroa.06.4.vec.insert.i = insertelement <2 x float> %.sroa.06.0.vec.insert.i, float %i.ab, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.095
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !20
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.095
  %.sroa.09.0.copyload = load <2 x float>, ptr %i.ae, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store <2 x float> %.sroa.06.4.vec.insert.i, ptr %6, align 8, !noalias !576
  store float %.sroa.0.0.vec.extract.i29, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !576
  store <2 x float> %.sroa.09.0.copyload, ptr %7, align 8, !noalias !576
  store float %i.ad, ptr %i.a, align 4, !tbaa !20, !noalias !576
  store i32 0, ptr %i.b, align 4, !tbaa !181, !noalias !576
  store i32 3, ptr %i.c, align 4, !tbaa !183, !noalias !576
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31, !noalias !576
  store ptr %6, ptr %8, align 8, !tbaa !185, !noalias !576
  store ptr %i.a, ptr %i.e, align 8, !tbaa !149, !noalias !576
  store ptr %7, ptr %i.f, align 8, !tbaa !187, !noalias !576
  store ptr %i.b, ptr %i.g, align 8, !tbaa !188, !noalias !576
  store ptr %i.c, ptr %i.h, align 8, !tbaa !188, !noalias !576
  %i.af = load i64, ptr %0, align 8, !tbaa !190, !noalias !577 ; 2 uses
  %i.ag = and i64 %i.af, 144115188075855871
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = lshr i64 %i.af, 57
  %i.aj = trunc nuw nsw i64 %i.ai to i32
  %i.ak = add nsw i32 %i.aj, -1
  call void @_ZN4pbrt6detail8DispatchIRZNKS_4BxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsEEUlT_E_N4pstd8optionalINS_10BSDFSampleEEENS_23DiffuseTransmissionBxDFENS_11DiffuseBxDFENS_17CoatedDiffuseBxDFENS_19CoatedConductorBxDFENS_14DielectricBxDFENS_18ThinDielectricBxDFENS_8HairBxDFENS_12MeasuredBxDFEJNS_13ConductorBxDFENS_21NormalizedFresnelBxDFEEvEET0_OS9_PKvi(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional") align 4 %9, ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef %i.ah, i32 noundef %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31, !noalias !576
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.al = load i8, ptr %i.i, align 4, !tbaa !55, !range !56, !noundef !57
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit, label %bb.e

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit:  ; preds = %bb.c
  %i.an = load float, ptr %i.j, align 4, !tbaa !62 ; 2 uses
  %i.ao = fcmp ogt float %i.an, 0.000000e+00
  br i1 %i.ao, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit
  %.sroa.26.0.copyload = load float, ptr %.sroa.26.0..sroa_idx, align 8
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %9, align 8
  %.sroa.6.0.copyload.i = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !21
  %i.ap = fmul nnan float %i.an, f0x3E22F983
  %i.aq = insertelement <2 x float> poison, float %i.ap, i64 0
  %10 = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %11 = call noundef float @llvm.fabs.f32(float %.sroa.26.0.copyload)
  %12 = call noundef float @llvm.fabs.f32(float %.sroa.0.0.vec.extract.i29)
  %13 = insertelement <2 x float> poison, float %11, i64 0
  %i.ar = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %14 = fmul <2 x float> %i.ar, %.sroa.0.0.copyload.i
  %i.as = fmul <2 x float> %i.ar, %.sroa.6.0.copyload.i
  %i.at = insertelement <2 x float> poison, float %12, i64 0
  %i.au = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %15 = fmul <2 x float> %i.au, %14
  %i.av = fmul <2 x float> %i.au, %i.as
  %16 = fdiv <2 x float> %15, %10
  %i.aw = fdiv <2 x float> %i.av, %10
  %i.ax = fadd <2 x float> %.sroa.074.094, %16
  %i.ay = fadd <2 x float> %.sroa.10.093, %i.aw
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit, %bb.c
  %.sroa.10.1 = phi <2 x float> [ %i.ay, %bb.d ], [ %.sroa.10.093, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit ], [ %.sroa.10.093, %bb.c ]
  %.sroa.074.1 = phi <2 x float> [ %i.ax, %bb.d ], [ %.sroa.074.094, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit ], [ %.sroa.074.094, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %.sroa.10.2 = phi <2 x float> [ %.sroa.10.093, %bb.b ], [ %.sroa.10.1, %bb.e ] ; 2 uses
  %.sroa.074.2 = phi <2 x float> [ %.sroa.074.094, %bb.b ], [ %.sroa.074.1, %bb.e ] ; 2 uses
  %i.az = add nuw i64 %.095, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.az, %4
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !575
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt4BxDF8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val = load i64, ptr %1, align 8, !tbaa !190   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !640)
  %i.a = and i64 %.val, 144115188075855871
  %i.b = inttoptr i64 %i.a to ptr                 ; 27 uses
  %i.c = lshr i64 %.val, 57
  %i.d = trunc nuw nsw i64 %i.c to i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !641)
  switch i32 %i.d, label %bb.s [
    i32 1, label %bb.b
    i32 2, label %bb.d
    i32 3, label %bb.f
    i32 4, label %bb.h
    i32 5, label %bb.j
    i32 6, label %bb.k
    i32 7, label %bb.m
    i32 8, label %bb.o
    i32 9, label %bb.q
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !36, !alias.scope !642
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !39, !alias.scope !642
  store i8 0, ptr %i.f, align 8, !tbaa !21, !alias.scope !642
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRKNS_15SampledSpectrumEJS4_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %0, ptr noundef nonnull @.str.15, ptr noundef nonnull align 4 dereferenceable(32) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %i.e)
          to label %"_ZNK4pbrt13TaggedPointerIJNS_23DiffuseTransmissionBxDFENS_11DiffuseBxDFENS_17CoatedDiffuseBxDFENS_19CoatedConductorBxDFENS_14DielectricBxDFENS_18ThinDielectricBxDFENS_8HairBxDFENS_12MeasuredBxDFENS_13ConductorBxDFENS_21NormalizedFresnelBxDFEEE11DispatchCPUIRZNKS_4BxDF8ToStringB5cxx11EvE3$_0EEDcOT_.exit" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !40, !alias.scope !642 ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.f
  br i1 %i.j, label %common.resume.i.i, label %common.resume.i.i.sink.split

common.resume.i.i.sink.split:                     ; preds = %bb.t, %bb.r, %bb.p, %bb.n, %bb.l, %bb.i, %bb.g, %bb.e, %bb.c
  %.sink19.in = phi ptr [ %i.bf, %bb.r ], [ %i.ay, %bb.p ], [ %i.at, %bb.n ], [ %i.ai, %bb.l ], [ %i.ad, %bb.i ], [ %i.u, %bb.g ], [ %i.l, %bb.e ], [ %i.f, %bb.c ], [ %i.bk, %bb.t ]
  %.sink = phi ptr [ %i.bi, %bb.r ], [ %i.bb, %bb.p ], [ %i.aw, %bb.n ], [ %i.al, %bb.l ], [ %i.ag, %bb.i ], [ %i.x, %bb.g ], [ %i.o, %bb.e ], [ %i.i, %bb.c ], [ %i.bn, %bb.t ]
  %common.resume.op.i.i.ph = phi { ptr, i32 } [ %i.bh, %bb.r ], [ %i.ba, %bb.p ], [ %i.av, %bb.n ], [ %i.ak, %bb.l ], [ %i.af, %bb.i ], [ %i.w, %bb.g ], [ %i.n, %bb.e ], [ %i.h, %bb.c ], [ %i.bm, %bb.t ]
  %.sink19 = load i64, ptr %.sink19.in, align 8, !tbaa !21, !alias.scope !643
  %i.k = add i64 %.sink19, 1
  tail call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.k) #30
  br label %common.resume.i.i

common.resume.i.i:                                ; preds = %common.resume.i.i.sink.split, %bb.t, %bb.r, %bb.p, %bb.n, %bb.l, %bb.i, %bb.g, %bb.e, %bb.c
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.av, %bb.n ], [ %i.bh, %bb.r ], [ %i.h, %bb.c ], [ %i.n, %bb.e ], [ %i.w, %bb.g ], [ %i.af, %bb.i ], [ %i.ak, %bb.l ], [ %i.bm, %bb.t ], [ %i.ba, %bb.p ], [ %common.resume.op.i.i.ph, %common.resume.i.i.sink.split ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !36, !alias.scope !644
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.m, align 8, !tbaa !39, !alias.scope !644
  store i8 0, ptr %i.l, align 8, !tbaa !21, !alias.scope !644
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRKNS_15SampledSpectrumEJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %0, ptr noundef nonnull @.str.14, ptr noundef nonnull align 4 dereferenceable(16) %i.b)
          to label %"_ZNK4pbrt13TaggedPointerIJNS_23DiffuseTransmissionBxDFENS_11DiffuseBxDFENS_17CoatedDiffuseBxDFENS_19CoatedConductorBxDFENS_14DielectricBxDFENS_18ThinDielectricBxDFENS_8HairBxDFENS_12MeasuredBxDFENS_13ConductorBxDFENS_21NormalizedFresnelBxDFEEE11DispatchCPUIRZNKS_4BxDF8ToStringB5cxx11EvE3$_0EEDcOT_.exit" unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !40, !alias.scope !644 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.l
  br i1 %i.p, label %common.resume.i.i, label %common.resume.i.i.sink.split

bb.f:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !36, !alias.scope !645
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.v, align 8, !tbaa !39, !alias.scope !645
  store i8 0, ptr %i.u, align 8, !tbaa !21, !alias.scope !645
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRKNS_14DielectricBxDFEJRKNS_11DiffuseBxDFERKfRKNS_15SampledSpectrumES9_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %0, ptr noundef nonnull @.str, ptr noundef nonnull align 4 dereferenceable(60) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %i.q, ptr noundef nonnull align 4 dereferenceable(4) %i.r, ptr noundef nonnull align 4 dereferenceable(16) %i.s, ptr noundef nonnull align 4 dereferenceable(4) %i.t)
          to label %"_ZNK4pbrt13TaggedPointerIJNS_23DiffuseTransmissionBxDFENS_11DiffuseBxDFENS_17CoatedDiffuseBxDFENS_19CoatedConductorBxDFENS_14DielectricBxDFENS_18ThinDielectricBxDFENS_8HairBxDFENS_12MeasuredBxDFENS_13ConductorBxDFENS_21NormalizedFresnelBxDFEEE11DispatchCPUIRZNKS_4BxDF8ToStringB5cxx11EvE3$_0EEDcOT_.exit" unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = load ptr, ptr %0, align 8, !tbaa !40, !alias.scope !645 ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.u
  br i1 %i.y, label %common.resume.i.i, label %common.resume.i.i.sink.split

bb.h:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.ad, ptr %0, align 8, !tbaa !36, !alias.scope !646
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ae, align 8, !tbaa !39, !alias.scope !646
  store i8 0, ptr %i.ad, align 8, !tbaa !21, !alias.scope !646
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRKNS_14DielectricBxDFEJRKNS_13ConductorBxDFERKfRKNS_15SampledSpectrumES9_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %0, ptr noundef nonnull @.str, ptr noundef nonnull align 4 dereferenceable(84) %i.b, ptr noundef nonnull align 4 dereferenceable(40) %i.z, ptr noundef nonnull align 4 dereferenceable(4) %i.aa, ptr noundef nonnull align 4 dereferenceable(16) %i.ab, ptr noundef nonnull align 4 dereferenceable(4) %i.ac)
          to label %"_ZNK4pbrt13TaggedPointerIJNS_23DiffuseTransmissionBxDFENS_11DiffuseBxDFENS_17CoatedDiffuseBxDFENS_19CoatedConductorBxDFENS_14DielectricBxDFENS_18ThinDielectricBxDFENS_8HairBxDFENS_12MeasuredBxDFENS_13ConductorBxDFENS_21NormalizedFresnelBxDFEEE11DispatchCPUIRZNKS_4BxDF8ToStringB5cxx11EvE3$_0EEDcOT_.exit" unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %0, align 8, !tbaa !40, !alias.scope !646 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.ad
  br i1 %i.ah, label %common.resume.i.i, label %common.resume.i.i.sink.split

bb.j:                                             ; preds = %bb.a
  tail call void @_ZNK4pbrt14DielectricBxDF8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(12) %i.b)
  br label %"_ZNK4pbrt13TaggedPointerIJNS_23DiffuseTransmissionBxDFENS_11DiffuseBxDFENS_17CoatedDiffuseBxDFENS_19CoatedConductorBxDFENS_14DielectricBxDFENS_18ThinDielectricBxDFENS_8HairBxDFENS_12MeasuredBxDFENS_13ConductorBxDFENS_21NormalizedFresnelBxDFEEE11DispatchCPUIRZNKS_4BxDF8ToStringB5cxx11EvE3$_0EEDcOT_.exit"

bb.k:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.ai, ptr %0, align 8, !tbaa !36, !alias.scope !647
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.aj, align 8, !tbaa !39, !alias.scope !647
  store i8 0, ptr %i.ai, align 8, !tbaa !21, !alias.scope !647
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRKfJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %0, ptr noundef nonnull @.str.19, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %"_ZNK4pbrt13TaggedPointerIJNS_23DiffuseTransmissionBxDFENS_11DiffuseBxDFENS_17CoatedDiffuseBxDFENS_19CoatedConductorBxDFENS_14DielectricBxDFENS_18ThinDielectricBxDFENS_8HairBxDFENS_12MeasuredBxDFENS_13ConductorBxDFENS_21NormalizedFresnelBxDFEEE11DispatchCPUIRZNKS_4BxDF8ToStringB5cxx11EvE3$_0EEDcOT_.exit" unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = load ptr, ptr %0, align 8, !tbaa !40, !alias.scope !647 ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.ai
  br i1 %i.am, label %common.resume.i.i, label %common.resume.i.i.sink.split

bb.m:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.at, ptr %0, align 8, !tbaa !36, !alias.scope !648
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.au, align 8, !tbaa !39, !alias.scope !648
  store i8 0, ptr %i.at, align 8, !tbaa !21, !alias.scope !648
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRKfJS3_S3_S3_S3_S3_RKNS_15SampledSpectrumEEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %0, ptr noundef nonnull @.str.24, ptr noundef nonnull align 4 dereferenceable(76) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.an, ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull align 4 dereferenceable(4) %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %i.aq, ptr noundef nonnull align 4 dereferenceable(4) %i.ar, ptr noundef nonnull align 4 dereferenceable(16) %i.as)
          to label %"_ZNK4pbrt13TaggedPointerIJNS_23DiffuseTransmissionBxDFENS_11DiffuseBxDFENS_17CoatedDiffuseBxDFENS_19CoatedConductorBxDFENS_14DielectricBxDFENS_18ThinDielectricBxDFENS_8HairBxDFENS_12MeasuredBxDFENS_13ConductorBxDFENS_21NormalizedFresnelBxDFEEE11DispatchCPUIRZNKS_4BxDF8ToStringB5cxx11EvE3$_0EEDcOT_.exit" unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aw = load ptr, ptr %0, align 8, !tbaa !40, !alias.scope !648 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.at
  br i1 %i.ax, label %common.resume.i.i, label %common.resume.i.i.sink.split

bb.o:                                             ; preds = %bb.a
  %.val.i.i = load ptr, ptr %i.b, align 8, !tbaa !179, !noalias !649
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.ay, ptr %0, align 8, !tbaa !36, !alias.scope !650
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.az, align 8, !tbaa !39, !alias.scope !650
  store i8 0, ptr %i.ay, align 8, !tbaa !21, !alias.scope !650
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRKNS_16MeasuredBxDFDataEJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %0, ptr noundef nonnull @.str.76, ptr noundef nonnull align 8 dereferenceable(888) %.val.i.i)
          to label %"_ZNK4pbrt13TaggedPointerIJNS_23DiffuseTransmissionBxDFENS_11DiffuseBxDFENS_17CoatedDiffuseBxDFENS_19CoatedConductorBxDFENS_14DielectricBxDFENS_18ThinDielectricBxDFENS_8HairBxDFENS_12MeasuredBxDFENS_13ConductorBxDFENS_21NormalizedFresnelBxDFEEE11DispatchCPUIRZNKS_4BxDF8ToStringB5cxx11EvE3$_0EEDcOT_.exit" unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = load ptr, ptr %0, align 8, !tbaa !40, !alias.scope !650 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.ay
  br i1 %i.bc, label %common.resume.i.i, label %common.resume.i.i.sink.split

bb.q:                                             ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.bf, ptr %0, align 8, !tbaa !36, !alias.scope !651
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.bg, align 8, !tbaa !39, !alias.scope !651
  store i8 0, ptr %i.bf, align 8, !tbaa !21, !alias.scope !651
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRKNS_27TrowbridgeReitzDistributionEJRKNS_15SampledSpectrumES7_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %0, ptr noundef nonnull @.str.20, ptr noundef nonnull align 4 dereferenceable(40) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %i.bd, ptr noundef nonnull align 4 dereferenceable(16) %i.be)
          to label %"_ZNK4pbrt13TaggedPointerIJNS_23DiffuseTransmissionBxDFENS_11DiffuseBxDFENS_17CoatedDiffuseBxDFENS_19CoatedConductorBxDFENS_14DielectricBxDFENS_18ThinDielectricBxDFENS_8HairBxDFENS_12MeasuredBxDFENS_13ConductorBxDFENS_21NormalizedFresnelBxDFEEE11DispatchCPUIRZNKS_4BxDF8ToStringB5cxx11EvE3$_0EEDcOT_.exit" unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bi = load ptr, ptr %0, align 8, !tbaa !40, !alias.scope !651 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.bf
  br i1 %i.bj, label %common.resume.i.i, label %common.resume.i.i.sink.split
end_hunk_0
