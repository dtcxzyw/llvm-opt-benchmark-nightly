Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/vecmath?download=true
inline.NumInlined: 732
inline.NumDeleted: 143
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4pbrt8internal9ToString3IiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_S8_S8_:bb.a
  store i32 %2, ptr %i.b, align 4, !tbaa !22
  store i32 %3, ptr %i.c, align 4, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !14, !alias.scope !58
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !17, !alias.scope !58
  store i8 0, ptr %i.d, align 8, !tbaa !18, !alias.scope !58
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRiJS2_S2_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %0, ptr noundef nonnull @.str.4, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %_ZN4pbrt12StringPrintfIJRiS1_S1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %0, align 8, !tbaa !19, !alias.scope !58 ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.d
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.i = load i64, ptr %i.d, align 8, !tbaa !18, !alias.scope !58
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.j) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.f

_ZN4pbrt12StringPrintfIJRiS1_S1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt8internal9ToString2INS_8IntervalEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_S9_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, <2 x float> %1, <2 x float> %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.pbrt::Interval", align 8    ; 2 uses
  %4 = alloca %"class.pbrt::Interval", align 8    ; 2 uses
  store <2 x float> %1, ptr %3, align 8
  store <2 x float> %2, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !14, !alias.scope !61
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !17, !alias.scope !61
  store i8 0, ptr %i.a, align 8, !tbaa !18, !alias.scope !61
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRNS_8IntervalEJS3_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %0, ptr noundef nonnull @.str.5, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4)
          to label %_ZN4pbrt12StringPrintfIJRNS_8IntervalES2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = load ptr, ptr %0, align 8, !tbaa !19, !alias.scope !61 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !18, !alias.scope !61
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.c

_ZN4pbrt12StringPrintfIJRNS_8IntervalES2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt8internal9ToString3INS_8IntervalEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_S9_S9_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, <2 x float> %1, <2 x float> %2, <2 x float> %3) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.pbrt::Interval", align 8    ; 2 uses
  %5 = alloca %"class.pbrt::Interval", align 8    ; 2 uses
  %6 = alloca %"class.pbrt::Interval", align 8    ; 2 uses
  store <2 x float> %1, ptr %4, align 8
  store <2 x float> %2, ptr %5, align 8
  store <2 x float> %3, ptr %6, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !14, !alias.scope !64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !17, !alias.scope !64
  store i8 0, ptr %i.a, align 8, !tbaa !18, !alias.scope !64
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRNS_8IntervalEJS3_S3_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %0, ptr noundef nonnull @.str.6, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(8) %6)
          to label %_ZN4pbrt12StringPrintfIJRNS_8IntervalES2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = load ptr, ptr %0, align 8, !tbaa !19, !alias.scope !64 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !18, !alias.scope !64
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.c

_ZN4pbrt12StringPrintfIJRNS_8IntervalES2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt10Quaternion8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !14, !alias.scope !67
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !17, !alias.scope !67
  store i8 0, ptr %i.d, align 8, !tbaa !18, !alias.scope !67
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRKfJS3_S3_S3_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %0, ptr noundef nonnull @.str.7, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %_ZN4pbrt12StringPrintfIJRKfS2_S2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %0, align 8, !tbaa !19, !alias.scope !67 ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.d
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.i = load i64, ptr %i.d, align 8, !tbaa !18, !alias.scope !67
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.j) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.f

_ZN4pbrt12StringPrintfIJRKfS2_S2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local { <2 x float>, <2 x float> } @_ZN4pbrt5UnionERKNS_13DirectionConeES2_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) local_unnamed_addr #1 {
bb.a:
  %2 = alloca %"class.pbrt::Transform", align 4   ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load float, ptr %i.a, align 4, !tbaa !70 ; 4 uses
  %i.c = fcmp oeq float %i.b, +inf
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load <2 x float>, ptr %1, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.8.0.copyload = load <2 x float>, ptr %.sroa.8.0..sroa_idx, align 4
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.e = load float, ptr %i.d, align 4, !tbaa !70 ; 4 uses
  %i.f = fcmp oeq float %i.e, +inf
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload75 = load <2 x float>, ptr %0, align 4
  %.sroa.8.0..sroa_idx78 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.8.0.copyload79 = load <2 x float>, ptr %.sroa.8.0..sroa_idx78, align 4
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.g = fcmp olt float %i.b, -1.000000e+00
  %i.h = fcmp ogt float %i.b, 1.000000e+00
  %..i.i = select i1 %i.h, float 1.000000e+00, float %i.b
  %.0.i.i = select i1 %i.g, float -1.000000e+00, float %..i.i
  %i.i = tail call noundef float @acosf(float noundef %.0.i.i) #20 ; 3 uses
  %i.j = fcmp olt float %i.e, -1.000000e+00
  %i.k = fcmp ogt float %i.e, 1.000000e+00
  %..i.i68 = select i1 %i.k, float 1.000000e+00, float %i.e
  %.0.i.i69 = select i1 %i.j, float -1.000000e+00, float %..i.i68
  %i.l = tail call noundef float @acosf(float noundef %.0.i.i69) #20 ; 3 uses
  %.sroa.041.0.copyload = load <2 x float>, ptr %0, align 4 ; 7 uses
  %.sroa.242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.sroa.242.0.copyload = load float, ptr %.sroa.242.0..sroa_idx, align 4 ; 3 uses
  %.sroa.039.0.copyload = load <2 x float>, ptr %1, align 4 ; 8 uses
  %.sroa.240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.sroa.240.0.copyload = load float, ptr %.sroa.240.0..sroa_idx, align 4 ; 3 uses
  %.sroa.04.0.vec.extract.i.i = extractelement <2 x float> %.sroa.041.0.copyload, i64 0 ; 2 uses
  %.sroa.01.0.vec.extract.i.i = extractelement <2 x float> %.sroa.039.0.copyload, i64 0
  %i.m = fmul <2 x float> %.sroa.041.0.copyload, %.sroa.039.0.copyload ; 2 uses
  %shift = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.m, %shift
  %i.n = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.o = fmul float %.sroa.242.0.copyload, %.sroa.240.0.copyload
  %i.p = fadd float %i.o, %i.n
  %i.q = fcmp olt float %i.p, 0.000000e+00
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = fadd <2 x float> %.sroa.041.0.copyload, %.sroa.039.0.copyload ; 2 uses
  %i.s = fadd float %.sroa.242.0.copyload, %.sroa.240.0.copyload ; 2 uses
  %i.t = fmul <2 x float> %i.r, %i.r              ; 2 uses
  %shift90 = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop91 = fadd <2 x float> %i.t, %shift90
  %i.u = extractelement <2 x float> %foldExtExtBinop91, i64 0
  %i.v = fmul float %i.s, %i.s
  %i.w = fadd float %i.v, %i.u
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.w)
  %i.x = fmul float %sqrt.i.i, 5.000000e-01       ; 2 uses
  %i.y = fcmp ogt float %i.x, 1.000000e+00
  %..i.i.i.a = select i1 %i.y, float 1.000000e+00, float %i.x
  %i.z = tail call noundef float @asinf(float noundef %..i.i.i.a) #20
  %i.aa = fmul float %i.z, 2.000000e+00
  %i.ab = fsub float f0x40490FDB, %i.aa
  br label %_ZN4pbrt12AngleBetweenIfEEfNS_7Vector3IT_EES3_.exit

