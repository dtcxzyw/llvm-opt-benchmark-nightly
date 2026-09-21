Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/interaction?download=true
inline.NumInlined: 2722
inline.NumDeleted: 705
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN4pbrt13ScratchBuffer5AllocINS_18ThinDielectricBxDFEJEEENS_16AllocationTraitsIT_E12SingleObjectEDpOT0_:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !129
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = icmp ugt i64 %i.f, %i.i
  br i1 %i.j, label %bb.d, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c
  %.pre.i = load ptr, ptr %0, align 64, !tbaa !130
  br label %_ZN4pbrt13ScratchBuffer5AllocEmm.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %0, align 64, !tbaa !25
  %i.m = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #26 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.l, ptr %i.n, align 8
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 %i.i, ptr %.sroa.47.0..sroa_idx.i.i, align 8
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.k) #23
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = load i64, ptr %i.o, align 32, !tbaa !131
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %i.o, align 32, !tbaa !131
  %i.r = load i32, ptr %i.g, align 8, !tbaa !129
  %i.s = sext i32 %i.r to i64
  %i.t = add nsw i64 %i.s, 4
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 8)
  %i.u = trunc i64 %.sroa.speculated.i.i to i32
  store i32 %i.u, ptr %i.g, align 8, !tbaa !129
  %i.v = tail call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #23 ; 2 uses
  %i.w = load i32, ptr %i.g, align 8, !tbaa !129  ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_ZN4pbrt13ScratchBuffer7ReallocEm.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = sext i32 %i.w to i64
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !133
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.v, i64 noundef %i.y, i64 noundef 64), !inline_history !0
  br label %_ZN4pbrt13ScratchBuffer7ReallocEm.exit.i

_ZN4pbrt13ScratchBuffer7ReallocEm.exit.i:         ; preds = %bb.e, %bb.d
  %.0.i.i.i.i = phi ptr [ %i.ac, %bb.e ], [ null, %bb.d ] ; 2 uses
  store ptr %.0.i.i.i.i, ptr %0, align 64, !tbaa !130
  br label %_ZN4pbrt13ScratchBuffer5AllocEmm.exit

_ZN4pbrt13ScratchBuffer5AllocEmm.exit:            ; preds = %._crit_edge.i, %_ZN4pbrt13ScratchBuffer7ReallocEm.exit.i
  %i.ad = phi i32 [ %i.e, %._crit_edge.i ], [ 0, %_ZN4pbrt13ScratchBuffer7ReallocEm.exit.i ] ; 2 uses
  %i.ae = phi ptr [ %.pre.i, %._crit_edge.i ], [ %.0.i.i.i.i, %_ZN4pbrt13ScratchBuffer7ReallocEm.exit.i ]
  %i.af = sext i32 %i.ad to i64
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 %i.af ; 2 uses
  %i.ah = add i32 %i.ad, 4
  store i32 %i.ah, ptr %i.a, align 4, !tbaa !128
  store i32 0, ptr %i.ag, align 4
  ret ptr %i.ag
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN4pbrt13ScratchBuffer5AllocINS_15TabulatedBSSRDFEJEEENS_16AllocationTraitsIT_E12SingleObjectEDpOT0_(ptr noundef nonnull align 64 dereferenceable(40) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !128  ; 3 uses
  %i.c = and i32 %i.b, 7
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %reass.sub = and i32 %i.b, -8
  %i.d = add i32 %reass.sub, 8                    ; 2 uses
  store i32 %i.d, ptr %i.a, align 4, !tbaa !128
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi i32 [ %i.d, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.pre-phi.i = sext i32 %i.e to i64
  %i.f = add nsw i64 %.pre-phi.i, 80
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !129
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = icmp ugt i64 %i.f, %i.i
  br i1 %i.j, label %bb.d, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c
  %.pre.i = load ptr, ptr %0, align 64, !tbaa !130
  br label %_ZN4pbrt13ScratchBuffer5AllocEmm.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %0, align 64, !tbaa !25
  %i.m = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #26 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.l, ptr %i.n, align 8
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 %i.i, ptr %.sroa.47.0..sroa_idx.i.i, align 8
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.k) #23
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = load i64, ptr %i.o, align 32, !tbaa !131
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %i.o, align 32, !tbaa !131
  %i.r = load i32, ptr %i.g, align 8, !tbaa !129
  %i.s = sext i32 %i.r to i64
  %i.t = add nsw i64 %i.s, 80
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 160)
  %i.u = trunc i64 %.sroa.speculated.i.i to i32
  store i32 %i.u, ptr %i.g, align 8, !tbaa !129
  %i.v = tail call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #23 ; 2 uses
  %i.w = load i32, ptr %i.g, align 8, !tbaa !129  ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_ZN4pbrt13ScratchBuffer7ReallocEm.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = sext i32 %i.w to i64
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !133
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.v, i64 noundef %i.y, i64 noundef 64), !inline_history !0
  br label %_ZN4pbrt13ScratchBuffer7ReallocEm.exit.i

