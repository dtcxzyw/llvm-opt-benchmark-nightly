Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/perf_affine2d?download=true
inline.NumInlined: 1948
inline.NumDeleted: 904
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN11opencv_testL59gtest_EstimateAffine_EstimateAffinePartial2D_EvalGenerator_Ev:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.e, ptr %i.f, align 8, !tbaa !117, !noalias !352
  store i64 17179869192, ptr %i.c, align 4, !tbaa !118, !noalias !352
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.g, align 8, !tbaa !119, !noalias !352
  store ptr %i.a, ptr %2, align 8, !tbaa !122, !alias.scope !352
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  store ptr %i.h, ptr %i.h, align 8, !tbaa !70, !alias.scope !352
  call void @llvm.experimental.noalias.scope.decl(metadata !353)
  store i32 100000, ptr %1, align 8, !tbaa !124, !alias.scope !353
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 5000, ptr %i.i, align 4, !tbaa !125, !alias.scope !353
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 100, ptr %i.j, align 8, !tbaa !126, !alias.scope !353
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <2 x double> <double f0x3FEFAE147AE147AE, double f0x3FEE666666666666>, ptr %i.k, align 8, !tbaa !127, !alias.scope !353
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  store double 9.000000e-01, ptr %i.l, align 8, !tbaa !129, !alias.scope !353
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  store ptr %i.a, ptr %i.m, align 8, !tbaa !122, !alias.scope !353
  invoke void @_ZN7testing8internal9MutexBase4LockEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal18g_linked_ptr_mutexE)
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.b, %.noexc
  %.0.i.i.i.i.i.i = phi ptr [ %i.n, %.noexc ], [ %i.h, %bb.b ] ; 2 uses
  %i.n = load ptr, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !70, !noalias !353 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.n, %i.h
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %.noexc, !llvm.loop !0

bb.c:                                             ; preds = %.noexc
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  store ptr %i.o, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !70, !noalias !353
  store ptr %i.h, ptr %i.o, align 8, !tbaa !70, !alias.scope !353
  invoke void @_ZN7testing8internal9MutexBase6UnlockEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal18g_linked_ptr_mutexE)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #33
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 10, ptr %i.r, align 8, !tbaa !131, !alias.scope !353
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 60
  store i32 0, ptr %i.s, align 4, !tbaa !132, !alias.scope !353
  invoke fastcc void @_ZNK7testing8internal23CartesianProductHolder4INS0_11ValueArray3IiiiEENS2_IdddEENS0_14ParamGeneratorIN11opencv_test12_GLOBAL__N_16MethodEEENS0_11ValueArray2IiiEEEcvNS5_ISt5tupleIJT_T0_T1_T2_EEEEIidS8_mEEv(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.f unwind label %bb.t

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN7testing8internal9MutexBase4LockEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal18g_linked_ptr_mutexE)
          to label %.noexc.i.i.i unwind label %bb.l

.noexc.i.i.i:                                     ; preds = %bb.f
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !70   ; 3 uses
  %i.u = icmp eq ptr %i.t, %i.o                   ; 2 uses
  br i1 %i.u, label %bb.h, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.noexc.i.i.i, %.preheader.i.i.i.i.i
  %.0.i.i.i.i.i = phi ptr [ %i.v, %.preheader.i.i.i.i.i ], [ %i.t, %.noexc.i.i.i ] ; 2 uses
  %i.v = load ptr, ptr %.0.i.i.i.i.i, align 8, !tbaa !70 ; 2 uses
  %.not.i.i.i.i.i3 = icmp eq ptr %i.v, %i.o
  br i1 %.not.i.i.i.i.i3, label %bb.g, label %.preheader.i.i.i.i.i, !llvm.loop !1

bb.g:                                             ; preds = %.preheader.i.i.i.i.i
  store ptr %i.t, ptr %.0.i.i.i.i.i, align 8, !tbaa !70
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.noexc.i.i.i
  invoke void @_ZN7testing8internal9MutexBase6UnlockEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal18g_linked_ptr_mutexE)
          to label %_ZN7testing8internal19linked_ptr_internal6departEv.exit.i.i.i.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #33
  unreachable

_ZN7testing8internal19linked_ptr_internal6departEv.exit.i.i.i.i: ; preds = %bb.h
  br i1 %i.u, label %bb.j, label %_ZN7testing8internal23CartesianProductHolder4INS0_11ValueArray3IiiiEENS2_IdddEENS0_14ParamGeneratorIN11opencv_test12_GLOBAL__N_16MethodEEENS0_11ValueArray2IiiEEED2Ev.exit

bb.j:                                             ; preds = %_ZN7testing8internal19linked_ptr_internal6departEv.exit.i.i.i.i
  %i.y = load ptr, ptr %i.m, align 8, !tbaa !122  ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_ZN7testing8internal23CartesianProductHolder4INS0_11ValueArray3IiiiEENS2_IdddEENS0_14ParamGeneratorIN11opencv_test12_GLOBAL__N_16MethodEEENS0_11ValueArray2IiiEEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !61
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.y) #30, !inline_history !2
  br label %_ZN7testing8internal23CartesianProductHolder4INS0_11ValueArray3IiiiEENS2_IdddEENS0_14ParamGeneratorIN11opencv_test12_GLOBAL__N_16MethodEEENS0_11ValueArray2IiiEEED2Ev.exit

bb.l:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #33
  unreachable

_ZN7testing8internal23CartesianProductHolder4INS0_11ValueArray3IiiiEENS2_IdddEENS0_14ParamGeneratorIN11opencv_test12_GLOBAL__N_16MethodEEENS0_11ValueArray2IiiEEED2Ev.exit: ; preds = %_ZN7testing8internal19linked_ptr_internal6departEv.exit.i.i.i.i, %bb.j, %bb.k
  invoke void @_ZN7testing8internal9MutexBase4LockEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal18g_linked_ptr_mutexE)
          to label %.noexc.i.i unwind label %bb.r

.noexc.i.i:                                       ; preds = %_ZN7testing8internal23CartesianProductHolder4INS0_11ValueArray3IiiiEENS2_IdddEENS0_14ParamGeneratorIN11opencv_test12_GLOBAL__N_16MethodEEENS0_11ValueArray2IiiEEED2Ev.exit
  %i.af = load ptr, ptr %i.h, align 8, !tbaa !70  ; 3 uses
  %i.ag = icmp eq ptr %i.af, %i.h                 ; 2 uses
  br i1 %i.ag, label %bb.n, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.noexc.i.i, %.preheader.i.i.i.i
  %.0.i.i.i.i = phi ptr [ %i.ah, %.preheader.i.i.i.i ], [ %i.af, %.noexc.i.i ] ; 2 uses
  %i.ah = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !70 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ah, %i.h
  br i1 %.not.i.i.i.i, label %bb.m, label %.preheader.i.i.i.i, !llvm.loop !1

bb.m:                                             ; preds = %.preheader.i.i.i.i
  store ptr %i.af, ptr %.0.i.i.i.i, align 8, !tbaa !70
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.noexc.i.i
  invoke void @_ZN7testing8internal9MutexBase6UnlockEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal18g_linked_ptr_mutexE)
          to label %_ZN7testing8internal19linked_ptr_internal6departEv.exit.i.i.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #33
  unreachable

_ZN7testing8internal19linked_ptr_internal6departEv.exit.i.i.i: ; preds = %bb.n
  br i1 %i.ag, label %bb.p, label %_ZN7testing8internal14ParamGeneratorIN11opencv_test12_GLOBAL__N_16MethodEED2Ev.exit

bb.p:                                             ; preds = %_ZN7testing8internal19linked_ptr_internal6departEv.exit.i.i.i
  %i.ak = load ptr, ptr %2, align 8, !tbaa !122   ; 3 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_ZN7testing8internal14ParamGeneratorIN11opencv_test12_GLOBAL__N_16MethodEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !61
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.ak) #30, !inline_history !3
  br label %_ZN7testing8internal14ParamGeneratorIN11opencv_test12_GLOBAL__N_16MethodEED2Ev.exit

bb.r:                                             ; preds = %_ZN7testing8internal23CartesianProductHolder4INS0_11ValueArray3IiiiEENS2_IdddEENS0_14ParamGeneratorIN11opencv_test12_GLOBAL__N_16MethodEEENS0_11ValueArray2IiiEEED2Ev.exit
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #33
  unreachable

_ZN7testing8internal14ParamGeneratorIN11opencv_test12_GLOBAL__N_16MethodEED2Ev.exit: ; preds = %_ZN7testing8internal19linked_ptr_internal6departEv.exit.i.i.i, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  ret void

bb.s:                                             ; preds = %bb.b
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %bb.e
  %i.as = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZN7testing8internal23CartesianProductHolder4INS0_11ValueArray3IiiiEENS2_IdddEENS0_14ParamGeneratorIN11opencv_test12_GLOBAL__N_16MethodEEENS0_11ValueArray2IiiEEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %1) #30
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn = phi { ptr, i32 } [ %i.as, %bb.t ], [ %i.ar, %bb.s ]
  call fastcc void @_ZN7testing8internal14ParamGeneratorIN11opencv_test12_GLOBAL__N_16MethodEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN11opencv_testL62gtest_EstimateAffine_EstimateAffinePartial2D_EvalGenerateName_B5cxx11ERKN7testing13TestParamInfoISt5tupleIJidNS_12_GLOBAL__N_16MethodEmEEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 1 captures(none) %1) #1 {
