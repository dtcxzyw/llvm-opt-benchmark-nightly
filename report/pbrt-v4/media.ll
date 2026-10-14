Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/media?download=true
inline.NumInlined: 3149
inline.NumDeleted: 1021
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN4pbrt21BasicTextureEvaluatorclENS_12FloatTextureENS_18TextureEvalContextE:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %4, ptr noundef nonnull align 8 dereferenceable(76) %2, i64 76, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !656
  store ptr %4, ptr %3, align 8, !tbaa !657, !noalias !656
  %i.i = load i64, ptr %i.h, align 8, !tbaa !659, !noalias !660 ; 2 uses
  %i.j = and i64 %i.i, 144115188075855871
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = lshr i64 %i.i, 57
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = add nsw i32 %i.m, -1
  call void @_ZN4pbrt6detail8DispatchIRZNKS_16TextureMapping2D3MapENS_18TextureEvalContextEEUlT_E_NS_10TexCoord2DENS_9UVMappingENS_16SphericalMappingENS_18CylindricalMappingENS_13PlanarMappingEEET0_OS4_PKvi(ptr dead_on_unwind nonnull writable sret(%"struct.pbrt::TexCoord2D") align 4 %5, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.k, i32 noundef %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !656
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.p = load float, ptr %i.o, align 4, !tbaa !122
  %i.q = fsub float 1.000000e+00, %i.p
  store float %i.q, ptr %i.o, align 4, !tbaa !122
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.s = load float, ptr %i.r, align 8, !tbaa !664
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !665
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %5, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.w = load <4 x float>, ptr %i.v, align 8      ; 2 uses
  %.sroa.04.4.vec.insert.i = shufflevector <4 x float> %i.w, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %.sroa.0.4.vec.insert.i = shufflevector <4 x float> %i.w, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.x = call noundef float @_ZNK4pbrt6MIPMap6FilterIfEET_NS_6Point2IfEENS_7Vector2IfEES6_(ptr noundef nonnull align 8 dereferenceable(52) %i.u, <2 x float> %.sroa.0.0.copyload.i, <2 x float> %.sroa.04.4.vec.insert.i, <2 x float> %.sroa.0.4.vec.insert.i)
  %i.y = fmul float %i.s, %i.x                    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !666, !range !55, !noundef !56
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = fsub float 1.000000e+00, %i.y           ; 2 uses
  %i.ad = fcmp ogt float %i.ac, 0.000000e+00
  %.sroa.speculated.i = select i1 %i.ad, float %i.ac, float 0.000000e+00
  %i.ae = select i1 %i.ab, float %.sroa.speculated.i, float %i.y
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.28, i32 noundef 758, ptr noundef nonnull @.str.30) #26
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.af = and i64 %i.a, 144115188075855871
  %i.ag = inttoptr i64 %i.af to ptr
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 8
  %i.ah = sext i32 %.sroa.2.0.copyload to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !128
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ah
  %i.al = load float, ptr %i.ak, align 4, !tbaa !122
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.am = and i64 %i.a, 144115188075855871
  %.not = icmp eq i64 %i.am, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4pbrt8LogFatalIJRNS_12FloatTextureEEEEvNS_8LogLevelEPKciS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.28, i32 noundef 1191, ptr noundef nonnull @.str.29, ptr noundef nonnull align 8 dereferenceable(8) %1) #26
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.c, %bb.b
  %.0 = phi float [ %i.f, %bb.b ], [ %i.ae, %bb.c ], [ 0.000000e+00, %bb.f ], [ %i.al, %bb.e ]
  ret float %.0
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt8LogFatalIJRNS_12FloatTextureEEEEvNS_8LogLevelEPKciS5_DpOT_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !238, !alias.scope !669
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !240, !alias.scope !669
  store i8 0, ptr %i.a, align 8, !tbaa !116, !alias.scope !669
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRNS_12FloatTextureEJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %5, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZN4pbrt12StringPrintfIJRNS_12FloatTextureEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %5, align 8, !tbaa !241, !alias.scope !669 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !116, !alias.scope !669
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #28
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRNS_12FloatTextureEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %5, align 8, !tbaa !241
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.h) #26
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRNS_12FloatTextureEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRNS_12FloatTextureEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %5, align 8, !tbaa !241    ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !116
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !680)
  %i.a = load ptr, ptr %1, align 8, !tbaa !682, !noalias !680, !nonnull !56, !align !225 ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.66.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !683)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i, align 4, !noalias !680
  %i.e = load <2 x float>, ptr %.sroa.44.0..sroa_idx.i, align 4, !noalias !680
  %i.f = load float, ptr %i.b, align 4, !tbaa !685, !noalias !686
  %i.g = load <2 x float>, ptr %2, align 4, !tbaa !122, !noalias !686 ; 2 uses
  %i.h = fmul <2 x float> %i.d, %i.g
  %i.i = load <2 x float>, ptr %i.c, align 4, !tbaa !122, !noalias !686
  %i.j = shufflevector <2 x float> %i.h, <2 x float> %i.e, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.k = shufflevector <2 x float> %i.i, <2 x float> %i.g, <4 x i32> <i32 0, i32 1, i32 2, i32 2> ; 2 uses
  %i.l = fadd <4 x float> %i.j, %i.k
  %i.m = fmul <4 x float> %i.j, %i.k
  %i.n = shufflevector <4 x float> %i.l, <4 x float> %i.m, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.n, ptr %0, align 4, !alias.scope !686
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load <2 x float>, ptr %.sroa.66.0..sroa_idx.i, align 4, !noalias !680
  %i.q = insertelement <2 x float> poison, float %i.f, i64 0
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer
  %i.s = fmul <2 x float> %i.p, %i.r
  store <2 x float> %i.s, ptr %i.o, align 4, !tbaa !122, !alias.scope !686
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.t = load ptr, ptr %1, align 8, !tbaa !682, !noalias !687, !nonnull !56, !align !225
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %6, ptr noundef nonnull align 4 dereferenceable(76) %i.t, i64 76, i1 false), !noalias !687
  tail call void @_ZNK4pbrt16SphericalMapping3MapENS_18TextureEvalContextE(ptr dead_on_unwind writable sret(%"struct.pbrt::TexCoord2D") align 4 %0, ptr noundef nonnull align 4 dereferenceable(128) %2, ptr noundef nonnull byval(%"struct.pbrt::TextureEvalContext") align 8 %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.u = load ptr, ptr %1, align 8, !tbaa !682, !noalias !688, !nonnull !56, !align !225
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %5, ptr noundef nonnull align 4 dereferenceable(76) %i.u, i64 76, i1 false), !noalias !688
  tail call void @_ZNK4pbrt18CylindricalMapping3MapENS_18TextureEvalContextE(ptr dead_on_unwind writable sret(%"struct.pbrt::TexCoord2D") align 4 %0, ptr noundef nonnull align 4 dereferenceable(128) %2, ptr noundef nonnull byval(%"struct.pbrt::TextureEvalContext") align 8 %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.v = load ptr, ptr %1, align 8, !tbaa !682, !noalias !689, !nonnull !56, !align !225
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %4, ptr noundef nonnull align 4 dereferenceable(76) %i.v, i64 76, i1 false), !noalias !689
  tail call void @_ZNK4pbrt13PlanarMapping3MapENS_18TextureEvalContextE(ptr dead_on_unwind writable sret(%"struct.pbrt::TexCoord2D") align 4 %0, ptr noundef nonnull align 4 dereferenceable(160) %2, ptr noundef nonnull byval(%"struct.pbrt::TextureEvalContext") align 8 %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4pbrt16SphericalMapping3MapENS_18TextureEvalContextE(ptr dead_on_unwind noalias writable sret(%"struct.pbrt::TexCoord2D") align 4 %0, ptr noundef nonnull align 4 dereferenceable(128) %1, ptr noundef byval(%"struct.pbrt::TextureEvalContext") align 8 %2) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %.sroa.0108.0.copyload = load <2 x float>, ptr %2, align 8 ; 4 uses
  %.sroa.2109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %3 = load <4 x float>, ptr %.sroa.2109.0..sroa_idx, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.c = load float, ptr %i.b, align 4, !tbaa !122
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
  %4 = load <4 x float>, ptr %.sroa.274.0..sroa_idx, align 4
  %5 = shufflevector <4 x float> %4, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.062.0.copyload = load <2 x float>, ptr %i.l, align 8 ; 4 uses
  %.sroa.263.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.263.0.copyload = load float, ptr %.sroa.263.0..sroa_idx, align 8
  %i.m = load <2 x float>, ptr %1, align 4, !tbaa !122 ; 5 uses
  %i.n = load <2 x float>, ptr %i.d, align 4, !tbaa !122 ; 5 uses
  %i.o = load float, ptr %i.e, align 4, !tbaa !122
  %i.p = load <2 x float>, ptr %i.g, align 4, !tbaa !122 ; 4 uses
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.r = load <2 x float>, ptr %i.h, align 4, !tbaa !122 ; 3 uses
  %i.s = load <2 x float>, ptr %i.i, align 4, !tbaa !122 ; 2 uses
  %i.t = load <2 x float>, ptr %i.j, align 4, !tbaa !122 ; 2 uses
  %i.u = shufflevector <4 x float> %3, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
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
  %i.as = insertelement <2 x float> %5, float %.sroa.263.0.copyload, i64 1 ; 3 uses
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
  %i.bh = load <2 x float>, ptr %i.f, align 4, !tbaa !122 ; 4 uses
  %i.bi = load <2 x float>, ptr %i.a, align 4, !tbaa !122 ; 4 uses
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
  store <2 x float> %i.ds, ptr %i.bg, align 4, !tbaa !122
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @acosf(float noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #20

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4pbrt18CylindricalMapping3MapENS_18TextureEvalContextE(ptr dead_on_unwind noalias writable sret(%"struct.pbrt::TexCoord2D") align 4 %0, ptr noundef nonnull align 4 dereferenceable(128) %1, ptr noundef byval(%"struct.pbrt::TextureEvalContext") align 8 %2) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %.sroa.067.0.copyload = load <2 x float>, ptr %2, align 8 ; 5 uses
  %.sroa.268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.268.0.copyload = load float, ptr %.sroa.268.0..sroa_idx, align 8 ; 3 uses
  %i.a = shufflevector <2 x float> %.sroa.067.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load float, ptr %i.c, align 4, !tbaa !122 ; 3 uses
  %i.e = fmul float %.sroa.268.0.copyload, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load float, ptr %i.f, align 4, !tbaa !122
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load float, ptr %i.k, align 4, !tbaa !122 ; 2 uses
  %i.m = fmul float %.sroa.268.0.copyload, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.o = load float, ptr %i.n, align 4, !tbaa !122
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.r = load float, ptr %i.q, align 4, !tbaa !122
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
  %i.v = load <2 x float>, ptr %1, align 4, !tbaa !122 ; 5 uses
  %i.w = load float, ptr %i.b, align 4, !tbaa !122
  %foldExtExtBinop = fmul <2 x float> %.sroa.067.0.copyload, %i.v
  %i.x = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.y = extractelement <2 x float> %.sroa.067.0.copyload, i64 1 ; 2 uses
  %i.z = fmul float %i.y, %i.w
  %i.aa = fadd float %i.x, %i.z
  %i.ab = fadd float %i.aa, %i.e
  %i.ac = fadd float %i.g, %i.ab                  ; 2 uses
  %i.ad = load <2 x float>, ptr %i.h, align 4, !tbaa !122 ; 5 uses
  %i.ae = load <2 x float>, ptr %i.p, align 4, !tbaa !122 ; 2 uses
  %i.af = load <8 x float>, ptr %i.i, align 4, !tbaa !122 ; 5 uses
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
  %i.aw = load <2 x float>, ptr %i.j, align 4, !tbaa !122 ; 4 uses
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
begin_hunk_1_@_ZNK4pbrt15BVHLightSampler6SampleERKNS_18LightSampleContextEf:bb.a
  %i.g = icmp ne i64 %i.f, 0                      ; 2 uses
  %i.h = zext i1 %i.g to i64
  %i.i = add i64 %i.c, %i.h
  %i.j = uitofp i64 %i.i to float
  %i.k = fdiv float %i.d, %i.j                    ; 5 uses
  %i.l = fcmp olt float %3, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = fdiv float %3, %i.k
  %i.n = fmul float %i.m, %i.d
  %i.o = fptosi float %i.n to i32
  %i.p = trunc i64 %i.c to i32
  %i.q = add i32 %i.p, -1
  %.sroa.speculated73 = tail call i32 @llvm.smin.i32(i32 %i.q, i32 %i.o)
  %i.r = fdiv float %i.k, %i.d
  %i.s = sext i32 %.sroa.speculated73 to i64
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !312
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  %i.w = load i64, ptr %i.v, align 8, !tbaa !192
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.x, align 8, !tbaa !301
  store i64 %i.w, ptr %0, align 8, !tbaa !192
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.r, ptr %i.y, align 8, !tbaa !306
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  %.sroa.0.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.sroa.5.0.copyload.i = load float, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 4
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.0.sroa.6.0.copyload.i = load float, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 4
  %i.z = load <2 x float>, ptr %.sroa.0.sroa.2.0..sroa_idx.i, align 4
  %i.aa = load <4 x float>, ptr %2, align 4
  %i.ab = shufflevector <4 x float> %i.aa, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.ac = fadd <2 x float> %i.z, %i.ab
  %i.ad = fmul <2 x float> %i.ac, splat (float 5.000000e-01) ; 3 uses
  %i.ae = fadd float %.sroa.0.sroa.5.0.copyload.i, %.sroa.0.sroa.6.0.copyload.i
  %i.af = fmul float %i.ae, 5.000000e-01          ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 36
  %.sroa.033.0.copyload = load <2 x float>, ptr %i.ag, align 4 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 44
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4 ; 3 uses
  %i.ah = fsub float 1.000000e+00, %i.k           ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !1075 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %4, ptr noundef nonnull align 32 dereferenceable(32) %i.ak, i64 32, i1 false), !tbaa.struct !1076
  %i.al = load i32, ptr %i.aj, align 8            ; 2 uses
  %.not88 = icmp sgt i32 %i.al, -1
  br i1 %.not88, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.e
  %i.am = fsub float %3, %i.k
  %i.an = fdiv float %i.am, %i.ah                 ; 2 uses
  %i.ao = fcmp ogt float %i.an, f0x3F7FFFFF
  %.sroa.speculated = select i1 %i.ao, float f0x3F7FFFFF, float %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.j
  %i.ar = phi i32 [ %i.al, %.lr.ph ], [ %i.by, %bb.j ] ; 2 uses
  %i.as = phi ptr [ %i.ak, %.lr.ph ], [ %i.bw, %bb.j ] ; 2 uses
  %.05591 = phi i32 [ 0, %.lr.ph ], [ %i.bu, %bb.j ]
  %.05790 = phi float [ %i.ah, %.lr.ph ], [ %i.bs, %bb.j ]
  %.089 = phi float [ %.sroa.speculated, %.lr.ph ], [ %.sroa.speculated.i, %bb.j ]
  %i.at = add nuw nsw i32 %.05591, 1              ; 2 uses
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [32 x i8], ptr %i.as, i64 %i.au
  %i.aw = zext nneg i32 %i.ar to i64
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %i.as, i64 %i.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.ay = tail call noundef float @_ZNK4pbrt18CompactLightBounds10ImportanceENS_6Point3IfEENS_7Normal3IfEERKNS_7Bounds3IfEE(ptr noundef nonnull align 4 dereferenceable(24) %i.av, <2 x float> %i.ad, float %i.af, <2 x float> %.sroa.033.0.copyload, float %.sroa.6.0.copyload, ptr noundef nonnull align 4 dereferenceable(24) %i.ap) ; 3 uses
  store float %i.ay, ptr %i.a, align 4, !tbaa !122
  %i.az = tail call noundef float @_ZNK4pbrt18CompactLightBounds10ImportanceENS_6Point3IfEENS_7Normal3IfEERKNS_7Bounds3IfEE(ptr noundef nonnull align 4 dereferenceable(24) %i.ax, <2 x float> %i.ad, float %i.af, <2 x float> %.sroa.033.0.copyload, float %.sroa.6.0.copyload, ptr noundef nonnull align 4 dereferenceable(24) %i.ap) ; 3 uses
  store float %i.az, ptr %i.aq, align 4, !tbaa !122
  %i.ba = fcmp une float %i.ay, 0.000000e+00
  %i.bb = fcmp une float %i.az, 0.000000e+00
  %or.cond.not = or i1 %i.ba, %i.bb
  br i1 %or.cond.not, label %.lr.ph.i.preheader, label %.thread

.lr.ph.i.preheader:                               ; preds = %bb.f
  %i.bc = fadd float %i.ay, 0.000000e+00
  %i.bd = fadd float %i.bc, %i.az                 ; 3 uses
  %i.be = fmul float %.089, %i.bd                 ; 5 uses
  %i.bf = fcmp oeq float %i.be, %i.bd
  br i1 %i.bf, label %bb.g, label %_ZN4pbrt13NextFloatDownEf.exit.i

.thread:                                          ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.m

bb.g:                                             ; preds = %.lr.ph.i.preheader
  %or.cond.i.i = fcmp oeq float %i.be, -inf
  br i1 %or.cond.i.i, label %_ZN4pbrt13NextFloatDownEf.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bg = fcmp oeq float %i.be, 0.000000e+00
  %spec.store.select.i.i = select i1 %i.bg, float -0.000000e+00, float %i.be ; 2 uses
  %i.bh = bitcast float %spec.store.select.i.i to i32
  %i.bi = fcmp ogt float %spec.store.select.i.i, 0.000000e+00
  %.0.v.i.i = select i1 %i.bi, i32 -1, i32 1
  %.0.i.i = add i32 %.0.v.i.i, %i.bh
  %i.bj = bitcast i32 %.0.i.i to float
  br label %_ZN4pbrt13NextFloatDownEf.exit.i

_ZN4pbrt13NextFloatDownEf.exit.i:                 ; preds = %bb.h, %bb.g, %.lr.ph.i.preheader
  %.031.i = phi float [ %i.be, %.lr.ph.i.preheader ], [ %i.bj, %bb.h ], [ -inf, %bb.g ] ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %_ZN4pbrt13NextFloatDownEf.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.i ], [ 0, %_ZN4pbrt13NextFloatDownEf.exit.i ] ; 3 uses
  %.0.i = phi float [ %i.bm, %bb.i ], [ 0.000000e+00, %_ZN4pbrt13NextFloatDownEf.exit.i ] ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !122 ; 3 uses
  %i.bm = fadd float %.0.i, %i.bl                 ; 2 uses
  %i.bn = fcmp ugt float %i.bm, %.031.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %i.bn, label %bb.j, label %bb.i, !llvm.loop !1