_ZN4pbrt13ScratchBuffer7ReallocEm.exit.i:         ; preds = %bb.e, %bb.d
  %.0.i.i.i.i = phi ptr [ %i.ac, %bb.e ], [ null, %bb.d ] ; 2 uses
  store ptr %.0.i.i.i.i, ptr %0, align 64, !tbaa !130
  br label %_ZN4pbrt13ScratchBuffer5AllocEmm.exit

_ZN4pbrt13ScratchBuffer5AllocEmm.exit:            ; preds = %._crit_edge.i, %_ZN4pbrt13ScratchBuffer7ReallocEm.exit.i
  %i.ad = phi i32 [ %i.e, %._crit_edge.i ], [ 0, %_ZN4pbrt13ScratchBuffer7ReallocEm.exit.i ] ; 2 uses
  %i.ae = phi ptr [ %.pre.i, %._crit_edge.i ], [ %.0.i.i.i.i, %_ZN4pbrt13ScratchBuffer7ReallocEm.exit.i ]
  %i.af = sext i32 %i.ad to i64
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 %i.af ; 2 uses
  %i.ah = add i32 %i.ad, 80
  store i32 %i.ah, ptr %i.a, align 4, !tbaa !128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ag, i8 0, i64 80, i1 false)
  ret ptr %i.ag
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4pbrt18SubsurfaceMaterial9GetBSSRDFINS_25UniversalTextureEvaluatorEEENS_15TabulatedBSSRDFET_RKNS_19MaterialEvalContextERNS_18SampledWavelengthsE(ptr dead_on_unwind noalias writable sret(%"class.pbrt::TabulatedBSSRDF") align 8 %0, ptr noundef nonnull align 8 dereferenceable(240) %1, ptr noundef nonnull align 4 dereferenceable(112) %2, ptr noundef nonnull align 4 dereferenceable(32) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.pbrt::UniversalTextureEvaluator", align 1 ; 4 uses
  %5 = alloca %"class.pbrt::SpectrumTexture", align 8 ; 2 uses
  %6 = alloca %"struct.pbrt::TextureEvalContext", align 8 ; 2 uses
  %7 = alloca %"class.pbrt::SampledWavelengths", align 8 ; 2 uses
  %8 = alloca %"class.pbrt::SpectrumTexture", align 8 ; 2 uses
  %9 = alloca %"struct.pbrt::TextureEvalContext", align 8 ; 2 uses
  %10 = alloca %"class.pbrt::SampledWavelengths", align 8 ; 2 uses
  %11 = alloca %"class.pbrt::SpectrumTexture", align 8 ; 2 uses
  %12 = alloca %"struct.pbrt::TextureEvalContext", align 8 ; 2 uses
  %13 = alloca %"class.pbrt::SampledWavelengths", align 8 ; 2 uses
  %14 = alloca %"class.pbrt::SpectrumTexture", align 8 ; 2 uses
  %15 = alloca %"struct.pbrt::TextureEvalContext", align 8 ; 2 uses
  %16 = alloca %"class.pbrt::SampledWavelengths", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !223  ; 2 uses
  %i.c = and i64 %i.b, 144115188075855871
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !223
  %i.f = and i64 %i.e, 144115188075855871
  %.not114 = icmp eq i64 %i.f, 0
  br i1 %.not114, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.h = load <4 x float>, ptr %i.g, align 8
  store i64 %i.b, ptr %5, align 8, !tbaa !223
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %6, ptr noundef nonnull align 4 dereferenceable(76) %2, i64 76, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 4 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !224
  %i.i = call { <2 x float>, <2 x float> } @_ZN4pbrt25UniversalTextureEvaluatorclENS_15SpectrumTextureENS_18TextureEvalContextENS_18SampledWavelengthsE(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %5, ptr noundef nonnull byval(%"struct.pbrt::TextureEvalContext") align 8 %6, ptr noundef nonnull byval(%"class.pbrt::SampledWavelengths") align 8 %7) ; 2 uses
  %i.j = extractvalue { <2 x float>, <2 x float> } %i.i, 0
  %i.k = extractvalue { <2 x float>, <2 x float> } %i.i, 1
  %i.l = shufflevector <4 x float> %i.h, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.m = fmul <2 x float> %i.l, %i.j              ; 2 uses
  %i.n = fcmp ogt <2 x float> %i.m, zeroinitializer
  %i.o = select <2 x i1> %i.n, <2 x float> %i.m, <2 x float> zeroinitializer
  %i.p = fmul <2 x float> %i.l, %i.k              ; 2 uses
  %i.q = fcmp ogt <2 x float> %i.p, zeroinitializer
  %i.r = select <2 x i1> %i.q, <2 x float> %i.p, <2 x float> zeroinitializer
  %i.s = load float, ptr %i.g, align 8, !tbaa !848
  %i.t = load i64, ptr %i.d, align 8, !tbaa !223
  store i64 %i.t, ptr %8, align 8, !tbaa !223
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %9, ptr noundef nonnull align 4 dereferenceable(76) %2, i64 76, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 4 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !224
  %i.u = call { <2 x float>, <2 x float> } @_ZN4pbrt25UniversalTextureEvaluatorclENS_15SpectrumTextureENS_18TextureEvalContextENS_18SampledWavelengthsE(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %8, ptr noundef nonnull byval(%"struct.pbrt::TextureEvalContext") align 8 %9, ptr noundef nonnull byval(%"class.pbrt::SampledWavelengths") align 8 %10) ; 2 uses
  %i.v = extractvalue { <2 x float>, <2 x float> } %i.u, 0
  %i.w = extractvalue { <2 x float>, <2 x float> } %i.u, 1
  %i.x = insertelement <2 x float> poison, float %i.s, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.z = fmul <2 x float> %i.y, %i.v              ; 2 uses
  %i.aa = fcmp ogt <2 x float> %i.z, zeroinitializer
  %i.ab = select <2 x i1> %i.aa, <2 x float> %i.z, <2 x float> zeroinitializer
  %i.ac = fmul <2 x float> %i.y, %i.w             ; 2 uses
  %i.ad = fcmp ogt <2 x float> %i.ac, zeroinitializer
  %i.ae = select <2 x i1> %i.ad, <2 x float> %i.ac, <2 x float> zeroinitializer
  br label %bb.e

bb.d:                                             ; preds = %bb.a, %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48
  %17 = load <4 x float>, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !223
  store i64 %i.ah, ptr %11, align 8, !tbaa !223
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %12, ptr noundef nonnull align 4 dereferenceable(76) %2, i64 76, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 4 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !224
  %i.ai = call { <2 x float>, <2 x float> } @_ZN4pbrt25UniversalTextureEvaluatorclENS_15SpectrumTextureENS_18TextureEvalContextENS_18SampledWavelengthsE(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %11, ptr noundef nonnull byval(%"struct.pbrt::TextureEvalContext") align 8 %12, ptr noundef nonnull byval(%"class.pbrt::SampledWavelengths") align 8 %13) ; 2 uses
  %i.aj = extractvalue { <2 x float>, <2 x float> } %i.ai, 0
  %i.ak = extractvalue { <2 x float>, <2 x float> } %i.ai, 1
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.am = load i64, ptr %i.al, align 8, !tbaa !223
  store i64 %i.am, ptr %14, align 8, !tbaa !223
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %15, ptr noundef nonnull align 4 dereferenceable(76) %2, i64 76, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 4 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !224
  %i.an = call { <2 x float>, <2 x float> } @_ZN4pbrt25UniversalTextureEvaluatorclENS_15SpectrumTextureENS_18TextureEvalContextENS_18SampledWavelengthsE(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %14, ptr noundef nonnull byval(%"struct.pbrt::TextureEvalContext") align 8 %15, ptr noundef nonnull byval(%"class.pbrt::SampledWavelengths") align 8 %16) ; 2 uses
  %i.ao = extractvalue { <2 x float>, <2 x float> } %i.an, 0 ; 3 uses
  %i.ap = extractvalue { <2 x float>, <2 x float> } %i.an, 1 ; 3 uses
  %.sroa.0.0.vec.extract = extractelement <2 x float> %i.ao, i64 0
  %i.aq = fcmp olt float %.sroa.0.0.vec.extract, 0.000000e+00
  %.sroa.0.4.vec.extract = extractelement <2 x float> %i.ao, i64 1
  %i.ar = fcmp olt float %.sroa.0.4.vec.extract, 0.000000e+00
  %.sroa.5.8.vec.extract = extractelement <2 x float> %i.ap, i64 0
  %i.as = fcmp olt float %.sroa.5.8.vec.extract, 0.000000e+00
  %.sroa.5.12.vec.extract = extractelement <2 x float> %i.ap, i64 1
  %i.at = fcmp olt float %.sroa.5.12.vec.extract, 0.000000e+00
  %i.au = shufflevector <2 x float> %i.ao, <2 x float> %i.ap, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.av = fcmp ogt <4 x float> %i.au, splat (float 1.000000e+00)
  %i.aw = select <4 x i1> %i.av, <4 x float> splat (float 1.000000e+00), <4 x float> %i.au ; 4 uses
  %i.ax = extractelement <4 x float> %i.aw, i64 0
  %.0.i.i = select i1 %i.aq, float 0.000000e+00, float %i.ax
  %i.ay = extractelement <4 x float> %i.aw, i64 1
  %.0.i.1.i = select i1 %i.ar, float 0.000000e+00, float %i.ay
  %i.az = extractelement <4 x float> %i.aw, i64 2
  %.0.i.2.i = select i1 %i.as, float 0.000000e+00, float %i.az
  %i.ba = extractelement <4 x float> %i.aw, i64 3
  %.0.i.3.i = select i1 %i.at, float 0.000000e+00, float %i.ba
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 4 uses
  %i.bf = load ptr, ptr %i.bb, align 8, !tbaa !166
  %i.bg = load i64, ptr %i.bc, align 8, !tbaa !205
  %i.bh = load ptr, ptr %i.bd, align 8, !tbaa !166
  %i.bi = load i64, ptr %i.be, align 8, !tbaa !205
  %i.bj = call noundef float @_ZN4pbrt16InvertCatmullRomEN4pstd4spanIKfEES3_f(ptr %i.bf, i64 %i.bg, ptr %i.bh, i64 %i.bi, float noundef %.0.i.i)
  %i.bk = load ptr, ptr %i.bb, align 8, !tbaa !166
  %i.bl = load i64, ptr %i.bc, align 8, !tbaa !205
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !166
  %i.bn = load i64, ptr %i.be, align 8, !tbaa !205
  %i.bo = call noundef float @_ZN4pbrt16InvertCatmullRomEN4pstd4spanIKfEES3_f(ptr %i.bk, i64 %i.bl, ptr %i.bm, i64 %i.bn, float noundef %.0.i.1.i)
  %i.bp = shufflevector <4 x float> %17, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bq = fmul <2 x float> %i.bp, %i.aj           ; 2 uses
  %i.br = fcmp ogt <2 x float> %i.bq, zeroinitializer
  %i.bs = select <2 x i1> %i.br, <2 x float> %i.bq, <2 x float> zeroinitializer ; 2 uses
  %i.bt = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.bu = insertelement <2 x float> %i.bt, float %i.bo, i64 1 ; 2 uses
  %i.bv = fsub <2 x float> splat (float 1.000000e+00), %i.bu
  %i.bw = fdiv <2 x float> %i.bv, %i.bs
  %i.bx = fdiv <2 x float> %i.bu, %i.bs
  %i.by = load ptr, ptr %i.bb, align 8, !tbaa !166
  %i.bz = load i64, ptr %i.bc, align 8, !tbaa !205
  %i.ca = load ptr, ptr %i.bd, align 8, !tbaa !166
  %i.cb = load i64, ptr %i.be, align 8, !tbaa !205
  %i.cc = call noundef float @_ZN4pbrt16InvertCatmullRomEN4pstd4spanIKfEES3_f(ptr %i.by, i64 %i.bz, ptr %i.ca, i64 %i.cb, float noundef %.0.i.2.i)
  %i.cd = load ptr, ptr %i.bb, align 8, !tbaa !166
  %i.ce = load i64, ptr %i.bc, align 8, !tbaa !205
  %i.cf = load ptr, ptr %i.bd, align 8, !tbaa !166
  %i.cg = load i64, ptr %i.be, align 8, !tbaa !205
  %i.ch = call noundef float @_ZN4pbrt16InvertCatmullRomEN4pstd4spanIKfEES3_f(ptr %i.cd, i64 %i.ce, ptr %i.cf, i64 %i.cg, float noundef %.0.i.3.i)
  %i.ci = fmul <2 x float> %i.bp, %i.ak           ; 2 uses
  %i.cj = fcmp ogt <2 x float> %i.ci, zeroinitializer
  %i.ck = select <2 x i1> %i.cj, <2 x float> %i.ci, <2 x float> zeroinitializer ; 2 uses
  %i.cl = insertelement <2 x float> poison, float %i.cc, i64 0
  %i.cm = insertelement <2 x float> %i.cl, float %i.ch, i64 1 ; 2 uses
  %i.cn = fsub <2 x float> splat (float 1.000000e+00), %i.cm
  %i.co = fdiv <2 x float> %i.cn, %i.ck
  %i.cp = fdiv <2 x float> %i.cm, %i.ck
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0103.0 = phi <2 x float> [ %i.ab, %bb.c ], [ %i.bx, %bb.d ] ; 2 uses
  %.sroa.9.0 = phi <2 x float> [ %i.ae, %bb.c ], [ %i.cp, %bb.d ] ; 2 uses
  %.sroa.0110.0 = phi <2 x float> [ %i.o, %bb.c ], [ %i.bw, %bb.d ]
  %.sroa.7112.0 = phi <2 x float> [ %i.r, %bb.c ], [ %i.co, %bb.d ]
  %.sroa.09.0.copyload = load <2 x float>, ptr %2, align 4
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.210.0.copyload = load float, ptr %.sroa.210.0..sroa_idx, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.sroa.07.0.copyload = load <2 x float>, ptr %i.cq, align 4
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 96
  %.sroa.28.0.copyload = load float, ptr %.sroa.28.0..sroa_idx, align 4
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 76
  %.sroa.05.0.copyload = load <2 x float>, ptr %i.cr, align 4
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 84
  %.sroa.26.0.copyload = load float, ptr %.sroa.26.0..sroa_idx, align 4
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !227
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 80
  store <2 x float> %.sroa.09.0.copyload, ptr %0, align 8
  %.sroa.222.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.sroa.210.0.copyload, ptr %.sroa.222.0..sroa_idx.i, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 12
  store <2 x float> %.sroa.05.0.copyload, ptr %i.cv, align 4
  %.sroa.214.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %.sroa.26.0.copyload, ptr %.sroa.214.0..sroa_idx.i, align 4
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x float> %.sroa.07.0.copyload, ptr %i.cw, align 8
  %.sroa.218.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %.sroa.28.0.copyload, ptr %.sroa.218.0..sroa_idx.i, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.ct, ptr %i.cx, align 4, !tbaa !853
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.cu, ptr %i.da, align 8, !tbaa !854
  %i.db = fadd <2 x float> %.sroa.0103.0, %.sroa.0110.0 ; 3 uses
  %i.dc = fadd <2 x float> %.sroa.9.0, %.sroa.7112.0 ; 3 uses
  store <2 x float> %i.db, ptr %i.cy, align 8
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x float> %i.dc, ptr %.sroa.45.0..sroa_idx.i, align 8, !tbaa !43
  %i.dd = fcmp une <2 x float> %i.db, zeroinitializer
  %i.de = fdiv <2 x float> %.sroa.0103.0, %i.db
  %i.df = select <2 x i1> %i.dd, <2 x float> %i.de, <2 x float> zeroinitializer
  %i.dg = fcmp une <2 x float> %i.dc, zeroinitializer
  %i.dh = fdiv <2 x float> %.sroa.9.0, %i.dc
  %i.di = select <2 x i1> %i.dg, <2 x float> %i.dh, <2 x float> zeroinitializer
  store <2 x float> %i.df, ptr %i.cz, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x float> %i.di, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !43
  ret void
}

