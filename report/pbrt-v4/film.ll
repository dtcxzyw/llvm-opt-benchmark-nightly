Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/film?download=true
inline.NumInlined: 4433
inline.NumDeleted: 1046
loop-unroll.NumCompletelyUnrolled: 76
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_ZN4pbrt14VisibleSurfaceC2ERKNS_18SurfaceInteractionENS_15SampledSpectrumERKNS_18SampledWavelengthsE:bb.a
  %.sroa.04.0.vec.extract.i.i42 = extractelement <2 x float> %.sroa.07.0.copyload, i64 0
  %.sroa.04.4.vec.extract.i.i44 = extractelement <2 x float> %.sroa.07.0.copyload, i64 1
  %i.ae = fmul float %.sroa.5.0.copyload, %.sroa.28.0.copyload ; 2 uses
  %i.af = tail call noundef float @llvm.fma.f32(float %.sroa.04.4.vec.extract.i.i44, float %.sroa.01.4.vec.extract.i.i, float %i.ae)
  %i.ag = fneg float %i.ae
  %i.ah = tail call noundef float @llvm.fma.f32(float %.sroa.28.0.copyload, float %.sroa.5.0.copyload, float %i.ag)
  %i.ai = fadd float %i.af, %i.ah
  %i.aj = tail call noundef float @llvm.fma.f32(float %.sroa.04.0.vec.extract.i.i42, float %.sroa.01.0.vec.extract.i.i, float %i.ai)
  %i.ak = fcmp olt float %i.aj, 0.000000e+00      ; 2 uses
  %i.al = fneg <2 x float> %.sroa.07.0.copyload
  %i.am = fneg float %.sroa.28.0.copyload
  %.sroa.0.4.vec.insert.i.pn.i48 = select i1 %i.ak, <2 x float> %i.al, <2 x float> %.sroa.07.0.copyload
  %.pn.i49 = select i1 %i.ak, float %i.am, float %.sroa.28.0.copyload
  store <2 x float> %.sroa.0.4.vec.insert.i.pn.i48, ptr %i.d, align 4
  store float %.pn.i49, ptr %i.e, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ao = load i64, ptr %i.an, align 4
  store i64 %i.ao, ptr %i.f, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aq = load float, ptr %i.ap, align 8, !tbaa !338
  store float %i.aq, ptr %i.g, align 4, !tbaa !71
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 208
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.h, ptr noundef nonnull align 8 dereferenceable(12) %i.ar, i64 12, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 220
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.i, ptr noundef nonnull align 4 dereferenceable(12) %i.as, i64 12, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt14VisibleSurface8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(89) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !29, !alias.scope !341
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.i, align 8, !tbaa !31, !alias.scope !341
  store i8 0, ptr %i.h, align 8, !tbaa !32, !alias.scope !341
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRKbJRKNS_6Point3IfEERKNS_7Normal3IfEESB_RKNS_7Vector3IfEESF_RKfRKNS_15SampledSpectrumEEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %0, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(12) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull align 4 dereferenceable(12) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %i.g)
          to label %_ZN4pbrt12StringPrintfIJRKbRKNS_6Point3IfEERKNS_7Normal3IfEESA_RKNS_7Vector3IfEESE_RKfRKNS_15SampledSpectrumEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %0, align 8, !tbaa !33, !alias.scope !341 ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.h
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.h, align 8, !tbaa !32, !alias.scope !341
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.j