bb.j:                                             ; preds = %bb.i
  %i.bo = fdiv float %i.bl, %i.bd
  %i.bp = fsub float %.031.i, %.0.i
  %i.bq = fdiv float %i.bp, %i.bl                 ; 2 uses
  %i.br = fcmp ogt float %i.bq, f0x3F7FFFFF
  %.sroa.speculated.i = select i1 %i.br, float f0x3F7FFFFF, float %i.bq
  %i.bs = fmul float %.05790, %i.bo               ; 3 uses
  %i.bt = icmp eq i64 %indvars.iv.i, 0
  %i.bu = select i1 %i.bt, i32 %i.at, i32 %i.ar   ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = load ptr, ptr %i.ai, align 8, !tbaa !1075 ; 2 uses
  %i.bx = getelementptr inbounds nuw [32 x i8], ptr %i.bw, i64 %i.bv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %4, ptr noundef nonnull align 32 dereferenceable(32) %i.bx, i64 32, i1 false), !tbaa.struct !1076
  %i.by = load i32, ptr %i.aj, align 8            ; 3 uses
  %.not = icmp sgt i32 %i.by, -1
  br i1 %.not, label %bb.f, label %._crit_edge

._crit_edge:                                      ; preds = %bb.j
  %i.bz = icmp sgt i32 %i.bu, 0
  br i1 %i.bz, label %bb.k, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.e, %._crit_edge
  %.057.lcssa108 = phi float [ %i.bs, %._crit_edge ], [ %i.ah, %bb.e ]
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cb = call noundef float @_ZNK4pbrt18CompactLightBounds10ImportanceENS_6Point3IfEENS_7Normal3IfEERKNS_7Bounds3IfEE(ptr noundef nonnull align 4 dereferenceable(24) %4, <2 x float> %i.ad, float %i.af, <2 x float> %.sroa.033.0.copyload, float %.sroa.6.0.copyload, ptr noundef nonnull align 4 dereferenceable(24) %i.ca)
  %i.cc = fcmp ogt float %i.cb, 0.000000e+00
  br i1 %i.cc, label %._crit_edge97, label %bb.l