bb.g:                                             ; preds = %bb.e
  %i.ac = fsub <2 x float> %.sroa.039.0.copyload, %.sroa.041.0.copyload ; 2 uses
  %i.ad = fsub float %.sroa.240.0.copyload, %.sroa.242.0.copyload ; 2 uses
  %i.ae = fmul <2 x float> %i.ac, %i.ac           ; 2 uses
  %shift93 = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop94 = fadd <2 x float> %i.ae, %shift93
  %i.af = extractelement <2 x float> %foldExtExtBinop94, i64 0
  %i.ag = fmul float %i.ad, %i.ad
  %i.ah = fadd float %i.ag, %i.af
  %sqrt.i41.i = tail call noundef float @llvm.sqrt.f32(float %i.ah)
  %i.ai = fmul float %sqrt.i41.i, 5.000000e-01    ; 2 uses
  %i.aj = fcmp ogt float %i.ai, 1.000000e+00
  %..i.i42.i = select i1 %i.aj, float 1.000000e+00, float %i.ai
  %i.ak = tail call noundef float @asinf(float noundef %..i.i42.i) #20
  %i.al = fmul float %i.ak, 2.000000e+00
  br label %_ZN4pbrt12AngleBetweenIfEEfNS_7Vector3IT_EES3_.exit

_ZN4pbrt12AngleBetweenIfEEfNS_7Vector3IT_EES3_.exit: ; preds = %bb.f, %bb.g
  %.0.i = phi float [ %i.ab, %bb.f ], [ %i.al, %bb.g ] ; 2 uses
  %i.am = fadd float %i.l, %.0.i                  ; 2 uses
  %i.an = fcmp ogt float %i.am, f0x40490FDB
  %.sroa.speculated72 = select i1 %i.an, float f0x40490FDB, float %i.am
  %i.ao = fcmp ugt float %.sroa.speculated72, %i.i
  br i1 %i.ao, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN4pbrt12AngleBetweenIfEEfNS_7Vector3IT_EES3_.exit
  %.sroa.8.0.copyload81 = load <2 x float>, ptr %.sroa.242.0..sroa_idx, align 4
  br label %bb.n

