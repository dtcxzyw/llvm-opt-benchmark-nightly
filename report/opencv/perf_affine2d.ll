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
  %i.a = alloca [6 x double], align 16            ; 10 uses
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
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2cv6theRNGEv(), !noalias !359 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !361, !noalias !359 ; 2 uses
  %i.i = and i64 %i.h, 4294967295
  %i.j = mul nuw i64 %i.i, 4164903690
  %i.k = lshr i64 %i.h, 32
  %i.l = add nuw i64 %i.j, %i.k                   ; 2 uses
  store i64 %i.l, ptr %i.g, align 8, !tbaa !361, !noalias !359
  %i.m = trunc i64 %i.l to i32
  %i.n = uitofp i32 %i.m to float
  %37 = fmul nnan float %i.n, f0x2F800000
  %38 = fmul nnan float %37, f0x40C90FDB
  %39 = fpext float %38 to double                 ; 3 uses
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2cv6theRNGEv(), !noalias !359 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !361, !noalias !359 ; 2 uses
  %i.q = and i64 %i.p, 4294967295
  %i.r = mul nuw i64 %i.q, 4164903690
  %i.s = lshr i64 %i.p, 32
  %i.t = add nuw i64 %i.r, %i.s                   ; 2 uses
  store i64 %i.t, ptr %i.o, align 8, !tbaa !361, !noalias !359
  %i.u = trunc i64 %i.t to i32
  %i.v = uitofp i32 %i.u to float
  %40 = fmul nnan float %i.v, f0x2F800000
  %41 = fmul nnan float %40, 3.000000e+00
  %42 = fpext float %41 to double                 ; 4 uses
  %43 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2cv6theRNGEv(), !noalias !359 ; 2 uses
  %44 = load i64, ptr %43, align 8, !tbaa !361, !noalias !359 ; 2 uses
  %45 = and i64 %44, 4294967295
  %46 = mul nuw i64 %45, 4164903690
  %47 = lshr i64 %44, 32
  %48 = add nuw i64 %46, %47                      ; 2 uses
  store i64 %48, ptr %43, align 8, !tbaa !361, !noalias !359
  %49 = trunc i64 %48 to i32
  %50 = uitofp i32 %49 to float
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2cv6theRNGEv(), !noalias !359 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !361, !noalias !359 ; 2 uses
  %i.y = and i64 %i.x, 4294967295
  %i.z = mul nuw i64 %i.y, 4164903690
  %i.aa = lshr i64 %i.x, 32
  %i.ab = add nuw i64 %i.z, %i.aa                 ; 2 uses
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = uitofp i32 %i.ac to float
  %i.ae = insertelement <2 x float> poison, float %50, i64 0
  %i.af = insertelement <2 x float> %i.ae, float %i.ad, i64 1
  %i.ag = fmul nnan <2 x float> %i.af, splat (float f0x2F800000)
  %i.ah = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> splat (float 4.000000e+00), <2 x float> splat (float -2.000000e+00)) ; 2 uses
  %51 = extractelement <2 x float> %i.ah, i64 0
  %52 = fpext float %51 to double
  store i64 %i.ab, ptr %i.w, align 8, !tbaa !361, !noalias !359
  %53 = extractelement <2 x float> %i.ah, i64 1
  %54 = fpext float %53 to double
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30, !noalias !359
  %i.ai = tail call double @cos(double noundef %39) #30, !noalias !359
  %55 = fmul double %i.ai, %42
  store double %55, ptr %i.a, align 16, !tbaa !127, !noalias !359
  %56 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aj = tail call double @sin(double noundef %39) #30, !noalias !359 ; 2 uses
  %i.ak = fneg double %i.aj
  %57 = fmul double %42, %i.ak
  store double %57, ptr %56, align 8, !tbaa !127, !noalias !359
  %58 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store double %52, ptr %58, align 16, !tbaa !127, !noalias !359
  %59 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %60 = fmul double %i.aj, %42
  store double %60, ptr %59, align 8, !tbaa !127, !noalias !359
  %61 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %62 = tail call double @cos(double noundef %39) #30, !noalias !359
  %63 = fmul double %62, %42
  store double %63, ptr %61, align 16, !tbaa !127, !noalias !359
  %64 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store double %54, ptr %64, align 8, !tbaa !127, !noalias !359
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30, !noalias !359
  call void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %11, i32 noundef 2, i32 noundef 3, i32 noundef 6, ptr noundef nonnull %i.a, i64 noundef 0), !noalias !359
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %12, ptr noundef nonnull align 8 dereferenceable(208) %11)
          to label %_ZN11opencv_testL16rngPartialAffMatEv.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.bi, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.al, %bb.b ], [ %.pn66.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bi ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30, !noalias !359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30, !noalias !359
  br label %common.resume

_ZN11opencv_testL16rngPartialAffMatEv.exit:       ; preds = %bb.a
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30, !noalias !359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30, !noalias !359
  %i.am = icmp eq i32 %.sroa.5.0.copyload, 4
  %i.an = mul nsw i32 %.sroa.7.0.copyload, 3
  %i.ao = shl nsw i32 %.sroa.7.0.copyload, 1
  %.040.in = select i1 %i.am, i32 %i.an, i32 %i.ao
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
  %i.ap = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i64 0, ptr %i.aq, align 8
  store i32 50397184, ptr %15, align 8, !tbaa !135
  store ptr %13, ptr %i.ap, align 8, !tbaa !136
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !127
  %i.ar = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i32 -1056833530, ptr %16, align 8, !tbaa !135
  %i.as = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %i.b, ptr %i.as, align 8, !tbaa !136
  store i64 4294967297, ptr %i.ar, align 8, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  store double 1.000000e+02, ptr %i.c, align 8, !tbaa !127
  %i.at = getelementptr inbounds nuw i8, ptr %17, i64 16
  store i32 -1056833530, ptr %17, align 8, !tbaa !135
  %i.au = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %i.c, ptr %i.au, align 8, !tbaa !136
  store i64 4294967297, ptr %i.at, align 8, !tbaa !118
  invoke void @_ZN2cv5randuERKNS_17_InputOutputArrayERKNS_11_InputArrayES5_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %17)
          to label %bb.e unwind label %bb.aj

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  %i.av = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i32 0, ptr %i.av, align 8, !tbaa !137
  %i.aw = getelementptr inbounds nuw i8, ptr %18, i64 20
  store i32 0, ptr %i.aw, align 4, !tbaa !138
  store i32 16842752, ptr %18, align 8, !tbaa !135
  %i.ax = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %13, ptr %i.ax, align 8, !tbaa !136
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30
  %i.ay = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i64 0, ptr %i.az, align 8
  store i32 33619968, ptr %19, align 8, !tbaa !135
  store ptr %14, ptr %i.ay, align 8, !tbaa !136
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #30
  %i.ba = getelementptr inbounds nuw i8, ptr %20, i64 16
  store i32 0, ptr %i.ba, align 8, !tbaa !137
  %i.bb = getelementptr inbounds nuw i8, ptr %20, i64 20
  store i32 0, ptr %i.bb, align 4, !tbaa !138
  store i32 16842752, ptr %20, align 8, !tbaa !135
  %i.bc = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %12, ptr %i.bc, align 8, !tbaa !136
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
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 %.sroa.7.0.copyload, ptr %i.bd, align 4, !tbaa !141, !noalias !362
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %21, ptr noundef nonnull align 8 dereferenceable(208) %14, ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef nonnull align 4 dereferenceable(8) %10)
          to label %bb.g unwind label %bb.al

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30, !noalias !362
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30, !noalias !362
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #30
  store double 1.500000e+01, ptr %22, align 8, !tbaa !127
  %i.be = getelementptr inbounds nuw i8, ptr %22, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #30
  invoke void @_ZNK2cv3Mat7reshapeEii(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %23, ptr noundef nonnull align 8 dereferenceable(208) %21, i32 noundef 1, i32 noundef 0)
          to label %bb.h unwind label %bb.am

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 0, ptr %i.bf, align 8, !tbaa !137
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 0, ptr %i.bg, align 4, !tbaa !138
  store i32 16842752, ptr %6, align 8, !tbaa !135
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %23, ptr %i.bh, align 8, !tbaa !136
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 -1056833530, ptr %7, align 8, !tbaa !135
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %22, ptr %i.bj, align 8, !tbaa !136
  store i64 17179869185, ptr %i.bi, align 8, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 0, ptr %i.bl, align 8
  store i32 -1040121856, ptr %8, align 8, !tbaa !135
  store ptr %23, ptr %i.bk, align 8, !tbaa !136
  %i.bm = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %.noexc unwind label %bb.an

.noexc:                                           ; preds = %bb.h
  invoke void @_ZN2cv3addERKNS_11_InputArrayES2_RKNS_12_OutputArrayES2_i(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i32 noundef -1)
          to label %bb.i unwind label %bb.an

bb.i:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #30
  %i.bn = getelementptr inbounds nuw i8, ptr %21, i64 72
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !144 ; 6 uses
  %i.bp = icmp slt i32 %i.bo, 3
  br i1 %i.bp, label %bb.m, label %bb.j

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
  %i.bq = landingpad { ptr, i32 }
          cleanup
  %i.br = load ptr, ptr %4, align 8, !tbaa !55    ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.l
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !56
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bv) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %.body

bb.m:                                             ; preds = %bb.i
  %i.bw = icmp sgt i32 %i.bo, 0
  br i1 %i.bw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bx = icmp eq i32 %i.bo, 2
  %.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.bx, i64 88, i64 84
  %.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %21, i64 %.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %i.by = load i32, ptr %.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !118
  br label %bb.p
end_hunk_0