._crit_edge97:                                    ; preds = %._crit_edge.thread
  %.pre = load i32, ptr %i.aj, align 8
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge97, %._crit_edge
  %.057.lcssa109 = phi float [ %.057.lcssa108, %._crit_edge97 ], [ %i.bs, %._crit_edge ]
  %i.cd = phi i32 [ %.pre, %._crit_edge97 ], [ %i.by, %._crit_edge ]
  %i.ce = and i32 %i.cd, 2147483647
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !312
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cf
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !192
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.ck, align 8, !tbaa !301
  store i64 %i.cj, ptr %0, align 8, !tbaa !192
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.057.lcssa109, ptr %i.cl, align 8, !tbaa !306
  br label %.critedge

bb.l:                                             ; preds = %._crit_edge.thread
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %.critedge

.critedge:                                        ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.m

bb.m:                                             ; preds = %.thread, %.critedge, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef float @_ZNK4pbrt18CompactLightBounds10ImportanceENS_6Point3IfEENS_7Normal3IfEERKNS_7Bounds3IfEE(ptr noundef nonnull align 4 dereferenceable(24) %0, <2 x float> %1, float %2, <2 x float> %3, float %4, ptr noundef nonnull align 4 dereferenceable(24) %5) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %6 = load <4 x float>, ptr %5, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.c = load float, ptr %i.b, align 4, !tbaa !137, !noalias !1079
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load <4 x i16>, ptr %i.a, align 4, !tbaa !314, !noalias !1079
  %i.i = shufflevector <4 x i16> %i.h, <4 x i16> poison, <2 x i32> <i32 0, i32 3>
  %i.j = uitofp <2 x i16> %i.i to <2 x float>
  %i.k = fdiv <2 x float> %i.j, splat (float 6.553500e+04) ; 2 uses
  %i.l = fsub nnan <2 x float> splat (float 1.000000e+00), %i.k
  %i.m = shufflevector <4 x float> %6, <4 x float> poison, <2 x i32> zeroinitializer
  %i.n = fmul <2 x float> %i.m, %i.l
  %i.o = insertelement <2 x float> poison, float %i.c, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer
  %i.q = fmul <2 x float> %i.k, %i.p
  %i.r = fadd <2 x float> %i.q, %i.n              ; 4 uses
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.t = fcmp olt <2 x float> %i.r, %i.s
  %i.u = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.v = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.w = select <2 x i1> %i.t, <2 x float> %i.u, <2 x float> %i.v ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i32, ptr %i.x, align 4              ; 2 uses
  %i.z = insertelement <2 x i32> poison, i32 %i.y, i64 0
  %i.aa = shufflevector <2 x i32> %i.z, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ab = lshr <2 x i32> %i.aa, <i32 0, i32 15>
  %i.ac = and <2 x i32> %i.ab, splat (i32 32767)
  %i.ad = uitofp nneg <2 x i32> %i.ac to <2 x float>
  %i.ae = fdiv nnan <2 x float> %i.ad, splat (float 3.276700e+04) ; 2 uses
  %i.af = extractelement <2 x float> %i.ae, i64 0
  %i.ag = fmul nnan float %i.af, 2.000000e+00
  %i.ah = fadd float %i.ag, -1.000000e+00         ; 4 uses
  %i.ai = extractelement <2 x float> %i.ae, i64 1
  %i.aj = fmul nnan float %i.ai, 2.000000e+00
  %i.ak = fadd float %i.aj, -1.000000e+00
  %i.al = extractelement <2 x float> %i.w, i64 0  ; 3 uses
  %i.am = extractelement <2 x float> %i.w, i64 1  ; 2 uses
  %i.an = fadd float %i.al, %i.am
  %i.ao = fmul float %i.an, 5.000000e-01          ; 5 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %1, i64 0 ; 2 uses
  %i.ap = fsub float %.sroa.0.0.vec.extract.i, %i.ao ; 3 uses
  %i.aq = load <2 x i16>, ptr %i.d, align 2, !tbaa !314, !noalias !1079
  %i.ar = uitofp <2 x i16> %i.aq to <2 x float>
  %i.as = fdiv <2 x float> %i.ar, splat (float 6.553500e+04) ; 2 uses
  %i.at = load <2 x float>, ptr %i.e, align 4, !tbaa !122, !noalias !1079 ; 2 uses
  %i.au = load <2 x float>, ptr %i.f, align 4, !tbaa !122, !noalias !1079 ; 2 uses
  %i.av = fsub nnan <2 x float> splat (float 1.000000e+00), %i.as
  %i.aw = fmul <2 x float> %i.at, %i.av
  %i.ax = fmul <2 x float> %i.as, %i.au
  %i.ay = fadd <2 x float> %i.ax, %i.aw           ; 4 uses
  %i.az = load <2 x i16>, ptr %i.g, align 4, !tbaa !314, !noalias !1079
  %i.ba = uitofp <2 x i16> %i.az to <2 x float>
  %i.bb = fdiv <2 x float> %i.ba, splat (float 6.553500e+04) ; 2 uses
  %i.bc = fsub nnan <2 x float> splat (float 1.000000e+00), %i.bb
  %i.bd = fmul <2 x float> %i.at, %i.bc
  %i.be = fmul <2 x float> %i.au, %i.bb
  %i.bf = fadd <2 x float> %i.be, %i.bd           ; 4 uses
  %i.bg = fcmp olt <2 x float> %i.bf, %i.ay
  %i.bh = select <2 x i1> %i.bg, <2 x float> %i.bf, <2 x float> %i.ay ; 4 uses
  %i.bi = fcmp olt <2 x float> %i.ay, %i.bf
  %i.bj = select <2 x i1> %i.bi, <2 x float> %i.bf, <2 x float> %i.ay ; 6 uses
  %i.bk = fadd <2 x float> %i.bj, %i.bh
  %i.bl = fmul <2 x float> %i.bk, splat (float 5.000000e-01) ; 7 uses
  %i.bm = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bn = insertelement <2 x float> %i.bm, float %2, i64 1
  %i.bo = fsub <2 x float> %i.bn, %i.bl           ; 3 uses
  %i.bp = fmul float %i.ap, %i.ap
  %i.bq = fmul <2 x float> %i.bo, %i.bo           ; 2 uses
  %i.br = extractelement <2 x float> %i.bq, i64 0
  %i.bs = fadd float %i.bp, %i.br
  %i.bt = extractelement <2 x float> %i.bq, i64 1
  %i.bu = fadd float %i.bt, %i.bs                 ; 4 uses
  %foldExtExtBinop = fsub <2 x float> %i.bj, %i.bh ; 2 uses
  %foldExtExtBinop178 = fmul <2 x float> %foldExtExtBinop, %foldExtExtBinop
  %i.bv = shufflevector <2 x float> %i.bj, <2 x float> %i.w, <2 x i32> <i32 1, i32 2>
  %i.bw = shufflevector <2 x float> %i.bh, <2 x float> %i.w, <2 x i32> <i32 1, i32 3>
  %i.bx = fsub <2 x float> %i.bv, %i.bw           ; 2 uses
  %i.by = fmul <2 x float> %i.bx, %i.bx           ; 2 uses
  %shift = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop180 = fadd <2 x float> %shift, %foldExtExtBinop178
  %foldExtExtBinop182 = fadd <2 x float> %i.by, %foldExtExtBinop180
  %i.bz = extractelement <2 x float> %foldExtExtBinop182, i64 0
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %i.bz)
  %i.ca = fmul float %sqrt.i, 5.000000e-01        ; 2 uses
  %i.cb = fcmp olt float %i.bu, %i.ca
  %.sroa.speculated149 = select i1 %i.cb, float %i.ca, float %i.bu
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.bu) ; 2 uses
  %i.cc = fdiv float %i.ap, %sqrt.i.i             ; 2 uses
  %i.cd = insertelement <2 x float> poison, float %sqrt.i.i, i64 0
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cf = fdiv <2 x float> %i.bo, %i.ce           ; 3 uses
  %i.cg = load <2 x i16>, ptr %0, align 4, !tbaa !314
  %i.ch = uitofp <2 x i16> %i.cg to <2 x float>
  %i.ci = fdiv nnan <2 x float> %i.ch, splat (float 6.553500e+04)
  %i.cj = fmul nnan <2 x float> %i.ci, splat (float 2.000000e+00)
  %i.ck = fadd <2 x float> %i.cj, splat (float -1.000000e+00) ; 3 uses
  %i.cl = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ck) ; 3 uses
  %shift184 = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop185 = fadd <2 x float> %i.cl, %shift184
  %i.cm = extractelement <2 x float> %foldExtExtBinop185, i64 0
  %i.cn = fsub float 1.000000e+00, %i.cm          ; 4 uses
  %i.co = fcmp olt float %i.cn, 0.000000e+00
  br i1 %i.co, label %bb.b, label %_ZNK4pbrt16OctahedralVectorcvNS_7Vector3IfEEEv.exit