bb.i:                                             ; preds = %_ZN4pbrt12AngleBetweenIfEEfNS_7Vector3IT_EES3_.exit
  %i.ap = fadd float %i.i, %.0.i                  ; 3 uses
  %i.aq = fcmp ogt float %i.ap, f0x40490FDB
  %.sroa.speculated = select i1 %i.aq, float f0x40490FDB, float %i.ap
  %i.ar = fcmp ugt float %.sroa.speculated, %i.l
  br i1 %i.ar, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.8.0.copyload83 = load <2 x float>, ptr %.sroa.240.0..sroa_idx, align 4
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.as = fadd float %i.l, %i.ap
  %i.at = fmul float %i.as, 5.000000e-01          ; 3 uses
  %i.au = fcmp ult float %i.at, f0x40490FDB
  br i1 %i.au, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %.sroa.229.0.copyload = load float, ptr %.sroa.242.0..sroa_idx, align 4 ; 2 uses
  %.sroa.227.0.copyload = load float, ptr %.sroa.240.0..sroa_idx, align 4 ; 3 uses
  %i.av = fmul float %.sroa.04.0.vec.extract.i.i, %.sroa.227.0.copyload ; 2 uses
  %i.aw = fneg float %i.av
  %i.ax = tail call noundef float @llvm.fma.f32(float %.sroa.229.0.copyload, float %.sroa.01.0.vec.extract.i.i, float %i.aw)
  %i.ay = fneg float %.sroa.04.0.vec.extract.i.i
  %i.az = tail call noundef float @llvm.fma.f32(float %i.ay, float %.sroa.227.0.copyload, float %i.av)
  %i.ba = fadd float %i.ax, %i.az                 ; 3 uses
  %i.bb = fmul float %i.ba, %i.ba
  %i.bc = shufflevector <2 x float> %.sroa.041.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bd = insertelement <2 x float> %i.bc, float %.sroa.229.0.copyload, i64 1 ; 2 uses
  %i.be = fmul <2 x float> %.sroa.039.0.copyload, %i.bd ; 2 uses
  %i.bf = fneg <2 x float> %i.be
  %i.bg = shufflevector <2 x float> %.sroa.039.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bh = insertelement <2 x float> %i.bg, float %.sroa.227.0.copyload, i64 1
  %i.bi = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %.sroa.041.0.copyload, <2 x float> %i.bh, <2 x float> %i.bf)
  %i.bj = fneg <2 x float> %i.bd
  %i.bk = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.bj, <2 x float> %.sroa.039.0.copyload, <2 x float> %i.be)
  %i.bl = fadd <2 x float> %i.bi, %i.bk           ; 4 uses
  %i.bm = fmul <2 x float> %i.bl, %i.bl           ; 2 uses
  %i.bn = extractelement <2 x float> %i.bm, i64 1
  %i.bo = fadd float %i.bn, %i.bb
  %i.bp = extractelement <2 x float> %i.bm, i64 0
  %i.bq = fadd float %i.bp, %i.bo
  %i.br = fcmp oeq float %i.bq, 0.000000e+00
  br i1 %i.br, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bs = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %i.bs, float %i.ba, i64 1
  %i.bt = fsub float %i.at, %i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.bu = fmul float %i.bt, f0x42652EE0
  %i.bv = extractelement <2 x float> %i.bl, i64 0
  call void @_ZN4pbrt6RotateEfNS_7Vector3IfEE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Transform") align 4 %2, float noundef %i.bu, <2 x float> %.sroa.0.4.vec.insert.i, float %i.bv)
  %.sroa.07.0.copyload = load <2 x float>, ptr %0, align 4
  %.sroa.28.0.copyload = load float, ptr %.sroa.242.0..sroa_idx, align 4
  %i.bw = call { <2 x float>, float } @_ZNK4pbrt9TransformclIfEENS_7Vector3IT_EES4_(ptr noundef nonnull align 4 dereferenceable(128) %2, <2 x float> %.sroa.07.0.copyload, float %.sroa.28.0.copyload) ; 2 uses
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.bw, 0 ; 3 uses
  %.fca.1.extract = extractvalue { <2 x float>, float } %i.bw, 1 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.bx = call noundef float @cosf(float noundef %i.at) #20
  %i.by = fmul <2 x float> %.fca.0.extract, %.fca.0.extract ; 2 uses
  %shift96 = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop97 = fadd <2 x float> %i.by, %shift96
  %i.bz = extractelement <2 x float> %foldExtExtBinop97, i64 0
  %i.ca = fmul float %.fca.1.extract, %.fca.1.extract
  %i.cb = fadd float %i.ca, %i.bz
  %sqrt.i.i.i = call noundef float @llvm.sqrt.f32(float %i.cb) ; 2 uses
  %i.cc = insertelement <2 x float> poison, float %sqrt.i.i.i, i64 0
  %i.cd = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ce = fdiv <2 x float> %.fca.0.extract, %i.cd
  %i.cf = fdiv float %.fca.1.extract, %sqrt.i.i.i
  %.sroa.8.8.vec.insert = insertelement <2 x float> poison, float %i.cf, i64 0
  %.sroa.8.12.vec.insert = insertelement <2 x float> %.sroa.8.8.vec.insert, float %i.bx, i64 1
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.h, %bb.j, %bb.m, %bb.d, %bb.b
  %.sroa.0.0 = phi <2 x float> [ %.sroa.0.0.copyload, %bb.b ], [ %.sroa.0.0.copyload75, %bb.d ], [ zeroinitializer, %bb.k ], [ %i.ce, %bb.m ], [ %.sroa.041.0.copyload, %bb.h ], [ %.sroa.039.0.copyload, %bb.j ], [ zeroinitializer, %bb.l ]
  %.sroa.8.0 = phi <2 x float> [ %.sroa.8.0.copyload, %bb.b ], [ %.sroa.8.0.copyload79, %bb.d ], [ <float 1.000000e+00, float -1.000000e+00>, %bb.k ], [ %.sroa.8.12.vec.insert, %bb.m ], [ %.sroa.8.0.copyload81, %bb.h ], [ %.sroa.8.0.copyload83, %bb.j ], [ <float 1.000000e+00, float -1.000000e+00>, %bb.l ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.8.0, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt6RotateEfNS_7Vector3IfEE(ptr dead_on_unwind noalias writable sret(%"class.pbrt::Transform") align 4 %0, float noundef %1, <2 x float> %2, float %3) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = fmul float %1, f0x3C8EFA35               ; 2 uses
  %i.b = tail call noundef float @sinf(float noundef %i.a) #20 ; 3 uses
  %i.c = tail call noundef float @cosf(float noundef %i.a) #20 ; 4 uses
  %.sroa.01.0.vec.extract.i.i.i.i = extractelement <2 x float> %2, i64 0
  %foldExtExtBinop = fmul <2 x float> %2, %2
  %i.d = extractelement <2 x float> %foldExtExtBinop, i64 0
  %.sroa.01.4.vec.extract.i.i.i.i = extractelement <2 x float> %2, i64 1 ; 3 uses
  %i.e = fmul float %.sroa.01.4.vec.extract.i.i.i.i, %.sroa.01.4.vec.extract.i.i.i.i
  %i.f = fadd float %i.d, %i.e
  %i.g = fmul float %3, %3
  %i.h = fadd float %i.g, %i.f
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.h) ; 3 uses
  %i.i = fsub float 1.000000e+00, %i.c            ; 3 uses
  %.sroa.5.0..sroa_idx115.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.7.0..sroa_idx116.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = fdiv float %3, %sqrt.i.i.i               ; 5 uses
  %i.k = fmul float %i.j, %i.b                    ; 2 uses
  %i.l = fmul float %i.j, %i.j                    ; 2 uses
  %i.m = fsub float 1.000000e+00, %i.l
  %i.n = fmul float %i.m, %i.c
  %i.o = fadd float %i.l, %i.n                    ; 2 uses
  %.sroa.13.0..sroa_idx120.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.16.0..sroa_idx121.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float 0.000000e+00, ptr %.sroa.16.0..sroa_idx121.i, align 4, !alias.scope !73
  %.sroa.18.0..sroa_idx122.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.o, ptr %.sroa.21.0..sroa_idx.i, align 4, !alias.scope !73
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  %.sroa.30.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.24.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !73
  store float 1.000000e+00, ptr %.sroa.30.0..sroa_idx.i, align 4, !tbaa !18, !alias.scope !73
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 76
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx.i, align 4, !alias.scope !73
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.q = fdiv float %.sroa.01.0.vec.extract.i.i.i.i, %sqrt.i.i.i ; 5 uses
  %i.r = fmul float %i.q, %i.q                    ; 2 uses
  %i.s = fsub float 1.000000e+00, %i.r
  %i.t = fmul float %i.s, %i.c
  %i.u = fadd float %i.r, %i.t                    ; 2 uses
  %i.v = fmul float %i.q, %i.b                    ; 2 uses
  store float %i.u, ptr %0, align 4, !alias.scope !73
  %i.w = fdiv float %.sroa.01.4.vec.extract.i.i.i.i, %sqrt.i.i.i ; 5 uses
  %i.x = fmul float %i.q, %i.w
  %i.y = fmul float %i.x, %i.i                    ; 2 uses
  %i.z = fsub float %i.y, %i.k                    ; 2 uses
  %i.aa = fmul float %i.q, %i.j
  %i.ab = fmul float %i.aa, %i.i                  ; 2 uses
  %i.ac = fmul float %i.w, %i.b                   ; 2 uses
  %i.ad = fadd float %i.ac, %i.ab                 ; 2 uses
  %i.ae = fadd float %i.k, %i.y                   ; 2 uses
  %i.af = fmul float %i.w, %i.w                   ; 2 uses
  %i.ag = fsub float 1.000000e+00, %i.af
  %i.ah = fmul float %i.ag, %i.c
  %i.ai = fadd float %i.af, %i.ah                 ; 2 uses
  %i.aj = fmul float %i.w, %i.j
  %i.ak = fmul float %i.aj, %i.i                  ; 2 uses
  %i.al = fsub float %i.ak, %i.v                  ; 2 uses
  %i.am = fsub float %i.ab, %i.ac                 ; 2 uses
  %i.an = fadd float %i.v, %i.ak                  ; 2 uses
  store float %i.z, ptr %.sroa.5.0..sroa_idx115.i, align 4, !alias.scope !73
  %i.ao = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.ad, i64 0
  %i.ap = insertelement <4 x float> %i.ao, float %i.ae, i64 2
  %i.aq = insertelement <4 x float> %i.ap, float %i.ai, i64 3
  store <4 x float> %i.aq, ptr %.sroa.7.0..sroa_idx116.i, align 4, !alias.scope !73
  store float %i.al, ptr %.sroa.13.0..sroa_idx120.i, align 4, !alias.scope !73
  store float %i.am, ptr %.sroa.18.0..sroa_idx122.i, align 4, !alias.scope !73
  store float %i.an, ptr %.sroa.19.0..sroa_idx.i, align 4, !alias.scope !73
  store float %i.u, ptr %i.p, align 4, !alias.scope !73
  store float %i.ae, ptr %.sroa.4.0..sroa_idx.i, align 4, !alias.scope !73
  store float %i.am, ptr %.sroa.5.0..sroa_idx.i, align 4, !alias.scope !73
  store float %i.z, ptr %.sroa.7.0..sroa_idx.i, align 4, !alias.scope !73
  %i.ar = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, float %i.ai, i64 0
  %i.as = insertelement <4 x float> %i.ar, float %i.an, i64 1
  %i.at = insertelement <4 x float> %i.as, float %i.ad, i64 3
  store <4 x float> %i.at, ptr %.sroa.8.0..sroa_idx.i, align 4, !alias.scope !73
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 100
  store float %i.al, ptr %.sroa.12.0..sroa_idx.i, align 4, !alias.scope !73
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  store float %i.o, ptr %.sroa.13.0..sroa_idx.i, align 4, !alias.scope !73
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 108
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 124
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.14.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !73
  store float 1.000000e+00, ptr %.sroa.18.0..sroa_idx.i, align 4, !tbaa !18, !alias.scope !73
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, float } @_ZNK4pbrt9TransformclIfEENS_7Vector3IT_EES4_(ptr noundef nonnull align 4 dereferenceable(128) %0, <2 x float> %1, float %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = load <5 x float>, ptr %0, align 4, !tbaa !10 ; 3 uses
  %i.d = shufflevector <5 x float> %i.c, <5 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.e = shufflevector <5 x float> %i.c, <5 x float> poison, <2 x i32> <i32 1, i32 4>
  %i.f = fmul <2 x float> %i.a, %i.e
  %i.g = load <2 x float>, ptr %i.b, align 4, !tbaa !10 ; 2 uses
  %i.h = shufflevector <2 x float> %i.g, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.i = shufflevector <4 x float> %i.d, <4 x float> %i.h, <2 x i32> <i32 0, i32 4>
  %i.j = fmul <2 x float> %1, %i.i
  %i.k = fadd <2 x float> %i.f, %i.j
  %i.l = insertelement <2 x float> poison, float %2, i64 0
  %i.m = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> zeroinitializer
  %i.n = shufflevector <2 x float> %i.g, <2 x float> poison, <5 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison>
  %i.o = shufflevector <5 x float> %i.c, <5 x float> %i.n, <2 x i32> <i32 2, i32 6>
  %i.p = fmul <2 x float> %i.m, %i.o
  %i.q = fadd <2 x float> %i.k, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load <2 x float>, ptr %i.r, align 4, !tbaa !10
  %i.t = fmul <2 x float> %1, %i.s                ; 2 uses
  %shift = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.t, %shift
  %i.u = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load float, ptr %i.v, align 4, !tbaa !10
  %i.x = fmul float %2, %i.w
  %i.y = fadd float %i.u, %i.x
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %i.q, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.y, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt13DirectionCone8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !14, !alias.scope !76
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !17, !alias.scope !76
  store i8 0, ptr %i.b, align 8, !tbaa !18, !alias.scope !76
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRKNS_7Vector3IfEEJRKfEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %0, ptr noundef nonnull @.str.8, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN4pbrt12StringPrintfIJRKNS_7Vector3IfEERKfEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %0, align 8, !tbaa !19, !alias.scope !76 ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.b
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.b, align 8, !tbaa !18, !alias.scope !76
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.d

_ZN4pbrt12StringPrintfIJRKNS_7Vector3IfEERKfEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @acosf(float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fma.f32(float, float, float) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @asinf(float noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt6detail21stringPrintfRecursiveIRNS_8IntervalEJS3_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %3) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = alloca ptr, align 8                      ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %6 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  store ptr %1, ptr %i.c, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @_ZN4pbrt6detail18copyToFormatStringEPPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull %i.c, ptr noundef %0)
  %i.d = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 noundef signext 42, i64 noundef 0) #20
  %.not = icmp eq i64 %i.d, -1
  %i.e = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 noundef signext 115, i64 noundef 0) #20
  %.not17 = icmp eq i64 %i.e, -1
  %i.f = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 noundef signext 100, i64 noundef 0) #20
  br i1 %.not, label %bb.c, label %.invoke

