Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/aggregate?download=true
inline.NumInlined: 2847
inline.NumDeleted: 905
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZN4pbrt21BasicTextureEvaluatorclENS_12FloatTextureENS_18TextureEvalContextE:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %4, ptr noundef nonnull align 8 dereferenceable(76) %2, i64 76, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !380
  store ptr %4, ptr %3, align 8, !tbaa !381, !noalias !380
  %i.i = load i64, ptr %i.h, align 8, !tbaa !383, !noalias !384 ; 2 uses
  %i.j = and i64 %i.i, 144115188075855871
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = lshr i64 %i.i, 57
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = add nsw i32 %i.m, -1
  call void @_ZN4pbrt6detail8DispatchIRZNKS_16TextureMapping2D3MapENS_18TextureEvalContextEEUlT_E_NS_10TexCoord2DENS_9UVMappingENS_16SphericalMappingENS_18CylindricalMappingENS_13PlanarMappingEEET0_OS4_PKvi(ptr dead_on_unwind nonnull writable sret(%"struct.pbrt::TexCoord2D") align 4 %5, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.k, i32 noundef %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !380
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.p = load float, ptr %i.o, align 4, !tbaa !53
  %i.q = fsub float 1.000000e+00, %i.p
  store float %i.q, ptr %i.o, align 4, !tbaa !53
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.s = load float, ptr %i.r, align 8, !tbaa !388
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !389
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %5, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.w = load <4 x float>, ptr %i.v, align 8      ; 2 uses
  %.sroa.04.4.vec.insert.i = shufflevector <4 x float> %i.w, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %.sroa.0.4.vec.insert.i = shufflevector <4 x float> %i.w, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.x = call noundef float @_ZNK4pbrt6MIPMap6FilterIfEET_NS_6Point2IfEENS_7Vector2IfEES6_(ptr noundef nonnull align 8 dereferenceable(52) %i.u, <2 x float> %.sroa.0.0.copyload.i, <2 x float> %.sroa.04.4.vec.insert.i, <2 x float> %.sroa.0.4.vec.insert.i)
  %i.y = fmul float %i.s, %i.x                    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !390, !range !115, !noundef !44
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = fsub float 1.000000e+00, %i.y           ; 2 uses
  %i.ad = fcmp ogt float %i.ac, 0.000000e+00
  %.sroa.speculated.i = select i1 %i.ad, float %i.ac, float 0.000000e+00
  %i.ae = select i1 %i.ab, float %.sroa.speculated.i, float %i.y
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef 758, ptr noundef nonnull @.str.9) #29
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.af = and i64 %i.a, 144115188075855871
  %i.ag = inttoptr i64 %i.af to ptr
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 8
  %i.ah = sext i32 %.sroa.2.0.copyload to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !178
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ah
  %i.al = load float, ptr %i.ak, align 4, !tbaa !53
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.am = and i64 %i.a, 144115188075855871
  %.not = icmp eq i64 %i.am, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4pbrt8LogFatalIJRNS_12FloatTextureEEEEvNS_8LogLevelEPKciS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef 1191, ptr noundef nonnull @.str.8, ptr noundef nonnull align 8 dereferenceable(8) %1) #29
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.c, %bb.b
  %.0 = phi float [ %i.f, %bb.b ], [ %i.ae, %bb.c ], [ 0.000000e+00, %bb.f ], [ %i.al, %bb.e ]
  ret float %.0
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt8LogFatalIJRNS_12FloatTextureEEEEvNS_8LogLevelEPKciS5_DpOT_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !179, !alias.scope !393
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !180, !alias.scope !393
  store i8 0, ptr %i.a, align 8, !tbaa !99, !alias.scope !393
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRNS_12FloatTextureEJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %5, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZN4pbrt12StringPrintfIJRNS_12FloatTextureEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %5, align 8, !tbaa !181, !alias.scope !393 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !99, !alias.scope !393
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #28
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRNS_12FloatTextureEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %5, align 8, !tbaa !181
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.h) #29
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRNS_12FloatTextureEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRNS_12FloatTextureEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %5, align 8, !tbaa !181    ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !99
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %common.resume
}