bb.b:                                             ; preds = %bb.a
  %i.cp = fsub nnan <2 x float> splat (float 1.000000e+00), %i.cl
  %i.cq = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cr = tail call <2 x float> @llvm.copysign.v2f32(<2 x float> splat (float 1.000000e+00), <2 x float> %i.ck)
  %i.cs = fmul nnan <2 x float> %i.cr, %i.cq
  br label %_ZNK4pbrt16OctahedralVectorcvNS_7Vector3IfEEEv.exit

_ZNK4pbrt16OctahedralVectorcvNS_7Vector3IfEEEv.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi <2 x float> [ %i.cs, %bb.b ], [ %i.ck, %bb.a ] ; 4 uses
  %.sroa.01.0.vec.extract.i.i.i.i = extractelement <2 x float> %.sroa.0.0.i, i64 0
  %i.ct = fmul <2 x float> %.sroa.0.0.i, %.sroa.0.0.i ; 2 uses
  %shift187 = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop188 = fadd <2 x float> %i.ct, %shift187
  %i.cu = extractelement <2 x float> %foldExtExtBinop188, i64 0
  %i.cv = fmul float %i.cn, %i.cn
  %i.cw = fadd float %i.cv, %i.cu
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.cw) ; 2 uses
  %i.cx = fdiv float %.sroa.01.0.vec.extract.i.i.i.i, %sqrt.i.i.i
  %i.cy = fmul float %i.cc, %i.cx
  %i.cz = shufflevector <2 x float> %.sroa.0.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.da = insertelement <2 x float> %i.cz, float %i.cn, i64 1
  %i.db = insertelement <2 x float> poison, float %sqrt.i.i.i, i64 0
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dd = fdiv <2 x float> %i.da, %i.dc
  %i.de = fmul <2 x float> %i.cf, %i.dd           ; 2 uses
  %i.df = extractelement <2 x float> %i.de, i64 0
  %i.dg = fadd float %i.cy, %i.df
  %i.dh = extractelement <2 x float> %i.de, i64 1
  %i.di = fadd float %i.dh, %i.dg                 ; 2 uses
  %i.dj = and i32 %i.y, 1073741824
  %.not = icmp eq i32 %i.dj, 0
  %i.dk = tail call float @llvm.fabs.f32(float %i.di)
  %spec.select = select i1 %.not, float %i.di, float %i.dk ; 5 uses
  %i.dl = fmul float %spec.select, %spec.select
  %i.dm = fsub float 1.000000e+00, %i.dl          ; 2 uses
  %i.dn = fcmp ogt float %i.dm, 0.000000e+00
  %.sroa.speculated.i = select i1 %i.dn, float %i.dm, float 0.000000e+00
  %sqrt.i124 = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i) ; 2 uses
  %i.do = fcmp ult float %i.ao, %i.am
  %i.dp = fcmp ugt float %i.ao, %i.al
  %or.cond.i.i.i = select i1 %i.do, i1 true, i1 %i.dp
  br i1 %or.cond.i.i.i, label %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK4pbrt16OctahedralVectorcvNS_7Vector3IfEEEv.exit
  %i.dq = shufflevector <2 x float> %i.bl, <2 x float> %i.bh, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dr = shufflevector <2 x float> %i.bj, <2 x float> %i.bl, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ds = fcmp ugt <4 x float> %i.dq, %i.dr
  %i.dt = freeze <4 x i1> %i.ds
  %i.du = bitcast <4 x i1> %i.dt to i4
  %.not206 = icmp eq i4 %i.du, 0
  br i1 %.not206, label %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i, label %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i.thread