bb.a:
  tail call fastcc void @_ZN7testing8internal16DefaultParamNameISt5tupleIJidN11opencv_test12_GLOBAL__N_16MethodEmEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_13TestParamInfoIT_EE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11opencv_test38EstimateAffine_EstimateAffinePartial2D12PerfTestBodyEv(ptr noundef nonnull align 8 dereferenceable(256) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %2 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %3 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %6 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %7 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %8 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %9 = alloca %"class.cv::Range", align 8         ; 4 uses
  %10 = alloca %"class.cv::Range", align 4        ; 5 uses
  %sincos.sin11.i = alloca double, align 8        ; 4 uses
  %sincos.cos12.i = alloca double, align 8        ; 4 uses
  %sincos.sin.i = alloca double, align 8          ; 4 uses
  %sincos.cos.i = alloca double, align 8          ; 4 uses
  %i.a = alloca [6 x double], align 16            ; 5 uses
  %11 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %13 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %14 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %15 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %16 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %17 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %i.c = alloca double, align 8                   ; 5 uses
  %18 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %19 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %20 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %21 = alloca %"class.cv::Mat", align 8          ; 13 uses
  %22 = alloca %"class.cv::Scalar_", align 8      ; 6 uses
  %23 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %24 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %25 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %26 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %i.d = alloca double, align 8                   ; 5 uses
  %27 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %i.e = alloca double, align 8                   ; 5 uses
  %28 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %29 = alloca %"class.std::vector.30", align 8   ; 13 uses
  %30 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %31 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %32 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %33 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %34 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %35 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %36 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %i.f = tail call fastcc noundef nonnull align 8 dereferenceable(28) ptr @_ZNK7testing18WithParamInterfaceISt5tupleIJidN11opencv_test12_GLOBAL__N_16MethodEmEEE8GetParamEv() ; 4 uses
  %.sroa.085.0.copyload = load i64, ptr %i.f, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.686.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.686.0.copyload = load double, ptr %.sroa.686.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %sincos.sin11.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %sincos.cos12.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %sincos.sin.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %sincos.cos.i)
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2cv6theRNGEv(), !noalias !359 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !361, !noalias !359 ; 2 uses
  %i.i = and i64 %i.h, 4294967295
  %i.j = mul nuw i64 %i.i, 4164903690
  %i.k = lshr i64 %i.h, 32
  %i.l = add nuw i64 %i.j, %i.k                   ; 2 uses
  store i64 %i.l, ptr %i.g, align 8, !tbaa !361, !noalias !359
  %i.m = trunc i64 %i.l to i32
  %i.n = uitofp i32 %i.m to float
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2cv6theRNGEv(), !noalias !359 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !361, !noalias !359 ; 2 uses
  %i.q = and i64 %i.p, 4294967295
  %i.r = mul nuw i64 %i.q, 4164903690
  %i.s = lshr i64 %i.p, 32
  %i.t = add nuw i64 %i.r, %i.s                   ; 2 uses
  store i64 %i.t, ptr %i.o, align 8, !tbaa !361, !noalias !359
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2cv6theRNGEv(), !noalias !359 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !361, !noalias !359 ; 2 uses
  %i.w = and i64 %i.v, 4294967295
  %i.x = mul nuw i64 %i.w, 4164903690
  %i.y = lshr i64 %i.v, 32
  %i.z = add nuw i64 %i.x, %i.y                   ; 2 uses
  %i.aa = trunc i64 %i.z to i32
  %i.ab = uitofp i32 %i.aa to float
  %i.ac = insertelement <2 x float> poison, float %i.n, i64 0
  %i.ad = insertelement <2 x float> %i.ac, float %i.ab, i64 1
  %i.ae = fmul nnan <2 x float> %i.ad, splat (float f0x2F800000)
  %i.af = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> <float f0x40C90FDB, float 4.000000e+00>, <2 x float> <float 0.000000e+00, float -2.000000e+00>) ; 2 uses
  %i.ag = extractelement <2 x float> %i.af, i64 0
  %i.ah = fpext float %i.ag to double             ; 2 uses
  %i.ai = trunc i64 %i.t to i32
  %i.aj = uitofp i32 %i.ai to float
  store i64 %i.z, ptr %i.u, align 8, !tbaa !361, !noalias !359
  %i.ak = extractelement <2 x float> %i.af, i64 1
  %i.al = fpext float %i.ak to double
  %i.am = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2cv6theRNGEv(), !noalias !359 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !361, !noalias !359 ; 2 uses
  %i.ao = and i64 %i.an, 4294967295
  %i.ap = mul nuw i64 %i.ao, 4164903690
  %i.aq = lshr i64 %i.an, 32
  %i.ar = add nuw i64 %i.ap, %i.aq                ; 2 uses
  store i64 %i.ar, ptr %i.am, align 8, !tbaa !361, !noalias !359
  %i.as = trunc i64 %i.ar to i32
  %i.at = uitofp i32 %i.as to float
  %i.au = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.av = insertelement <2 x float> %i.au, float %i.at, i64 1
  %i.aw = fmul nnan <2 x float> %i.av, splat (float f0x2F800000)
  %i.ax = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aw, <2 x float> <float 3.000000e+00, float 4.000000e+00>, <2 x float> <float 0.000000e+00, float -2.000000e+00>)
  %i.ay = fpext <2 x float> %i.ax to <2 x double> ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30, !noalias !359
  call void @sincos(double %i.ah, ptr nonnull %sincos.sin.i, ptr nonnull %sincos.cos.i), !noalias !359
  %sin.i = load double, ptr %sincos.sin.i, align 8, !noalias !359
  %cos.i = load double, ptr %sincos.cos.i, align 8, !noalias !359
  %i.az = fneg double %sin.i
  call void @sincos(double %i.ah, ptr nonnull %sincos.sin11.i, ptr nonnull %sincos.cos12.i), !noalias !359
  %sin13.i = load double, ptr %sincos.sin11.i, align 8, !noalias !359
  %cos14.i = load double, ptr %sincos.cos12.i, align 8, !noalias !359
  %i.ba = shufflevector <2 x double> %i.ay, <2 x double> poison, <6 x i32> <i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bb = shufflevector <6 x double> %i.ba, <6 x double> <double poison, double poison, double 1.000000e+00, double poison, double poison, double 1.000000e+00>, <6 x i32> <i32 0, i32 1, i32 8, i32 poison, i32 poison, i32 11>
  %i.bc = insertelement <6 x double> %i.bb, double %sin13.i, i64 3
  %i.bd = insertelement <6 x double> %i.bc, double %cos14.i, i64 4
  %i.be = shufflevector <2 x double> %i.ay, <2 x double> poison, <6 x i32> <i32 poison, i32 poison, i32 poison, i32 0, i32 poison, i32 poison>
  %i.bf = insertelement <6 x double> %i.be, double %cos.i, i64 0
  %i.bg = insertelement <6 x double> %i.bf, double %i.az, i64 1
  %i.bh = insertelement <6 x double> %i.bg, double %i.al, i64 2
  %i.bi = shufflevector <2 x double> %i.ay, <2 x double> poison, <6 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bj = shufflevector <6 x double> %i.bh, <6 x double> %i.bi, <6 x i32> <i32 0, i32 1, i32 2, i32 3, i32 6, i32 7>
  %i.bk = fmul <6 x double> %i.bd, %i.bj
  store <6 x double> %i.bk, ptr %i.a, align 16, !tbaa !127, !noalias !359
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30, !noalias !359
  call void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %11, i32 noundef 2, i32 noundef 3, i32 noundef 6, ptr noundef nonnull %i.a, i64 noundef 0), !noalias !359
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %12, ptr noundef nonnull align 8 dereferenceable(208) %11)
          to label %_ZN11opencv_testL16rngPartialAffMatEv.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.bi, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.bl, %bb.b ], [ %.pn66.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bi ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30, !noalias !359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30, !noalias !359
  br label %common.resume

_ZN11opencv_testL16rngPartialAffMatEv.exit:       ; preds = %bb.a
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30, !noalias !359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30, !noalias !359
  call void @llvm.lifetime.end.p0(ptr nonnull %sincos.sin11.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %sincos.cos12.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %sincos.sin.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %sincos.cos.i)
  %i.bm = icmp eq i32 %.sroa.5.0.copyload, 4
  %i.bn = mul nsw i32 %.sroa.7.0.copyload, 3
  %i.bo = shl nsw i32 %.sroa.7.0.copyload, 1
  %.040.in = select i1 %i.bm, i32 %i.bn, i32 %i.bo
  %.040 = sdiv i32 %.040.in, 5
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef 1, i32 noundef %.sroa.7.0.copyload, i32 noundef 37)
          to label %bb.c unwind label %bb.ah

bb.c:                                             ; preds = %_ZN11opencv_testL16rngPartialAffMatEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %14, i32 noundef 1, i32 noundef %.sroa.7.0.copyload, i32 noundef 37)
          to label %bb.d unwind label %bb.ai

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  %i.bp = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i64 0, ptr %i.bq, align 8
  store i32 50397184, ptr %15, align 8, !tbaa !135
  store ptr %13, ptr %i.bp, align 8, !tbaa !136
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !127
  %i.br = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i32 -1056833530, ptr %16, align 8, !tbaa !135
  %i.bs = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %i.b, ptr %i.bs, align 8, !tbaa !136
  store i64 4294967297, ptr %i.br, align 8, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  store double 1.000000e+02, ptr %i.c, align 8, !tbaa !127
  %i.bt = getelementptr inbounds nuw i8, ptr %17, i64 16
  store i32 -1056833530, ptr %17, align 8, !tbaa !135
  %i.bu = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %i.c, ptr %i.bu, align 8, !tbaa !136
  store i64 4294967297, ptr %i.bt, align 8, !tbaa !118
  invoke void @_ZN2cv5randuERKNS_17_InputOutputArrayERKNS_11_InputArrayES5_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %17)
          to label %bb.e unwind label %bb.aj

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  %i.bv = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i32 0, ptr %i.bv, align 8, !tbaa !137
  %i.bw = getelementptr inbounds nuw i8, ptr %18, i64 20
  store i32 0, ptr %i.bw, align 4, !tbaa !138
  store i32 16842752, ptr %18, align 8, !tbaa !135
  %i.bx = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %13, ptr %i.bx, align 8, !tbaa !136
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30
  %i.by = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i64 0, ptr %i.bz, align 8
  store i32 33619968, ptr %19, align 8, !tbaa !135
  store ptr %14, ptr %i.by, align 8, !tbaa !136
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #30
  %i.ca = getelementptr inbounds nuw i8, ptr %20, i64 16
  store i32 0, ptr %i.ca, align 8, !tbaa !137
  %i.cb = getelementptr inbounds nuw i8, ptr %20, i64 20
  store i32 0, ptr %i.cb, align 4, !tbaa !138
  store i32 16842752, ptr %20, align 8, !tbaa !135
  %i.cc = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %12, ptr %i.cc, align 8, !tbaa !136
  invoke void @_ZN2cv9transformERKNS_11_InputArrayERKNS_12_OutputArrayES2_(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %20)
          to label %bb.f unwind label %bb.ak

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30, !noalias !362
  store i64 9223372034707292160, ptr %9, align 8, !noalias !362
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30, !noalias !362
  store i32 %.040, ptr %10, align 4, !tbaa !140, !noalias !362
  %i.cd = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 %.sroa.7.0.copyload, ptr %i.cd, align 4, !tbaa !141, !noalias !362
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %21, ptr noundef nonnull align 8 dereferenceable(208) %14, ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef nonnull align 4 dereferenceable(8) %10)
          to label %bb.g unwind label %bb.al

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30, !noalias !362
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30, !noalias !362
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #30
  store double 1.500000e+01, ptr %22, align 8, !tbaa !127
  %i.ce = getelementptr inbounds nuw i8, ptr %22, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #30
  invoke void @_ZNK2cv3Mat7reshapeEii(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %23, ptr noundef nonnull align 8 dereferenceable(208) %21, i32 noundef 1, i32 noundef 0)
          to label %bb.h unwind label %bb.am

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 0, ptr %i.cf, align 8, !tbaa !137
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 0, ptr %i.cg, align 4, !tbaa !138
  store i32 16842752, ptr %6, align 8, !tbaa !135
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %23, ptr %i.ch, align 8, !tbaa !136
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 -1056833530, ptr %7, align 8, !tbaa !135
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %22, ptr %i.cj, align 8, !tbaa !136
  store i64 17179869185, ptr %i.ci, align 8, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.ck = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 0, ptr %i.cl, align 8
  store i32 -1040121856, ptr %8, align 8, !tbaa !135
  store ptr %23, ptr %i.ck, align 8, !tbaa !136
  %i.cm = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %.noexc unwind label %bb.an

.noexc:                                           ; preds = %bb.h
  invoke void @_ZN2cv3addERKNS_11_InputArrayES2_RKNS_12_OutputArrayES2_i(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %i.cm, i32 noundef -1)
          to label %bb.i unwind label %bb.an

bb.i:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #30
  %i.cn = getelementptr inbounds nuw i8, ptr %21, i64 72
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !144 ; 6 uses
  %i.cp = icmp slt i32 %i.co, 3
  br i1 %i.cp, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.41, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc77 unwind label %bb.ap

.noexc77:                                         ; preds = %bb.j
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.42, i32 noundef 109) #34
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %.noexc77
  unreachable

bb.l:                                             ; preds = %.noexc77
  %i.cq = landingpad { ptr, i32 }
          cleanup
  %i.cr = load ptr, ptr %4, align 8, !tbaa !55    ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.l
  %i.cu = load i64, ptr %i.cs, align 8, !tbaa !56
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %.body

bb.m:                                             ; preds = %bb.i
  %i.cw = icmp sgt i32 %i.co, 0
  br i1 %i.cw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cx = icmp eq i32 %i.co, 2
  %.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.cx, i64 88, i64 84
  %.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %21, i64 %.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %i.cy = load i32, ptr %.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !118
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.cz = icmp eq i32 %i.co, 0
  %i.da = zext i1 %i.cz to i32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.db = phi i32 [ %i.cy, %bb.n ], [ %i.da, %bb.o ]
  %i.dc = icmp eq i32 %i.co, 2
  %i.dd = getelementptr inbounds nuw i8, ptr %21, i64 84
  %i.de = load i32, ptr %i.dd, align 4
  %i.df = icmp sgt i32 %i.co, -1
  %i.dg = zext i1 %i.df to i32
  %i.dh = select i1 %i.dc, i32 %i.de, i32 %i.dg
  %.sroa.2.0.insert.ext.i = zext i32 %i.dh to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.db to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.di = load i32, ptr %21, align 8, !tbaa !149
  %i.dj = and i32 %i.di, 4095
  invoke void @_ZN2cv3MatC1ENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208) %24, i64 %.sroa.0.0.insert.insert.i, i32 noundef %i.dj)
end_hunk_0
begin_hunk_1_@_ZSt16__do_uninit_copyIPKN7testing8internal10linked_ptrINS1_25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE8TestInfoEEEPS8_ET0_T_SD_SC_:bb.a
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #33
  unreachable

bb.k:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZSt8_DestroyIPN7testing8internal10linked_ptrINS1_25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE8TestInfoEEEEvT_SA_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #17 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN7testing8internal10linked_ptrINS3_25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE8TestInfoEEEEEvT_SC_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyIN7testing8internal10linked_ptrINS1_25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE8TestInfoEEEEvPT_.exit.i
  %.05.i = phi ptr [ %i.c, %_ZSt8_DestroyIN7testing8internal10linked_ptrINS1_25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE8TestInfoEEEEvPT_.exit.i ], [ %0, %bb.a ] ; 2 uses
  invoke void @_ZN7testing8internal10linked_ptrINS0_25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE8TestInfoEE6departEv(ptr noundef nonnull align 8 dereferenceable(16) %.05.i)
          to label %_ZSt8_DestroyIN7testing8internal10linked_ptrINS1_25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE8TestInfoEEEEvPT_.exit.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #33
  unreachable