declare noundef float @_ZNK4pbrt6MIPMap6FilterIfEET_NS_6Point2IfEENS_7Vector2IfEES6_(ptr noundef nonnull align 8 dereferenceable(52), <2 x float>, <2 x float>, <2 x float>) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt6detail8DispatchIRZNKS_16TextureMapping2D3MapENS_18TextureEvalContextEEUlT_E_NS_10TexCoord2DENS_9UVMappingENS_16SphericalMappingENS_18CylindricalMappingENS_13PlanarMappingEEET0_OS4_PKvi(ptr dead_on_unwind noalias writable sret(%"struct.pbrt::TexCoord2D") align 4 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 comdat {
bb.a:
  %4 = alloca %"struct.pbrt::TextureEvalContext", align 8 ; 4 uses
  %5 = alloca %"struct.pbrt::TextureEvalContext", align 8 ; 4 uses
  %6 = alloca %"struct.pbrt::TextureEvalContext", align 8 ; 4 uses
  switch i32 %3, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !404)
  %i.a = load ptr, ptr %1, align 8, !tbaa !406, !noalias !404, !nonnull !44, !align !182 ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.66.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !407)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i, align 4, !noalias !404
  %i.e = load <2 x float>, ptr %.sroa.44.0..sroa_idx.i, align 4, !noalias !404
  %i.f = load float, ptr %i.b, align 4, !tbaa !409, !noalias !410
  %i.g = load <2 x float>, ptr %2, align 4, !tbaa !53, !noalias !410 ; 2 uses
  %i.h = fmul <2 x float> %i.d, %i.g
  %i.i = load <2 x float>, ptr %i.c, align 4, !tbaa !53, !noalias !410
  %i.j = shufflevector <2 x float> %i.h, <2 x float> %i.e, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.k = shufflevector <2 x float> %i.i, <2 x float> %i.g, <4 x i32> <i32 0, i32 1, i32 2, i32 2> ; 2 uses
  %i.l = fadd <4 x float> %i.j, %i.k
  %i.m = fmul <4 x float> %i.j, %i.k
  %i.n = shufflevector <4 x float> %i.l, <4 x float> %i.m, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.n, ptr %0, align 4, !alias.scope !410
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load <2 x float>, ptr %.sroa.66.0..sroa_idx.i, align 4, !noalias !404
  %i.q = insertelement <2 x float> poison, float %i.f, i64 0
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer
  %i.s = fmul <2 x float> %i.p, %i.r
  store <2 x float> %i.s, ptr %i.o, align 4, !tbaa !53, !alias.scope !410
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.t = load ptr, ptr %1, align 8, !tbaa !406, !noalias !411, !nonnull !44, !align !182
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %6, ptr noundef nonnull align 4 dereferenceable(76) %i.t, i64 76, i1 false), !noalias !411
  tail call void @_ZNK4pbrt16SphericalMapping3MapENS_18TextureEvalContextE(ptr dead_on_unwind writable sret(%"struct.pbrt::TexCoord2D") align 4 %0, ptr noundef nonnull align 4 dereferenceable(128) %2, ptr noundef nonnull byval(%"struct.pbrt::TextureEvalContext") align 8 %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.u = load ptr, ptr %1, align 8, !tbaa !406, !noalias !412, !nonnull !44, !align !182
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %5, ptr noundef nonnull align 4 dereferenceable(76) %i.u, i64 76, i1 false), !noalias !412
  tail call void @_ZNK4pbrt18CylindricalMapping3MapENS_18TextureEvalContextE(ptr dead_on_unwind writable sret(%"struct.pbrt::TexCoord2D") align 4 %0, ptr noundef nonnull align 4 dereferenceable(128) %2, ptr noundef nonnull byval(%"struct.pbrt::TextureEvalContext") align 8 %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.v = load ptr, ptr %1, align 8, !tbaa !406, !noalias !413, !nonnull !44, !align !182
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %4, ptr noundef nonnull align 4 dereferenceable(76) %i.v, i64 76, i1 false), !noalias !413
  tail call void @_ZNK4pbrt13PlanarMapping3MapENS_18TextureEvalContextE(ptr dead_on_unwind writable sret(%"struct.pbrt::TexCoord2D") align 4 %0, ptr noundef nonnull align 4 dereferenceable(160) %2, ptr noundef nonnull byval(%"struct.pbrt::TextureEvalContext") align 8 %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4pbrt16SphericalMapping3MapENS_18TextureEvalContextE(ptr dead_on_unwind noalias writable sret(%"struct.pbrt::TexCoord2D") align 4 %0, ptr noundef nonnull align 4 dereferenceable(128) %1, ptr noundef byval(%"struct.pbrt::TextureEvalContext") align 8 %2) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %.sroa.0108.0.copyload = load <2 x float>, ptr %2, align 8 ; 4 uses
  %.sroa.2109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %3 = load <1 x float>, ptr %.sroa.2109.0..sroa_idx, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.c = load float, ptr %i.b, align 4, !tbaa !53
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.073.0.copyload = load <2 x float>, ptr %i.k, align 4 ; 4 uses
  %.sroa.274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  %4 = load <2 x float>, ptr %.sroa.274.0..sroa_idx, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.062.0.copyload = load <2 x float>, ptr %i.l, align 8 ; 4 uses
  %.sroa.263.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.263.0.copyload = load float, ptr %.sroa.263.0..sroa_idx, align 8
  %i.m = load <2 x float>, ptr %1, align 4, !tbaa !53 ; 5 uses
  %i.n = load <2 x float>, ptr %i.d, align 4, !tbaa !53 ; 5 uses
  %i.o = load float, ptr %i.e, align 4, !tbaa !53
  %i.p = load <2 x float>, ptr %i.g, align 4, !tbaa !53 ; 4 uses
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.r = load <2 x float>, ptr %i.h, align 4, !tbaa !53 ; 3 uses
  %i.s = load <2 x float>, ptr %i.i, align 4, !tbaa !53 ; 2 uses
  %i.t = load <2 x float>, ptr %i.j, align 4, !tbaa !53 ; 2 uses
  %i.u = shufflevector <1 x float> %3, <1 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.v = shufflevector <2 x float> %i.r, <2 x float> %i.t, <2 x i32> <i32 0, i32 2>
  %i.w = fmul <2 x float> %i.u, %i.v
  %i.x = shufflevector <2 x float> %i.p, <2 x float> %i.s, <2 x i32> <i32 0, i32 3>
  %i.y = fmul <2 x float> %.sroa.0108.0.copyload, %i.x
  %i.z = shufflevector <2 x float> %.sroa.0108.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.aa = shufflevector <2 x float> %i.p, <2 x float> %i.s, <2 x i32> <i32 1, i32 2>
  %i.ab = fmul <2 x float> %i.z, %i.aa
  %i.ac = fadd <2 x float> %i.ab, %i.y
  %i.ad = fadd <2 x float> %i.ac, %i.w
  %i.ae = shufflevector <2 x float> %i.r, <2 x float> %i.t, <2 x i32> <i32 1, i32 3>
  %i.af = fadd <2 x float> %i.ae, %i.ad           ; 3 uses
  %i.ag = extractelement <2 x float> %i.af, i64 1 ; 2 uses
  %i.ah = fcmp oeq float %i.ag, 1.000000e+00      ; 2 uses
  %i.ai = extractelement <2 x float> %i.af, i64 0 ; 2 uses
  %i.aj = fdiv float %i.ai, %i.ag
  %.sroa.495.0.i = select i1 %i.ah, float %i.ai, float %i.aj ; 4 uses
  %i.ak = fmul float %.sroa.495.0.i, %.sroa.495.0.i
  %i.al = shufflevector <2 x float> %i.n, <2 x float> %i.m, <2 x i32> <i32 0, i32 2>
  %i.am = shufflevector <2 x float> %.sroa.073.0.copyload, <2 x float> %.sroa.062.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.an = fmul <2 x float> %i.al, %i.am
  %i.ao = shufflevector <2 x float> %i.n, <2 x float> %i.m, <2 x i32> <i32 1, i32 3>
  %i.ap = shufflevector <2 x float> %.sroa.073.0.copyload, <2 x float> %.sroa.062.0.copyload, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.aq = fmul <2 x float> %i.ao, %i.ap
  %i.ar = fadd <2 x float> %i.an, %i.aq
  %i.as = insertelement <2 x float> %4, float %.sroa.263.0.copyload, i64 1 ; 3 uses
  %i.at = shufflevector <2 x float> %i.m, <2 x float> %i.n, <2 x i32> <i32 0, i32 2>
  %i.au = fmul <2 x float> %i.at, %i.am
  %i.av = shufflevector <2 x float> %i.m, <2 x float> %i.n, <2 x i32> <i32 1, i32 3>
  %i.aw = fmul <2 x float> %i.av, %i.ap
  %i.ax = fadd <2 x float> %i.au, %i.aw
  %i.ay = shufflevector <2 x float> %.sroa.073.0.copyload, <2 x float> %.sroa.062.0.copyload, <2 x i32> <i32 1, i32 2>
  %i.az = fmul <2 x float> %i.q, %i.ay
  %i.ba = shufflevector <2 x float> %.sroa.073.0.copyload, <2 x float> %.sroa.062.0.copyload, <2 x i32> <i32 0, i32 3>
  %i.bb = fmul <2 x float> %i.p, %i.ba
  %i.bc = fadd <2 x float> %i.az, %i.bb
  %i.bd = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.be = fmul <2 x float> %i.bd, %i.as
  %i.bf = fadd <2 x float> %i.be, %i.bc           ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bh = load <2 x float>, ptr %i.f, align 4, !tbaa !53 ; 4 uses
  %i.bi = load <2 x float>, ptr %i.a, align 4, !tbaa !53 ; 4 uses
  %i.bj = shufflevector <2 x float> %i.bh, <2 x float> %i.bi, <2 x i32> <i32 0, i32 3>
  %i.bk = fmul <2 x float> %i.u, %i.bj
  %i.bl = shufflevector <2 x float> %i.n, <2 x float> %i.bi, <2 x i32> <i32 0, i32 2>
  %i.bm = fmul <2 x float> %.sroa.0108.0.copyload, %i.bl
  %i.bn = insertelement <2 x float> %i.m, float %i.o, i64 1
  %i.bo = fmul <2 x float> %.sroa.0108.0.copyload, %i.bn
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bq = fadd <2 x float> %i.bp, %i.bm
  %i.br = fadd <2 x float> %i.bq, %i.bk
  %i.bs = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bt = insertelement <2 x float> %i.bs, float %i.c, i64 1
  %i.bu = fadd <2 x float> %i.bt, %i.br           ; 2 uses
  %i.bv = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bw = fdiv <2 x float> %i.bu, %i.bv
  %i.bx = insertelement <2 x i1> poison, i1 %i.ah, i64 0
  %i.by = shufflevector <2 x i1> %i.bx, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.bz = select <2 x i1> %i.by, <2 x float> %i.bu, <2 x float> %i.bw ; 7 uses
  %i.ca = extractelement <2 x float> %i.bz, i64 1 ; 3 uses
  %i.cb = fmul float %i.ca, %i.ca
  %i.cc = extractelement <2 x float> %i.bz, i64 0
  %foldExtExtBinop = fmul <2 x float> %i.bz, %i.bz
  %i.cd = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ce = fadd float %i.cb, %i.cd                 ; 3 uses
  %sqrt = tail call float @llvm.sqrt.f32(float %i.ce) ; 2 uses
  %i.cf = fmul float %i.ce, f0x40C90FDB           ; 2 uses
  %i.cg = fneg <2 x float> %i.bz
  %i.ch = shufflevector <2 x float> %i.bz, <2 x float> %i.cg, <2 x i32> <i32 1, i32 2>
  %i.ci = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ck = fdiv <2 x float> %i.ch, %i.cj           ; 2 uses
  %i.cl = fdiv float 0.000000e+00, %i.cf
  %i.cm = fadd float %i.ak, %i.ce                 ; 2 uses
  %i.cn = fmul float %i.cm, f0x40490FDB
  %i.co = fdiv float 1.000000e+00, %i.cn          ; 2 uses
  %i.cp = insertelement <2 x float> poison, float %.sroa.495.0.i, i64 0
  %i.cq = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cr = fmul <2 x float> %i.bz, %i.cq
  %i.cs = insertelement <2 x float> poison, float %sqrt, i64 0
  %i.ct = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cu = fdiv <2 x float> %i.cr, %i.ct
  %i.cv = fneg float %sqrt
  %i.cw = insertelement <2 x float> poison, float %i.co, i64 0
  %i.cx = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cy = fmul <2 x float> %i.cu, %i.cx           ; 2 uses
  %i.cz = fmul float %i.co, %i.cv
  %i.da = shufflevector <2 x float> %i.bh, <2 x float> %i.bi, <2 x i32> <i32 0, i32 3>
  %i.db = fmul <2 x float> %i.da, %i.as
  %i.dc = fadd <2 x float> %i.db, %i.ar           ; 2 uses
  %i.dd = shufflevector <2 x float> %i.bi, <2 x float> %i.bh, <2 x i32> <i32 1, i32 2>
  %i.de = fmul <2 x float> %i.dd, %i.as
  %i.df = fadd <2 x float> %i.de, %i.ax           ; 2 uses
  %i.dg = fmul <2 x float> %i.dc, %i.ck
  %i.dh = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.di = fmul <2 x float> %i.df, %i.dh
  %i.dj = fadd <2 x float> %i.dg, %i.di
  %i.dk = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.dl = fmul <2 x float> %i.dc, %i.cy
  %i.dm = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dn = fmul <2 x float> %i.df, %i.dm
  %i.do = fadd <2 x float> %i.dl, %i.dn
  %i.dp = insertelement <2 x float> poison, float %i.cz, i64 0
  %i.dq = shufflevector <2 x float> %i.dp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dr = fmul <2 x float> %i.bf, %i.dq
  %i.ds = fadd <2 x float> %i.dr, %i.do
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.cm) ; 3 uses
  %i.dt = fdiv float %i.ca, %sqrt.i.i
  %i.du = fdiv float %i.cc, %sqrt.i.i
  %i.dv = fdiv float %.sroa.495.0.i, %sqrt.i.i    ; 3 uses
  %i.dw = fcmp olt float %i.dv, -1.000000e+00
  %i.dx = fcmp ogt float %i.dv, 1.000000e+00
  %..i.i.i = select i1 %i.dx, float 1.000000e+00, float %i.dv
  %.0.i.i.i = select i1 %i.dw, float -1.000000e+00, float %..i.i.i
  %i.dy = tail call noundef float @acosf(float noundef %.0.i.i.i) #25
  %i.dz = tail call noundef float @atan2f(float noundef %i.du, float noundef %i.dt) #25 ; 3 uses
  %i.ea = fcmp olt float %i.dz, 0.000000e+00
  %i.eb = fadd float %i.dz, f0x40C90FDB
  %i.ec = select i1 %i.ea, float %i.eb, float %i.dz
  %i.ed = insertelement <4 x float> poison, float %i.dy, i64 0
  %i.ee = insertelement <4 x float> %i.ed, float %i.ec, i64 1
  %i.ef = shufflevector <2 x float> %i.bf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.eg = shufflevector <2 x float> %i.dk, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.eh = fmul <4 x float> %i.ef, %i.eg
  %i.ei = shufflevector <4 x float> %i.ee, <4 x float> %i.eh, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.ej = shufflevector <2 x float> %i.dj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ek = shufflevector <4 x float> <float f0x3EA2F983, float f0x3E22F983, float poison, float poison>, <4 x float> %i.ej, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.el = fmul <4 x float> %i.ei, %i.ek
  %i.em = fadd <4 x float> %i.ei, %i.ek
  %i.en = shufflevector <4 x float> %i.el, <4 x float> %i.em, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.en, ptr %0, align 4
  store <2 x float> %i.ds, ptr %i.bg, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @acosf(float noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4pbrt18CylindricalMapping3MapENS_18TextureEvalContextE(ptr dead_on_unwind noalias writable sret(%"struct.pbrt::TexCoord2D") align 4 %0, ptr noundef nonnull align 4 dereferenceable(128) %1, ptr noundef byval(%"struct.pbrt::TextureEvalContext") align 8 %2) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %.sroa.067.0.copyload = load <2 x float>, ptr %2, align 8 ; 5 uses
  %.sroa.268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.268.0.copyload = load float, ptr %.sroa.268.0..sroa_idx, align 8 ; 3 uses
  %i.a = shufflevector <2 x float> %.sroa.067.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load float, ptr %i.c, align 4, !tbaa !53 ; 3 uses
  %i.e = fmul float %.sroa.268.0.copyload, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load float, ptr %i.f, align 4, !tbaa !53
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load float, ptr %i.k, align 4, !tbaa !53 ; 2 uses
  %i.m = fmul float %.sroa.268.0.copyload, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.o = load float, ptr %i.n, align 4, !tbaa !53
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.r = load float, ptr %i.q, align 4, !tbaa !53
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.048.0.copyload = load <2 x float>, ptr %i.s, align 4 ; 4 uses
  %.sroa.249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.249.0.copyload = load float, ptr %.sroa.249.0..sroa_idx, align 4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.038.0.copyload = load <2 x float>, ptr %i.t, align 8 ; 4 uses
  %.sroa.239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.239.0.copyload = load float, ptr %.sroa.239.0..sroa_idx, align 8 ; 2 uses
  %.sroa_idx101 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load <2 x float>, ptr %1, align 4, !tbaa !53 ; 5 uses
  %i.w = load float, ptr %i.b, align 4, !tbaa !53
  %foldExtExtBinop = fmul <2 x float> %.sroa.067.0.copyload, %i.v
  %i.x = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.y = extractelement <2 x float> %.sroa.067.0.copyload, i64 1 ; 2 uses
  %i.z = fmul float %i.y, %i.w
  %i.aa = fadd float %i.x, %i.z
  %i.ab = fadd float %i.aa, %i.e
  %i.ac = fadd float %i.g, %i.ab                  ; 2 uses
  %i.ad = load <2 x float>, ptr %i.h, align 4, !tbaa !53 ; 5 uses
  %i.ae = load <2 x float>, ptr %i.p, align 4, !tbaa !53 ; 2 uses
  %i.af = load <8 x float>, ptr %i.i, align 4, !tbaa !53 ; 5 uses
  %i.ag = insertelement <2 x float> poison, float %.sroa.268.0.copyload, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ai = shufflevector <2 x float> %i.ae, <2 x float> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aj = shufflevector <8 x float> %i.af, <8 x float> %i.ai, <2 x i32> <i32 1, i32 9>
  %i.ak = fmul <2 x float> %i.ah, %i.aj
  %i.al = shufflevector <2 x float> %i.ad, <2 x float> %i.ae, <2 x i32> <i32 0, i32 2>
  %i.am = fmul <2 x float> %.sroa.067.0.copyload, %i.al
  %i.an = shufflevector <8 x float> %i.af, <8 x float> poison, <2 x i32> <i32 0, i32 7>
  %i.ao = fmul <2 x float> %i.a, %i.an
  %i.ap = fadd <2 x float> %i.ao, %i.am
  %i.aq = fadd <2 x float> %i.ap, %i.ak
  %i.ar = shufflevector <8 x float> %i.af, <8 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.as = insertelement <2 x float> %i.ar, float %i.r, i64 1
  %i.at = fadd <2 x float> %i.as, %i.aq           ; 2 uses
  %i.au = extractelement <2 x float> %i.at, i64 1 ; 4 uses
  %i.av = fcmp oeq float %i.au, 1.000000e+00      ; 3 uses
  %i.aw = load <2 x float>, ptr %i.j, align 4, !tbaa !53 ; 4 uses
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %foldExtExtBinop109 = fmul <2 x float> %.sroa.067.0.copyload, %i.aw
  %i.ay = extractelement <2 x float> %foldExtExtBinop109, i64 0
  %i.az = extractelement <2 x float> %i.aw, i64 1
  %i.ba = fmul float %i.y, %i.az
  %i.bb = fadd float %i.ay, %i.ba
  %i.bc = fadd float %i.bb, %i.m
  %i.bd = fadd float %i.o, %i.bc                  ; 2 uses
  %i.be = fdiv float %i.ac, %i.au
  %i.bf = extractelement <2 x float> %i.at, i64 0 ; 2 uses
  %i.bg = fdiv float %i.bf, %i.au
  %i.bh = fdiv float %i.bd, %i.au
  %.sink96.i = select i1 %i.av, float %i.ac, float %i.be ; 4 uses
  %.sink.i = select i1 %i.av, float %i.bf, float %i.bg ; 4 uses
  %.sroa.495.0.i = select i1 %i.av, float %i.bd, float %i.bh
  %i.bi = fmul float %.sink96.i, %.sink96.i
  %i.bj = fmul float %.sink.i, %.sink.i
  %i.bk = fadd float %i.bi, %i.bj
  %i.bl = fneg float %.sink.i
  %i.bm = fmul float %i.bk, f0x40C90FDB           ; 2 uses
  %i.bn = insertelement <4 x float> poison, float %.sink96.i, i64 0
  %i.bo = insertelement <4 x float> %i.bn, float %i.bl, i64 1
end_hunk_0