_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i: ; preds = %bb.c
  %i.dv = fsub float %i.ao, %i.al                 ; 2 uses
  %foldExtExtBinop190 = fsub <2 x float> %i.bl, %i.bj ; 2 uses
  %foldExtExtBinop192 = fsub <2 x float> %i.bl, %i.bj ; 2 uses
  %i.dw = fmul float %i.dv, %i.dv
  %foldExtExtBinop194 = fmul <2 x float> %foldExtExtBinop190, %foldExtExtBinop190
  %i.dx = extractelement <2 x float> %foldExtExtBinop194, i64 0
  %i.dy = fadd float %i.dw, %i.dx
  %foldExtExtBinop196 = fmul <2 x float> %foldExtExtBinop192, %foldExtExtBinop192
  %i.dz = extractelement <2 x float> %foldExtExtBinop196, i64 1
  %i.ea = fadd float %i.dz, %i.dy
  %sqrt.i.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.ea) ; 2 uses
  %i.eb = fmul float %sqrt.i.i.i.i, %sqrt.i.i.i.i ; 2 uses
  %i.ec = fcmp olt float %i.bu, %i.eb
  br i1 %i.ec, label %_ZN4pbrt24BoundSubtendedDirectionsERKNS_7Bounds3IfEENS_6Point3IfEE.exit, label %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i.thread

_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i.thread: ; preds = %_ZNK4pbrt16OctahedralVectorcvNS_7Vector3IfEEEv.exit, %bb.c, %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i
  %i.ed = phi float [ %i.eb, %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i ], [ 0.000000e+00, %bb.c ], [ 0.000000e+00, %_ZNK4pbrt16OctahedralVectorcvNS_7Vector3IfEEEv.exit ]
  %i.ee = fsub float %i.ao, %.sroa.0.0.vec.extract.i ; 3 uses
  %shift198 = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop199 = fsub <2 x float> %i.bl, %shift198 ; 3 uses
  %i.ef = extractelement <2 x float> %foldExtExtBinop199, i64 0
  %i.eg = extractelement <2 x float> %i.bl, i64 1
  %i.eh = fsub float %i.eg, %2                    ; 3 uses
  %i.ei = fmul float %i.ee, %i.ee
  %foldExtExtBinop201 = fmul <2 x float> %foldExtExtBinop199, %foldExtExtBinop199
  %i.ej = extractelement <2 x float> %foldExtExtBinop201, i64 0
  %i.ek = fadd float %i.ei, %i.ej
  %i.el = fmul float %i.eh, %i.eh
  %i.em = fadd float %i.el, %i.ek                 ; 2 uses
  %sqrt.i.i.i125 = tail call noundef float @llvm.sqrt.f32(float %i.em) ; 3 uses
  %i.en = fdiv float %i.ee, %sqrt.i.i.i125        ; 2 uses
  %i.eo = fdiv float %i.ef, %sqrt.i.i.i125        ; 2 uses
  %i.ep = fdiv float %i.eh, %sqrt.i.i.i125        ; 3 uses
  %i.eq = fdiv float %i.ed, %i.em
  %i.er = fsub float 1.000000e+00, %i.eq          ; 2 uses
  %i.es = fcmp ogt float %i.er, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.es, float %i.er, float 0.000000e+00
  %sqrt.i.i126 = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i)
  %i.et = fmul float %i.en, %i.en
  %i.eu = fmul float %i.eo, %i.eo
  %i.ev = fadd float %i.et, %i.eu
  %i.ew = fmul float %i.ep, %i.ep
  %i.ex = fadd float %i.ew, %i.ev
  %sqrt.i.i.i48.i = tail call noundef float @llvm.sqrt.f32(float %i.ex)
  %i.ey = fdiv float %i.ep, %sqrt.i.i.i48.i
  %.sroa.3.8.vec.insert.i = insertelement <2 x float> poison, float %i.ey, i64 0
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> %.sroa.3.8.vec.insert.i, float %sqrt.i.i126, i64 1
  br label %_ZN4pbrt24BoundSubtendedDirectionsERKNS_7Bounds3IfEENS_6Point3IfEE.exit

_ZN4pbrt24BoundSubtendedDirectionsERKNS_7Bounds3IfEENS_6Point3IfEE.exit: ; preds = %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i, %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i.thread
  %.sroa.3.0.i = phi <2 x float> [ %.sroa.3.12.vec.insert.i, %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i.thread ], [ <float 1.000000e+00, float -1.000000e+00>, %_ZNK4pbrt7Bounds3IfE14BoundingSphereEPNS_6Point3IfEEPf.exit.i ] ; 2 uses
  %.sroa.3.12.vec.extract = extractelement <2 x float> %.sroa.3.0.i, i64 1 ; 4 uses
  %i.ez = shufflevector <2 x float> %.sroa.3.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.fa = insertelement <2 x float> %i.ez, float %i.ah, i64 1 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNK4pbrt19PiecewiseConstant2D6SampleENS_6Point2IfEEPfPNS1_IiEE:bb.a
  br i1 %i.t, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !1139

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.u = add nsw i64 %.fr.i.i, -1
  %..i.i.i = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.e)
  %.inv.i.i = icmp sgt i64 %.fr.i.i, 0
  %spec.select.i.i = select i1 %.inv.i.i, i64 %..i.i.i, i64 0
  br label %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i

_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i: ; preds = %bb.a, %._crit_edge.i.i
  %i.v = phi i64 [ %spec.select.i.i, %._crit_edge.i.i ], [ 0, %bb.a ] ; 5 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.v
  %i.x = load <2 x float>, ptr %i.w, align 4, !tbaa !122 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.z = load float, ptr %i.y, align 8, !tbaa !1140 ; 2 uses
  %i.aa = fcmp ogt float %i.z, 0.000000e+00
  br i1 %i.aa, label %bb.b, label %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit

bb.b:                                             ; preds = %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !128
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.v
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !122
  %i.af = fdiv float %i.ae, %i.z
  br label %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit

_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit: ; preds = %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i, %bb.b
  %i.ag = phi float [ %i.af, %bb.b ], [ 0.000000e+00, %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !127
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ak = load <2 x float>, ptr %i.aj, align 8, !tbaa !122 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1141
  %i.an = getelementptr inbounds nuw [80 x i8], ptr %i.am, i64 %i.v ; 6 uses
  %.sroa.022.0.vec.extract = extractelement <2 x float> %1, i64 0
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !127
  %i.aq = shl i64 %i.ap, 32
  %i.ar = ashr exact i64 %i.aq, 32                ; 2 uses
  %i.as = add nsw i64 %i.ar, -2                   ; 2 uses
  %i.at = icmp sgt i64 %i.ar, 2
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !128 ; 2 uses
  br i1 %i.at, label %.lr.ph.i.i11, label %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i9

.lr.ph.i.i11:                                     ; preds = %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit, %.lr.ph.i.i11
  %.017.i.i12 = phi i64 [ %.fr.i.i14, %.lr.ph.i.i11 ], [ 1, %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit ] ; 2 uses
  %.01516.i.i13 = phi i64 [ %i.bg, %.lr.ph.i.i11 ], [ %i.as, %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit ] ; 2 uses
  %i.aw = lshr i64 %.01516.i.i13, 1               ; 3 uses
  %i.ax = add i64 %i.aw, %.017.i.i12              ; 2 uses
  %i.ay = shl i64 %i.ax, 32
  %i.az = ashr exact i64 %i.ay, 30
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.az
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !122
  %i.bc = fcmp ole float %i.bb, %.sroa.022.0.vec.extract ; 2 uses
  %i.bd = add i64 %i.ax, 1
  %i.be = select i1 %i.bc, i64 %i.bd, i64 %.017.i.i12
  %.fr.i.i14 = freeze i64 %i.be                   ; 3 uses
  %.neg.i.i15 = xor i64 %i.aw, -1
  %i.bf = add nsw i64 %.01516.i.i13, %.neg.i.i15
  %i.bg = select i1 %i.bc, i64 %i.bf, i64 %i.aw   ; 2 uses
  %i.bh = icmp sgt i64 %i.bg, 0
  br i1 %i.bh, label %.lr.ph.i.i11, label %._crit_edge.i.i16, !llvm.loop !1139

._crit_edge.i.i16:                                ; preds = %.lr.ph.i.i11
  %i.bi = add nsw i64 %.fr.i.i14, -1
  %..i.i.i17 = tail call i64 @llvm.umin.i64(i64 %i.bi, i64 %i.as)
  %.inv.i.i18 = icmp sgt i64 %.fr.i.i14, 0
  %spec.select.i.i19 = select i1 %.inv.i.i18, i64 %..i.i.i17, i64 0
  br label %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i9

_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i9: ; preds = %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit, %._crit_edge.i.i16
  %i.bj = phi i64 [ %spec.select.i.i19, %._crit_edge.i.i16 ], [ 0, %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit ] ; 4 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.bj
  %i.bl = load <2 x float>, ptr %i.bk, align 4, !tbaa !122 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %i.bn = load float, ptr %i.bm, align 8, !tbaa !1140 ; 2 uses
  %i.bo = fcmp ogt float %i.bn, 0.000000e+00
  br i1 %i.bo, label %bb.c, label %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit20

bb.c:                                             ; preds = %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i9
  %i.bp = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !128
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.bj
  %i.bs = load float, ptr %i.br, align 4, !tbaa !122
  %i.bt = fdiv float %i.bs, %i.bn
  br label %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit20

_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit20: ; preds = %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i9, %bb.c
  %i.bu = phi float [ %i.bt, %bb.c ], [ 0.000000e+00, %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i9 ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !127
  %i.bx = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.by = load <2 x float>, ptr %i.bx, align 8, !tbaa !122 ; 2 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit20
  %i.bz = fmul float %i.ag, %i.bu
  store float %i.bz, ptr %2, align 4, !tbaa !122
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit20
  %.not8 = icmp eq ptr %3, null
  br i1 %.not8, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.5.0.insert.shift = shl nuw nsw i64 %i.v, 32
  %.sroa.0.0.insert.insert = or i64 %i.bj, %.sroa.5.0.insert.shift
  store i64 %.sroa.0.0.insert.insert, ptr %3, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ca = shufflevector <2 x float> %i.bl, <2 x float> %i.x, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.cb = shufflevector <2 x float> %i.bl, <2 x float> %i.x, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.cc = fcmp ogt <2 x float> %i.ca, %i.cb
  %i.cd = fsub <2 x float> %1, %i.cb              ; 2 uses
  %i.ce = fsub <2 x float> %i.ca, %i.cb
  %i.cf = trunc i64 %i.bj to i32
  %i.cg = insertelement <2 x i32> poison, i32 %i.cf, i64 0
  %i.ch = trunc i64 %i.v to i32
  %i.ci = insertelement <2 x i32> %i.cg, i32 %i.ch, i64 1
  %i.cj = insertelement <2 x i64> poison, i64 %i.bw, i64 0
  %i.ck = insertelement <2 x i64> %i.cj, i64 %i.ai, i64 1
  %i.cl = uitofp <2 x i64> %i.ck to <2 x float>
  %i.cm = fdiv <2 x float> %i.cd, %i.ce
  %i.cn = select <2 x i1> %i.cc, <2 x float> %i.cm, <2 x float> %i.cd
  %i.co = uitofp <2 x i32> %i.ci to <2 x float>
  %i.cp = fadd <2 x float> %i.cn, %i.co
  %i.cq = fdiv <2 x float> %i.cp, %i.cl           ; 2 uses
  %i.cr = shufflevector <2 x float> %i.by, <2 x float> %i.ak, <2 x i32> <i32 1, i32 3>
  %i.cs = fmul <2 x float> %i.cq, %i.cr
  %i.ct = fsub <2 x float> splat (float 1.000000e+00), %i.cq
  %i.cu = shufflevector <2 x float> %i.by, <2 x float> %i.ak, <2 x i32> <i32 0, i32 2>
  %i.cv = fmul <2 x float> %i.cu, %i.ct
  %i.cw = fadd <2 x float> %i.cs, %i.cv
  ret <2 x float> %i.cw
}

declare { <2 x float>, float } @_ZN4pbrt23EqualAreaSquareToSphereENS_6Point2IfEE(<2 x float>) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, <2 x float> } @_ZNK4pbrt18ImageInfiniteLight7ImageLeENS_6Point2IfEERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(592) %0, <2 x float> %1, ptr noundef nonnull align 4 dereferenceable(32) %2) local_unnamed_addr #11 comdat align 2 {
_ZN4pbrt3RGBixEi.exit.2:
  %3 = alloca %"class.pbrt::RGBIlluminantSpectrum", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %.sroa.03.0.vec.extract.i = extractelement <2 x float> %1, i64 0 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 3 uses
  %.sroa.03.4.vec.extract.i = extractelement <2 x float> %1, i64 1 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.d = load i32, ptr %i.b, align 4, !tbaa !337
  %i.e = sitofp i32 %i.d to float
  %i.f = fmul float %.sroa.03.0.vec.extract.i, %i.e
  %i.g = fptosi float %i.f to i32
  %i.h = load i32, ptr %i.c, align 8, !tbaa !1142
  %i.i = sitofp i32 %i.h to float
  %i.j = fmul float %.sroa.03.4.vec.extract.i, %i.i
  %i.k = fptosi float %i.j to i32
  %.sroa.4.0.insert.ext.i = zext i32 %i.k to i64
  %.sroa.4.0.insert.shift.i = shl nuw i64 %.sroa.4.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.g to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.4.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.l = tail call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.a, i64 %.sroa.0.0.insert.insert.i, i32 noundef 0, i64 12884901891)
  %.sroa.024.0.vec.insert = insertelement <2 x float> poison, float %i.l, i64 0
  %i.m = load i32, ptr %i.b, align 4, !tbaa !337
  %i.n = sitofp i32 %i.m to float
  %i.o = fmul float %.sroa.03.0.vec.extract.i, %i.n
  %i.p = fptosi float %i.o to i32
  %i.q = load i32, ptr %i.c, align 8, !tbaa !1142
  %i.r = sitofp i32 %i.q to float
  %i.s = fmul float %.sroa.03.4.vec.extract.i, %i.r
  %i.t = fptosi float %i.s to i32
  %.sroa.4.0.insert.ext.i.1 = zext i32 %i.t to i64
  %.sroa.4.0.insert.shift.i.1 = shl nuw i64 %.sroa.4.0.insert.ext.i.1, 32
  %.sroa.0.0.insert.ext.i.1 = zext i32 %i.p to i64
  %.sroa.0.0.insert.insert.i.1 = or disjoint i64 %.sroa.4.0.insert.shift.i.1, %.sroa.0.0.insert.ext.i.1
  %i.u = tail call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.a, i64 %.sroa.0.0.insert.insert.i.1, i32 noundef 1, i64 12884901891)
  %.sroa.024.4.vec.insert = insertelement <2 x float> %.sroa.024.0.vec.insert, float %i.u, i64 1 ; 2 uses
  %i.v = load <2 x i32>, ptr %i.b, align 4, !tbaa !136
  %i.w = sitofp <2 x i32> %i.v to <2 x float>
  %i.x = fmul <2 x float> %1, %i.w                ; 2 uses
  %i.y = extractelement <2 x float> %i.x, i64 0
  %i.z = fptosi float %i.y to i32
  %i.aa = extractelement <2 x float> %i.x, i64 1
  %i.ab = fptosi float %i.aa to i32
  %.sroa.4.0.insert.ext.i.2 = zext i32 %i.ab to i64
  %.sroa.4.0.insert.shift.i.2 = shl nuw i64 %.sroa.4.0.insert.ext.i.2, 32
  %.sroa.0.0.insert.ext.i.2 = zext i32 %i.z to i64
  %.sroa.0.0.insert.insert.i.2 = or disjoint i64 %.sroa.4.0.insert.shift.i.2, %.sroa.0.0.insert.ext.i.2
  %i.ac = tail call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.a, i64 %.sroa.0.0.insert.insert.i.2, i32 noundef 2, i64 12884901891) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1143
  %i.af = fcmp ogt <2 x float> %.sroa.024.4.vec.insert, zeroinitializer
  %i.ag = select <2 x i1> %i.af, <2 x float> %.sroa.024.4.vec.insert, <2 x float> zeroinitializer
  %i.ah = fcmp ogt float %i.ac, 0.000000e+00
  %.sroa.speculated.i = select i1 %i.ah, float %i.ac, float 0.000000e+00
  call void @_ZN4pbrt21RGBIlluminantSpectrumC1ERKNS_13RGBColorSpaceENS_3RGBE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(152) %i.ae, <2 x float> %i.ag, float %.sroa.speculated.i)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 312
  %4 = load <4 x float>, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1145 ; 2 uses
  %.not.i = icmp eq ptr %i.ak, null
  br i1 %.not.i, label %_ZNK4pbrt21RGBIlluminantSpectrum6SampleERKNS_18SampledWavelengthsE.exit, label %bb.a