bb.b:                                             ; preds = %.invoke, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  %.not18 = icmp eq i64 %i.f, -1
  br i1 %.not18, label %bb.d, label %.invoke

bb.d:                                             ; preds = %bb.c
  br i1 %.not17, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %6)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  invoke void @_ZNK4pbrt8Interval8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 4 dereferenceable(8) %2)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.f
  %i.i = load ptr, ptr %4, align 8, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !17
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef %i.i, i64 noundef %i.k)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.g ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %.noexc
  %i.m = load ptr, ptr %4, align 8, !tbaa !19     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !18
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #19
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.g:                                             ; preds = %.noexc
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %4, align 8, !tbaa !19     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.g
  %i.v = load i64, ptr %i.t, align 8, !tbaa !18
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.x = load ptr, ptr %5, align 8, !tbaa !19     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !83)
  call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.y, ptr %8, align 8, !tbaa !14, !alias.scope !85
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.z, align 8, !tbaa !17, !alias.scope !85
  store i8 0, ptr %i.y, align 8, !tbaa !18, !alias.scope !85
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !28, !noalias !85 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.ab, null
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !85 ; 2 uses
  %i.ae = icmp ugt ptr %i.ab, %i.ad
  %.08.i.i.i = select i1 %i.ae, ptr %i.ab, ptr %i.ad ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !29, !noalias !85 ; 2 uses
  %i.ah = ptrtoint ptr %.08.i.i.i to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef 0, i64 noundef 0, ptr noundef %i.ag, i64 noundef %i.aj)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = load ptr, ptr %8, align 8, !tbaa !19, !alias.scope !85 ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.y
  br i1 %i.an, label %.body27, label %.body27.sink.split

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.ao)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.i

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.j, %bb.h
  %i.ap = load ptr, ptr %8, align 8, !tbaa !19    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !86)
  %i.aq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef %i.x, ptr noundef %i.ap) #20, !noalias !86
  %i.ar = add nsw i32 %i.aq, 1
  %i.as = sext i32 %i.ar to i64                   ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.at, ptr %7, align 8, !tbaa !14, !alias.scope !86
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 0, ptr %i.au, align 8, !tbaa !17, !alias.scope !86
  store i8 0, ptr %i.at, align 8, !tbaa !18, !alias.scope !86
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.as, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i unwind label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.av = load ptr, ptr %7, align 8, !tbaa !19, !alias.scope !86
  %i.aw = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.av, i64 noundef %i.as, ptr noundef %i.x, ptr noundef %i.ap) #20 ; 0 uses
  %i.ax = load i64, ptr %i.au, align 8, !tbaa !17, !alias.scope !86
  %i.ay = add i64 %i.ax, -1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.ay, i64 noundef 1)
          to label %_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_.exit unwind label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #21
  unreachable