declare noundef float @_ZN4pbrt16InvertCatmullRomEN4pstd4spanIKfEES3_f(ptr, i64, ptr, i64, float noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt6detail21stringPrintfRecursiveIRKNS_8Point3fiEJRKNS_7Normal3IfEERKNS_6Point2IfEERKNS_7Vector3IfEERKfPKcSK_SG_SG_S8_S8_S8_SG_SG_S8_S8_SK_SK_SG_SG_SI_SI_SI_SI_RKiEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_OT_DpOT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) %11, ptr noundef nonnull align 4 dereferenceable(12) %12, ptr noundef nonnull align 4 dereferenceable(12) %13, ptr noundef nonnull align 4 dereferenceable(12) %14, ptr noundef nonnull align 4 dereferenceable(12) %15, ptr noundef nonnull align 4 dereferenceable(12) %16, ptr noundef nonnull align 4 dereferenceable(12) %17, ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 4 dereferenceable(12) %20, ptr noundef nonnull align 4 dereferenceable(12) %21, ptr noundef nonnull align 4 dereferenceable(4) %22, ptr noundef nonnull align 4 dereferenceable(4) %23, ptr noundef nonnull align 4 dereferenceable(4) %24, ptr noundef nonnull align 4 dereferenceable(4) %25, ptr noundef nonnull align 4 dereferenceable(4) %26) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = alloca ptr, align 8                      ; 3 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %29 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  store ptr %1, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #23
  call void @_ZN4pbrt6detail18copyToFormatStringEPPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %28, ptr noundef nonnull %i.c, ptr noundef %0)
  %i.d = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %28, i8 noundef signext 42, i64 noundef 0) #23
  %.not = icmp eq i64 %i.d, -1
  %i.e = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %28, i8 noundef signext 115, i64 noundef 0) #23
  %.not40 = icmp eq i64 %i.e, -1
  %i.f = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %28, i8 noundef signext 100, i64 noundef 0) #23
  br i1 %.not, label %bb.c, label %.invoke