_ZN4pbrt12StringPrintfIJRKbRKNS_6Point3IfEERKNS_7Normal3IfEESA_RKNS_7Vector3IfEESE_RKfRKNS_15SampledSpectrumEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4pbrt11PixelSensor6CreateERKNS_19ParameterDictionaryEPKNS_13RGBColorSpaceEfPKNS_7FileLocEN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef %1, float noundef %2, ptr noundef %3, ptr %4) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %5 = alloca %"class.pbrt::Spectrum", align 8    ; 4 uses
  %6 = alloca %"class.pbrt::Spectrum", align 8    ; 4 uses
  %7 = alloca %"class.pbrt::Spectrum", align 8    ; 4 uses
  %8 = alloca %"class.pbrt::Spectrum", align 8    ; 4 uses
  %9 = alloca %"class.pbrt::Spectrum", align 8    ; 4 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.pbrt::DenselySampledSpectrum", align 8 ; 10 uses
  %16 = alloca %"class.pbrt::Spectrum", align 8   ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.pbrt::Spectrum", align 8   ; 6 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %20 = alloca %"class.pbrt::Spectrum", align 8   ; 6 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.a, ptr %10, align 8, !tbaa !29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.a, ptr noundef nonnull align 1 dereferenceable(3) @.str.21, i64 3, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 3, ptr %i.b, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %10, i64 19
  store i8 0, ptr %i.c, align 1, !tbaa !32
  %i.d = invoke noundef float @_ZNK4pbrt19ParameterDictionary11GetOneFloatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEf(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull align 8 dereferenceable(32) %10, float noundef 1.000000e+02)
          to label %bb.a unwind label %bb.e

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.e = load ptr, ptr %10, align 8, !tbaa !33    ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.a
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.g = load i64, ptr %i.a, align 8, !tbaa !32
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.i, ptr %11, align 8, !tbaa !29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.i, ptr noundef nonnull align 1 dereferenceable(12) @.str.22, i64 12, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 12, ptr %i.j, align 8, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 28
  store i8 0, ptr %i.k, align 4, !tbaa !32
  %i.l = invoke noundef float @_ZNK4pbrt19ParameterDictionary11GetOneFloatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEf(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull align 8 dereferenceable(32) %11, float noundef 0.000000e+00)
          to label %bb.b unwind label %bb.f       ; 2 uses

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.m = load ptr, ptr %11, align 8, !tbaa !33    ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.i
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.b
  %i.o = load i64, ptr %i.i, align 8, !tbaa !32
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  %i.q = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  store ptr %i.q, ptr %13, align 8, !tbaa !29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.q, ptr noundef nonnull align 1 dereferenceable(6) @.str.23, i64 6, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 6, ptr %i.r, align 8, !tbaa !31
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 22
  store i8 0, ptr %i.s, align 2, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  %i.t = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.t, ptr %14, align 8, !tbaa !29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.t, ptr noundef nonnull align 1 dereferenceable(7) @.str.24, i64 7, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 7, ptr %i.u, align 8, !tbaa !31
  %i.v = getelementptr inbounds nuw i8, ptr %14, i64 23
  store i8 0, ptr %i.v, align 1, !tbaa !32
  invoke void @_ZNK4pbrt19ParameterDictionary12GetOneStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  %i.w = load ptr, ptr %14, align 8, !tbaa !33    ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.t
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %bb.c
  %i.y = load i64, ptr %i.t, align 8, !tbaa !32
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  %i.aa = load ptr, ptr %13, align 8, !tbaa !33   ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.q
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %i.ac = load i64, ptr %i.q, align 8, !tbaa !32
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  %i.ae = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !31
  %i.ag = icmp eq i64 %i.af, 7
  br i1 %i.ag, label %bb.d, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64
  %i.ah = load ptr, ptr %12, align 8, !tbaa !33   ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 1
  %i.aj = xor i32 %i.ai, 828729699
  %i.ak = getelementptr i8, ptr %i.ah, i64 3
  %i.al = load i32, ptr %i.ak, align 1
  %i.am = xor i32 %i.al, 825440561
  %i.an = or i32 %i.aj, %i.am
  %i.ao = icmp ne i32 %i.an, 0                    ; 2 uses
  %i.ap = zext i1 %i.ao to i32                    ; 0 uses
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64
  %i.aq = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64 ], [ %i.ao, %bb.d ]
  %i.ar = fcmp oeq float %i.l, 0.000000e+00
  %or.cond = and i1 %i.ar, %i.aq
  %spec.store.select = select i1 %or.cond, float 6.500000e+03, float %i.l ; 2 uses
  %i.as = fmul float %2, %i.d
  %i.at = fdiv float %i.as, 1.000000e+02          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  %22 = fcmp une float %spec.store.select, 0.000000e+00 ; 2 uses
  %i.au = select i1 %22, float %spec.store.select, float 6.500000e+03
  invoke void @_ZN4pbrt7Spectra1DEfN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::DenselySampledSpectrum") align 8 %15, float noundef %i.au, ptr %4)
          to label %bb.h unwind label %bb.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  %i.aw = load ptr, ptr %10, align 8, !tbaa !33   ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.a
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %bb.e
  %i.ay = load i64, ptr %i.a, align 8, !tbaa !32
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %bb.ai

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ba = landingpad { ptr, i32 }
          cleanup
  %i.bb = load ptr, ptr %11, align 8, !tbaa !33   ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.i
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.f
  %i.bd = load i64, ptr %i.i, align 8, !tbaa !32
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %bb.ai

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = load ptr, ptr %14, align 8, !tbaa !33   ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.t
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %bb.g
  %i.bi = load i64, ptr %i.t, align 8, !tbaa !32
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  %i.bk = load ptr, ptr %13, align 8, !tbaa !33   ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.q
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %i.bm = load i64, ptr %i.q, align 8, !tbaa !32
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127

