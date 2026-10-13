Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/lights?download=true
inline.NumInlined: 8455
inline.NumDeleted: 1612
loop-unroll.NumCompletelyUnrolled: 70
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 107
begin_hunk_0_@_ZNK4pbrt12DistantLight8ToStringB5cxx11Ev:bb.a
          cleanup                                 ; 2 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !29, !alias.scope !464 ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.c
  br i1 %i.g, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.c, align 8, !tbaa !28, !alias.scope !464
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.i) #35
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4
  %common.resume.op = phi { ptr, i32 } [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4 ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.e, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZNK4pbrt9LightBase12BaseToStringB5cxx11Ev.exit:  ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !24, !alias.scope !465
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.m, align 8, !tbaa !27, !alias.scope !465
  store i8 0, ptr %i.l, align 8, !tbaa !28, !alias.scope !465
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKPKNS_22DenselySampledSpectrumERKfEEEvPS7_PKcOT_DpOT0_(ptr noundef nonnull align 8 %0, ptr noundef nonnull @.str.20, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.k)
          to label %_ZN4pbrt12StringPrintfIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKPKNS_22DenselySampledSpectrumERKfEEES6_PKcDpOT_.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZNK4pbrt9LightBase12BaseToStringB5cxx11Ev.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %0, align 8, !tbaa !29, !alias.scope !465 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.l
  br i1 %i.p, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.q = load i64, ptr %i.l, align 8, !tbaa !28, !alias.scope !465
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #35
  br label %.body

_ZN4pbrt12StringPrintfIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKPKNS_22DenselySampledSpectrumERKfEEES6_PKcDpOT_.exit: ; preds = %_ZNK4pbrt9LightBase12BaseToStringB5cxx11Ev.exit
  %i.s = load ptr, ptr %2, align 8, !tbaa !29     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.c
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4pbrt12StringPrintfIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKPKNS_22DenselySampledSpectrumERKfEEES6_PKcDpOT_.exit
  %i.u = load i64, ptr %i.c, align 8, !tbaa !28
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4pbrt12StringPrintfIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKPKNS_22DenselySampledSpectrumERKfEEES6_PKcDpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.w = load ptr, ptr %2, align 8, !tbaa !29     ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.c
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %.body
  %i.y = load i64, ptr %i.c, align 8, !tbaa !28
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4pbrt12DistantLight6CreateERKNS_9TransformERKNS_19ParameterDictionaryEPKNS_13RGBColorSpaceEPKNS_7FileLocEN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 4 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(108) %1, ptr noundef %2, ptr nofree readnone captures(none) %3, ptr %4) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %5 = alloca %"class.pbrt::Spectrum", align 8    ; 4 uses
  %6 = alloca %"class.pstd::optional.56", align 4 ; 5 uses
  %7 = alloca %"class.pbrt::SquareMatrix.10", align 4 ; 14 uses
  %8 = alloca %"class.pbrt::Spectrum", align 8    ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.pbrt::Spectrum", align 8   ; 2 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.pbrt::Transform", align 4  ; 7 uses
  %15 = alloca %"class.pbrt::Transform", align 4  ; 5 uses
  %16 = alloca %"class.pbrt::Spectrum", align 8   ; 2 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.a, ptr %9, align 8, !tbaa !24
  store i8 76, ptr %i.a, align 8, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 1, ptr %i.b, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 17
  store i8 0, ptr %i.c, align 1, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = or i64 %i.e, 288230376151711744
  store i64 %i.f, ptr %10, align 8, !tbaa !67
  invoke void @_ZNK4pbrt19ParameterDictionary14GetOneSpectrumERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8SpectrumENS_12SpectrumTypeEN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Spectrum") align 8 %8, ptr noundef nonnull align 8 dereferenceable(108) %1, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %10, i32 noundef 0, ptr %4)
          to label %bb.a unwind label %bb.f

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.g = load ptr, ptr %9, align 8, !tbaa !29     ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.a
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.i = load i64, ptr %i.a, align 8, !tbaa !28
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.j) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #37
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.k, ptr %11, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.k, ptr noundef nonnull align 1 dereferenceable(5) @.str.17, i64 5, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 5, ptr %i.l, align 8, !tbaa !27
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 21
  store i8 0, ptr %i.m, align 1, !tbaa !28
  %i.n = invoke noundef float @_ZNK4pbrt19ParameterDictionary11GetOneFloatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEf(ptr noundef nonnull align 8 dereferenceable(108) %1, ptr noundef nonnull align 8 dereferenceable(32) %11, float noundef 1.000000e+00)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.o = load ptr, ptr %11, align 8, !tbaa !29    ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.k
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %bb.b
  %i.q = load i64, ptr %i.k, align 8, !tbaa !28
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #37
  %i.s = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.s, ptr %12, align 8, !tbaa !24
  store i32 1836020326, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 4, ptr %i.t, align 8, !tbaa !27
  %i.u = getelementptr inbounds nuw i8, ptr %12, i64 20
  store i8 0, ptr %i.u, align 4, !tbaa !28
  %i.v = invoke { <2 x float>, float } @_ZNK4pbrt19ParameterDictionary13GetOnePoint3fERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6Point3IfEE(ptr noundef nonnull align 8 dereferenceable(108) %1, ptr noundef nonnull align 8 dereferenceable(32) %12, <2 x float> zeroinitializer, float 0.000000e+00)
          to label %bb.c unwind label %bb.h       ; 2 uses

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71
  %.fca.0.extract27 = extractvalue { <2 x float>, float } %i.v, 0
  %.fca.1.extract28 = extractvalue { <2 x float>, float } %i.v, 1
  %i.w = load ptr, ptr %12, align 8, !tbaa !29    ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.s
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %bb.c
  %i.y = load i64, ptr %i.s, align 8, !tbaa !28
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #37
  %i.aa = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  store ptr %i.aa, ptr %13, align 8, !tbaa !24
  store i16 28532, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 2, ptr %i.ab, align 8, !tbaa !27
  %i.ac = getelementptr inbounds nuw i8, ptr %13, i64 18
  store i8 0, ptr %i.ac, align 2, !tbaa !28
  %i.ad = invoke { <2 x float>, float } @_ZNK4pbrt19ParameterDictionary13GetOnePoint3fERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6Point3IfEE(ptr noundef nonnull align 8 dereferenceable(108) %1, ptr noundef nonnull align 8 dereferenceable(32) %13, <2 x float> zeroinitializer, float 1.000000e+00)
          to label %bb.d unwind label %bb.i       ; 2 uses

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78
  %.fca.0.extract20 = extractvalue { <2 x float>, float } %i.ad, 0
  %.fca.1.extract21 = extractvalue { <2 x float>, float } %i.ad, 1
  %i.ae = load ptr, ptr %13, align 8, !tbaa !29   ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.aa
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %bb.d
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !28
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  %i.ai = fsub float %.fca.1.extract28, %.fca.1.extract21 ; 3 uses
  %i.aj = fsub <2 x float> %.fca.0.extract27, %.fca.0.extract20 ; 4 uses
  %i.ak = fmul <2 x float> %i.aj, %i.aj           ; 2 uses
  %shift = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.ak, %shift
  %i.al = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.am = fmul float %i.ai, %i.ai
  %i.an = fadd float %i.am, %i.al
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.an) ; 3 uses
  %18 = extractelement <2 x float> %i.aj, i64 0
  %19 = fdiv float %18, %sqrt.i.i                 ; 5 uses
  %i.ao = extractelement <2 x float> %i.aj, i64 1
  %i.ap = fdiv float %i.ao, %sqrt.i.i             ; 5 uses
  %i.aq = fdiv float %i.ai, %sqrt.i.i             ; 3 uses
  %i.ar = call noundef float @llvm.copysign.f32(float 1.000000e+00, float %i.aq) ; 5 uses
  %i.as = fadd float %i.aq, %i.ar
  %i.at = fdiv float -1.000000e+00, %i.as         ; 3 uses
  %i.au = fmul float %19, %i.ap
  %i.av = fmul float %i.au, %i.at                 ; 2 uses
  %i.aw = fmul float %19, %19
  %20 = fmul float %i.ar, %i.aw
  %21 = fmul float %20, %i.at
  %22 = fadd float %21, 1.000000e+00
  %23 = fmul float %i.ar, %i.av
  %24 = fneg float %i.ar
  %25 = fmul float %i.ap, %i.ap
  %26 = fmul float %25, %i.at
  %27 = fadd float %i.ar, %26
  %28 = fneg float %i.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  store float %22, ptr %7, align 4, !tbaa !77
  %29 = getelementptr inbounds nuw i8, ptr %7, i64 4
  store float %i.av, ptr %29, align 4, !tbaa !77
  %30 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store float %19, ptr %30, align 4, !tbaa !77
  %31 = getelementptr inbounds nuw i8, ptr %7, i64 12
  store float 0.000000e+00, ptr %31, align 4, !tbaa !77
  %32 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store float %23, ptr %32, align 4, !tbaa !77
  %33 = getelementptr inbounds nuw i8, ptr %7, i64 20
  %34 = fmul float %19, %24
  %i.ax = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, float %27, i64 0
  %i.ay = insertelement <4 x float> %i.ax, float %i.ap, i64 1
  %i.az = insertelement <4 x float> %i.ay, float %34, i64 3
  store <4 x float> %i.az, ptr %33, align 4, !tbaa !77
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 36
  store float %28, ptr %i.ba, align 4, !tbaa !77
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 40
  store float %i.aq, ptr %i.bb, align 4, !tbaa !77
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bd, align 4, !tbaa !77
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %14, ptr noundef nonnull align 4 dereferenceable(64) %7, i64 64, i1 false), !tbaa.struct !106
  %i.be = getelementptr inbounds nuw i8, ptr %14, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  call void @_ZN4pbrt7InverseILi4EEEN4pstd8optionalINS_12SquareMatrixIXT_EEEEERKS4_(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.56") align 4 %6, ptr noundef nonnull align 4 dereferenceable(64) %7)
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.bg = load i8, ptr %i.bf, align 4, !tbaa !108, !range !92, !noundef !93
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %_ZN4pstd8optionalIN4pbrt12SquareMatrixILi4EEEEdeEv.exit.i.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85
  store <8 x float> splat (float +snan(0x200000)), ptr %i.be, align 4, !tbaa !77
  %i.bi = getelementptr inbounds nuw i8, ptr %14, i64 96
  store <8 x float> splat (float +snan(0x200000)), ptr %i.bi, align 4, !tbaa !77
  br label %_ZN4pbrt9TransformC2EPA4_Kf.exit

_ZN4pstd8optionalIN4pbrt12SquareMatrixILi4EEEEdeEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.be, ptr noundef nonnull align 4 dereferenceable(64) %6, i64 64, i1 false), !tbaa.struct !106
  br label %_ZN4pbrt9TransformC2EPA4_Kf.exit