bb.b:                                             ; preds = %.invoke, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  %.not41 = icmp eq i64 %i.f, -1
  br i1 %.not41, label %bb.d, label %.invoke

bb.d:                                             ; preds = %bb.c
  br i1 %.not40, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #23
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %29)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #23
  %.sroa.02.0.copyload.i.i = load <2 x float>, ptr %2, align 4, !noalias !863
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.01.0.copyload.i.i = load <2 x float>, ptr %i.i, align 4, !noalias !863
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.0.copyload.i.i = load <2 x float>, ptr %i.j, align 4, !noalias !863
  invoke void @_ZN4pbrt8internal9ToString3INS_8IntervalEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_S9_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %27, <2 x float> %.sroa.02.0.copyload.i.i, <2 x float> %.sroa.01.0.copyload.i.i, <2 x float> %.sroa.0.0.copyload.i.i)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.f
  %i.k = load ptr, ptr %27, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !42
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef %i.k, i64 noundef %i.m)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.g ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %.noexc
  %i.o = load ptr, ptr %27, align 8, !tbaa !24    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.r = load i64, ptr %i.p, align 8, !tbaa !43
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #24
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.g:                                             ; preds = %.noexc
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %27, align 8, !tbaa !24    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.g
  %i.x = load i64, ptr %i.v, align 8, !tbaa !43
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23
  %i.z = load ptr, ptr %28, align 8, !tbaa !24    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !864)
  call void @llvm.experimental.noalias.scope.decl(metadata !865)
  %i.aa = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 7 uses
  store ptr %i.aa, ptr %31, align 8, !tbaa !41, !alias.scope !866
  %i.ab = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i64 0, ptr %i.ab, align 8, !tbaa !42, !alias.scope !866
  store i8 0, ptr %i.aa, align 8, !tbaa !43, !alias.scope !866
  %i.ac = getelementptr inbounds nuw i8, ptr %29, i64 64
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !146, !noalias !866 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.ad, null
  %i.ae = getelementptr inbounds nuw i8, ptr %29, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !866 ; 2 uses
  %i.ag = icmp ugt ptr %i.ad, %i.af
  %.08.i.i.i = select i1 %i.ag, ptr %i.ad, ptr %i.af ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %29, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !147, !noalias !866 ; 2 uses
  %i.aj = ptrtoint ptr %.08.i.i.i to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %31, i64 noundef 0, i64 noundef 0, ptr noundef %i.ai, i64 noundef %i.al)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.i ; 0 uses
end_hunk_0