bb.a:                                             ; preds = %_ZN4pbrt3RGBixEi.exit.2
  %i.al = load float, ptr %3, align 8, !tbaa !1146 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ao = load float, ptr %i.an, align 4, !tbaa !269 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aq = load float, ptr %i.ap, align 8, !tbaa !270 ; 4 uses
  %i.ar = load float, ptr %i.am, align 4, !tbaa !271 ; 4 uses
  %i.as = load float, ptr %2, align 4, !tbaa !122 ; 2 uses
  %i.at = call noundef float @llvm.fma.f32(float %i.as, float %i.ar, float %i.aq)
  %i.au = call noundef float @llvm.fma.f32(float %i.as, float %i.at, float %i.ao) ; 5 uses
  %i.av = call float @llvm.fabs.f32(float %i.au)
  %i.aw = fcmp oeq float %i.av, +inf
  br i1 %i.aw, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ax = fcmp ogt float %i.au, 0.000000e+00
  %i.ay = uitofp i1 %i.ax to float
  br label %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.i

bb.c:                                             ; preds = %bb.a
  %i.az = fmul float %i.au, %i.au
  %i.ba = fadd float %i.az, 1.000000e+00
  %sqrt.i.i.i = call float @llvm.sqrt.f32(float %i.ba)
  %i.bb = fmul float %sqrt.i.i.i, 2.000000e+00
  %i.bc = fdiv float %i.au, %i.bb
  %i.bd = fadd float %i.bc, 5.000000e-01
  br label %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.i

_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.i:       ; preds = %bb.c, %bb.b
  %.0.i.i.i = phi float [ %i.ay, %bb.b ], [ %i.bd, %bb.c ]
  %i.be = fmul float %i.al, %.0.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !122 ; 2 uses
  %i.bh = call noundef float @llvm.fma.f32(float %i.bg, float %i.ar, float %i.aq)
  %i.bi = call noundef float @llvm.fma.f32(float %i.bg, float %i.bh, float %i.ao) ; 5 uses
  %i.bj = call float @llvm.fabs.f32(float %i.bi)
  %i.bk = fcmp oeq float %i.bj, +inf
  br i1 %i.bk, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.i
  %i.bl = fmul float %i.bi, %i.bi
  %i.bm = fadd float %i.bl, 1.000000e+00
  %sqrt.i.i.1.i = call float @llvm.sqrt.f32(float %i.bm)
  %i.bn = fmul float %sqrt.i.i.1.i, 2.000000e+00
  %i.bo = fdiv float %i.bi, %i.bn
  %i.bp = fadd float %i.bo, 5.000000e-01
  br label %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.1.i

bb.e:                                             ; preds = %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.i
  %i.bq = fcmp ogt float %i.bi, 0.000000e+00
  %i.br = uitofp i1 %i.bq to float
  br label %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.1.i

_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.1.i:     ; preds = %bb.e, %bb.d
  %.0.i.i.1.i = phi float [ %i.br, %bb.e ], [ %i.bp, %bb.d ]
  %i.bs = fmul float %i.al, %.0.i.i.1.i
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !122 ; 2 uses
  %i.bv = call noundef float @llvm.fma.f32(float %i.bu, float %i.ar, float %i.aq)
  %i.bw = call noundef float @llvm.fma.f32(float %i.bu, float %i.bv, float %i.ao) ; 5 uses
  %i.bx = call float @llvm.fabs.f32(float %i.bw)
  %i.by = fcmp oeq float %i.bx, +inf
  br i1 %i.by, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.1.i
  %i.bz = fmul float %i.bw, %i.bw
  %i.ca = fadd float %i.bz, 1.000000e+00
  %sqrt.i.i.2.i = call float @llvm.sqrt.f32(float %i.ca)
  %i.cb = fmul float %sqrt.i.i.2.i, 2.000000e+00
  %i.cc = fdiv float %i.bw, %i.cb
  %i.cd = fadd float %i.cc, 5.000000e-01
  br label %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.2.i

bb.g:                                             ; preds = %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.1.i
  %i.ce = fcmp ogt float %i.bw, 0.000000e+00
  %i.cf = uitofp i1 %i.ce to float
  br label %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.2.i

_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.2.i:     ; preds = %bb.g, %bb.f
  %.0.i.i.2.i = phi float [ %i.cf, %bb.g ], [ %i.cd, %bb.f ]
  %i.cg = fmul float %i.al, %.0.i.i.2.i
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !122 ; 2 uses
  %i.cj = call noundef float @llvm.fma.f32(float %i.ci, float %i.ar, float %i.aq)
  %i.ck = call noundef float @llvm.fma.f32(float %i.ci, float %i.cj, float %i.ao) ; 5 uses
  %i.cl = call float @llvm.fabs.f32(float %i.ck)
  %i.cm = fcmp oeq float %i.cl, +inf
  br i1 %i.cm, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.2.i
  %i.cn = fmul float %i.ck, %i.ck
  %i.co = fadd float %i.cn, 1.000000e+00
  %sqrt.i.i.3.i = call float @llvm.sqrt.f32(float %i.co)
  %i.cp = fmul float %sqrt.i.i.3.i, 2.000000e+00
  %i.cq = fdiv float %i.ck, %i.cp
  %i.cr = fadd float %i.cq, 5.000000e-01
  br label %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.3.i

bb.i:                                             ; preds = %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.2.i
  %i.cs = fcmp ogt float %i.ck, 0.000000e+00
  %i.ct = uitofp i1 %i.cs to float
  br label %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.3.i

_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.3.i:     ; preds = %bb.i, %bb.h
  %.0.i.i.3.i = phi float [ %i.ct, %bb.i ], [ %i.cr, %bb.h ]
  %i.cu = fmul float %i.al, %.0.i.i.3.i
  %i.cv = call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.ak, ptr noundef nonnull align 4 dereferenceable(32) %2) ; 2 uses
  %i.cw = extractvalue { <2 x float>, <2 x float> } %i.cv, 0
  %i.cx = extractvalue { <2 x float>, <2 x float> } %i.cv, 1
  %i.cy = insertelement <2 x float> poison, float %i.be, i64 0
  %i.cz = insertelement <2 x float> %i.cy, float %i.bs, i64 1
  %i.da = fmul <2 x float> %i.cz, %i.cw
  %i.db = insertelement <2 x float> poison, float %i.cg, i64 0
  %i.dc = insertelement <2 x float> %i.db, float %i.cu, i64 1
  %i.dd = fmul <2 x float> %i.dc, %i.cx
  br label %_ZNK4pbrt21RGBIlluminantSpectrum6SampleERKNS_18SampledWavelengthsE.exit

_ZNK4pbrt21RGBIlluminantSpectrum6SampleERKNS_18SampledWavelengthsE.exit: ; preds = %_ZN4pbrt3RGBixEi.exit.2, %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.3.i
  %.sroa.06.0.i = phi <2 x float> [ %i.da, %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.3.i ], [ zeroinitializer, %_ZN4pbrt3RGBixEi.exit.2 ]
  %.sroa.4.0.i = phi <2 x float> [ %i.dd, %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.3.i ], [ zeroinitializer, %_ZN4pbrt3RGBixEi.exit.2 ]
  %i.de = shufflevector <4 x float> %4, <4 x float> poison, <4 x i32> zeroinitializer
  %i.df = shufflevector <2 x float> %.sroa.06.0.i, <2 x float> %.sroa.4.0.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dg = fmul <4 x float> %i.de, %i.df           ; 2 uses
  %i.dh = shufflevector <4 x float> %i.dg, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.di = shufflevector <4 x float> %i.dg, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.fca.0.insert.i.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.dh, 0
  %.fca.1.insert.i.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i.i, <2 x float> %i.di, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i.i
}