_ZN4pbrt9TransformC2EPA4_Kf.exit:                 ; preds = %.preheader.preheader.i.i, %_ZN4pstd8optionalIN4pbrt12SquareMatrixILi4EEEEdeEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #37
  call void @_ZNK4pbrt9TransformmlERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Transform") align 4 %15, ptr noundef nonnull align 4 dereferenceable(128) %0, ptr noundef nonnull align 4 dereferenceable(128) %14)
  %i.bj = load i64, ptr %8, align 8, !tbaa !67
  store i64 %i.bj, ptr %16, align 8, !tbaa !67
  %i.bk = call noundef float @_ZN4pbrt21SpectrumToPhotometricENS_8SpectrumE(ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #37
  %i.bl = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr %i.bl, ptr %17, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.bl, ptr noundef nonnull align 1 dereferenceable(11) @.str.23, i64 11, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 11, ptr %i.bm, align 8, !tbaa !27
  %i.bn = getelementptr inbounds nuw i8, ptr %17, i64 27
  store i8 0, ptr %i.bn, align 1, !tbaa !28
  %i.bo = invoke noundef float @_ZNK4pbrt19ParameterDictionary11GetOneFloatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEf(ptr noundef nonnull align 8 dereferenceable(108) %1, ptr noundef nonnull align 8 dereferenceable(32) %17, float noundef -1.000000e+00)
          to label %bb.e unwind label %bb.j       ; 2 uses

bb.e:                                             ; preds = %_ZN4pbrt9TransformC2EPA4_Kf.exit
  %i.bp = load ptr, ptr %17, align 8, !tbaa !29   ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.bl
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90: ; preds = %bb.e
  %i.br = load i64, ptr %i.bl, align 8, !tbaa !28
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90
  %i.bt = fdiv float %i.n, %i.bk                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  %i.bu = fcmp ogt float %i.bo, 0.000000e+00
  %i.bv = fmul float %i.bt, %i.bo
  %spec.select = select i1 %i.bu, float %i.bv, float %i.bt
  %i.bw = load ptr, ptr %4, align 8, !tbaa !42
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = call noundef ptr %i.by(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 184, i64 noundef 8), !inline_history !466 ; 8 uses
  %i.ca = load i64, ptr %8, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i32 1, ptr %i.bz, align 8, !tbaa !38
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.cb, ptr noundef nonnull readonly align 4 dereferenceable(128) %15, i64 128, i1 false), !tbaa.struct !39
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 136
  %i.cd = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4pbrtL9numLightsE) ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i8 0, i64 16, i1 false)
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !30
  %i.cf = add nsw i64 %i.ce, 1
  store i64 %i.cf, ptr %i.cd, align 8, !tbaa !30
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bz, i64 152
  store i64 %i.ca, ptr %5, align 8, !tbaa !67
  %i.ch = call noundef ptr @_ZN4pbrt9LightBase14LookupSpectrumENS_8SpectrumE(ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %5)
  store ptr %i.ch, ptr %i.cg, align 8, !tbaa !104
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bz, i64 160
  store float %spec.select, ptr %i.ci, align 8, !tbaa !109
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bz, i64 164
  store <2 x float> zeroinitializer, ptr %i.cj, align 4, !tbaa !77
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bz, i64 172
  store float 0.000000e+00, ptr %i.ck, align 4, !tbaa !87
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  ret ptr %i.bz

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.cl = landingpad { ptr, i32 }
          cleanup
  %i.cm = load ptr, ptr %9, align 8, !tbaa !29    ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.a
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93: ; preds = %bb.f
  %i.co = load i64, ptr %i.a, align 8, !tbaa !28
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cp) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  br label %bb.k

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cq = landingpad { ptr, i32 }
          cleanup
  %i.cr = load ptr, ptr %11, align 8, !tbaa !29   ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.k
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96: ; preds = %bb.g
  %i.ct = load i64, ptr %i.k, align 8, !tbaa !28
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  br label %bb.k

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71
  %i.cv = landingpad { ptr, i32 }
          cleanup
  %i.cw = load ptr, ptr %12, align 8, !tbaa !29   ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.s
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99: ; preds = %bb.h
  %i.cy = load i64, ptr %i.s, align 8, !tbaa !28
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  br label %bb.k

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78
  %i.da = landingpad { ptr, i32 }
          cleanup
  %i.db = load ptr, ptr %13, align 8, !tbaa !29   ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.aa
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102: ; preds = %bb.i
  %i.dd = load i64, ptr %i.aa, align 8, !tbaa !28
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.de) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  br label %bb.k