bb.l:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = load ptr, ptr %7, align 8, !tbaa !19, !alias.scope !86 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.at
  br i1 %i.bd, label %.body31, label %.body31.sink.split

_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i
  %i.be = load i64, ptr %i.au, align 8, !tbaa !17 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !17
  %i.bh = sub i64 4611686018427387903, %i.bg
  %i.bi = icmp ult i64 %i.bh, %i.be
  br i1 %i.bi, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.m:                                             ; preds = %_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #22
          to label %.noexc33 unwind label %bb.p

.noexc33:                                         ; preds = %bb.m
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_.exit
  %i.bj = load ptr, ptr %7, align 8, !tbaa !19
  %i.bk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.bj, i64 noundef %i.be)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.p ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.bl = load ptr, ptr %7, align 8, !tbaa !19    ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.at
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.bn = load i64, ptr %i.at, align 8, !tbaa !18
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

end_hunk_0
begin_hunk_1_@_ZN4pbrt6detail21stringPrintfRecursiveIRKNS_7Vector3IfEEJRKfEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_:bb.a

.noexc:                                           ; preds = %bb.n
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_.exit
  %i.bv = load ptr, ptr %7, align 8, !tbaa !19
  %i.bw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.bv, i64 noundef %i.bq)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.p ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.bx = load ptr, ptr %7, align 8, !tbaa !19    ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.bf
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.bz = load i64, ptr %i.bf, align 8, !tbaa !18
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.ca) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.cb = load ptr, ptr %8, align 8, !tbaa !19    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.ak
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cd = load i64, ptr %i.ak, align 8, !tbaa !18
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.cf = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.cf, ptr %6, align 8, !tbaa !31
  %i.cg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ch = getelementptr i8, ptr %i.cf, i64 -24
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds i8, ptr %6, i64 %i.ci
  store ptr %i.cg, ptr %i.cj, align 8, !tbaa !31
  %i.ck = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.ck, ptr %i.k, align 8, !tbaa !31
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.cl, align 8, !tbaa !31
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !19 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !18
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #19
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.cl, align 8, !tbaa !31
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cs) #20
  %i.ct = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ct, ptr %6, align 8, !tbaa !31
  %i.cu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.cv = getelementptr i8, ptr %i.ct, i64 -24
  %i.cw = load i64, ptr %i.cv, align 8
  %i.cx = getelementptr inbounds i8, ptr %6, i64 %i.cw
  store ptr %i.cu, ptr %i.cx, align 8, !tbaa !31
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.cy, align 8, !tbaa !33
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.cz) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.da = load ptr, ptr %i.f, align 8, !tbaa !24
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRKfJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull %0, ptr noundef %i.da, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.u unwind label %bb.b