_ZSt8_DestroyIN7testing8internal10linked_ptrINS1_25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE8TestInfoEEEEvPT_.exit.i: ; preds = %.lr.ph.i
  %i.c = getelementptr inbounds nuw i8, ptr %.05.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.c, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN7testing8internal10linked_ptrINS3_25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE8TestInfoEEEEEvT_SC_.exit, label %.lr.ph.i, !llvm.loop !29

_ZNSt12_Destroy_auxILb0EE9__destroyIPN7testing8internal10linked_ptrINS3_25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE8TestInfoEEEEEvT_SC_.exit: ; preds = %_ZSt8_DestroyIN7testing8internal10linked_ptrINS1_25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE8TestInfoEEEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal10linked_ptrINS0_25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE8TestInfoEE6departEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @_ZN7testing8internal9MutexBase4LockEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal18g_linked_ptr_mutexE)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 3 uses
  %i.c = icmp eq ptr %i.b, %i.a                   ; 2 uses
  br i1 %i.c, label %bb.c, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %.preheader.i
  %.0.i = phi ptr [ %i.d, %.preheader.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.0.i, align 8, !tbaa !70  ; 2 uses
  %.not.i = icmp eq ptr %i.d, %i.a
  br i1 %.not.i, label %bb.b, label %.preheader.i, !llvm.loop !1

bb.b:                                             ; preds = %.preheader.i
  store ptr %i.b, ptr %.0.i, align 8, !tbaa !70
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  invoke void @_ZN7testing8internal9MutexBase6UnlockEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal18g_linked_ptr_mutexE)
          to label %_ZN7testing8internal19linked_ptr_internal6departEv.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #33
  unreachable

_ZN7testing8internal19linked_ptr_internal6departEv.exit: ; preds = %bb.c
  br i1 %i.c, label %bb.e, label %bb.k

bb.e:                                             ; preds = %_ZN7testing8internal19linked_ptr_internal6departEv.exit
  %i.g = load ptr, ptr %0, align 8, !tbaa !159    ; 7 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 64 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !64
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal10scoped_ptrINS0_19TestMetaFactoryBaseISt5tupleIJidN11opencv_test12_GLOBAL__N_16MethodEmEEEEED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.j

.noexc.i.i:                                       ; preds = %bb.g
  br i1 %i.k, label %bb.h, label %_ZN7testing8internal10scoped_ptrINS0_19TestMetaFactoryBaseISt5tupleIJidN11opencv_test12_GLOBAL__N_16MethodEmEEEEED2Ev.exit.i

bb.h:                                             ; preds = %.noexc.i.i
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !64   ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN7testing8internal10scoped_ptrINS0_19TestMetaFactoryBaseISt5tupleIJidN11opencv_test12_GLOBAL__N_16MethodEmEEEEED2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !61
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.l) #30, !inline_history !491
  br label %_ZN7testing8internal10scoped_ptrINS0_19TestMetaFactoryBaseISt5tupleIJidN11opencv_test12_GLOBAL__N_16MethodEmEEEEED2Ev.exit.i

bb.j:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #33
  unreachable

_ZN7testing8internal10scoped_ptrINS0_19TestMetaFactoryBaseISt5tupleIJidN11opencv_test12_GLOBAL__N_16MethodEmEEEEED2Ev.exit.i: ; preds = %bb.i, %bb.h, %.noexc.i.i, %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !55   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN7testing8internal10scoped_ptrINS0_19TestMetaFactoryBaseISt5tupleIJidN11opencv_test12_GLOBAL__N_16MethodEmEEEEED2Ev.exit.i
  %i.w = load i64, ptr %i.u, align 8, !tbaa !56
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN7testing8internal10scoped_ptrINS0_19TestMetaFactoryBaseISt5tupleIJidN11opencv_test12_GLOBAL__N_16MethodEmEEEEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !55   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE8TestInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !56
  %i.ac = add i64 %i.ab, 1
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #32
  br label %_ZN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE8TestInfoD2Ev.exit

_ZN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE8TestInfoD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 72) #32
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %_ZN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE8TestInfoD2Ev.exit, %_ZN7testing8internal19linked_ptr_internal6departEv.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZN7testing8internal19TestMetaFactoryBaseISt5tupleIJidN11opencv_test12_GLOBAL__N_16MethodEmEEED2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(8) %0) unnamed_addr #8 align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal15TestMetaFactoryIN11opencv_test67EstimateAffine_EstimateAffinePartial2D_EstimateAffinePartial2D_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noalias noundef nonnull ptr @_ZN7testing8internal15TestMetaFactoryIN11opencv_test67EstimateAffine_EstimateAffinePartial2D_EstimateAffinePartial2D_TestEE17CreateTestFactoryESt5tupleIJidNS2_12_GLOBAL__N_16MethodEmEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly align 8 captures(none) dead_on_return %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #31 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing12_GLOBAL__N_124ParameterizedTestFactoryIN11opencv_test67EstimateAffine_EstimateAffinePartial2D_EstimateAffinePartial2D_TestEEE, i64 16), ptr %i.a, align 8, !tbaa !61
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal15TestFactoryBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing12_GLOBAL__N_124ParameterizedTestFactoryIN11opencv_test67EstimateAffine_EstimateAffinePartial2D_EstimateAffinePartial2D_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing12_GLOBAL__N_124ParameterizedTestFactoryIN11opencv_test67EstimateAffine_EstimateAffinePartial2D_EstimateAffinePartial2D_TestEE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr @_ZN7testing8internal12g_parameter_E, align 8, !tbaa !156
  %i.b = tail call noalias noundef nonnull dereferenceable(264) ptr @_Znwm(i64 noundef 264) #31 ; 6 uses
  invoke void @_ZN4perf8TestBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(257) %i.b)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN11opencv_test67EstimateAffine_EstimateAffinePartial2D_EstimateAffinePartial2D_TestE, i64 16), ptr %i.b, align 8, !tbaa !61
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN11opencv_test67EstimateAffine_EstimateAffinePartial2D_EstimateAffinePartial2D_TestE, i64 96), ptr %i.c, align 8, !tbaa !61
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  store i8 0, ptr %i.d, align 8, !tbaa !166
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 264) #32
  resume { ptr, i32 } %i.e
}

declare void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) unnamed_addr #2

declare void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN2cv6theRNGEv() local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #16

declare void @_ZN7testing8internal25ReportInvalidTestCaseTypeEPKcNS0_12CodeLocationE(ptr noundef, ptr noundef align 8) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal27CheckedDowncastToActualTypeINS0_25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEEENS0_29ParameterizedTestCaseInfoBaseEEEPT_PT0_(ptr noundef %0) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_bad_typeid() #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !61
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !227  ; 3 uses
  %i.g = icmp eq ptr %i.f, @_ZTSN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEEE
  br i1 %i.g, label %_ZNKSt9type_infoeqERKS_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i8, ptr %i.f, align 1, !tbaa !56
  %.not.i = icmp eq i8 %i.h, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull dereferenceable(97) @_ZTSN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEEE) #30
  %i.j = icmp eq i32 %i.i, 0
  br label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c, %bb.d, %bb.e
  %.0.i = phi i1 [ true, %bb.c ], [ false, %bb.d ], [ %i.j, %bb.e ]
  %i.k = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %.0.i)
  br i1 %i.k, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZNKSt9type_infoeqERKS_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef 3, ptr noundef nonnull @.str.31, i32 noundef 2881)
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.40, i64 noundef 51)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.f
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %1) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %1) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  resume { ptr, i32 } %i.m

bb.h:                                             ; preds = %_ZNKSt9type_infoeqERKS_.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.n = call ptr @__dynamic_cast(ptr nonnull %0, ptr nonnull @_ZTIN7testing8internal29ParameterizedTestCaseInfoBaseE, ptr nonnull @_ZTIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEEE, i64 0) #30
  ret ptr %i.n
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEEC2EPKcNS0_12CodeLocationE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, ptr noundef align 8 %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEEE, i64 16), ptr %0, align 8, !tbaa !61
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !51
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.44) #34
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i64 %i.f, ptr %i.b, align 8, !tbaa !53
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %i.c, align 8, !tbaa !55
  %i.i = load i64, ptr %i.b, align 8, !tbaa !53
  store i64 %i.i, ptr %i.d, align 8, !tbaa !56
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.d, %bb.b ] ; 2 uses
  switch i64 %i.f, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %1, align 1, !tbaa !56
  store i8 %i.k, ptr %i.j, align 1, !tbaa !56
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr nonnull align 1 %1, i64 %i.f, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.l = load i64, ptr %i.b, align 8, !tbaa !53   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.l, ptr %i.m, align 8, !tbaa !57
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !51
  %i.r = load ptr, ptr %2, align 8, !tbaa !55     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !57   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.t, ptr %i.a, align 8, !tbaa !53
  %i.u = icmp ugt i64 %i.t, 15
  br i1 %i.u, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.e
  %i.v = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(36) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc6 unwind label %bb.i    ; 2 uses

.noexc6:                                          ; preds = %.noexc.i.i
  store ptr %i.v, ptr %i.p, align 8, !tbaa !55
  %i.w = load i64, ptr %i.a, align 8, !tbaa !53
  store i64 %i.w, ptr %i.q, align 8, !tbaa !56
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc6, %bb.e
  %i.x = phi ptr [ %i.v, %.noexc6 ], [ %i.q, %bb.e ] ; 2 uses
  switch i64 %i.t, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.y = load i8, ptr %i.r, align 1, !tbaa !56
  store i8 %i.y, ptr %i.x, align 1, !tbaa !56
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %i.r, i64 %i.t, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i
  %i.z = load i64, ptr %i.a, align 8, !tbaa !53   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !57
  %i.ab = load ptr, ptr %i.p, align 8, !tbaa !55
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 0, ptr %i.ac, align 1, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !59
  store i32 %i.af, ptr %i.ad, align 8, !tbaa !59
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ag, i8 0, i64 48, i1 false)
  ret void

bb.i:                                             ; preds = %.noexc.i.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !55  ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.d
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.ak = load i64, ptr %i.d, align 8, !tbaa !56
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.ah
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #15

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #22

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEEE, i64 16), ptr %0, align 8, !tbaa !61
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !282  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !283  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE17InstantiationInfoES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE17InstantiationInfoEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE17InstantiationInfoEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !55 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE17InstantiationInfoEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !56
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #32
  br label %_ZSt8_DestroyIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE17InstantiationInfoEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE17InstantiationInfoEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE17InstantiationInfoES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !492

_ZSt8_DestroyIPN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE17InstantiationInfoES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE17InstantiationInfoEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !282
  br label %_ZSt8_DestroyIPN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE17InstantiationInfoES6_EvT_S8_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE17InstantiationInfoES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE17InstantiationInfoES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE17InstantiationInfoES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE17InstantiationInfoESaIS6_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE17InstantiationInfoES6_EvT_S8_RSaIT0_E.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !284
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #32
  br label %_ZNSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE17InstantiationInfoESaIS6_EED2Ev.exit

_ZNSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE17InstantiationInfoESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE17InstantiationInfoES6_EvT_S8_RSaIT0_E.exit.i, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !171  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !73   ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.r, %i.t
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPN7testing8internal10linked_ptrINS1_25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE8TestInfoEEES8_EvT_SA_RSaIT0_E.exit.i, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE17InstantiationInfoESaIS6_EED2Ev.exit, %_ZSt8_DestroyIN7testing8internal10linked_ptrINS1_25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE8TestInfoEEEEvPT_.exit.i.i.i
  %.05.i.i.i3 = phi ptr [ %i.w, %_ZSt8_DestroyIN7testing8internal10linked_ptrINS1_25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE8TestInfoEEEEvPT_.exit.i.i.i ], [ %i.r, %_ZNSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE17InstantiationInfoESaIS6_EED2Ev.exit ] ; 2 uses
  invoke void @_ZN7testing8internal10linked_ptrINS0_25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE8TestInfoEE6departEv(ptr noundef nonnull align 8 dereferenceable(16) %.05.i.i.i3)
          to label %_ZSt8_DestroyIN7testing8internal10linked_ptrINS1_25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE8TestInfoEEEEvPT_.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i2
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #33
  unreachable