bb.j:                                             ; preds = %_ZN4pbrt9TransformC2EPA4_Kf.exit
  %i.df = landingpad { ptr, i32 }
          cleanup
  %i.dg = load ptr, ptr %17, align 8, !tbaa !29   ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.bl
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %bb.j
  %i.di = load i64, ptr %i.bl, align 8, !tbaa !28
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dj) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95
  %.pn59.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95 ], [ %i.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98 ], [ %i.cv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101 ], [ %i.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107 ], [ %i.da, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  resume { ptr, i32 } %.pn59.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt15ProjectionLightC2ENS_9TransformENS_15MediumInterfaceENS_5ImageEPKNS_13RGBColorSpaceEffN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(728) initializes((0, 132), (136, 164), (168, 592), (600, 712), (720, 724)) %0, ptr nofree noundef readonly byval(%"class.pbrt::Transform") align 8 captures(none) %1, ptr nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %2, ptr nofree noundef align 8 captures(none) dereferenceable(152) %3, ptr noundef %4, float noundef %5, float noundef %6, ptr %7) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %class.anon.45, align 8             ; 4 uses
  %9 = alloca %"class.std::function.139", align 8 ; 11 uses
  %10 = alloca %"class.pbrt::Transform", align 4  ; 5 uses
  %11 = alloca %"class.pbrt::Transform", align 4  ; 5 uses
  %12 = alloca %"struct.pbrt::ImageChannelDesc", align 8 ; 12 uses
  %13 = alloca [3 x %"class.std::__cxx11::basic_string"], align 8 ; 28 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %14 = alloca %"class.pbrt::Array2D", align 8    ; 13 uses
  %15 = alloca %"class.pbrt::PiecewiseConstant2D", align 8 ; 16 uses
  store i32 0, ptr %0, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
end_hunk_0