bb.o:                                             ; preds = %bb.e
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.n
  %i.dc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dd = load ptr, ptr %7, align 8, !tbaa !19    ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.bf
  br i1 %i.de, label %.body31, label %.body31.sink.split

.body31.sink.split:                               ; preds = %bb.p, %bb.m
  %.sink = phi ptr [ %i.bo, %bb.m ], [ %i.dd, %bb.p ]
  %.pn20.ph = phi { ptr, i32 } [ %i.bn, %bb.m ], [ %i.dc, %bb.p ]
  %i.df = load i64, ptr %i.bf, align 8, !tbaa !18
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.dg) #19
  br label %.body31

.body31:                                          ; preds = %.body31.sink.split, %bb.p, %bb.m
  %.pn20 = phi { ptr, i32 } [ %i.bn, %bb.m ], [ %i.dc, %bb.p ], [ %.pn20.ph, %.body31.sink.split ] ; 2 uses
  %i.dh = load ptr, ptr %8, align 8, !tbaa !19    ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.ak
  br i1 %i.di, label %.body27, label %.body27.sink.split

.body27.sink.split:                               ; preds = %.body31, %bb.j
  %.sink85 = phi ptr [ %i.ay, %bb.j ], [ %i.dh, %.body31 ]
  %.pn20.pn.ph = phi { ptr, i32 } [ %i.ax, %bb.j ], [ %.pn20, %.body31 ]
  %i.dj = load i64, ptr %i.ak, align 8, !tbaa !18
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %.sink85, i64 noundef %i.dk) #19
  br label %.body27

.body27:                                          ; preds = %.body27.sink.split, %.body31, %bb.j
  %.pn20.pn = phi { ptr, i32 } [ %i.ax, %bb.j ], [ %.pn20, %.body31 ], [ %.pn20.pn.ph, %.body27.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %.body

.body:                                            ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %.body27
  %.pn20.pn.pn = phi { ptr, i32 } [ %.pn20.pn, %.body27 ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ], [ %i.s, %bb.g ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %6) #20
  br label %bb.q

bb.q:                                             ; preds = %.body, %bb.o
  %.pn20.pn.pn.pn = phi { ptr, i32 } [ %.pn20.pn.pn, %.body ], [ %i.db, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.v

bb.r:                                             ; preds = %bb.d
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !17
  %i.dn = icmp eq i64 %i.dm, 0
  br i1 %i.dn, label %.invoke, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.do = load ptr, ptr %5, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.do, ptr %i.a, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store ptr @_ZTSN4pbrt7Vector3IfEE, ptr %i.b, align 8, !tbaa !24
  invoke void @_ZN4pbrt8LogFatalIJPKcRS2_EEEvNS_8LogLevelES2_iS2_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.9, i32 noundef 176, ptr noundef nonnull @.str.16, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #22
          to label %.noexc43 unwind label %bb.t

.noexc43:                                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.invoke:                                          ; preds = %bb.a, %bb.r, %bb.c
  %i.dq = phi i32 [ 257, %bb.c ], [ 266, %bb.r ], [ 229, %bb.a ]
  %i.dr = phi ptr [ @.str.11, %bb.c ], [ @.str.12, %bb.r ], [ @.str.10, %bb.a ]
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.9, i32 noundef %i.dq, ptr noundef nonnull %i.dr) #22
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

bb.u:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.ds = load ptr, ptr %5, align 8, !tbaa !19    ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.du = icmp eq ptr %i.ds, %i.dt
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.u
  %i.dv = load i64, ptr %i.dt, align 8, !tbaa !18
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dw) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret void