_ZSt8_DestroyIN7testing8internal10linked_ptrINS1_25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE8TestInfoEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i2
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 16 ; 2 uses
  %.not.i.i.i4 = icmp eq ptr %i.w, %i.t
  br i1 %.not.i.i.i4, label %_ZSt8_DestroyIPN7testing8internal10linked_ptrINS1_25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE8TestInfoEEES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i2, !llvm.loop !4

_ZSt8_DestroyIPN7testing8internal10linked_ptrINS1_25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE8TestInfoEEES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7testing8internal10linked_ptrINS1_25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE8TestInfoEEEEvPT_.exit.i.i.i
  %.pr.i5 = load ptr, ptr %i.q, align 8, !tbaa !171
  br label %_ZSt8_DestroyIPN7testing8internal10linked_ptrINS1_25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE8TestInfoEEES8_EvT_SA_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7testing8internal10linked_ptrINS1_25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE8TestInfoEEES8_EvT_SA_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7testing8internal10linked_ptrINS1_25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE8TestInfoEEES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE17InstantiationInfoESaIS6_EED2Ev.exit
  %i.x = phi ptr [ %.pr.i5, %_ZSt8_DestroyIPN7testing8internal10linked_ptrINS1_25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE8TestInfoEEES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i ], [ %i.r, %_ZNSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE17InstantiationInfoESaIS6_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i6 = icmp eq ptr %i.x, null
  br i1 %.not.i.i1.i6, label %_ZNSt6vectorIN7testing8internal10linked_ptrINS1_25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE8TestInfoEEESaIS8_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN7testing8internal10linked_ptrINS1_25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE8TestInfoEEES8_EvT_SA_RSaIT0_E.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !74
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #32
  br label %_ZNSt6vectorIN7testing8internal10linked_ptrINS1_25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE8TestInfoEEESaIS8_EED2Ev.exit

_ZNSt6vectorIN7testing8internal10linked_ptrINS1_25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE8TestInfoEEESaIS8_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7testing8internal10linked_ptrINS1_25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE8TestInfoEEES8_EvT_SA_RSaIT0_E.exit.i, %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !55 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZN7testing8internal12CodeLocationD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN7testing8internal10linked_ptrINS1_25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE8TestInfoEEESaIS8_EED2Ev.exit
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !56
  %i.ai = add i64 %i.ah, 1
  tail call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #32
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit

_ZN7testing8internal12CodeLocationD2Ev.exit:      ; preds = %_ZNSt6vectorIN7testing8internal10linked_ptrINS1_25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE8TestInfoEEESaIS8_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !55 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit
  %i.an = load i64, ptr %i.al, align 8, !tbaa !56
  %i.ao = add i64 %i.an, 1
  tail call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEED0Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #30
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 128) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZNK7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE15GetTestCaseNameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE17GetTestCaseTypeIdEv(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  ret ptr @_ZN7testing8internal12TypeIdHelperIN11opencv_test31EstimateAffine_EstimateAffine2DEE6dummy_E
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE13RegisterTestsEv(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.testing::internal::linked_ptr.46", align 8 ; 10 uses
  %4 = alloca %"class.testing::internal::ParamGenerator", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %7 = alloca %"class.std::set", align 8          ; 10 uses
  %8 = alloca %"class.testing::internal::ParamIterator.115", align 8 ; 7 uses
  %9 = alloca %"class.testing::Message", align 8  ; 12 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %11 = alloca %"struct.testing::TestParamInfo", align 8 ; 6 uses
  %12 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %13 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 10 uses
  %17 = alloca %"class.std::tuple", align 8       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !505  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !505
  %.not375 = icmp eq ptr %i.c, %i.e
  br i1 %.not375, label %._crit_edge379, label %.lr.ph378

.lr.ph378:                                        ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.y = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.ac = insertelement <2 x ptr> poison, ptr %i.m, i64 0
  %i.ad = shufflevector <2 x ptr> %i.ac, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %bb.b

._crit_edge379:                                   ; preds = %_ZN7testing8internal10linked_ptrINS0_25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE8TestInfoEED2Ev.exit, %bb.a
  ret void
end_hunk_1
begin_hunk_2_@_ZN7testing13PrintToStringISt5tupleIJidN11opencv_test12_GLOBAL__N_16MethodEmEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_:bb.a

.noexc.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.d
  %i.al = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc7 unwind label %bb.l    ; 2 uses

.noexc7:                                          ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.al, ptr %2, align 8, !tbaa !55
  %i.am = load i64, ptr %i.a, align 8, !tbaa !53
  store i64 %i.am, ptr %i.ai, align 8, !tbaa !56
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.noexc7, %bb.d
  %i.an = phi ptr [ %i.al, %.noexc7 ], [ %i.ai, %bb.d ] ; 2 uses
  switch i64 %gepdiff.i.i.i.i.i.i.i.i.i.i, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  store i8 %.lcssa.lcssa.i.i.i.i.i.i.i.i.i.i, ptr %i.an, align 1, !tbaa !56
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.an, ptr nonnull align 1 %i.ah, i64 %gepdiff.i.i.i.i.i.i.i.i.i.i, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !53  ; 2 uses
  store i64 %i.ao, ptr %i.aj, align 8, !tbaa !57
  %i.ap = load ptr, ptr %2, align 8, !tbaa !55
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  store i8 0, ptr %i.aq, align 1, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.ar = load ptr, ptr %2, align 8, !tbaa !55
  %i.as = load i64, ptr %i.aj, align 8, !tbaa !57
  %i.at = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.ar, i64 noundef %i.as)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i.i.i.i.i.i.i unwind label %bb.h ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.au = load ptr, ptr %2, align 8, !tbaa !55    ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.ai
  br i1 %i.av, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i.i.i.i.i.i.i
  %i.aw = load i64, ptr %i.ai, align 8, !tbaa !56
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #32
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = load ptr, ptr %2, align 8, !tbaa !55    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.ai
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.h
  %i.bb = load i64, ptr %i.ai, align 8, !tbaa !56
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %_ZN7testing8internal14UniversalPrintISt5tupleIJidN11opencv_test12_GLOBAL__N_16MethodEmEEEEvRKT_PSo.exit.i

_ZN7testing8internal14UniversalPrintISt5tupleIJidN11opencv_test12_GLOBAL__N_16MethodEmEEEEvRKT_PSo.exit.i: ; preds = %.critedge42.i.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.56, i64 noundef 2)
          to label %.noexc8 unwind label %bb.l    ; 0 uses

.noexc8:                                          ; preds = %_ZN7testing8internal14UniversalPrintISt5tupleIJidN11opencv_test12_GLOBAL__N_16MethodEmEEEEvRKT_PSo.exit.i
  %i.be = load i64, ptr %1, align 8, !tbaa !53
  %i.bf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %i.be)
          to label %.noexc9 unwind label %bb.l    ; 0 uses

.noexc9:                                          ; preds = %.noexc8
  %i.bg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.55, i64 noundef 1)
          to label %_ZN7testing8internal21UniversalTersePrinterISt5tupleIJidN11opencv_test12_GLOBAL__N_16MethodEmEEE5PrintERKS6_PSo.exit unwind label %bb.l ; 0 uses

_ZN7testing8internal21UniversalTersePrinterISt5tupleIJidN11opencv_test12_GLOBAL__N_16MethodEmEEE5PrintERKS6_PSo.exit: ; preds = %.noexc9
  call void @llvm.experimental.noalias.scope.decl(metadata !519)
  call void @llvm.experimental.noalias.scope.decl(metadata !520)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.bh, ptr %0, align 8, !tbaa !51, !alias.scope !521
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.bi, align 8, !tbaa !57, !alias.scope !521
  store i8 0, ptr %i.bh, align 8, !tbaa !56, !alias.scope !521
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !523, !noalias !521 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.bk, null
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8, !noalias !521 ; 2 uses
  %i.bn = icmp ugt ptr %i.bk, %i.bm
  %.08.i.i.i = select i1 %i.bn, ptr %i.bk, ptr %i.bm ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterISt5tupleIJidN11opencv_test12_GLOBAL__N_16MethodEmEEE5PrintERKS6_PSo.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !524, !noalias !521 ; 2 uses
  %i.bq = ptrtoint ptr %.08.i.i.i to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.bp, i64 noundef %i.bs)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = load ptr, ptr %0, align 8, !tbaa !55, !alias.scope !521 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.bh
  br i1 %i.bw, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.j
  %i.bx = load i64, ptr %i.bh, align 8, !tbaa !56, !alias.scope !521
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #32
  br label %.body

bb.k:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterISt5tupleIJidN11opencv_test12_GLOBAL__N_16MethodEmEEE5PrintERKS6_PSo.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.bz)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.j

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.k, %bb.i
  %i.ca = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ca, ptr %3, align 8, !tbaa !61
  %i.cb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.cc = getelementptr i8, ptr %i.ca, i64 -24
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds i8, ptr %3, i64 %i.cd
  store ptr %i.cb, ptr %i.ce, align 8, !tbaa !61
  %i.cf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.cf, ptr %i.b, align 8, !tbaa !61
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.cg, align 8, !tbaa !61
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !55 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !56
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #32
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.cg, align 8, !tbaa !61
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cn) #30
  %i.co = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.co, ptr %3, align 8, !tbaa !61
  %i.cp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.cq = getelementptr i8, ptr %i.co, i64 -24
  %i.cr = load i64, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds i8, ptr %3, i64 %i.cr
  store ptr %i.cp, ptr %i.cs, align 8, !tbaa !61
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.ct, align 8, !tbaa !526
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.cu) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

bb.l:                                             ; preds = %.noexc9, %.noexc8, %_ZN7testing8internal14UniversalPrintISt5tupleIJidN11opencv_test12_GLOBAL__N_16MethodEmEEEEvRKT_PSo.exit.i, %.noexc.i.i.i.i.i.i.i.i.i.i.i, %.critedge42.i.i.i.i.i.i.i.i.i.i, %.noexc4, %.noexc3, %.noexc2, %.noexc, %bb.a
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.j, %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i.i.i.i.i.i.i.i.i.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i.i.i.i.i.i.i.i.i.i ], [ %i.cv, %bb.l ], [ %i.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.bu, %bb.j ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing4Test13SetUpTestCaseEv() #10 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing4Test16TearDownTestCaseEv() #10 comdat align 2 {
bb.a:
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isalnum(i32 noundef) local_unnamed_addr #23

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #23

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_construct_nodeIJRKS5_EEEvPSt13_Rb_tree_nodeIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !51
  %i.d = load ptr, ptr %2, align 8, !tbaa !55     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !57   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.f, ptr %i.a, align 8, !tbaa !53
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.h, ptr %i.b, align 8, !tbaa !55
  %i.i = load i64, ptr %i.a, align 8, !tbaa !53
  store i64 %i.i, ptr %i.c, align 8, !tbaa !56
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.f
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !56
  store i8 %i.k, ptr %i.j, align 1, !tbaa !56
  br label %bb.f

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = call ptr @__cxa_begin_catch(ptr %i.m) #30 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 64) #32
  invoke void @__cxa_rethrow() #34
          to label %bb.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.f:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.p = load i64, ptr %i.a, align 8, !tbaa !53   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.p, ptr %i.q, align 8, !tbaa !57
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.o

bb.h:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #33
  unreachable

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #1 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #10 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isspace(i32 noundef) local_unnamed_addr #23

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !528
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !529  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !55   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8, !tbaa !56
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #32
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 64) #32
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !527

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE17InstantiationInfoESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(60) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !283  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !282    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775744
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE17InstantiationInfoESaIS6_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #34
  unreachable

_ZNKSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE17InstantiationInfoESaIS6_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 6                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 144115188075855871)
  %i.l = select i1 %i.j, i64 144115188075855871, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 6
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #31 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !51
  %i.s = load ptr, ptr %2, align 8, !tbaa !55     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE17InstantiationInfoESaIS6_EE12_M_check_lenEmPKc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !57   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE17InstantiationInfoC2EOS5_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE17InstantiationInfoESaIS6_EE12_M_check_lenEmPKc.exit
  store ptr %i.s, ptr %i.q, align 8, !tbaa !55
  %i.z = load i64, ptr %i.t, align 8, !tbaa !56
  store i64 %i.z, ptr %i.r, align 8, !tbaa !56
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !57
  br label %_ZN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE17InstantiationInfoC2EOS5_.exit