bb.h:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.bo = ptrtoint ptr %15 to i64
  %i.bp = or i64 %i.bo, 288230376151711744
  %i.bq = select i1 %22, i64 %i.bp, i64 288230376151711744 ; 2 uses
  %i.br = load i64, ptr %i.ae, align 8, !tbaa !31 ; 4 uses
  %i.bs = icmp eq i64 %i.br, 7
  %.pre = load ptr, ptr %12, align 8, !tbaa !33   ; 3 uses
  br i1 %i.bs, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread138

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.h
  %i.bt = load i32, ptr %.pre, align 1
  %i.bu = xor i32 %i.bt, 828729699
  %i.bv = getelementptr i8, ptr %.pre, i64 3
  %i.bw = load i32, ptr %i.bv, align 1
  %i.bx = xor i32 %i.bw, 825440561
  %i.by = or i32 %i.bu, %i.bx
  %i.bz = icmp ne i32 %i.by, 0
  %i.ca = zext i1 %i.bz to i32
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread138

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.cc = load ptr, ptr %4, align 8, !tbaa !73
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = invoke noundef ptr %i.ce(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 168, i64 noundef 8)
          to label %.noexc77 unwind label %bb.j, !inline_history !342 ; 2 uses

.noexc77:                                         ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i64 %i.bq, ptr %9, align 8, !tbaa !75
  invoke void @_ZN4pbrt11PixelSensorC2EPKNS_13RGBColorSpaceENS_8SpectrumEfN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(164) %i.cf, ptr noundef %1, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %9, float noundef %i.at, ptr nonnull %4)
          to label %_ZN4pstd3pmr21polymorphic_allocatorISt4byteE10new_objectIN4pbrt11PixelSensorEJRPKNS5_13RGBColorSpaceERNS5_8SpectrumERfRS3_EEEPT_DpOT0_.exit unwind label %bb.j

_ZN4pstd3pmr21polymorphic_allocatorISt4byteE10new_objectIN4pbrt11PixelSensorEJRPKNS5_13RGBColorSpaceERNS5_8SpectrumERfRS3_EEEPT_DpOT0_.exit: ; preds = %.noexc77
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.ad

bb.i:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.j:                                             ; preds = %.noexc77, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread138: ; preds = %bb.h, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  %i.ci = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 8 uses
  store ptr %i.ci, ptr %17, align 8, !tbaa !29, !alias.scope !356
  %i.cj = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  store i64 0, ptr %i.cj, align 8, !tbaa !31, !alias.scope !356
  store i8 0, ptr %i.ci, align 8, !tbaa !32, !alias.scope !356
  %i.ck = add i64 %i.br, 2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef %i.ck)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread138
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !31, !alias.scope !356
  %i.cm = sub i64 4611686018427387903, %i.cl
  %i.cn = icmp ult i64 %i.cm, %i.br
  br i1 %i.cn, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.k
  %i.co = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef %.pre, i64 noundef %i.br)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.l ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.cp = load i64, ptr %i.cj, align 8, !tbaa !31, !alias.scope !356
  %i.cq = and i64 %i.cp, -2
  %i.cr = icmp eq i64 %i.cq, 4611686018427387902
  br i1 %i.cr, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.124) #32
          to label %.cont.i.i unwind label %bb.l

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.cs = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.25, i64 noundef 2)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.l ; 0 uses

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread138
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cu = load ptr, ptr %17, align 8, !tbaa !33, !alias.scope !356 ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.ci
  br i1 %i.cv, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.l
  %i.cw = load i64, ptr %i.ci, align 8, !tbaa !32, !alias.scope !356
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cx) #31
  br label %.body

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  invoke void @_ZN4pbrt16GetNamedSpectrumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Spectrum") align 8 %16, ptr nofree noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.m unwind label %bb.x