bb.v:                                             ; preds = %bb.t, %bb.q, %bb.b
  %.pn25 = phi { ptr, i32 } [ %i.j, %bb.b ], [ %.pn20.pn.pn.pn, %bb.q ], [ %i.dp, %bb.t ]
  %i.dx = load ptr, ptr %5, align 8, !tbaa !19    ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dz = icmp eq ptr %i.dx, %i.dy
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.v
  %i.ea = load i64, ptr %i.dy, align 8, !tbaa !18
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.eb) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  resume { ptr, i32 } %.pn25
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fma.v2f32(<2 x float>, <2 x float>, <2 x float>) #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { builtin nounwind }
attributes #20 = { nounwind }
attributes #21 = { noreturn nounwind }
attributes #22 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"float", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"long", !5, i64 0}
!16 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0, !15, i64 8, !5, i64 16}
!17 = !{!16, !15, i64 8}
!18 = !{!5, !5, i64 0}
!19 = !{!16, !12, i64 0}
!20 = !{!"double", !5, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!6, !6, i64 0}
!23 = !{!"_ZTSN4pbrt6Tuple3INS_7Vector3EfEE", !9, i64 0, !9, i64 4, !9, i64 8}
!24 = !{!12, !12, i64 0}
!25 = !{!"p1 _ZTSNSt6locale5_ImplE", !11, i64 0}
!26 = !{!"_ZTSSt6locale", !25, i64 0}
!27 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !26, i64 56}
!28 = !{!27, !12, i64 40}
!29 = !{!27, !12, i64 32}
!30 = !{!"vtable pointer", !4, i64 0}
!31 = !{!30, !30, i64 0}
!32 = !{!"_ZTSSi", !15, i64 8}
!33 = !{!32, !15, i64 8}
!34 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!35 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!36 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !11, i64 0}
!37 = !{!"_ZTSNSt8ios_base6_WordsE", !11, i64 0, !15, i64 8}
!38 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !11, i64 0}
!39 = !{!"_ZTSSt8ios_base", !15, i64 8, !15, i64 16, !34, i64 24, !35, i64 28, !35, i64 32, !36, i64 40, !37, i64 48, !5, i64 64, !6, i64 192, !38, i64 200, !26, i64 208}
!40 = !{!39, !35, i64 32}
!41 = distinct !{!41, i1 false, !"_ZN4pbrt12StringPrintfIJRfS1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_"}
!42 = distinct !{!42, !41, !"_ZN4pbrt12StringPrintfIJRfS1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_: argument 0"}
!43 = !{!42}
!44 = distinct !{!44, i1 false, !"_ZN4pbrt12StringPrintfIJRdS1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_"}
!45 = distinct !{!45, !44, !"_ZN4pbrt12StringPrintfIJRdS1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_: argument 0"}
!46 = !{!45}
!47 = distinct !{!47, i1 false, !"_ZN4pbrt12StringPrintfIJRiS1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_"}
!48 = distinct !{!48, !47, !"_ZN4pbrt12StringPrintfIJRiS1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_: argument 0"}
!49 = !{!48}
!50 = distinct !{!50, i1 false, !"_ZN4pbrt12StringPrintfIJRfS1_S1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_"}
!51 = distinct !{!51, !50, !"_ZN4pbrt12StringPrintfIJRfS1_S1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_: argument 0"}
!52 = !{!51}
!53 = distinct !{!53, i1 false, !"_ZN4pbrt12StringPrintfIJRdS1_S1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_"}
!54 = distinct !{!54, !53, !"_ZN4pbrt12StringPrintfIJRdS1_S1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_: argument 0"}
!55 = !{!54}
!56 = distinct !{!56, i1 false, !"_ZN4pbrt12StringPrintfIJRiS1_S1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_"}
!57 = distinct !{!57, !56, !"_ZN4pbrt12StringPrintfIJRiS1_S1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_: argument 0"}
!58 = !{!57}
!59 = distinct !{!59, i1 false, !"_ZN4pbrt12StringPrintfIJRNS_8IntervalES2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_"}
!60 = distinct !{!60, !59, !"_ZN4pbrt12StringPrintfIJRNS_8IntervalES2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_: argument 0"}
!61 = !{!60}
!62 = distinct !{!62, i1 false, !"_ZN4pbrt12StringPrintfIJRNS_8IntervalES2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_"}
!63 = distinct !{!63, !62, !"_ZN4pbrt12StringPrintfIJRNS_8IntervalES2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_: argument 0"}
!64 = !{!63}
!65 = distinct !{!65, i1 false, !"_ZN4pbrt12StringPrintfIJRKfS2_S2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_"}
!66 = distinct !{!66, !65, !"_ZN4pbrt12StringPrintfIJRKfS2_S2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_: argument 0"}
!67 = !{!66}
!68 = !{!"_ZTSN4pbrt7Vector3IfEE", !23, i64 0}
!69 = !{!"_ZTSN4pbrt13DirectionConeE", !68, i64 0, !9, i64 12}
!70 = !{!69, !9, i64 12}
!71 = distinct !{!71, i1 false, !"_ZN4pbrt6RotateEffNS_7Vector3IfEE"}
!72 = distinct !{!72, !71, !"_ZN4pbrt6RotateEffNS_7Vector3IfEE: argument 0"}
!73 = !{!72}
!74 = distinct !{!74, i1 false, !"_ZN4pbrt12StringPrintfIJRKNS_7Vector3IfEERKfEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_"}
!75 = distinct !{!75, !74, !"_ZN4pbrt12StringPrintfIJRKNS_7Vector3IfEERKfEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_: argument 0"}
!76 = !{!75}
!77 = distinct !{!77, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!78 = distinct !{!78, !77, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!79 = distinct !{!79, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!80 = distinct !{!80, !79, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!81 = distinct !{!81, i1 false, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_"}
!82 = distinct !{!82, !81, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_: argument 0"}
!83 = !{!78}
!84 = !{!80}
!85 = !{!80, !78}
!86 = !{!82}
!87 = distinct !{!87, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!88 = distinct !{!88, !87, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!89 = distinct !{!89, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!90 = distinct !{!90, !89, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!91 = distinct !{!91, i1 false, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_"}
!92 = distinct !{!92, !91, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_: argument 0"}
!93 = !{!88}
!94 = !{!90}
!95 = !{!90, !88}
!96 = !{!92}
!97 = distinct !{!97, i1 false, !"_ZN4pbrt12StringPrintfIJPKcRS2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_DpOT_"}
!98 = distinct !{!98, !97, !"_ZN4pbrt12StringPrintfIJPKcRS2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_DpOT_: argument 0"}
!99 = !{!98}
!100 = distinct !{!100, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!101 = distinct !{!101, !100, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!102 = distinct !{!102, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!103 = distinct !{!103, !102, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!104 = distinct !{!104, i1 false, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_"}
!105 = distinct !{!105, !104, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_: argument 0"}
!106 = distinct !{!106, i1 false, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_"}
!107 = distinct !{!107, !106, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_: argument 0"}
!108 = !{!101}
!109 = !{!103}
!110 = !{!103, !101}
!111 = !{!105}
!112 = !{!107}
!113 = distinct !{!113, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!114 = distinct !{!114, !113, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!115 = distinct !{!115, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!116 = distinct !{!116, !115, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!117 = distinct !{!117, i1 false, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_"}
!118 = distinct !{!118, !117, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_: argument 0"}
!119 = distinct !{!119, i1 false, !"_ZN4pbrt6detail9formatOneIRPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS7_"}
!120 = distinct !{!120, !119, !"_ZN4pbrt6detail9formatOneIRPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS7_: argument 0"}
!121 = !{!114}
!122 = !{!116}
!123 = !{!116, !114}
!124 = !{!118}
!125 = !{!120}
!126 = distinct !{!126, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!127 = distinct !{!127, !126, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!128 = distinct !{!128, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!129 = distinct !{!129, !128, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!130 = distinct !{!130, i1 false, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_"}
!131 = distinct !{!131, !130, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_: argument 0"}
!132 = !{!127}
!133 = !{!129}
!134 = !{!129, !127}
!135 = !{!131}
!136 = distinct !{!136, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!137 = distinct !{!137, !136, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!138 = distinct !{!138, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!139 = distinct !{!139, !138, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!140 = distinct !{!140, i1 false, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_"}
!141 = distinct !{!141, !140, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_: argument 0"}
!142 = distinct !{!142, i1 false, !"_ZN4pbrt6detail9formatOneIRfEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPKcOS5_"}
!143 = distinct !{!143, !142, !"_ZN4pbrt6detail9formatOneIRfEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPKcOS5_: argument 0"}
!144 = !{!137}
!145 = !{!139}
!146 = !{!139, !137}
!147 = !{!141}
!148 = !{!143}
!149 = distinct !{!149, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!150 = distinct !{!150, !149, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!151 = distinct !{!151, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!152 = distinct !{!152, !151, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!153 = distinct !{!153, i1 false, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_"}
!154 = distinct !{!154, !153, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_: argument 0"}
!155 = distinct !{!155, i1 false, !"_ZN4pbrt6detail9formatOneIRfEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPKcOS5_"}
!156 = distinct !{!156, !155, !"_ZN4pbrt6detail9formatOneIRfEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPKcOS5_: argument 0"}
!157 = !{!150}
!158 = !{!152}
!159 = !{!152, !150}
!160 = !{!154}
!161 = !{!156}
!162 = distinct !{!162, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!163 = distinct !{!163, !162, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!164 = distinct !{!164, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!165 = distinct !{!165, !164, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!166 = distinct !{!166, i1 false, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_"}
!167 = distinct !{!167, !166, !"_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_: argument 0"}
!168 = distinct !{!168, i1 false, !"_ZN4pbrt6detail9formatOneIRdEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPKcOS5_"}
!169 = distinct !{!169, !168, !"_ZN4pbrt6detail9formatOneIRdEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPKcOS5_: argument 0"}
end_hunk_1