_ZN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE17InstantiationInfoC2EOS5_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.aa = phi i64 [ %i.w, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !57
  store ptr %i.t, ptr %2, align 8, !tbaa !55
  store i64 0, ptr %i.ab, align 8, !tbaa !57
  store i8 0, ptr %i.t, align 8, !tbaa !56
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ad, ptr noundef nonnull align 8 dereferenceable(28) %i.ae, i64 28, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE17InstantiationInfoESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE17InstantiationInfoC2EOS5_.exit, %_ZSt19__relocate_object_aIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE17InstantiationInfoES6_SaIS6_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.au, %_ZSt19__relocate_object_aIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE17InstantiationInfoES6_SaIS6_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE17InstantiationInfoC2EOS5_.exit ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.at, %_ZSt19__relocate_object_aIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE17InstantiationInfoES6_SaIS6_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE17InstantiationInfoC2EOS5_.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !537)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !538)
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.af, ptr %.012.i.i.i, align 8, !tbaa !51, !alias.scope !537
  %i.ag = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !55, !alias.scope !538 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !57, !alias.scope !538 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  tail call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.am, i1 false), !alias.scope !539
  br label %_ZSt19__relocate_object_aIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE17InstantiationInfoES6_SaIS6_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ag, ptr %.012.i.i.i, align 8, !tbaa !55, !alias.scope !537
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !56, !alias.scope !538
  store i64 %i.an, ptr %i.af, align 8, !tbaa !56, !alias.scope !537
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !57, !alias.scope !538
  br label %_ZSt19__relocate_object_aIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE17InstantiationInfoES6_SaIS6_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE17InstantiationInfoES6_SaIS6_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.d
  %i.ao = phi i64 [ %i.ak, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.ao, ptr %i.aq, align 8, !tbaa !57, !alias.scope !537
  store ptr %i.ah, ptr %.0911.i.i.i, align 8, !tbaa !55, !alias.scope !538
  store i64 0, ptr %i.ap, align 8, !tbaa !57, !alias.scope !538
  store i8 0, ptr %i.ah, align 8, !tbaa !56, !alias.scope !538
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ar, ptr noundef nonnull align 8 dereferenceable(28) %i.as, i64 28, i1 false), !alias.scope !539
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.at, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE17InstantiationInfoESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i, !llvm.loop !533

_ZNSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE17InstantiationInfoESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit: ; preds = %_ZSt19__relocate_object_aIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE17InstantiationInfoES6_SaIS6_EEvPT_PT0_RT1_.exit.i.i.i, %_ZN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE17InstantiationInfoC2EOS5_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE17InstantiationInfoC2EOS5_.exit ], [ %i.au, %_ZSt19__relocate_object_aIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE17InstantiationInfoES6_SaIS6_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 64 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE17InstantiationInfoESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE17InstantiationInfoESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, %_ZSt19__relocate_object_aIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE17InstantiationInfoES6_SaIS6_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bl, %_ZSt19__relocate_object_aIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE17InstantiationInfoES6_SaIS6_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.av, %_ZNSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE17InstantiationInfoESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ] ; 6 uses
  %.0911.i.i.i19 = phi ptr [ %i.bk, %_ZSt19__relocate_object_aIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE17InstantiationInfoES6_SaIS6_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE17InstantiationInfoESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !540)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !541)
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.aw, ptr %.012.i.i.i18, align 8, !tbaa !51, !alias.scope !540
  %i.ax = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !55, !alias.scope !541 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !57, !alias.scope !541 ; 3 uses
  %i.bc = icmp ult i64 %i.bb, 16
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = add nuw nsw i64 %i.bb, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aw, ptr noundef nonnull align 8 dereferenceable(1) %i.ay, i64 %i.bd, i1 false), !alias.scope !542
  br label %_ZSt19__relocate_object_aIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE17InstantiationInfoES6_SaIS6_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.ax, ptr %.012.i.i.i18, align 8, !tbaa !55, !alias.scope !540
  %i.be = load i64, ptr %i.ay, align 8, !tbaa !56, !alias.scope !541
  store i64 %i.be, ptr %i.aw, align 8, !tbaa !56, !alias.scope !540
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !57, !alias.scope !541
  br label %_ZSt19__relocate_object_aIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE17InstantiationInfoES6_SaIS6_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE17InstantiationInfoES6_SaIS6_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20, %bb.e
  %i.bf = phi i64 [ %i.bb, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.bf, ptr %i.bh, align 8, !tbaa !57, !alias.scope !540
  store ptr %i.ay, ptr %.0911.i.i.i19, align 8, !tbaa !55, !alias.scope !541
  store i64 0, ptr %i.bg, align 8, !tbaa !57, !alias.scope !541
  store i8 0, ptr %i.ay, align 8, !tbaa !56, !alias.scope !541
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bi, ptr noundef nonnull align 8 dereferenceable(28) %i.bj, i64 28, i1 false), !alias.scope !542
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 64 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 64 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE13RegisterTestsEv:bb.a
          to label %_ZN7testing8internal10linked_ptrINS0_25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE8TestInfoEED2Ev.exit144 unwind label %bb.dj

bb.dj:                                            ; preds = %_ZN7testing8internal14ParamGeneratorISt5tupleIJidN11opencv_test12_GLOBAL__N_16MethodEmEEED2Ev.exit143
  %i.pm = landingpad { ptr, i32 }
          catch ptr null
  %i.pn = extractvalue { ptr, i32 } %i.pm, 0
  call void @__clang_call_terminate(ptr %i.pn) #33
  unreachable

_ZN7testing8internal10linked_ptrINS0_25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE8TestInfoEED2Ev.exit144: ; preds = %_ZN7testing8internal14ParamGeneratorISt5tupleIJidN11opencv_test12_GLOBAL__N_16MethodEmEEED2Ev.exit143
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %.pn37.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE17InstantiationInfoESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(60) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !315  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !314    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775744
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE17InstantiationInfoESaIS6_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #34
  unreachable

_ZNKSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE17InstantiationInfoESaIS6_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 6                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 144115188075855871)
  %i.l = select i1 %i.j, i64 144115188075855871, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 6
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #31 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !51
  %i.s = load ptr, ptr %2, align 8, !tbaa !55     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE17InstantiationInfoESaIS6_EE12_M_check_lenEmPKc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !57   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE17InstantiationInfoC2EOS5_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE17InstantiationInfoESaIS6_EE12_M_check_lenEmPKc.exit
  store ptr %i.s, ptr %i.q, align 8, !tbaa !55
  %i.z = load i64, ptr %i.t, align 8, !tbaa !56
  store i64 %i.z, ptr %i.r, align 8, !tbaa !56
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !57
  br label %_ZN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE17InstantiationInfoC2EOS5_.exit

_ZN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE17InstantiationInfoC2EOS5_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.aa = phi i64 [ %i.w, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !57
  store ptr %i.t, ptr %2, align 8, !tbaa !55
  store i64 0, ptr %i.ab, align 8, !tbaa !57
  store i8 0, ptr %i.t, align 8, !tbaa !56
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ad, ptr noundef nonnull align 8 dereferenceable(28) %i.ae, i64 28, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE17InstantiationInfoESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE17InstantiationInfoC2EOS5_.exit, %_ZSt19__relocate_object_aIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE17InstantiationInfoES6_SaIS6_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.au, %_ZSt19__relocate_object_aIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE17InstantiationInfoES6_SaIS6_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE17InstantiationInfoC2EOS5_.exit ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.at, %_ZSt19__relocate_object_aIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE17InstantiationInfoES6_SaIS6_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE17InstantiationInfoC2EOS5_.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !569)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !570)
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.af, ptr %.012.i.i.i, align 8, !tbaa !51, !alias.scope !569
  %i.ag = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !55, !alias.scope !570 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !57, !alias.scope !570 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  tail call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.am, i1 false), !alias.scope !571
  br label %_ZSt19__relocate_object_aIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE17InstantiationInfoES6_SaIS6_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ag, ptr %.012.i.i.i, align 8, !tbaa !55, !alias.scope !569
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !56, !alias.scope !570
  store i64 %i.an, ptr %i.af, align 8, !tbaa !56, !alias.scope !569
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !57, !alias.scope !570
  br label %_ZSt19__relocate_object_aIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE17InstantiationInfoES6_SaIS6_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE17InstantiationInfoES6_SaIS6_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.d
  %i.ao = phi i64 [ %i.ak, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.ao, ptr %i.aq, align 8, !tbaa !57, !alias.scope !569
  store ptr %i.ah, ptr %.0911.i.i.i, align 8, !tbaa !55, !alias.scope !570
  store i64 0, ptr %i.ap, align 8, !tbaa !57, !alias.scope !570
  store i8 0, ptr %i.ah, align 8, !tbaa !56, !alias.scope !570
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ar, ptr noundef nonnull align 8 dereferenceable(28) %i.as, i64 28, i1 false), !alias.scope !571
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.at, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE17InstantiationInfoESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i, !llvm.loop !565

_ZNSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE17InstantiationInfoESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit: ; preds = %_ZSt19__relocate_object_aIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE17InstantiationInfoES6_SaIS6_EEvPT_PT0_RT1_.exit.i.i.i, %_ZN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE17InstantiationInfoC2EOS5_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE17InstantiationInfoC2EOS5_.exit ], [ %i.au, %_ZSt19__relocate_object_aIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE17InstantiationInfoES6_SaIS6_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 64 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE17InstantiationInfoESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE17InstantiationInfoESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, %_ZSt19__relocate_object_aIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE17InstantiationInfoES6_SaIS6_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bl, %_ZSt19__relocate_object_aIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE17InstantiationInfoES6_SaIS6_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.av, %_ZNSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE17InstantiationInfoESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ] ; 6 uses
  %.0911.i.i.i19 = phi ptr [ %i.bk, %_ZSt19__relocate_object_aIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE17InstantiationInfoES6_SaIS6_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE17InstantiationInfoESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !572)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !573)
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.aw, ptr %.012.i.i.i18, align 8, !tbaa !51, !alias.scope !572
  %i.ax = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !55, !alias.scope !573 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !57, !alias.scope !573 ; 3 uses
  %i.bc = icmp ult i64 %i.bb, 16
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = add nuw nsw i64 %i.bb, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aw, ptr noundef nonnull align 8 dereferenceable(1) %i.ay, i64 %i.bd, i1 false), !alias.scope !574
  br label %_ZSt19__relocate_object_aIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE17InstantiationInfoES6_SaIS6_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.ax, ptr %.012.i.i.i18, align 8, !tbaa !55, !alias.scope !572
  %i.be = load i64, ptr %i.ay, align 8, !tbaa !56, !alias.scope !573
  store i64 %i.be, ptr %i.aw, align 8, !tbaa !56, !alias.scope !572
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !57, !alias.scope !573
  br label %_ZSt19__relocate_object_aIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE17InstantiationInfoES6_SaIS6_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE17InstantiationInfoES6_SaIS6_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20, %bb.e
  %i.bf = phi i64 [ %i.bb, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.bf, ptr %i.bh, align 8, !tbaa !57, !alias.scope !572
  store ptr %i.ay, ptr %.0911.i.i.i19, align 8, !tbaa !55, !alias.scope !573
  store i64 0, ptr %i.bg, align 8, !tbaa !57, !alias.scope !573
  store i8 0, ptr %i.ay, align 8, !tbaa !56, !alias.scope !573
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bi, ptr noundef nonnull align 8 dereferenceable(28) %i.bj, i64 28, i1 false), !alias.scope !574
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 64 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 64 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bk, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE17InstantiationInfoESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !565

_ZNSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE17InstantiationInfoESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit26: ; preds = %_ZSt19__relocate_object_aIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE17InstantiationInfoES6_SaIS6_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE17InstantiationInfoESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.av, %_ZNSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE17InstantiationInfoESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ], [ %i.bl, %_ZSt19__relocate_object_aIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE17InstantiationInfoES6_SaIS6_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE17InstantiationInfoESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE17InstantiationInfoESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit26
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !316
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = sub i64 %i.bo, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bp) #32
  br label %_ZNSt12_Vector_baseIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE17InstantiationInfoESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE17InstantiationInfoESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZNSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE17InstantiationInfoESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit26, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !314
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !315
  %i.bq = getelementptr inbounds nuw [64 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bq, ptr %i.bm, align 8, !tbaa !316
  ret void
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_perf_affine2d.cpp() #24 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"struct.testing::internal::ParameterizedTestCaseInfo<opencv_test::EstimateAffine_EstimateAffinePartial2D>::InstantiationInfo", align 8 ; 14 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 12 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"struct.testing::internal::ParameterizedTestCaseInfo<opencv_test::EstimateAffine_EstimateAffine2D>::InstantiationInfo", align 8 ; 14 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  store i32 320, ptr @_ZN4perfL6szQVGAE, align 4, !tbaa !137
  store i32 240, ptr getelementptr inbounds nuw (i8, ptr @_ZN4perfL6szQVGAE, i64 4), align 4, !tbaa !138
  %i.e = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN4perfL6szQVGAE) ; 0 uses
  store i32 640, ptr @_ZN4perfL5szVGAE, align 4, !tbaa !137
  store i32 480, ptr getelementptr inbounds nuw (i8, ptr @_ZN4perfL5szVGAE, i64 4), align 4, !tbaa !138
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN4perfL5szVGAE) ; 0 uses
  store i32 800, ptr @_ZN4perfL6szSVGAE, align 4, !tbaa !137
  store i32 600, ptr getelementptr inbounds nuw (i8, ptr @_ZN4perfL6szSVGAE, i64 4), align 4, !tbaa !138
  %i.g = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN4perfL6szSVGAE) ; 0 uses
  store i32 1024, ptr @_ZN4perfL5szXGAE, align 4, !tbaa !137
  store i32 768, ptr getelementptr inbounds nuw (i8, ptr @_ZN4perfL5szXGAE, i64 4), align 4, !tbaa !138
  %i.h = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN4perfL5szXGAE) ; 0 uses
  store i32 1280, ptr @_ZN4perfL6szSXGAE, align 4, !tbaa !137
  store i32 1024, ptr getelementptr inbounds nuw (i8, ptr @_ZN4perfL6szSXGAE, i64 4), align 4, !tbaa !138
  %i.i = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN4perfL6szSXGAE) ; 0 uses
  store i32 2560, ptr @_ZN4perfL6szWQHDE, align 4, !tbaa !137
  store i32 1440, ptr getelementptr inbounds nuw (i8, ptr @_ZN4perfL6szWQHDE, i64 4), align 4, !tbaa !138
  %i.j = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN4perfL6szWQHDE) ; 0 uses
  store i32 640, ptr @_ZN4perfL5sznHDE, align 4, !tbaa !137
  store i32 360, ptr getelementptr inbounds nuw (i8, ptr @_ZN4perfL5sznHDE, i64 4), align 4, !tbaa !138
  %i.k = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN4perfL5sznHDE) ; 0 uses
  store i32 960, ptr @_ZN4perfL5szqHDE, align 4, !tbaa !137
  store i32 540, ptr getelementptr inbounds nuw (i8, ptr @_ZN4perfL5szqHDE, i64 4), align 4, !tbaa !138
  %i.l = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN4perfL5szqHDE) ; 0 uses
  store i32 1280, ptr @_ZN4perfL6sz720pE, align 4, !tbaa !137
  store i32 720, ptr getelementptr inbounds nuw (i8, ptr @_ZN4perfL6sz720pE, i64 4), align 4, !tbaa !138
  %i.m = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN4perfL6sz720pE) ; 0 uses
  store i32 1920, ptr @_ZN4perfL7sz1080pE, align 4, !tbaa !137
  store i32 1080, ptr getelementptr inbounds nuw (i8, ptr @_ZN4perfL7sz1080pE, i64 4), align 4, !tbaa !138
  %i.n = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN4perfL7sz1080pE) ; 0 uses
  store i32 3840, ptr @_ZN4perfL7sz2160pE, align 4, !tbaa !137
  store i32 2160, ptr getelementptr inbounds nuw (i8, ptr @_ZN4perfL7sz2160pE, i64 4), align 4, !tbaa !138
  %i.o = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN4perfL7sz2160pE) ; 0 uses
  store i32 7680, ptr @_ZN4perfL7sz4320pE, align 4, !tbaa !137
  store i32 4320, ptr getelementptr inbounds nuw (i8, ptr @_ZN4perfL7sz4320pE, i64 4), align 4, !tbaa !138
  %i.p = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN4perfL7sz4320pE) ; 0 uses
  store i32 2048, ptr @_ZN4perfL5sz3MPE, align 4, !tbaa !137
  store i32 1536, ptr getelementptr inbounds nuw (i8, ptr @_ZN4perfL5sz3MPE, i64 4), align 4, !tbaa !138
  %i.q = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN4perfL5sz3MPE) ; 0 uses
  store i32 2592, ptr @_ZN4perfL5sz5MPE, align 4, !tbaa !137
  store i32 1944, ptr getelementptr inbounds nuw (i8, ptr @_ZN4perfL5sz5MPE, i64 4), align 4, !tbaa !138
  %i.r = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN4perfL5sz5MPE) ; 0 uses
  store i32 2048, ptr @_ZN4perfL4sz2KE, align 4, !tbaa !137
  store i32 2048, ptr getelementptr inbounds nuw (i8, ptr @_ZN4perfL4sz2KE, i64 4), align 4, !tbaa !138
  %i.s = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN4perfL4sz2KE) ; 0 uses
  store i32 127, ptr @_ZN4perfL5szODDE, align 4, !tbaa !137
  store i32 61, ptr getelementptr inbounds nuw (i8, ptr @_ZN4perfL5szODDE, i64 4), align 4, !tbaa !138
  %i.t = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN4perfL5szODDE) ; 0 uses
  store i32 24, ptr @_ZN4perfL9szSmall24E, align 4, !tbaa !137
  store i32 24, ptr getelementptr inbounds nuw (i8, ptr @_ZN4perfL9szSmall24E, i64 4), align 4, !tbaa !138
  %i.u = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN4perfL9szSmall24E) ; 0 uses
  store i32 32, ptr @_ZN4perfL9szSmall32E, align 4, !tbaa !137
  store i32 32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4perfL9szSmall32E, i64 4), align 4, !tbaa !138
  %i.v = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN4perfL9szSmall32E) ; 0 uses
  store i32 64, ptr @_ZN4perfL9szSmall64E, align 4, !tbaa !137
  store i32 64, ptr getelementptr inbounds nuw (i8, ptr @_ZN4perfL9szSmall64E, i64 4), align 4, !tbaa !138
  %i.w = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN4perfL9szSmall64E) ; 0 uses
  store i32 128, ptr @_ZN4perfL10szSmall128E, align 4, !tbaa !137
  store i32 128, ptr getelementptr inbounds nuw (i8, ptr @_ZN4perfL10szSmall128E, i64 4), align 4, !tbaa !138
  %i.x = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN4perfL10szSmall128E) ; 0 uses
  %i.y = tail call noundef i32 @_ZN11opencv_test53EstimateAffine_EstimateAffine2D_EstimateAffine2D_Test13AddToRegistryEv()
  store i32 %i.y, ptr @_ZN11opencv_test53EstimateAffine_EstimateAffine2D_EstimateAffine2D_Test24gtest_registering_dummy_E, align 4, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.z = tail call noundef ptr @_ZN7testing8UnitTest11GetInstanceEv()
  %i.aa = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN7testing8UnitTest27parameterized_test_registryEv(ptr noundef nonnull align 8 dereferenceable(72) %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.ab, ptr %6, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  store i64 69, ptr %i.d, align 8, !tbaa !53
  %i.ac = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 3 uses
  store ptr %i.ac, ptr %6, align 8, !tbaa !55
  %i.ad = load i64, ptr %i.d, align 8, !tbaa !53  ; 3 uses
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(69) %i.ac, ptr noundef nonnull align 1 dereferenceable(69) @.str.21, i64 69, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !57
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ad
  store i8 0, ptr %i.af, align 1, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.ag, ptr %5, align 8, !tbaa !51
  %i.ah = load ptr, ptr %6, align 8, !tbaa !55    ; 2 uses
  %i.ai = load i64, ptr %i.ae, align 8, !tbaa !57 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  store i64 %i.ai, ptr %i.c, align 8, !tbaa !53
  %i.aj = icmp ugt i64 %i.ai, 15
  br i1 %i.aj, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.ak = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc10.i unwind label %bb.i ; 2 uses

.noexc10.i:                                       ; preds = %.noexc.i.i.i
  store ptr %i.ak, ptr %5, align 8, !tbaa !55
  %i.al = load i64, ptr %i.c, align 8, !tbaa !53
  store i64 %i.al, ptr %i.ag, align 8, !tbaa !56
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc10.i, %bb.a
  %i.am = phi ptr [ %i.ak, %.noexc10.i ], [ %i.ag, %bb.a ] ; 2 uses
  switch i64 %i.ai, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.an = load i8, ptr %i.ah, align 1, !tbaa !56
  store i8 %i.an, ptr %i.am, align 1, !tbaa !56
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.am, ptr align 1 %i.ah, i64 %i.ai, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.ao = load i64, ptr %i.c, align 8, !tbaa !53  ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !57
  %i.aq = load ptr, ptr %5, align 8, !tbaa !55
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ao
  store i8 0, ptr %i.ar, align 1, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 67, ptr %i.as, align 8, !tbaa !59
  %i.at = invoke noundef ptr @_ZN7testing8internal29ParameterizedTestCaseRegistry24GetTestCasePatternHolderIN11opencv_test31EstimateAffine_EstimateAffine2DEEEPNS0_25ParameterizedTestCaseInfoIT_EEPKcNS0_12CodeLocationE(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull @.str.24, ptr noundef nonnull align 8 %5)
          to label %_ZN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE17InstantiationInfoC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFNS0_14ParamGeneratorISt5tupleIJidNS2_12_GLOBAL__N_16MethodEmEEEEvEPFSB_RKNS_13TestParamInfoISI_EEEPKci.exit.i.i unwind label %bb.j ; 3 uses

_ZN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE17InstantiationInfoC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFNS0_14ParamGeneratorISt5tupleIJidNS2_12_GLOBAL__N_16MethodEmEEEEvEPFSB_RKNS_13TestParamInfoISI_EEEPKci.exit.i.i: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.au, ptr %7, align 8, !tbaa !51
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.av, align 8, !tbaa !57
  store i8 0, ptr %i.au, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 9 uses
  store ptr %i.aw, ptr %4, align 8, !tbaa !51
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.ax, align 8, !tbaa !57
  store i8 0, ptr %i.aw, align 8, !tbaa !56
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store ptr @_ZN11opencv_testL52gtest_EstimateAffine_EstimateAffine2D_EvalGenerator_Ev, ptr %i.ay, align 8, !tbaa !286
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr @_ZN11opencv_testL55gtest_EstimateAffine_EstimateAffine2D_EvalGenerateName_B5cxx11ERKN7testing13TestParamInfoISt5tupleIJidNS_12_GLOBAL__N_16MethodEmEEEE, ptr %i.az, align 8, !tbaa !287
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr @.str.21, ptr %i.ba, align 8, !tbaa !288
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i32 67, ptr %i.bb, align 8, !tbaa !289
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 112 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !283 ; 7 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 120
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !284
  %.not.i.i.i.i = icmp eq ptr %i.bd, %i.bf
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE17InstantiationInfoC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFNS0_14ParamGeneratorISt5tupleIJidNS2_12_GLOBAL__N_16MethodEmEEEEvEPFSB_RKNS_13TestParamInfoISI_EEEPKci.exit.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 3 uses
  store ptr %i.bg, ptr %i.bd, align 8, !tbaa !51
  %i.bh = load ptr, ptr %4, align 8, !tbaa !55    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.aw
  br i1 %i.bi, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.bj = load i8, ptr %i.aw, align 8
  store i8 %i.bj, ptr %i.bg, align 8
  br label %_ZNSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE17InstantiationInfoESaIS6_EE9push_backEOS6_.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.e
  store ptr %i.bh, ptr %i.bd, align 8, !tbaa !55
  %i.bk = load i64, ptr %i.aw, align 8, !tbaa !56
  store i64 %i.bk, ptr %i.bg, align 8, !tbaa !56
  br label %_ZNSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE17InstantiationInfoESaIS6_EE9push_backEOS6_.exit.thread.i.i

_ZNSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE17InstantiationInfoESaIS6_EE9push_backEOS6_.exit.thread.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i64 0, ptr %i.bl, align 8, !tbaa !57
  store i64 0, ptr %i.ax, align 8, !tbaa !57
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bm, ptr noundef nonnull align 8 dereferenceable(28) %i.ay, i64 28, i1 false)
  %i.bn = load ptr, ptr %i.bc, align 8, !tbaa !283
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  store ptr %i.bo, ptr %i.bc, align 8, !tbaa !283
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i

bb.g:                                             ; preds = %_ZN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE17InstantiationInfoC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFNS0_14ParamGeneratorISt5tupleIJidNS2_12_GLOBAL__N_16MethodEmEEEEvEPFSB_RKNS_13TestParamInfoISI_EEEPKci.exit.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.at, i64 104
end_hunk_3
begin_hunk_4_@_GLOBAL__sub_I_perf_affine2d.cpp:bb.a