bb.m:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.cy = load ptr, ptr %17, align 8, !tbaa !33   ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.ci
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79: ; preds = %bb.m
  %i.da = load i64, ptr %i.ci, align 8, !tbaa !32
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.db) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !357)
  %i.dc = load ptr, ptr %12, align 8, !tbaa !33, !noalias !357
  %i.dd = load i64, ptr %i.ae, align 8, !tbaa !31, !noalias !357 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 8 uses
  store ptr %i.de, ptr %19, align 8, !tbaa !29, !alias.scope !358
  %i.df = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  store i64 0, ptr %i.df, align 8, !tbaa !31, !alias.scope !358
  store i8 0, ptr %i.de, align 8, !tbaa !32, !alias.scope !358
  %i.dg = add i64 %i.dd, 2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %19, i64 noundef %i.dg)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81
  %i.dh = load i64, ptr %i.df, align 8, !tbaa !31, !alias.scope !358
  %i.di = sub i64 4611686018427387903, %i.dh
  %i.dj = icmp ult i64 %i.di, %i.dd
  br i1 %i.dj, label %.invoke.i.i88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i85: ; preds = %bb.n
  %i.dk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef %i.dc, i64 noundef %i.dd)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i86 unwind label %bb.o ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i86: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i85
  %i.dl = load i64, ptr %i.df, align 8, !tbaa !31, !alias.scope !358
  %i.dm = and i64 %i.dl, -2
  %i.dn = icmp eq i64 %i.dm, 4611686018427387902
  br i1 %i.dn, label %.invoke.i.i88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i87

.invoke.i.i88:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i86, %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.124) #32
          to label %.cont.i.i89 unwind label %bb.o

.cont.i.i89:                                      ; preds = %.invoke.i.i88
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i87: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i86
  %i.do = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.26, i64 noundef 2)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit92 unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i87, %.invoke.i.i88, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i85, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81
  %i.dp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dq = load ptr, ptr %19, align 8, !tbaa !33, !alias.scope !358 ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.de
  br i1 %i.dr, label %.body90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i82: ; preds = %bb.o
  %i.ds = load i64, ptr %i.de, align 8, !tbaa !32, !alias.scope !358
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.dt) #31
  br label %.body90

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit92: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i87
  invoke void @_ZN4pbrt16GetNamedSpectrumENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Spectrum") align 8 %18, ptr nofree noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.p unwind label %bb.y

bb.p:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit92
  %i.du = load ptr, ptr %19, align 8, !tbaa !33   ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.de
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93: ; preds = %bb.p
  %i.dw = load i64, ptr %i.de, align 8, !tbaa !32
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dx) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !359)
  %i.dy = load ptr, ptr %12, align 8, !tbaa !33, !noalias !359
  %i.dz = load i64, ptr %i.ae, align 8, !tbaa !31, !noalias !359 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 8 uses
  store ptr %i.ea, ptr %21, align 8, !tbaa !29, !alias.scope !360
  %i.eb = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 3 uses
  store i64 0, ptr %i.eb, align 8, !tbaa !31, !alias.scope !360
  store i8 0, ptr %i.ea, align 8, !tbaa !32, !alias.scope !360
  %i.ec = add i64 %i.dz, 2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %21, i64 noundef %i.ec)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !31, !alias.scope !360
  %i.ee = sub i64 4611686018427387903, %i.ed
  %i.ef = icmp ult i64 %i.ee, %i.dz
  br i1 %i.ef, label %.invoke.i.i102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i99: ; preds = %bb.q
end_hunk_0