declare void @_ZN4pbrt21RGBIlluminantSpectrumC1ERKNS_13RGBColorSpaceENS_3RGBE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(152), <2 x float>, float) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 %1, i32 noundef %2, i64 %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"class.pbrt::Point2.205", align 8  ; 5 uses
  %i.a = alloca float, align 4                    ; 6 uses
  store i64 %1, ptr %4, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %.sroa.04.0.copyload = load i64, ptr %i.b, align 4
  %i.c = call noundef zeroext i1 @_ZN4pbrt16RemapPixelCoordsEPNS_6Point2IiEES1_NS_10WrapMode2DE(ptr noundef nonnull %4, i64 %.sroa.04.0.copyload, i64 %3)
  br i1 %i.c, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 8, !tbaa !1147
  switch i32 %i.d, label %bb.k [
    i32 0, label %bb.c
    i32 1, label %bb.f
    i32 2, label %bb.j
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.02.0.copyload = load i64, ptr %4, align 8 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.02.0.copyload to i32
  %.sroa.2.0.extract.shift.i = lshr i64 %.sroa.02.0.copyload, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !1148
  %i.h = trunc i64 %i.g to i32
  %i.i = load i32, ptr %i.b, align 4, !tbaa !337
  %i.j = mul nsw i32 %i.i, %.sroa.2.0.extract.trunc.i
  %i.k = add nsw i32 %i.j, %.sroa.0.0.extract.trunc.i
  %i.l = mul nsw i32 %i.k, %i.h
  %i.m = sext i32 %i.l to i64
  %i.n = sext i32 %2 to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1149
  %i.q = getelementptr i8, ptr %i.p, i64 %i.m
  %i.r = getelementptr i8, ptr %i.q, i64 %i.n     ; 3 uses
  %i.s = load i64, ptr %i.e, align 8, !tbaa !1150 ; 2 uses
  %i.t = and i64 %i.s, 144115188075855871
  %i.u = inttoptr i64 %i.t to ptr                 ; 2 uses
  %i.v = lshr i64 %i.s, 57
  %i.w = trunc nuw nsw i64 %i.v to i32
  switch i32 %i.w, label %bb.e [
    i32 1, label %.lr.ph.i.i.i.i.i
    i32 2, label %bb.d
  ]

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c
  %i.x = load i8, ptr %i.r, align 1, !tbaa !116
  %i.y = uitofp i8 %i.x to float
  %i.z = fdiv float %i.y, 2.550000e+02
  store float %i.z, ptr %i.a, align 4, !tbaa !122
  br label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit

bb.d:                                             ; preds = %bb.c
  call void @_ZNK4pbrt17sRGBColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr noundef nonnull align 1 dereferenceable(1) %i.u, ptr %i.r, i64 1, ptr nonnull %i.a, i64 1)
  br label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit

bb.e:                                             ; preds = %bb.c
  call void @_ZNK4pbrt18GammaColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr noundef nonnull align 4 dereferenceable(5124) %i.u, ptr %i.r, i64 1, ptr nonnull %i.a, i64 1)
  br label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit

_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.d, %bb.e
  %i.aa = load float, ptr %i.a, align 4, !tbaa !122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.l

bb.f:                                             ; preds = %bb.b
  %.sroa.01.0.copyload = load i64, ptr %4, align 8 ; 2 uses
  %.sroa.0.0.extract.trunc.i9 = trunc i64 %.sroa.01.0.copyload to i32
  %.sroa.2.0.extract.shift.i10 = lshr i64 %.sroa.01.0.copyload, 32
  %.sroa.2.0.extract.trunc.i11 = trunc nuw i64 %.sroa.2.0.extract.shift.i10 to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !1148
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = load i32, ptr %i.b, align 4, !tbaa !337
  %i.af = mul nsw i32 %i.ae, %.sroa.2.0.extract.trunc.i11
  %i.ag = add nsw i32 %i.af, %.sroa.0.0.extract.trunc.i9
  %i.ah = mul nsw i32 %i.ag, %i.ad
  %i.ai = sext i32 %i.ah to i64
  %i.aj = sext i32 %2 to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1151
  %i.am = getelementptr [2 x i8], ptr %i.al, i64 %i.ai
  %i.an = getelementptr [2 x i8], ptr %i.am, i64 %i.aj
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !1153 ; 2 uses
  %i.ap = zext i16 %i.ao to i32
  %i.aq = shl nuw nsw i32 %i.ap, 13               ; 4 uses
  %i.ar = and i32 %i.aq, 260046848                ; 2 uses
  %i.as = icmp eq i32 %i.ar, 260046848
  br i1 %i.as, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.at = or i32 %i.aq, 1879048192
  br label %_ZNK4pbrt4HalfcvfEv.exit

bb.h:                                             ; preds = %bb.f
  %i.au = and i32 %i.aq, 268427264
  %i.av = add nuw nsw i32 %i.au, 939524096
  %i.aw = icmp eq i32 %i.ar, 0
  br i1 %i.aw, label %bb.i, label %_ZNK4pbrt4HalfcvfEv.exit

bb.i:                                             ; preds = %bb.h
  %i.ax = or i32 %i.aq, 947912704
  %i.ay = bitcast i32 %i.ax to float
  %i.az = fadd float %i.ay, f0xB8800000
  %i.ba = bitcast float %i.az to i32
  br label %_ZNK4pbrt4HalfcvfEv.exit

_ZNK4pbrt4HalfcvfEv.exit:                         ; preds = %bb.g, %bb.h, %bb.i
  %.sroa.0.0.i = phi i32 [ %i.at, %bb.g ], [ %i.ba, %bb.i ], [ %i.av, %bb.h ]
  %.signext.i = sext i16 %i.ao to i32
  %i.bb = and i32 %.signext.i, -2147483648
  %i.bc = or i32 %.sroa.0.0.i, %i.bb
  %i.bd = bitcast i32 %i.bc to float
  br label %bb.l

bb.j:                                             ; preds = %bb.b
  %.sroa.0.0.copyload = load i64, ptr %4, align 8 ; 2 uses
  %.sroa.0.0.extract.trunc.i12 = trunc i64 %.sroa.0.0.copyload to i32
  %.sroa.2.0.extract.shift.i13 = lshr i64 %.sroa.0.0.copyload, 32
  %.sroa.2.0.extract.trunc.i14 = trunc nuw i64 %.sroa.2.0.extract.shift.i13 to i32
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !1148
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = load i32, ptr %i.b, align 4, !tbaa !337
  %i.bi = mul nsw i32 %i.bh, %.sroa.2.0.extract.trunc.i14
  %i.bj = add nsw i32 %i.bi, %.sroa.0.0.extract.trunc.i12
  %i.bk = mul nsw i32 %i.bj, %i.bg
  %i.bl = sext i32 %i.bk to i64
  %i.bm = sext i32 %2 to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !128
  %i.bp = getelementptr [4 x i8], ptr %i.bo, i64 %i.bl
  %i.bq = getelementptr [4 x i8], ptr %i.bp, i64 %i.bm
  %i.br = load float, ptr %i.bq, align 4, !tbaa !122
  br label %bb.l

bb.k:                                             ; preds = %bb.b
  call void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.37, i32 noundef 273, ptr noundef nonnull @.str.38) #26
  unreachable

bb.l:                                             ; preds = %bb.a, %bb.j, %_ZNK4pbrt4HalfcvfEv.exit, %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit
  %.0 = phi float [ %i.aa, %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit ], [ %i.bd, %_ZNK4pbrt4HalfcvfEv.exit ], [ %i.br, %bb.j ], [ 0.000000e+00, %bb.a ]
  ret float %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4pbrt16RemapPixelCoordsEPNS_6Point2IiEES1_NS_10WrapMode2DE(ptr noundef %0, i64 %1, i64 %2) local_unnamed_addr #3 comdat {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i32  ; 9 uses
  %.sroa.9.0.extract.shift = lshr i64 %1, 32      ; 2 uses
  %.sroa.9.0.extract.trunc = trunc nuw i64 %.sroa.9.0.extract.shift to i32 ; 8 uses
  %.sroa.0.0.extract.trunc90 = trunc i64 %2 to i32 ; 2 uses
  %.sroa.3.0.extract.shift = lshr i64 %2, 32      ; 2 uses
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.a = icmp eq i32 %.sroa.0.0.extract.trunc90, 3
  br i1 %i.a, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 4, !tbaa !136    ; 5 uses
  %i.c = icmp sgt i32 %i.b, -1
  %i.d = icmp slt i32 %i.b, %.sroa.0.0.extract.trunc
  %or.cond = select i1 %i.c, i1 %i.d, i1 false
  br i1 %or.cond, label %.preheader.1, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.sroa.3.0.extract.shift, 3
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4pbrt8LogFatalIJRA47_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.37, i32 noundef 101, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(47) @.str.39) #26
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = load i32, ptr %0, align 4, !tbaa !136    ; 5 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = sub nsw i32 0, %i.f                      ; 2 uses
  store i32 %i.h, ptr %0, align 4, !tbaa !136
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !136
  %i.k = xor i32 %i.j, -1
  %i.l = add i32 %i.k, %.sroa.9.0.extract.trunc   ; 2 uses
end_hunk_2