bb.m:                                             ; preds = %._crit_edge.i.i.i.i1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dl, ptr align 1 %i.dg, i64 %i.dh, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i.i.i.i1
  %i.dn = load i64, ptr %i.a, align 8, !tbaa !53  ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.dn, ptr %i.do, align 8, !tbaa !57
  %i.dp = load ptr, ptr %1, align 8, !tbaa !55
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dn
  store i8 0, ptr %i.dq, align 1, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 117, ptr %i.dr, align 8, !tbaa !59
  %i.ds = invoke noundef ptr @_ZN7testing8internal29ParameterizedTestCaseRegistry24GetTestCasePatternHolderIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEEEPNS0_25ParameterizedTestCaseInfoIT_EEPKcNS0_12CodeLocationE(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull @.str.29, ptr noundef nonnull align 8 %1)
          to label %_ZN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE17InstantiationInfoC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFNS0_14ParamGeneratorISt5tupleIJidNS2_12_GLOBAL__N_16MethodEmEEEEvEPFSB_RKNS_13TestParamInfoISI_EEEPKci.exit.i.i unwind label %bb.t ; 3 uses

_ZN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE17InstantiationInfoC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFNS0_14ParamGeneratorISt5tupleIJidNS2_12_GLOBAL__N_16MethodEmEEEEvEPFSB_RKNS_13TestParamInfoISI_EEEPKci.exit.i.i: ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.dt, ptr %3, align 8, !tbaa !51
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.du, align 8, !tbaa !57
  store i8 0, ptr %i.dt, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #30
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  store ptr %i.dv, ptr %0, align 8, !tbaa !51
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.dw, align 8, !tbaa !57
  store i8 0, ptr %i.dv, align 8, !tbaa !56
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr @_ZN11opencv_testL59gtest_EstimateAffine_EstimateAffinePartial2D_EvalGenerator_Ev, ptr %i.dx, align 8, !tbaa !318
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @_ZN11opencv_testL62gtest_EstimateAffine_EstimateAffinePartial2D_EvalGenerateName_B5cxx11ERKN7testing13TestParamInfoISt5tupleIJidNS_12_GLOBAL__N_16MethodEmEEEE, ptr %i.dy, align 8, !tbaa !319
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @.str.21, ptr %i.dz, align 8, !tbaa !320
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 117, ptr %i.ea, align 8, !tbaa !321
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ds, i64 112 ; 3 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !315 ; 7 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ds, i64 120
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !316
  %.not.i.i.i.i10 = icmp eq ptr %i.ec, %i.ee
  br i1 %.not.i.i.i.i10, label %bb.q, label %bb.o

bb.o:                                             ; preds = %_ZN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE17InstantiationInfoC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFNS0_14ParamGeneratorISt5tupleIJidNS2_12_GLOBAL__N_16MethodEmEEEEvEPFSB_RKNS_13TestParamInfoISI_EEEPKci.exit.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 16 ; 3 uses
  store ptr %i.ef, ptr %i.ec, align 8, !tbaa !51
  %i.eg = load ptr, ptr %0, align 8, !tbaa !55    ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.dv
  br i1 %i.eh, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i11

bb.p:                                             ; preds = %bb.o
  %i.ei = load i8, ptr %i.dv, align 8
  store i8 %i.ei, ptr %i.ef, align 8
  br label %_ZNSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE17InstantiationInfoESaIS6_EE9push_backEOS6_.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i11: ; preds = %bb.o
  store ptr %i.eg, ptr %i.ec, align 8, !tbaa !55
  %i.ej = load i64, ptr %i.dv, align 8, !tbaa !56
  store i64 %i.ej, ptr %i.ef, align 8, !tbaa !56
  br label %_ZNSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE17InstantiationInfoESaIS6_EE9push_backEOS6_.exit.thread.i.i

_ZNSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE17InstantiationInfoESaIS6_EE9push_backEOS6_.exit.thread.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i11, %bb.p
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store i64 0, ptr %i.ek, align 8, !tbaa !57
  store i64 0, ptr %i.dw, align 8, !tbaa !57
  %i.el = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.el, ptr noundef nonnull align 8 dereferenceable(28) %i.dx, i64 28, i1 false)
  %i.em = load ptr, ptr %i.eb, align 8, !tbaa !315
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 64
  store ptr %i.en, ptr %i.eb, align 8, !tbaa !315
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i12

bb.q:                                             ; preds = %_ZN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE17InstantiationInfoC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFNS0_14ParamGeneratorISt5tupleIJidNS2_12_GLOBAL__N_16MethodEmEEEEvEPFSB_RKNS_13TestParamInfoISI_EEEPKci.exit.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ds, i64 104
  invoke void @_ZNSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE17InstantiationInfoESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.eo, ptr %i.ec, ptr noundef nonnull align 8 dereferenceable(60) %0)
          to label %_ZNSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE17InstantiationInfoESaIS6_EE9push_backEOS6_.exit.i.i unwind label %bb.r

_ZNSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE17InstantiationInfoESaIS6_EE9push_backEOS6_.exit.i.i: ; preds = %bb.q
  %.pre1.i.i28 = load ptr, ptr %0, align 8, !tbaa !55 ; 2 uses
  %i.ep = icmp eq ptr %.pre1.i.i28, %i.dv
  br i1 %i.ep, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i29: ; preds = %_ZNSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE17InstantiationInfoESaIS6_EE9push_backEOS6_.exit.i.i
  %i.eq = load i64, ptr %i.dv, align 8, !tbaa !56
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %.pre1.i.i28, i64 noundef %i.er) #32
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i12

bb.r:                                             ; preds = %bb.q
  %i.es = landingpad { ptr, i32 }
          cleanup
  %i.et = load ptr, ptr %0, align 8, !tbaa !55    ; 2 uses
  %i.eu = icmp eq ptr %i.et, %i.dv
  br i1 %i.eu, label %.body.i22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7.i.i21: ; preds = %bb.r
  %i.ev = load i64, ptr %i.dv, align 8, !tbaa !56
  %i.ew = add i64 %i.ev, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ew) #32
  br label %.body.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i12: ; preds = %_ZNSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE17InstantiationInfoESaIS6_EE9push_backEOS6_.exit.thread.i.i, %_ZNSt6vectorIN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE17InstantiationInfoESaIS6_EE9push_backEOS6_.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #30
  %i.ex = load ptr, ptr %3, align 8, !tbaa !55    ; 2 uses
  %i.ey = icmp eq ptr %i.ex, %i.dt
  br i1 %i.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i12
  %i.ez = load i64, ptr %i.dt, align 8, !tbaa !56
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fa) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i14: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.fb = load ptr, ptr %1, align 8, !tbaa !55    ; 2 uses
  %i.fc = icmp eq ptr %i.fb, %i.df
  br i1 %i.fc, label %_ZN7testing8internal12CodeLocationD2Ev.exit.i16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i14
  %i.fd = load i64, ptr %i.df, align 8, !tbaa !56
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.fe) #32
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit.i16

_ZN7testing8internal12CodeLocationD2Ev.exit.i16:  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i15
  %i.ff = load ptr, ptr %2, align 8, !tbaa !55    ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.da
  br i1 %i.fg, label %__cxx_global_var_init.28.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i17: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit.i16
  %i.fh = load i64, ptr %i.da, align 8, !tbaa !56
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fi) #32
  br label %__cxx_global_var_init.28.exit

bb.s:                                             ; preds = %.noexc.i.i.i31
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit24.i4

bb.t:                                             ; preds = %bb.n
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.body.i22:                                        ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #30
  %.pre.i23 = load ptr, ptr %3, align 8, !tbaa !55 ; 2 uses
  %i.fl = icmp eq ptr %.pre.i23, %i.dt
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i24: ; preds = %.body.i22
  %i.fm = load i64, ptr %i.dt, align 8, !tbaa !56
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %.pre.i23, i64 noundef %i.fn) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i25: ; preds = %.body.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i25, %bb.t
  %.pn.pn.i2 = phi { ptr, i32 } [ %i.es, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i25 ], [ %i.fk, %bb.t ] ; 2 uses
  %i.fo = load ptr, ptr %1, align 8, !tbaa !55    ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.df
  br i1 %i.fp, label %_ZN7testing8internal12CodeLocationD2Ev.exit24.i4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22.i3: ; preds = %bb.u
  %i.fq = load i64, ptr %i.df, align 8, !tbaa !56
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fr) #32
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit24.i4

_ZN7testing8internal12CodeLocationD2Ev.exit24.i4: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22.i3, %bb.s
  %.pn.pn.pn.i5 = phi { ptr, i32 } [ %i.fj, %bb.s ], [ %.pn.pn.i2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22.i3 ], [ %.pn.pn.i2, %bb.u ]
  %i.fs = load ptr, ptr %2, align 8, !tbaa !55    ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.da
  br i1 %i.ft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i6: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit24.i4
  %i.fu = load i64, ptr %i.da, align 8, !tbaa !56
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fv) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i7: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit24.i4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %common.resume

__cxx_global_var_init.28.exit:                    ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit.i16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, errnomem: write)
declare void @sincos(double noundef, ptr, ptr) local_unnamed_addr #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #29

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind memory(none) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #16 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #18 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #21 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #22 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #24 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #29 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { nounwind }
attributes #31 = { builtin allocsize(0) }
attributes #32 = { builtin nounwind }
attributes #33 = { noreturn nounwind }
attributes #34 = { noreturn }
attributes #35 = { nounwind willreturn memory(none) }
attributes #36 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!39, !40, !41}
!llvm.ident = !{!42}
!llvm.errno.tbaa = !{!47}

!0 = distinct !{!0, !75}
!1 = distinct !{!1, !75}
!2 = distinct !{ptr @_ZN7testing8internal23CartesianProductHolder4INS0_11ValueArray3IiiiEENS2_IdddEENS0_14ParamGeneratorIN11opencv_test12_GLOBAL__N_16MethodEEENS0_11ValueArray2IiiEEED2Ev, ptr @_ZN7testing8internal14ParamGeneratorIN11opencv_test12_GLOBAL__N_16MethodEED2Ev, null, null}
!3 = distinct !{ptr @_ZN7testing8internal14ParamGeneratorIN11opencv_test12_GLOBAL__N_16MethodEED2Ev, null, null}
!4 = distinct !{!4, !75}
!5 = distinct !{ptr @_ZN7testing8internal14ParamGeneratorImED2Ev, null, null}
!6 = distinct !{ptr @_ZN7testing8internal14ParamGeneratorIdED2Ev, null, null}
!7 = distinct !{ptr @_ZN7testing8internal14ParamGeneratorIiED2Ev, null, null}
!8 = distinct !{null, null}
!9 = distinct !{null}
!10 = distinct !{null}
!11 = distinct !{null}
!12 = distinct !{null}
!13 = distinct !{ptr @_ZN7testing8internal13ParamIteratorImED2Ev, null, null}
!14 = distinct !{ptr @_ZN7testing8internal13ParamIteratorIN11opencv_test12_GLOBAL__N_16MethodEED2Ev, null, null}
!15 = distinct !{ptr @_ZN7testing8internal13ParamIteratorIdED2Ev, null, null}
!16 = distinct !{ptr @_ZN7testing8internal13ParamIteratorIiED2Ev, null, null}
!17 = distinct !{null}
!18 = distinct !{null}
!19 = distinct !{null}
!20 = distinct !{null}
!21 = distinct !{null, null}
!22 = distinct !{null, null}
!23 = distinct !{null, null}
!24 = distinct !{null, null}
!25 = distinct !{null}
!26 = distinct !{null}
!27 = distinct !{null}
!28 = distinct !{ptr @_ZN7testing7MessageD2Ev, null, null}
!29 = distinct !{!29, !75}
!30 = distinct !{null}
!31 = distinct !{null}
!32 = distinct !{null}
!33 = distinct !{ptr @_ZN7testing8internal13ParamIteratorISt5tupleIJidN11opencv_test12_GLOBAL__N_16MethodEmEEED2Ev, null, null}
!34 = distinct !{null, null, null}
!35 = distinct !{null}
!36 = distinct !{!36, !75}
!37 = distinct !{!37, !75}
!38 = distinct !{null}
!39 = !{i32 8, !"PIC Level", i32 2}
!40 = !{i32 7, !"PIE Level", i32 2}
!41 = !{i32 7, !"uwtable", i32 2}
!42 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!43 = !{!"Simple C++ TBAA"}
!44 = !{!"omnipotent char", !43, i64 0}
!45 = !{!"int", !44, i64 0}
!46 = !{!"__libc_errno", !45, i64 0}
!47 = !{!46, !45, i64 0}
!48 = !{!"any pointer", !44, i64 0}
!49 = !{!"p1 omnipotent char", !48, i64 0}
!50 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !49, i64 0}
!51 = !{!50, !49, i64 0}
!52 = !{!"long", !44, i64 0}
!53 = !{!52, !52, i64 0}
!54 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !50, i64 0, !52, i64 8, !44, i64 16}
!55 = !{!54, !49, i64 0}
!56 = !{!44, !44, i64 0}
!57 = !{!54, !52, i64 8}
!58 = !{!"_ZTSN7testing8internal12CodeLocationE", !54, i64 0, !45, i64 32}
!59 = !{!58, !45, i64 32}
!60 = !{!"vtable pointer", !43, i64 0}
!61 = !{!60, !60, i64 0}
!62 = !{!"p1 _ZTSN7testing8internal19TestMetaFactoryBaseISt5tupleIJidN11opencv_test12_GLOBAL__N_16MethodEmEEEE", !48, i64 0}
!63 = !{!"_ZTSN7testing8internal10scoped_ptrINS0_19TestMetaFactoryBaseISt5tupleIJidN11opencv_test12_GLOBAL__N_16MethodEmEEEEEE", !62, i64 0}
!64 = !{!63, !62, i64 0}
!65 = !{!"p1 _ZTSN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE8TestInfoE", !48, i64 0}
!66 = !{!"p1 _ZTSN7testing8internal19linked_ptr_internalE", !48, i64 0}
!67 = !{!"_ZTSN7testing8internal19linked_ptr_internalE", !66, i64 0}
!68 = !{!"_ZTSN7testing8internal10linked_ptrINS0_25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE8TestInfoEEE", !65, i64 0, !67, i64 8}
!69 = !{!68, !65, i64 0}
!70 = !{!67, !66, i64 0}
!71 = !{!"p1 _ZTSN7testing8internal10linked_ptrINS0_25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE8TestInfoEEE", !48, i64 0}
!72 = !{!"_ZTSNSt12_Vector_baseIN7testing8internal10linked_ptrINS1_25ParameterizedTestCaseInfoIN11opencv_test31EstimateAffine_EstimateAffine2DEE8TestInfoEEESaIS8_EE17_Vector_impl_dataE", !71, i64 0, !71, i64 8, !71, i64 16}
!73 = !{!72, !71, i64 8}
!74 = !{!72, !71, i64 16}
!75 = !{!"llvm.loop.mustprogress"}
!76 = !{!"bool", !44, i64 0}
!77 = !{!76, !76, i64 0}
!78 = !{!"p1 _ZTSN2cv5utils5trace7details6Region4ImplE", !48, i64 0}
!79 = !{!"_ZTSN2cv5utils5trace7details6RegionE", !78, i64 0, !45, i64 8}
!80 = !{!79, !45, i64 8}
!81 = !{!"p1 _ZTSN7testing8internal14GTestFlagSaverE", !48, i64 0}
!82 = !{!"_ZTSN7testing8internal10scoped_ptrINS0_14GTestFlagSaverEEE", !81, i64 0}
!83 = !{!"_ZTSN7testing4TestE", !82, i64 8}
!84 = !{!"p1 _ZTSSt4pairIiN2cv5Size_IiEEE", !48, i64 0}
!85 = !{!"_ZTSNSt12_Vector_baseISt4pairIiN2cv5Size_IiEEESaIS4_EE17_Vector_impl_dataE", !84, i64 0, !84, i64 8, !84, i64 16}
!86 = !{!"_ZTSNSt12_Vector_baseISt4pairIiN2cv5Size_IiEEESaIS4_EE12_Vector_implE", !85, i64 0}
!87 = !{!"_ZTSSt12_Vector_baseISt4pairIiN2cv5Size_IiEEESaIS4_EE", !86, i64 0}
!88 = !{!"_ZTSSt6vectorISt4pairIiN2cv5Size_IiEEESaIS4_EE", !87, i64 0}
!89 = !{!"_ZTSN4perf13PERF_STRATEGYE", !44, i64 0}
!90 = !{!"p1 long", !48, i64 0}
!91 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataE", !90, i64 0, !90, i64 8, !90, i64 16}
!92 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE12_Vector_implE", !91, i64 0}
!93 = !{!"_ZTSSt12_Vector_baseIlSaIlEE", !92, i64 0}
!94 = !{!"_ZTSSt6vectorIlSaIlEE", !93, i64 0}
!95 = !{!"double", !44, i64 0}
!96 = !{!"_ZTSN4perf19performance_metricsE", !52, i64 0, !52, i64 8, !45, i64 16, !45, i64 20, !95, i64 24, !95, i64 32, !95, i64 40, !95, i64 48, !95, i64 56, !95, i64 64, !95, i64 72, !45, i64 80}
!97 = !{!"p1 _ZTSN4perf8TestBaseE", !48, i64 0}
!98 = !{!"_ZTSN4perf8TestBase14_declareHelperE", !97, i64 0}
!99 = !{!"_ZTSN4perf8TestBaseE", !83, i64 0, !88, i64 16, !88, i64 40, !89, i64 64, !94, i64 72, !52, i64 96, !52, i64 104, !52, i64 112, !45, i64 120, !45, i64 124, !45, i64 128, !45, i64 132, !45, i64 136, !96, i64 144, !76, i64 232, !98, i64 240}
!100 = !{!"_ZTSN7testing18WithParamInterfaceISt5tupleIJidN11opencv_test12_GLOBAL__N_16MethodEmEEEE"}
!101 = !{!"_ZTSN4perf17TestBaseWithParamISt5tupleIJidN11opencv_test12_GLOBAL__N_16MethodEmEEEE", !99, i64 0, !100, i64 248}
!102 = !{!"_ZTSN11opencv_test31EstimateAffine_EstimateAffine2DE", !101, i64 0}
!103 = !{!"_ZTSN11opencv_test53EstimateAffine_EstimateAffine2D_EstimateAffine2D_TestE", !102, i64 0, !76, i64 256}
!104 = !{!103, !76, i64 256}
!105 = !{!"any p2 pointer", !48, i64 0}
!106 = !{!"p2 _ZTSN7testing8internal29ParameterizedTestCaseInfoBaseE", !105, i64 0}
!107 = !{!106, !106, i64 0}
!108 = !{!"p1 _ZTSN7testing8internal29ParameterizedTestCaseInfoBaseE", !48, i64 0}
!109 = !{!108, !108, i64 0}
!110 = !{!"_ZTSNSt12_Vector_baseIPN7testing8internal29ParameterizedTestCaseInfoBaseESaIS3_EE17_Vector_impl_dataE", !106, i64 0, !106, i64 8, !106, i64 16}
!111 = !{!110, !106, i64 8}
!112 = !{!110, !106, i64 16}
!113 = !{!110, !106, i64 0}
!114 = !{!"p1 _ZTSN11opencv_test12_GLOBAL__N_16MethodE", !48, i64 0}
!115 = !{!"_ZTSNSt12_Vector_baseIN11opencv_test12_GLOBAL__N_16MethodESaIS2_EE17_Vector_impl_dataE", !114, i64 0, !114, i64 8, !114, i64 16}
!116 = !{!115, !114, i64 0}
!117 = !{!115, !114, i64 16}
!118 = !{!45, !45, i64 0}
!119 = !{!115, !114, i64 8}
!120 = !{!"p1 _ZTSN7testing8internal23ParamGeneratorInterfaceIN11opencv_test12_GLOBAL__N_16MethodEEE", !48, i64 0}
!121 = !{!"_ZTSN7testing8internal10linked_ptrIKNS0_23ParamGeneratorInterfaceIN11opencv_test12_GLOBAL__N_16MethodEEEEE", !120, i64 0, !67, i64 8}
!122 = !{!121, !120, i64 0}
!123 = !{!"_ZTSN7testing8internal11ValueArray3IiiiEE", !45, i64 0, !45, i64 4, !45, i64 8}
!124 = !{!123, !45, i64 0}
!125 = !{!123, !45, i64 4}
!126 = !{!123, !45, i64 8}
!127 = !{!95, !95, i64 0}
!128 = !{!"_ZTSN7testing8internal11ValueArray3IdddEE", !95, i64 0, !95, i64 8, !95, i64 16}
!129 = !{!128, !95, i64 16}
!130 = !{!"_ZTSN7testing8internal11ValueArray2IiiEE", !45, i64 0, !45, i64 4}
!131 = !{!130, !45, i64 0}
!132 = !{!130, !45, i64 4}
!133 = !{!"_ZTSN2cv5Size_IiEE", !45, i64 0, !45, i64 4}
!134 = !{!"_ZTSN2cv11_InputArrayE", !45, i64 0, !48, i64 8, !133, i64 16}
!135 = !{!134, !45, i64 0}
!136 = !{!134, !48, i64 8}
!137 = !{!133, !45, i64 0}
!138 = !{!133, !45, i64 4}
!139 = !{!"_ZTSN2cv5RangeE", !45, i64 0, !45, i64 4}
!140 = !{!139, !45, i64 0}
!141 = !{!139, !45, i64 4}
!142 = !{!"_ZTSN2cv10DataLayoutE", !44, i64 0}
!143 = !{!"_ZTSN2cv8MatShapeE", !45, i64 0, !142, i64 4, !45, i64 8, !44, i64 12}
!144 = !{!143, !45, i64 0}
!145 = !{!"p1 _ZTSN2cv12MatAllocatorE", !48, i64 0}
!146 = !{!"p1 _ZTSN2cv8UMatDataE", !48, i64 0}
!147 = !{!"_ZTSN2cv7MatStepE", !44, i64 0}
!148 = !{!"_ZTSN2cv3MatE", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !45, i64 16, !49, i64 24, !49, i64 32, !49, i64 40, !49, i64 48, !145, i64 56, !146, i64 64, !143, i64 72, !147, i64 128}
!149 = !{!148, !45, i64 0}
!150 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !49, i64 0, !49, i64 8, !49, i64 16}
!151 = !{!150, !49, i64 0}
!152 = !{!150, !49, i64 16}
!153 = !{!150, !49, i64 8}
!154 = !{!99, !76, i64 232}
!155 = !{!"p1 _ZTSSt5tupleIJidN11opencv_test12_GLOBAL__N_16MethodEmEE", !48, i64 0}
!156 = !{!155, !155, i64 0}
!157 = !{!"p1 _ZTSN7testing8internal25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE8TestInfoE", !48, i64 0}
!158 = !{!"_ZTSN7testing8internal10linked_ptrINS0_25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE8TestInfoEEE", !157, i64 0, !67, i64 8}
!159 = !{!158, !157, i64 0}
!160 = !{!"p1 _ZTSN7testing8internal10linked_ptrINS0_25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE8TestInfoEEE", !48, i64 0}
!161 = !{!"_ZTSNSt12_Vector_baseIN7testing8internal10linked_ptrINS1_25ParameterizedTestCaseInfoIN11opencv_test38EstimateAffine_EstimateAffinePartial2DEE8TestInfoEEESaIS8_EE17_Vector_impl_dataE", !160, i64 0, !160, i64 8, !160, i64 16}
!162 = !{!161, !160, i64 8}
!163 = !{!161, !160, i64 16}
!164 = !{!"_ZTSN11opencv_test38EstimateAffine_EstimateAffinePartial2DE", !101, i64 0}
!165 = !{!"_ZTSN11opencv_test67EstimateAffine_EstimateAffinePartial2D_EstimateAffinePartial2D_TestE", !164, i64 0, !76, i64 256}
!166 = !{!165, !76, i64 256}
!167 = !{!91, !90, i64 0}
!168 = !{!91, !90, i64 16}
!169 = !{!85, !84, i64 0}
!170 = !{!85, !84, i64 16}
!171 = !{!72, !71, i64 0}
!172 = !{!"_ZTSN7testing8internal9MutexBaseE", !44, i64 0, !76, i64 40, !52, i64 48}
!173 = !{!172, !52, i64 48}
!174 = !{!172, !76, i64 40}
!175 = !{!"p1 int", !48, i64 0}
!176 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !175, i64 0, !175, i64 8, !175, i64 16}
!177 = !{!176, !175, i64 0}
!178 = !{!176, !175, i64 16}
!179 = !{!"p1 _ZTSN7testing8internal23ParamGeneratorInterfaceIiEE", !48, i64 0}
!180 = !{!"_ZTSN7testing8internal10linked_ptrIKNS0_23ParamGeneratorInterfaceIiEEEE", !179, i64 0, !67, i64 8}
!181 = !{!180, !179, i64 0}
!182 = !{!"p1 double", !48, i64 0}
!183 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !182, i64 0, !182, i64 8, !182, i64 16}
!184 = !{!183, !182, i64 0}
end_hunk_4
