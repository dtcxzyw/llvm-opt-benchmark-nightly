Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/perf_warp?download=true
inline.NumInlined: 3014
inline.NumDeleted: 1188
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN11opencv_testL46gtest_TestWarpAffine_WarpAffine_EvalGenerator_Ev:bb.a
bb.g:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #32
  unreachable

_ZN7testing8internal19linked_ptr_internal6departEv.exit.i.i.i: ; preds = %bb.f
  br i1 %i.v, label %bb.h, label %_ZN7testing8internal14ParamGeneratorIN11opencv_test12_GLOBAL__N_110BorderModeEED2Ev.exit

bb.h:                                             ; preds = %_ZN7testing8internal19linked_ptr_internal6departEv.exit.i.i.i
  %i.z = load ptr, ptr %4, align 8, !tbaa !114    ; 3 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %_ZN7testing8internal14ParamGeneratorIN11opencv_test12_GLOBAL__N_110BorderModeEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.z) #30, !inline_history !123
  br label %_ZN7testing8internal14ParamGeneratorIN11opencv_test12_GLOBAL__N_110BorderModeEED2Ev.exit

bb.j:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #32
  unreachable

_ZN7testing8internal14ParamGeneratorIN11opencv_test12_GLOBAL__N_110BorderModeEED2Ev.exit: ; preds = %_ZN7testing8internal19linked_ptr_internal6departEv.exit.i.i.i, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  invoke void @_ZN7testing8internal9MutexBase4LockEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal18g_linked_ptr_mutexE)
          to label %.noexc.i.i8 unwind label %bb.p

.noexc.i.i8:                                      ; preds = %_ZN7testing8internal14ParamGeneratorIN11opencv_test12_GLOBAL__N_110BorderModeEED2Ev.exit
  %i.ag = load ptr, ptr %i.j, align 8, !tbaa !31  ; 3 uses
  %i.ah = icmp eq ptr %i.ag, %i.j                 ; 2 uses
  br i1 %i.ah, label %bb.l, label %.preheader.i.i.i.i9

.preheader.i.i.i.i9:                              ; preds = %.noexc.i.i8, %.preheader.i.i.i.i9
  %.0.i.i.i.i10 = phi ptr [ %i.ai, %.preheader.i.i.i.i9 ], [ %i.ag, %.noexc.i.i8 ] ; 2 uses
  %i.ai = load ptr, ptr %.0.i.i.i.i10, align 8, !tbaa !31 ; 2 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.ai, %i.j
  br i1 %.not.i.i.i.i11, label %bb.k, label %.preheader.i.i.i.i9, !llvm.loop !122

bb.k:                                             ; preds = %.preheader.i.i.i.i9
  store ptr %i.ag, ptr %.0.i.i.i.i10, align 8, !tbaa !31
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.noexc.i.i8
  invoke void @_ZN7testing8internal9MutexBase6UnlockEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal18g_linked_ptr_mutexE)
          to label %_ZN7testing8internal19linked_ptr_internal6departEv.exit.i.i.i12 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #32
  unreachable

_ZN7testing8internal19linked_ptr_internal6departEv.exit.i.i.i12: ; preds = %bb.l
  br i1 %i.ah, label %bb.n, label %_ZN7testing8internal14ParamGeneratorIN11opencv_test12_GLOBAL__N_19InterTypeEED2Ev.exit

bb.n:                                             ; preds = %_ZN7testing8internal19linked_ptr_internal6departEv.exit.i.i.i12
  %i.al = load ptr, ptr %3, align 8, !tbaa !96    ; 3 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %_ZN7testing8internal14ParamGeneratorIN11opencv_test12_GLOBAL__N_19InterTypeEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !21
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %i.al) #30, !inline_history !124
  br label %_ZN7testing8internal14ParamGeneratorIN11opencv_test12_GLOBAL__N_19InterTypeEED2Ev.exit

bb.p:                                             ; preds = %_ZN7testing8internal14ParamGeneratorIN11opencv_test12_GLOBAL__N_110BorderModeEED2Ev.exit
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #32
  unreachable

_ZN7testing8internal14ParamGeneratorIN11opencv_test12_GLOBAL__N_19InterTypeEED2Ev.exit: ; preds = %_ZN7testing8internal19linked_ptr_internal6departEv.exit.i.i.i12, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  ret void

bb.q:                                             ; preds = %_ZN11opencv_test12_GLOBAL__N_19InterType3allEv.exit
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.r:                                             ; preds = %bb.b
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %bb.c
  %i.au = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZN7testing8internal23CartesianProductHolder4INS0_11ValueArray3IN2cv5Size_IiEES5_S5_EENS0_14ParamGeneratorIN11opencv_test12_GLOBAL__N_19InterTypeEEENS7_INS9_10BorderModeEEENS0_11ValueArray9IiiiiiiiiiEEED2Ev(ptr noundef nonnull align 8 dead_on_return(92) dereferenceable(92) %1) #30
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn = phi { ptr, i32 } [ %i.au, %bb.s ], [ %i.at, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call fastcc void @_ZN7testing8internal14ParamGeneratorIN11opencv_test12_GLOBAL__N_110BorderModeEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #30
  br label %.body

.body:                                            ; preds = %bb.q, %.body.i.i.i7, %bb.t
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.t ], [ %i.as, %bb.q ], [ %i.n, %.body.i.i.i7 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call fastcc void @_ZN7testing8internal14ParamGeneratorIN11opencv_test12_GLOBAL__N_19InterTypeEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN11opencv_testL49gtest_TestWarpAffine_WarpAffine_EvalGenerateName_B5cxx11ERKN7testing13TestParamInfoISt5tupleIJN2cv5Size_IiEENS_12_GLOBAL__N_19InterTypeENS6_10BorderModeEN4perf7MatTypeEEEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 1 captures(none) %1) #1 {
bb.a:
  tail call fastcc void @_ZN7testing8internal16DefaultParamNameISt5tupleIJN2cv5Size_IiEEN11opencv_test12_GLOBAL__N_19InterTypeENS7_10BorderModeEN4perf7MatTypeEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_13TestParamInfoIT_EE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11opencv_test25TestWarpAffine_WarpAffine12PerfTestBodyEv(ptr noundef nonnull align 8 dereferenceable(256) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %2 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %3 = alloca %"class.cv::Matx.128", align 8      ; 4 uses
  %i.a = alloca [4 x float], align 16             ; 14 uses
  %.sroa.0.i = alloca i64, align 8                ; 14 uses
  %4 = alloca %"class.cv::Scalar_", align 16      ; 9 uses
  %5 = alloca %"class.cv::Mat", align 8           ; 26 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %7 = alloca %"class.cv::Mat", align 16          ; 12 uses
  %8 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %9 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %10 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %11 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %12 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %i.b = tail call fastcc noundef nonnull align 4 dereferenceable(20) ptr @_ZNK7testing18WithParamInterfaceISt5tupleIJN2cv5Size_IiEEN11opencv_test12_GLOBAL__N_19InterTypeENS6_10BorderModeEN4perf7MatTypeEEEE8GetParamEv()
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i64, ptr %i.c, align 4              ; 2 uses
  %i.e = tail call fastcc noundef nonnull align 4 dereferenceable(20) ptr @_ZNK7testing18WithParamInterfaceISt5tupleIJN2cv5Size_IiEEN11opencv_test12_GLOBAL__N_19InterTypeENS6_10BorderModeEN4perf7MatTypeEEEE8GetParamEv()
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val = load i32, ptr %i.f, align 4, !tbaa !125
  %i.g = tail call fastcc noundef nonnull align 4 dereferenceable(20) ptr @_ZNK7testing18WithParamInterfaceISt5tupleIJN2cv5Size_IiEEN11opencv_test12_GLOBAL__N_19InterTypeENS6_10BorderModeEN4perf7MatTypeEEEE8GetParamEv()
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %.val38 = load i32, ptr %i.h, align 4, !tbaa !127 ; 4 uses
  %i.i = tail call fastcc noundef nonnull align 4 dereferenceable(20) ptr @_ZNK7testing18WithParamInterfaceISt5tupleIJN2cv5Size_IiEEN11opencv_test12_GLOBAL__N_19InterTypeENS6_10BorderModeEN4perf7MatTypeEEEE8GetParamEv()
  %i.j = load i32, ptr %i.i, align 4, !tbaa !129  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  store <2 x double> splat (double 1.500000e+02), ptr %4, align 16, !tbaa !131, !alias.scope !132
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <2 x double> splat (double 1.500000e+02), ptr %i.k, align 16, !tbaa !131, !alias.scope !132
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @_ZN2cv3MatC1ENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208) %5, i64 2199023256064, i32 noundef %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  invoke void @_ZN2cv3MatC1ENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208) %6, i64 %i.d, i32 noundef %i.j)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = load i32, ptr %5, align 8, !tbaa !135    ; 3 uses
  %i.m = and i32 %i.l, 31
  switch i32 %i.m, label %bb.l [
    i32 0, label %bb.e
    i32 2, label %bb.h
    i32 5, label %bb.j
  ]

bb.c:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.d:                                             ; preds = %bb.k, %bb.i, %bb.g, %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.e:                                             ; preds = %bb.b
  invoke void @_ZN6cvtest12fillGradientIhEEvRN2cv3MatEi(ptr noundef nonnull align 8 dereferenceable(208) %5, i32 noundef 5)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  %i.p = icmp eq i32 %.val38, 0
  br i1 %i.p, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN6cvtest12smoothBorderIhEEvRN2cv3MatERKNS1_7Scalar_IdEEi(ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 1)
          to label %bb.l unwind label %bb.d

bb.h:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !142  ; 2 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.preheader.lr.ph.i, label %_ZN6cvtest12fillGradientItEEvRN2cv3MatEi.exit

.preheader.lr.ph.i:                               ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !143  ; 2 uses
  %i.v = icmp sgt i32 %i.u, 0
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 136
  %i.aa = load i64, ptr %i.y, align 8             ; 2 uses
  %i.ab = load i64, ptr %i.z, align 8
  br i1 %i.v, label %.preheader.lr.ph.split.i, label %_ZN6cvtest12fillGradientItEEvRN2cv3MatEi.exit

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = icmp slt i32 %i.ad, 2
  %i.af = lshr i32 %i.l, 4
  %i.ag = and i32 %i.af, 254
  %narrow63.i = add nuw nsw i32 %i.ag, 2
  %15 = zext nneg i32 %narrow63.i to i64          ; 2 uses
  %wide.trip.count51.i = zext nneg i32 %i.r to i64 ; 2 uses
  %wide.trip.count46.i = zext nneg i32 %i.u to i64 ; 2 uses
  br i1 %i.ae, label %.preheader.us.i.preheader, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.preheader.lr.ph.split.i
  %.sroa.0.i.2.i.2.i.2..sroa_idx108 = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 2
  %.sroa.0.i.4.i.4.i.4..sroa_idx109 = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 4
  %.sroa.0.i.6.i.6.i.6..sroa_idx110 = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 6
  br label %.preheader.i

.preheader.us.i.preheader:                        ; preds = %.preheader.lr.ph.split.i
  %.sroa.0.i.2.i.2.i.2..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 2
  %.sroa.0.i.4.i.4.i.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 4
  %.sroa.0.i.6.i.6.i.6..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 6
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.preheader.us.i.preheader, %._crit_edge.split.us.us.i
  %indvars.iv48.i = phi i64 [ %indvars.iv.next49.i, %._crit_edge.split.us.us.i ], [ 0, %.preheader.us.i.preheader ] ; 3 uses
  %i.ah = trunc i64 %indvars.iv48.i to i16
  %indvars.iv.next49.i = add nuw nsw i64 %indvars.iv48.i, 1 ; 3 uses
  %16 = trunc nuw nsw i64 %indvars.iv.next49.i to i32
  br label %_ZN2cv3Mat3ptrEii.exit.us.us.i

_ZN2cv3Mat3ptrEii.exit.us.us.i:                   ; preds = %_ZN2cv3Mat3ptrEii.exit.us.us.i, %.preheader.us.i
  %indvars.iv43.i = phi i64 [ %indvars.iv.next44.i, %_ZN2cv3Mat3ptrEii.exit.us.us.i ], [ 0, %.preheader.us.i ] ; 5 uses
  %indvars45.i = trunc i64 %indvars.iv43.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  store i16 %i.ah, ptr %.sroa.0.i, align 8, !tbaa !144
  %i.ai = trunc i64 %indvars.iv43.i to i16
  store i16 %i.ai, ptr %.sroa.0.i.2.i.2.i.2..sroa_idx, align 2, !tbaa !144
  %17 = mul nuw nsw i64 %indvars.iv43.i, %indvars.iv48.i ; 2 uses
  %18 = trunc nuw i64 %17 to i32
  %i.aj = trunc i64 %17 to i16
  store i16 %i.aj, ptr %.sroa.0.i.4.i.4.i.4..sroa_idx, align 4, !tbaa !144
  %i.ak = add nuw nsw i32 %indvars45.i, %16
  %i.al = udiv i32 %18, %i.ak
  %i.am = trunc i32 %i.al to i16
  store i16 %i.am, ptr %.sroa.0.i.6.i.6.i.6..sroa_idx, align 2, !tbaa !144
  %19 = mul i64 %indvars.iv43.i, %i.aa
  %20 = getelementptr inbounds nuw i8, ptr %i.x, i64 %19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %20, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0.i, i64 %15, i1 false), !tbaa !144
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %indvars.iv.next44.i = add nuw nsw i64 %indvars.iv43.i, 1 ; 2 uses
  %exitcond47.not.i = icmp eq i64 %indvars.iv.next44.i, %wide.trip.count46.i
  br i1 %exitcond47.not.i, label %._crit_edge.split.us.us.i, label %_ZN2cv3Mat3ptrEii.exit.us.us.i, !llvm.loop !146

._crit_edge.split.us.us.i:                        ; preds = %_ZN2cv3Mat3ptrEii.exit.us.us.i
  %exitcond52.not.i = icmp eq i64 %indvars.iv.next49.i, %wide.trip.count51.i
  br i1 %exitcond52.not.i, label %_ZN6cvtest12fillGradientItEEvRN2cv3MatEi.exit, label %.preheader.us.i, !llvm.loop !147

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge.split.i
  %indvars.iv35.i = phi i64 [ %indvars.iv.next36.i, %._crit_edge.split.i ], [ 0, %.preheader.i.preheader ] ; 5 uses
  %i.an = trunc nuw nsw i64 %indvars.iv35.i to i32
  %i.ao = trunc i64 %indvars.iv35.i to i16
  %indvars.iv.next36.i = add nuw nsw i64 %indvars.iv35.i, 1 ; 3 uses
  %i.ap = mul i64 %indvars.iv35.i, %i.aa
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ap
  br label %_ZN2cv3Mat3ptrEii.exit.i

_ZN2cv3Mat3ptrEii.exit.i:                         ; preds = %_ZN2cv3Mat3ptrEii.exit.i, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %_ZN2cv3Mat3ptrEii.exit.i ] ; 6 uses
  %indvars34.i = trunc i64 %indvars.iv.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  store i16 %i.ao, ptr %.sroa.0.i, align 8, !tbaa !144
  %i.ar = trunc i64 %indvars.iv.i to i16
  store i16 %i.ar, ptr %.sroa.0.i.2.i.2.i.2..sroa_idx108, align 2, !tbaa !144
  %i.as = mul nuw nsw i64 %indvars.iv.i, %indvars.iv35.i
  %i.at = mul nuw nsw i32 %indvars34.i, %i.an
  %i.au = trunc i64 %i.as to i16
  store i16 %i.au, ptr %.sroa.0.i.4.i.4.i.4..sroa_idx109, align 4, !tbaa !144
  %i.av = add nuw nsw i64 %indvars.iv.i, %indvars.iv.next36.i
  %i.aw = trunc nuw nsw i64 %i.av to i32
  %i.ax = udiv i32 %i.at, %i.aw
  %i.ay = trunc i32 %i.ax to i16
  store i16 %i.ay, ptr %.sroa.0.i.6.i.6.i.6..sroa_idx110, align 2, !tbaa !144
  %i.az = mul i64 %indvars.iv.i, %i.ab
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.ba, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0.i, i64 %15, i1 false), !tbaa !144
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count46.i
  br i1 %exitcond.not.i, label %._crit_edge.split.i, label %_ZN2cv3Mat3ptrEii.exit.i, !llvm.loop !146

._crit_edge.split.i:                              ; preds = %_ZN2cv3Mat3ptrEii.exit.i
  %exitcond39.not.i = icmp eq i64 %indvars.iv.next36.i, %wide.trip.count51.i
  br i1 %exitcond39.not.i, label %_ZN6cvtest12fillGradientItEEvRN2cv3MatEi.exit, label %.preheader.i, !llvm.loop !147

_ZN6cvtest12fillGradientItEEvRN2cv3MatEi.exit:    ; preds = %._crit_edge.split.i, %._crit_edge.split.us.us.i, %.preheader.lr.ph.i, %bb.h
  %i.bb = icmp eq i32 %.val38, 0
  br i1 %i.bb, label %bb.i, label %bb.l

bb.i:                                             ; preds = %_ZN6cvtest12fillGradientItEEvRN2cv3MatEi.exit
  invoke void @_ZN6cvtest12smoothBorderItEEvRN2cv3MatERKNS1_7Scalar_IdEEi(ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 1)
          to label %bb.l unwind label %bb.d

bb.j:                                             ; preds = %bb.b
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !142 ; 2 uses
  %i.be = icmp sgt i32 %i.bd, 0
  br i1 %i.be, label %.preheader.lr.ph.i39, label %_ZN6cvtest12fillGradientIfEEvRN2cv3MatEi.exit

.preheader.lr.ph.i39:                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !143 ; 2 uses
  %i.bh = icmp sgt i32 %i.bg, 0
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8            ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 136
  %i.bm = load i64, ptr %i.bk, align 8            ; 2 uses
  %i.bn = load i64, ptr %i.bl, align 8
  br i1 %i.bh, label %.preheader.lr.ph.split.i40, label %_ZN6cvtest12fillGradientIfEEvRN2cv3MatEi.exit

.preheader.lr.ph.split.i40:                       ; preds = %.preheader.lr.ph.i39
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = icmp slt i32 %i.bp, 2
  %i.br = lshr i32 %i.l, 3
  %i.bs = and i32 %i.br, 508
  %narrow57.i = add nuw nsw i32 %i.bs, 4
  %21 = zext nneg i32 %narrow57.i to i64          ; 2 uses
  %wide.trip.count51.i41 = zext nneg i32 %i.bd to i64 ; 2 uses
  %wide.trip.count46.i42 = zext nneg i32 %i.bg to i64 ; 2 uses
  br i1 %i.bq, label %.preheader.us.i53.preheader, label %.preheader.i43.preheader

.preheader.i43.preheader:                         ; preds = %.preheader.lr.ph.split.i40
  %.4..4..4..4..sroa_idx111 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.8..8..8..8..sroa_idx112 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.12..12..12..12..sroa_idx113 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  br label %.preheader.i43

.preheader.us.i53.preheader:                      ; preds = %.preheader.lr.ph.split.i40
  %.4..4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.8..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.12..12..12..12..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  br label %.preheader.us.i53

.preheader.us.i53:                                ; preds = %.preheader.us.i53.preheader, %._crit_edge.split.us.us.i61
  %indvars.iv48.i54 = phi i64 [ %indvars.iv.next49.i55, %._crit_edge.split.us.us.i61 ], [ 0, %.preheader.us.i53.preheader ] ; 3 uses
  %22 = trunc nuw nsw i64 %indvars.iv48.i54 to i32
  %i.bt = uitofp nneg i32 %22 to float
  %indvars.iv.next49.i55 = add nuw nsw i64 %indvars.iv48.i54, 1 ; 3 uses
  %23 = trunc nuw nsw i64 %indvars.iv.next49.i55 to i32
  br label %_ZN2cv3Mat3ptrEii.exit.us.us.i56

_ZN2cv3Mat3ptrEii.exit.us.us.i56:                 ; preds = %_ZN2cv3Mat3ptrEii.exit.us.us.i56, %.preheader.us.i53
  %indvars.iv43.i57 = phi i64 [ %indvars.iv.next44.i59, %_ZN2cv3Mat3ptrEii.exit.us.us.i56 ], [ 0, %.preheader.us.i53 ] ; 4 uses
  %indvars45.i58 = trunc i64 %indvars.iv43.i57 to i32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store float %i.bt, ptr %i.a, align 16, !tbaa !148
  %i.bu = uitofp nneg i32 %indvars45.i58 to float
  store float %i.bu, ptr %.4..4..4..4..sroa_idx, align 4, !tbaa !148
  %24 = mul nuw nsw i64 %indvars.iv43.i57, %indvars.iv48.i54
  %25 = trunc nuw i64 %24 to i32                  ; 2 uses
  %i.bv = uitofp nneg i32 %25 to float
  store float %i.bv, ptr %.8..8..8..8..sroa_idx, align 8, !tbaa !148
  %i.bw = add nuw nsw i32 %indvars45.i58, %23
  %i.bx = udiv i32 %25, %i.bw
  %i.by = uitofp nneg i32 %i.bx to float
  store float %i.by, ptr %.12..12..12..12..sroa_idx, align 4, !tbaa !148
  %26 = mul i64 %indvars.iv43.i57, %i.bm
  %27 = getelementptr inbounds nuw i8, ptr %i.bj, i64 %26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %27, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %21, i1 false), !tbaa !148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %indvars.iv.next44.i59 = add nuw nsw i64 %indvars.iv43.i57, 1 ; 2 uses
  %exitcond47.not.i60 = icmp eq i64 %indvars.iv.next44.i59, %wide.trip.count46.i42
  br i1 %exitcond47.not.i60, label %._crit_edge.split.us.us.i61, label %_ZN2cv3Mat3ptrEii.exit.us.us.i56, !llvm.loop !150

._crit_edge.split.us.us.i61:                      ; preds = %_ZN2cv3Mat3ptrEii.exit.us.us.i56
  %exitcond52.not.i62 = icmp eq i64 %indvars.iv.next49.i55, %wide.trip.count51.i41
  br i1 %exitcond52.not.i62, label %_ZN6cvtest12fillGradientIfEEvRN2cv3MatEi.exit, label %.preheader.us.i53, !llvm.loop !151

.preheader.i43:                                   ; preds = %.preheader.i43.preheader, %._crit_edge.split.i51
  %indvars.iv35.i44 = phi i64 [ %indvars.iv.next36.i45, %._crit_edge.split.i51 ], [ 0, %.preheader.i43.preheader ] ; 4 uses
  %i.bz = trunc nuw nsw i64 %indvars.iv35.i44 to i32 ; 2 uses
  %i.ca = uitofp nneg i32 %i.bz to float
  %indvars.iv.next36.i45 = add nuw nsw i64 %indvars.iv35.i44, 1 ; 3 uses
  %i.cb = mul i64 %indvars.iv35.i44, %i.bm
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.cb
  br label %_ZN2cv3Mat3ptrEii.exit.i46

_ZN2cv3Mat3ptrEii.exit.i46:                       ; preds = %_ZN2cv3Mat3ptrEii.exit.i46, %.preheader.i43
  %indvars.iv.i47 = phi i64 [ 0, %.preheader.i43 ], [ %indvars.iv.next.i49, %_ZN2cv3Mat3ptrEii.exit.i46 ] ; 5 uses
  %indvars34.i48 = trunc i64 %indvars.iv.i47 to i32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store float %i.ca, ptr %i.a, align 16, !tbaa !148
  %i.cd = uitofp nneg i32 %indvars34.i48 to float
  store float %i.cd, ptr %.4..4..4..4..sroa_idx111, align 4, !tbaa !148
  %i.ce = mul nuw nsw i64 %indvars.iv.i47, %indvars.iv35.i44
  %i.cf = mul nuw nsw i32 %indvars34.i48, %i.bz
  %i.cg = trunc nuw i64 %i.ce to i32
  %i.ch = uitofp nneg i32 %i.cg to float
  store float %i.ch, ptr %.8..8..8..8..sroa_idx112, align 8, !tbaa !148
  %i.ci = add nuw nsw i64 %indvars.iv.i47, %indvars.iv.next36.i45
  %i.cj = trunc nuw nsw i64 %i.ci to i32
  %i.ck = udiv i32 %i.cf, %i.cj
  %i.cl = uitofp nneg i32 %i.ck to float
  store float %i.cl, ptr %.12..12..12..12..sroa_idx113, align 4, !tbaa !148
  %i.cm = mul i64 %indvars.iv.i47, %i.bn
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.cn, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %21, i1 false), !tbaa !148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %indvars.iv.next.i49 = add nuw nsw i64 %indvars.iv.i47, 1 ; 2 uses
  %exitcond.not.i50 = icmp eq i64 %indvars.iv.next.i49, %wide.trip.count46.i42
  br i1 %exitcond.not.i50, label %._crit_edge.split.i51, label %_ZN2cv3Mat3ptrEii.exit.i46, !llvm.loop !150

._crit_edge.split.i51:                            ; preds = %_ZN2cv3Mat3ptrEii.exit.i46
  %exitcond39.not.i52 = icmp eq i64 %indvars.iv.next36.i45, %wide.trip.count51.i41
  br i1 %exitcond39.not.i52, label %_ZN6cvtest12fillGradientIfEEvRN2cv3MatEi.exit, label %.preheader.i43, !llvm.loop !151

_ZN6cvtest12fillGradientIfEEvRN2cv3MatEi.exit:    ; preds = %._crit_edge.split.i51, %._crit_edge.split.us.us.i61, %.preheader.lr.ph.i39, %bb.j
  %i.co = icmp eq i32 %.val38, 0
  br i1 %i.co, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN6cvtest12fillGradientIfEEvRN2cv3MatEi.exit
  invoke void @_ZN6cvtest12smoothBorderIfEEvRN2cv3MatERKNS1_7Scalar_IdEEi(ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 1)
          to label %bb.l unwind label %bb.d

bb.l:                                             ; preds = %_ZN6cvtest12fillGradientIfEEvRN2cv3MatEi.exit, %bb.k, %_ZN6cvtest12fillGradientItEEvRN2cv3MatEi.exit, %bb.i, %bb.f, %bb.g, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cq = load <2 x i32>, ptr %i.cp, align 8, !tbaa !94
  %i.cr = sitofp <2 x i32> %i.cq to <2 x float>
  %i.cs = fmul nnan <2 x float> %i.cr, splat (float 5.000000e-01)
  %i.ct = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  call void @llvm.experimental.noalias.scope.decl(metadata !152)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30, !noalias !152
  invoke void @_ZN2cv20getRotationMatrix2D_ENS_6Point_IfEEdd(ptr dead_on_unwind nonnull writable sret(%"class.cv::Matx.128") align 8 %3, <2 x float> %i.ct, double noundef 3.000000e+01, double noundef 2.200000e+00)
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.l
  store <4 x i32> <i32 1124024326, i32 2, i32 2, i32 3>, ptr %7, align 16, !tbaa !94, !alias.scope !152
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 153, ptr %i.cu, align 16, !tbaa !155, !alias.scope !152
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cv, i8 0, i64 48, i1 false), !alias.scope !152
  invoke void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.cw, i64 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 0)
          to label %.noexc63 unwind label %bb.w

.noexc63:                                         ; preds = %.noexc
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.cx, i8 0, i64 80, i1 false), !alias.scope !152
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30, !noalias !152
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef 2, i32 noundef 3, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 noundef 0)
          to label %.noexc64 unwind label %bb.w

.noexc64:                                         ; preds = %.noexc63
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30, !noalias !152
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.cz, align 8, !noalias !152
  store i32 33619968, ptr %2, align 8, !tbaa !156, !noalias !152
  store ptr %7, ptr %i.cy, align 8, !tbaa !159, !noalias !152
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %.noexc64
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !152
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %1) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30, !noalias !152
  br label %.body

bb.n:                                             ; preds = %.noexc64
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !152
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %1) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30, !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30, !noalias !152
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 0, ptr %i.dc, align 8
  store i32 50397184, ptr %8, align 8, !tbaa !156
  store ptr %5, ptr %i.db, align 8, !tbaa !159
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.de = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4perf8TestBase14_declareHelper2inERKN2cv17_InputOutputArrayENS0_10WarmUpTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.dd, ptr noundef nonnull align 8 dereferenceable(24) %8, i32 noundef 0)
          to label %bb.o unwind label %bb.x

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.df = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %i.dg, align 8
  store i32 50397184, ptr %9, align 8, !tbaa !156
  store ptr %6, ptr %i.df, align 8, !tbaa !159
  %i.dh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4perf8TestBase14_declareHelper3outERKN2cv17_InputOutputArrayENS0_10WarmUpTypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.de, ptr noundef nonnull align 8 dereferenceable(24) %9, i32 noundef 1)
          to label %bb.p unwind label %bb.y       ; 0 uses

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.di = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %10, i64 20
  %i.dk = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.do = getelementptr inbounds nuw i8, ptr %12, i64 20
  %i.dp = getelementptr inbounds nuw i8, ptr %12, i64 8
  br label %bb.q

bb.q:                                             ; preds = %bb.v, %bb.p
  %i.dq = invoke noundef zeroext i1 @_ZN4perf8TestBase4nextEv(ptr noundef nonnull align 8 dereferenceable(248) %0)
          to label %bb.r unwind label %bb.aa

bb.r:                                             ; preds = %bb.q
  br i1 %i.dq, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.dr = invoke noundef zeroext i1 @_ZN4perf8TestBase10startTimerEv(ptr noundef nonnull align 8 dereferenceable(248) %0)
          to label %bb.t unwind label %bb.aa

bb.t:                                             ; preds = %bb.s
  br i1 %i.dr, label %bb.u, label %.critedge

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  store i32 0, ptr %i.di, align 8, !tbaa !160
  store i32 0, ptr %i.dj, align 4, !tbaa !161
  store i32 16842752, ptr %10, align 8, !tbaa !156
  store ptr %5, ptr %i.dk, align 8, !tbaa !159
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  store i64 0, ptr %i.dm, align 8
  store i32 33619968, ptr %11, align 8, !tbaa !156
  store ptr %6, ptr %i.dl, align 8, !tbaa !159
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  store i32 0, ptr %i.dn, align 8, !tbaa !160
  store i32 0, ptr %i.do, align 4, !tbaa !161
  store i32 16842752, ptr %12, align 8, !tbaa !156
  store ptr %7, ptr %i.dp, align 8, !tbaa !159
  invoke void @_ZN2cv10warpAffineERKNS_11_InputArrayERKNS_12_OutputArrayES2_NS_5Size_IiEEiiRKNS_7Scalar_IdEENS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %12, i64 %i.d, i32 noundef %.val, i32 noundef %.val38, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 0)
          to label %bb.v unwind label %bb.ab

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  invoke void @_ZN4perf8TestBase9stopTimerEv(ptr noundef nonnull align 8 dereferenceable(248) %0)
          to label %bb.q unwind label %bb.aa, !llvm.loop !162

bb.w:                                             ; preds = %.noexc63, %.noexc, %bb.l
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.x:                                             ; preds = %bb.n
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %bb.o
  %i.du = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %.pn.pn.pn = phi { ptr, i32 } [ %i.dt, %bb.x ], [ %i.du, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.ae

bb.aa:                                            ; preds = %bb.v, %bb.s, %bb.q
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ab:                                            ; preds = %bb.u
  %i.dw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %bb.ae

.critedge:                                        ; preds = %bb.r, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  %i.dx = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  store ptr %i.dx, ptr %13, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.dx, ptr noundef nonnull align 1 dereferenceable(3) @.str.26, i64 3, i1 false)
  %i.dy = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 3, ptr %i.dy, align 8, !tbaa !18
  %i.dz = getelementptr inbounds nuw i8, ptr %13, i64 19
  store i8 0, ptr %i.dz, align 1, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  %i.ea = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 0, ptr %i.ea, align 8, !tbaa !160
  %i.eb = getelementptr inbounds nuw i8, ptr %14, i64 20
  store i32 0, ptr %i.eb, align 4, !tbaa !161
  store i32 16842752, ptr %14, align 8, !tbaa !156
  %i.ec = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %6, ptr %i.ec, align 8, !tbaa !159
  %i.ed = invoke noundef nonnull align 8 dereferenceable(288) ptr @_ZN4perf10Regression3addEPNS_8TestBaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN2cv11_InputArrayEdNS_10ERROR_TYPEE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(24) %14, double noundef 1.000000e+00, i32 noundef 0)
          to label %bb.ac unwind label %bb.ad     ; 0 uses

bb.ac:                                            ; preds = %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  %i.ee = load ptr, ptr %13, align 8, !tbaa !15   ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.dx
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ac
  %i.eg = load i64, ptr %i.dx, align 8, !tbaa !17
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.eh) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

end_hunk_0
begin_hunk_1_@_ZN11opencv_testL56gtest_TestWarpPerspective_WarpPerspective_EvalGenerator_Ev:bb.a
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #32
  unreachable

_ZN7testing8internal19linked_ptr_internal6departEv.exit.i.i.i: ; preds = %bb.f
  br i1 %i.v, label %bb.h, label %_ZN7testing8internal14ParamGeneratorIN11opencv_test12_GLOBAL__N_110BorderModeEED2Ev.exit

bb.h:                                             ; preds = %_ZN7testing8internal19linked_ptr_internal6departEv.exit.i.i.i
  %i.z = load ptr, ptr %4, align 8, !tbaa !114    ; 3 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %_ZN7testing8internal14ParamGeneratorIN11opencv_test12_GLOBAL__N_110BorderModeEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.z) #30, !inline_history !123
  br label %_ZN7testing8internal14ParamGeneratorIN11opencv_test12_GLOBAL__N_110BorderModeEED2Ev.exit

bb.j:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #32
  unreachable

_ZN7testing8internal14ParamGeneratorIN11opencv_test12_GLOBAL__N_110BorderModeEED2Ev.exit: ; preds = %_ZN7testing8internal19linked_ptr_internal6departEv.exit.i.i.i, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  invoke void @_ZN7testing8internal9MutexBase4LockEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal18g_linked_ptr_mutexE)
          to label %.noexc.i.i8 unwind label %bb.p

.noexc.i.i8:                                      ; preds = %_ZN7testing8internal14ParamGeneratorIN11opencv_test12_GLOBAL__N_110BorderModeEED2Ev.exit
  %i.ag = load ptr, ptr %i.j, align 8, !tbaa !31  ; 3 uses
  %i.ah = icmp eq ptr %i.ag, %i.j                 ; 2 uses
  br i1 %i.ah, label %bb.l, label %.preheader.i.i.i.i9

.preheader.i.i.i.i9:                              ; preds = %.noexc.i.i8, %.preheader.i.i.i.i9
  %.0.i.i.i.i10 = phi ptr [ %i.ai, %.preheader.i.i.i.i9 ], [ %i.ag, %.noexc.i.i8 ] ; 2 uses
  %i.ai = load ptr, ptr %.0.i.i.i.i10, align 8, !tbaa !31 ; 2 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.ai, %i.j
  br i1 %.not.i.i.i.i11, label %bb.k, label %.preheader.i.i.i.i9, !llvm.loop !122

bb.k:                                             ; preds = %.preheader.i.i.i.i9
  store ptr %i.ag, ptr %.0.i.i.i.i10, align 8, !tbaa !31
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.noexc.i.i8
  invoke void @_ZN7testing8internal9MutexBase6UnlockEv(ptr noundef nonnull align 8 dereferenceable(56) @_ZN7testing8internal18g_linked_ptr_mutexE)
          to label %_ZN7testing8internal19linked_ptr_internal6departEv.exit.i.i.i12 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #32
  unreachable

_ZN7testing8internal19linked_ptr_internal6departEv.exit.i.i.i12: ; preds = %bb.l
  br i1 %i.ah, label %bb.n, label %_ZN7testing8internal14ParamGeneratorIN11opencv_test12_GLOBAL__N_19InterTypeEED2Ev.exit

bb.n:                                             ; preds = %_ZN7testing8internal19linked_ptr_internal6departEv.exit.i.i.i12
  %i.al = load ptr, ptr %3, align 8, !tbaa !96    ; 3 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %_ZN7testing8internal14ParamGeneratorIN11opencv_test12_GLOBAL__N_19InterTypeEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !21
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %i.al) #30, !inline_history !124
  br label %_ZN7testing8internal14ParamGeneratorIN11opencv_test12_GLOBAL__N_19InterTypeEED2Ev.exit

bb.p:                                             ; preds = %_ZN7testing8internal14ParamGeneratorIN11opencv_test12_GLOBAL__N_110BorderModeEED2Ev.exit
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #32
  unreachable

_ZN7testing8internal14ParamGeneratorIN11opencv_test12_GLOBAL__N_19InterTypeEED2Ev.exit: ; preds = %_ZN7testing8internal19linked_ptr_internal6departEv.exit.i.i.i12, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  ret void

bb.q:                                             ; preds = %_ZN11opencv_test12_GLOBAL__N_19InterType3allEv.exit
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.r:                                             ; preds = %bb.b
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %bb.c
  %i.au = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZN7testing8internal23CartesianProductHolder4INS0_11ValueArray3IN2cv5Size_IiEES5_S5_EENS0_14ParamGeneratorIN11opencv_test12_GLOBAL__N_19InterTypeEEENS7_INS9_10BorderModeEEENS0_11ValueArray9IiiiiiiiiiEEED2Ev(ptr noundef nonnull align 8 dead_on_return(92) dereferenceable(92) %1) #30
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn = phi { ptr, i32 } [ %i.au, %bb.s ], [ %i.at, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call fastcc void @_ZN7testing8internal14ParamGeneratorIN11opencv_test12_GLOBAL__N_110BorderModeEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #30
  br label %.body

.body:                                            ; preds = %bb.q, %.body.i.i.i7, %bb.t
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.t ], [ %i.as, %bb.q ], [ %i.n, %.body.i.i.i7 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call fastcc void @_ZN7testing8internal14ParamGeneratorIN11opencv_test12_GLOBAL__N_19InterTypeEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN11opencv_testL59gtest_TestWarpPerspective_WarpPerspective_EvalGenerateName_B5cxx11ERKN7testing13TestParamInfoISt5tupleIJN2cv5Size_IiEENS_12_GLOBAL__N_19InterTypeENS6_10BorderModeEN4perf7MatTypeEEEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 1 captures(none) %1) #1 {
bb.a:
  tail call fastcc void @_ZN7testing8internal16DefaultParamNameISt5tupleIJN2cv5Size_IiEEN11opencv_test12_GLOBAL__N_19InterTypeENS7_10BorderModeEN4perf7MatTypeEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_13TestParamInfoIT_EE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11opencv_test35TestWarpPerspective_WarpPerspective12PerfTestBodyEv(ptr noundef nonnull align 8 dereferenceable(256) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %2 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %3 = alloca %"class.cv::Matx.128", align 8      ; 4 uses
  %i.a = alloca [4 x float], align 16             ; 14 uses
  %.sroa.0.i = alloca i64, align 8                ; 14 uses
  %4 = alloca %"class.cv::Scalar_", align 16      ; 9 uses
  %5 = alloca %"class.cv::Mat", align 8           ; 26 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %7 = alloca %"class.cv::Mat", align 16          ; 12 uses
  %8 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %9 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %10 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %11 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %12 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %13 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %i.b = tail call fastcc noundef nonnull align 4 dereferenceable(20) ptr @_ZNK7testing18WithParamInterfaceISt5tupleIJN2cv5Size_IiEEN11opencv_test12_GLOBAL__N_19InterTypeENS6_10BorderModeEN4perf7MatTypeEEEE8GetParamEv()
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i64, ptr %i.c, align 4              ; 3 uses
  %i.e = bitcast i64 %i.d to <2 x i32>
  %i.f = tail call fastcc noundef nonnull align 4 dereferenceable(20) ptr @_ZNK7testing18WithParamInterfaceISt5tupleIJN2cv5Size_IiEEN11opencv_test12_GLOBAL__N_19InterTypeENS6_10BorderModeEN4perf7MatTypeEEEE8GetParamEv()
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val = load i32, ptr %i.g, align 4, !tbaa !125
  %i.h = tail call fastcc noundef nonnull align 4 dereferenceable(20) ptr @_ZNK7testing18WithParamInterfaceISt5tupleIJN2cv5Size_IiEEN11opencv_test12_GLOBAL__N_19InterTypeENS6_10BorderModeEN4perf7MatTypeEEEE8GetParamEv()
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %.val50 = load i32, ptr %i.i, align 4, !tbaa !127 ; 4 uses
  %i.j = tail call fastcc noundef nonnull align 4 dereferenceable(20) ptr @_ZNK7testing18WithParamInterfaceISt5tupleIJN2cv5Size_IiEEN11opencv_test12_GLOBAL__N_19InterTypeENS6_10BorderModeEN4perf7MatTypeEEEE8GetParamEv()
  %i.k = load i32, ptr %i.j, align 4, !tbaa !129  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  store <2 x double> splat (double 1.500000e+02), ptr %4, align 16, !tbaa !131, !alias.scope !320
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <2 x double> splat (double 1.500000e+02), ptr %i.l, align 16, !tbaa !131, !alias.scope !320
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @_ZN2cv3MatC1ENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208) %5, i64 2199023256064, i32 noundef %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  invoke void @_ZN2cv3MatC1ENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208) %6, i64 %i.d, i32 noundef %i.k)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = load i32, ptr %5, align 8, !tbaa !135    ; 3 uses
  %i.n = and i32 %i.m, 31
  switch i32 %i.n, label %bb.l [
    i32 0, label %bb.e
    i32 2, label %bb.h
    i32 5, label %bb.j
  ]

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.d:                                             ; preds = %bb.k, %bb.i, %bb.g, %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.e:                                             ; preds = %bb.b
  invoke void @_ZN6cvtest12fillGradientIhEEvRN2cv3MatEi(ptr noundef nonnull align 8 dereferenceable(208) %5, i32 noundef 5)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  %i.q = icmp eq i32 %.val50, 0
  br i1 %i.q, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN6cvtest12smoothBorderIhEEvRN2cv3MatERKNS1_7Scalar_IdEEi(ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 1)
          to label %bb.l unwind label %bb.d

bb.h:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !142  ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.preheader.lr.ph.i, label %_ZN6cvtest12fillGradientItEEvRN2cv3MatEi.exit

.preheader.lr.ph.i:                               ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !143  ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 136
  %i.ab = load i64, ptr %i.z, align 8             ; 2 uses
  %i.ac = load i64, ptr %i.aa, align 8
  br i1 %i.w, label %.preheader.lr.ph.split.i, label %_ZN6cvtest12fillGradientItEEvRN2cv3MatEi.exit

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = icmp slt i32 %i.ae, 2
  %i.ag = lshr i32 %i.m, 4
  %i.ah = and i32 %i.ag, 254
  %narrow63.i = add nuw nsw i32 %i.ah, 2
  %16 = zext nneg i32 %narrow63.i to i64          ; 2 uses
  %wide.trip.count51.i = zext nneg i32 %i.s to i64 ; 2 uses
  %wide.trip.count46.i = zext nneg i32 %i.v to i64 ; 2 uses
  br i1 %i.af, label %.preheader.us.i.preheader, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.preheader.lr.ph.split.i
  %.sroa.0.i.2.i.2.i.2..sroa_idx159 = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 2
  %.sroa.0.i.4.i.4.i.4..sroa_idx160 = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 4
  %.sroa.0.i.6.i.6.i.6..sroa_idx161 = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 6
  br label %.preheader.i

.preheader.us.i.preheader:                        ; preds = %.preheader.lr.ph.split.i
  %.sroa.0.i.2.i.2.i.2..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 2
  %.sroa.0.i.4.i.4.i.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 4
  %.sroa.0.i.6.i.6.i.6..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 6
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.preheader.us.i.preheader, %._crit_edge.split.us.us.i
  %indvars.iv48.i = phi i64 [ %indvars.iv.next49.i, %._crit_edge.split.us.us.i ], [ 0, %.preheader.us.i.preheader ] ; 3 uses
  %i.ai = trunc i64 %indvars.iv48.i to i16
  %indvars.iv.next49.i = add nuw nsw i64 %indvars.iv48.i, 1 ; 3 uses
  %17 = trunc nuw nsw i64 %indvars.iv.next49.i to i32
  br label %_ZN2cv3Mat3ptrEii.exit.us.us.i

_ZN2cv3Mat3ptrEii.exit.us.us.i:                   ; preds = %_ZN2cv3Mat3ptrEii.exit.us.us.i, %.preheader.us.i
  %indvars.iv43.i = phi i64 [ %indvars.iv.next44.i, %_ZN2cv3Mat3ptrEii.exit.us.us.i ], [ 0, %.preheader.us.i ] ; 5 uses
  %indvars45.i = trunc i64 %indvars.iv43.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  store i16 %i.ai, ptr %.sroa.0.i, align 8, !tbaa !144
  %i.aj = trunc i64 %indvars.iv43.i to i16
  store i16 %i.aj, ptr %.sroa.0.i.2.i.2.i.2..sroa_idx, align 2, !tbaa !144
  %18 = mul nuw nsw i64 %indvars.iv43.i, %indvars.iv48.i ; 2 uses
  %19 = trunc nuw i64 %18 to i32
  %i.ak = trunc i64 %18 to i16
  store i16 %i.ak, ptr %.sroa.0.i.4.i.4.i.4..sroa_idx, align 4, !tbaa !144
  %i.al = add nuw nsw i32 %indvars45.i, %17
  %i.am = udiv i32 %19, %i.al
  %i.an = trunc i32 %i.am to i16
  store i16 %i.an, ptr %.sroa.0.i.6.i.6.i.6..sroa_idx, align 2, !tbaa !144
  %20 = mul i64 %indvars.iv43.i, %i.ab
  %21 = getelementptr inbounds nuw i8, ptr %i.y, i64 %20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %21, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0.i, i64 %16, i1 false), !tbaa !144
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %indvars.iv.next44.i = add nuw nsw i64 %indvars.iv43.i, 1 ; 2 uses
  %exitcond47.not.i = icmp eq i64 %indvars.iv.next44.i, %wide.trip.count46.i
  br i1 %exitcond47.not.i, label %._crit_edge.split.us.us.i, label %_ZN2cv3Mat3ptrEii.exit.us.us.i, !llvm.loop !146

._crit_edge.split.us.us.i:                        ; preds = %_ZN2cv3Mat3ptrEii.exit.us.us.i
  %exitcond52.not.i = icmp eq i64 %indvars.iv.next49.i, %wide.trip.count51.i
  br i1 %exitcond52.not.i, label %_ZN6cvtest12fillGradientItEEvRN2cv3MatEi.exit, label %.preheader.us.i, !llvm.loop !147

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge.split.i
  %indvars.iv35.i = phi i64 [ %indvars.iv.next36.i, %._crit_edge.split.i ], [ 0, %.preheader.i.preheader ] ; 5 uses
  %i.ao = trunc nuw nsw i64 %indvars.iv35.i to i32
  %i.ap = trunc i64 %indvars.iv35.i to i16
  %indvars.iv.next36.i = add nuw nsw i64 %indvars.iv35.i, 1 ; 3 uses
  %i.aq = mul i64 %indvars.iv35.i, %i.ab
  %i.ar = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aq
  br label %_ZN2cv3Mat3ptrEii.exit.i

_ZN2cv3Mat3ptrEii.exit.i:                         ; preds = %_ZN2cv3Mat3ptrEii.exit.i, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %_ZN2cv3Mat3ptrEii.exit.i ] ; 6 uses
  %indvars34.i = trunc i64 %indvars.iv.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  store i16 %i.ap, ptr %.sroa.0.i, align 8, !tbaa !144
  %i.as = trunc i64 %indvars.iv.i to i16
  store i16 %i.as, ptr %.sroa.0.i.2.i.2.i.2..sroa_idx159, align 2, !tbaa !144
  %i.at = mul nuw nsw i64 %indvars.iv.i, %indvars.iv35.i
  %i.au = mul nuw nsw i32 %indvars34.i, %i.ao
  %i.av = trunc i64 %i.at to i16
  store i16 %i.av, ptr %.sroa.0.i.4.i.4.i.4..sroa_idx160, align 4, !tbaa !144
  %i.aw = add nuw nsw i64 %indvars.iv.i, %indvars.iv.next36.i
  %i.ax = trunc nuw nsw i64 %i.aw to i32
  %i.ay = udiv i32 %i.au, %i.ax
  %i.az = trunc i32 %i.ay to i16
  store i16 %i.az, ptr %.sroa.0.i.6.i.6.i.6..sroa_idx161, align 2, !tbaa !144
  %i.ba = mul i64 %indvars.iv.i, %i.ac
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.bb, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0.i, i64 %16, i1 false), !tbaa !144
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count46.i
  br i1 %exitcond.not.i, label %._crit_edge.split.i, label %_ZN2cv3Mat3ptrEii.exit.i, !llvm.loop !146

._crit_edge.split.i:                              ; preds = %_ZN2cv3Mat3ptrEii.exit.i
  %exitcond39.not.i = icmp eq i64 %indvars.iv.next36.i, %wide.trip.count51.i
  br i1 %exitcond39.not.i, label %_ZN6cvtest12fillGradientItEEvRN2cv3MatEi.exit, label %.preheader.i, !llvm.loop !147

_ZN6cvtest12fillGradientItEEvRN2cv3MatEi.exit:    ; preds = %._crit_edge.split.i, %._crit_edge.split.us.us.i, %.preheader.lr.ph.i, %bb.h
  %i.bc = icmp eq i32 %.val50, 0
  br i1 %i.bc, label %bb.i, label %bb.l

bb.i:                                             ; preds = %_ZN6cvtest12fillGradientItEEvRN2cv3MatEi.exit
  invoke void @_ZN6cvtest12smoothBorderItEEvRN2cv3MatERKNS1_7Scalar_IdEEi(ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 1)
          to label %bb.l unwind label %bb.d

bb.j:                                             ; preds = %bb.b
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !142 ; 2 uses
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %.preheader.lr.ph.i51, label %_ZN6cvtest12fillGradientIfEEvRN2cv3MatEi.exit

.preheader.lr.ph.i51:                             ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !143 ; 2 uses
  %i.bi = icmp sgt i32 %i.bh, 0
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8            ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 136
  %i.bn = load i64, ptr %i.bl, align 8            ; 2 uses
  %i.bo = load i64, ptr %i.bm, align 8
  br i1 %i.bi, label %.preheader.lr.ph.split.i52, label %_ZN6cvtest12fillGradientIfEEvRN2cv3MatEi.exit

.preheader.lr.ph.split.i52:                       ; preds = %.preheader.lr.ph.i51
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = icmp slt i32 %i.bq, 2
  %i.bs = lshr i32 %i.m, 3
  %i.bt = and i32 %i.bs, 508
  %narrow57.i = add nuw nsw i32 %i.bt, 4
  %22 = zext nneg i32 %narrow57.i to i64          ; 2 uses
  %wide.trip.count51.i53 = zext nneg i32 %i.be to i64 ; 2 uses
  %wide.trip.count46.i54 = zext nneg i32 %i.bh to i64 ; 2 uses
  br i1 %i.br, label %.preheader.us.i65.preheader, label %.preheader.i55.preheader

.preheader.i55.preheader:                         ; preds = %.preheader.lr.ph.split.i52
  %.4..4..4..4..sroa_idx162 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.8..8..8..8..sroa_idx163 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.12..12..12..12..sroa_idx164 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  br label %.preheader.i55

.preheader.us.i65.preheader:                      ; preds = %.preheader.lr.ph.split.i52
  %.4..4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.8..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.12..12..12..12..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  br label %.preheader.us.i65

.preheader.us.i65:                                ; preds = %.preheader.us.i65.preheader, %._crit_edge.split.us.us.i73
  %indvars.iv48.i66 = phi i64 [ %indvars.iv.next49.i67, %._crit_edge.split.us.us.i73 ], [ 0, %.preheader.us.i65.preheader ] ; 3 uses
  %23 = trunc nuw nsw i64 %indvars.iv48.i66 to i32
  %i.bu = uitofp nneg i32 %23 to float
  %indvars.iv.next49.i67 = add nuw nsw i64 %indvars.iv48.i66, 1 ; 3 uses
  %24 = trunc nuw nsw i64 %indvars.iv.next49.i67 to i32
  br label %_ZN2cv3Mat3ptrEii.exit.us.us.i68

_ZN2cv3Mat3ptrEii.exit.us.us.i68:                 ; preds = %_ZN2cv3Mat3ptrEii.exit.us.us.i68, %.preheader.us.i65
  %indvars.iv43.i69 = phi i64 [ %indvars.iv.next44.i71, %_ZN2cv3Mat3ptrEii.exit.us.us.i68 ], [ 0, %.preheader.us.i65 ] ; 4 uses
  %indvars45.i70 = trunc i64 %indvars.iv43.i69 to i32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store float %i.bu, ptr %i.a, align 16, !tbaa !148
  %i.bv = uitofp nneg i32 %indvars45.i70 to float
  store float %i.bv, ptr %.4..4..4..4..sroa_idx, align 4, !tbaa !148
  %25 = mul nuw nsw i64 %indvars.iv43.i69, %indvars.iv48.i66
  %26 = trunc nuw i64 %25 to i32                  ; 2 uses
  %i.bw = uitofp nneg i32 %26 to float
  store float %i.bw, ptr %.8..8..8..8..sroa_idx, align 8, !tbaa !148
  %i.bx = add nuw nsw i32 %indvars45.i70, %24
  %i.by = udiv i32 %26, %i.bx
  %i.bz = uitofp nneg i32 %i.by to float
  store float %i.bz, ptr %.12..12..12..12..sroa_idx, align 4, !tbaa !148
  %27 = mul i64 %indvars.iv43.i69, %i.bn
  %28 = getelementptr inbounds nuw i8, ptr %i.bk, i64 %27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %28, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %22, i1 false), !tbaa !148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %indvars.iv.next44.i71 = add nuw nsw i64 %indvars.iv43.i69, 1 ; 2 uses
  %exitcond47.not.i72 = icmp eq i64 %indvars.iv.next44.i71, %wide.trip.count46.i54
  br i1 %exitcond47.not.i72, label %._crit_edge.split.us.us.i73, label %_ZN2cv3Mat3ptrEii.exit.us.us.i68, !llvm.loop !150

._crit_edge.split.us.us.i73:                      ; preds = %_ZN2cv3Mat3ptrEii.exit.us.us.i68
  %exitcond52.not.i74 = icmp eq i64 %indvars.iv.next49.i67, %wide.trip.count51.i53
  br i1 %exitcond52.not.i74, label %_ZN6cvtest12fillGradientIfEEvRN2cv3MatEi.exit, label %.preheader.us.i65, !llvm.loop !151

.preheader.i55:                                   ; preds = %.preheader.i55.preheader, %._crit_edge.split.i63
  %indvars.iv35.i56 = phi i64 [ %indvars.iv.next36.i57, %._crit_edge.split.i63 ], [ 0, %.preheader.i55.preheader ] ; 4 uses
  %i.ca = trunc nuw nsw i64 %indvars.iv35.i56 to i32 ; 2 uses
  %i.cb = uitofp nneg i32 %i.ca to float
  %indvars.iv.next36.i57 = add nuw nsw i64 %indvars.iv35.i56, 1 ; 3 uses
  %i.cc = mul i64 %indvars.iv35.i56, %i.bn
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.cc
  br label %_ZN2cv3Mat3ptrEii.exit.i58

_ZN2cv3Mat3ptrEii.exit.i58:                       ; preds = %_ZN2cv3Mat3ptrEii.exit.i58, %.preheader.i55
  %indvars.iv.i59 = phi i64 [ 0, %.preheader.i55 ], [ %indvars.iv.next.i61, %_ZN2cv3Mat3ptrEii.exit.i58 ] ; 5 uses
  %indvars34.i60 = trunc i64 %indvars.iv.i59 to i32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store float %i.cb, ptr %i.a, align 16, !tbaa !148
  %i.ce = uitofp nneg i32 %indvars34.i60 to float
  store float %i.ce, ptr %.4..4..4..4..sroa_idx162, align 4, !tbaa !148
  %i.cf = mul nuw nsw i64 %indvars.iv.i59, %indvars.iv35.i56
  %i.cg = mul nuw nsw i32 %indvars34.i60, %i.ca
  %i.ch = trunc nuw i64 %i.cf to i32
  %i.ci = uitofp nneg i32 %i.ch to float
  store float %i.ci, ptr %.8..8..8..8..sroa_idx163, align 8, !tbaa !148
  %i.cj = add nuw nsw i64 %indvars.iv.i59, %indvars.iv.next36.i57
  %i.ck = trunc nuw nsw i64 %i.cj to i32
  %i.cl = udiv i32 %i.cg, %i.ck
  %i.cm = uitofp nneg i32 %i.cl to float
  store float %i.cm, ptr %.12..12..12..12..sroa_idx164, align 4, !tbaa !148
  %i.cn = mul i64 %indvars.iv.i59, %i.bo
  %i.co = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.co, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %22, i1 false), !tbaa !148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %indvars.iv.next.i61 = add nuw nsw i64 %indvars.iv.i59, 1 ; 2 uses
  %exitcond.not.i62 = icmp eq i64 %indvars.iv.next.i61, %wide.trip.count46.i54
  br i1 %exitcond.not.i62, label %._crit_edge.split.i63, label %_ZN2cv3Mat3ptrEii.exit.i58, !llvm.loop !150

._crit_edge.split.i63:                            ; preds = %_ZN2cv3Mat3ptrEii.exit.i58
  %exitcond39.not.i64 = icmp eq i64 %indvars.iv.next36.i57, %wide.trip.count51.i53
  br i1 %exitcond39.not.i64, label %_ZN6cvtest12fillGradientIfEEvRN2cv3MatEi.exit, label %.preheader.i55, !llvm.loop !151

_ZN6cvtest12fillGradientIfEEvRN2cv3MatEi.exit:    ; preds = %._crit_edge.split.i63, %._crit_edge.split.us.us.i73, %.preheader.lr.ph.i51, %bb.j
  %i.cp = icmp eq i32 %.val50, 0
  br i1 %i.cp, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN6cvtest12fillGradientIfEEvRN2cv3MatEi.exit
  invoke void @_ZN6cvtest12smoothBorderIfEEvRN2cv3MatERKNS1_7Scalar_IdEEi(ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 1)
          to label %bb.l unwind label %bb.d

bb.l:                                             ; preds = %_ZN6cvtest12fillGradientIfEEvRN2cv3MatEi.exit, %bb.k, %_ZN6cvtest12fillGradientItEEvRN2cv3MatEi.exit, %bb.i, %bb.f, %bb.g, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cr = load <2 x i32>, ptr %i.cq, align 8, !tbaa !94
  %i.cs = sitofp <2 x i32> %i.cr to <2 x float>
  %i.ct = fmul nnan <2 x float> %i.cs, splat (float 5.000000e-01)
  %i.cu = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  call void @llvm.experimental.noalias.scope.decl(metadata !323)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30, !noalias !323
  invoke void @_ZN2cv20getRotationMatrix2D_ENS_6Point_IfEEdd(ptr dead_on_unwind nonnull writable sret(%"class.cv::Matx.128") align 8 %3, <2 x float> %i.cu, double noundef 3.000000e+01, double noundef 2.200000e+00)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.l
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 4
  store <4 x i32> <i32 1124024326, i32 2, i32 2, i32 3>, ptr %7, align 16, !tbaa !94, !alias.scope !323
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 153, ptr %i.cw, align 16, !tbaa !155, !alias.scope !323
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %7, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cx, i8 0, i64 48, i1 false), !alias.scope !323
  invoke void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.cy, i64 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 0)
          to label %.noexc75 unwind label %bb.o

.noexc75:                                         ; preds = %.noexc
  %i.cz = getelementptr inbounds nuw i8, ptr %7, i64 128 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.cz, i8 0, i64 80, i1 false), !alias.scope !323
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30, !noalias !323
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef 2, i32 noundef 3, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 noundef 0)
          to label %.noexc76 unwind label %bb.o

.noexc76:                                         ; preds = %.noexc75
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30, !noalias !323
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.db, align 8, !noalias !323
  store i32 33619968, ptr %2, align 8, !tbaa !156, !noalias !323
  store ptr %7, ptr %i.da, align 8, !tbaa !159, !noalias !323
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %.noexc76
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !323
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %1) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30, !noalias !323
  br label %.body

bb.n:                                             ; preds = %.noexc76
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !323
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %1) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30, !noalias !323
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30, !noalias !323
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %8, i32 noundef 3, i32 noundef 3, i32 noundef 6)
          to label %.preheader106 unwind label %bb.p

.preheader106:                                    ; preds = %bb.n
  %i.dd = load i32, ptr %i.cv, align 4, !tbaa !165
  %.fr124 = freeze i32 %i.dd
  %i.de = icmp slt i32 %.fr124, 2
  %i.df = load ptr, ptr %i.cx, align 8, !tbaa !166 ; 9 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !165
  %.fr = freeze i32 %i.dh                         ; 2 uses
  %i.di = icmp slt i32 %.fr, 2                    ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !166 ; 14 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %8, i64 128 ; 9 uses
  %i.dm = load double, ptr %i.df, align 8, !tbaa !131
  store double %i.dm, ptr %i.dk, align 8, !tbaa !131
  %i.dn = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 3 uses
  %i.do = load double, ptr %i.dn, align 8, !tbaa !131
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 3 uses
  store double %i.do, ptr %i.dp, align 8, !tbaa !131
  %i.dq = getelementptr inbounds nuw i8, ptr %i.df, i64 16 ; 3 uses
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !131
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 3 uses
  store double %i.dr, ptr %i.ds, align 8, !tbaa !131
  br i1 %i.de, label %.preheader106.split.us, label %.preheader106.split

.preheader106.split.us:                           ; preds = %.preheader106
  %i.dt = load double, ptr %i.df, align 8, !tbaa !131 ; 2 uses
  br i1 %i.di, label %.preheader.us.us.preheader, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader106.split.us
  %i.du = load i64, ptr %i.dl, align 8
  %.sink.i80.us.us.1139 = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.du
  store double %i.dt, ptr %.sink.i80.us.us.1139, align 8, !tbaa !131
  %i.dv = load double, ptr %i.dn, align 8, !tbaa !131
  %i.dw = load i64, ptr %i.dl, align 8
  %.sink.i80.us.us.1.1 = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dw
  %i.dx = getelementptr inbounds nuw i8, ptr %.sink.i80.us.us.1.1, i64 8
  store double %i.dv, ptr %i.dx, align 8, !tbaa !131
  %i.dy = load double, ptr %i.dq, align 8, !tbaa !131
  %i.dz = load i64, ptr %i.dl, align 8
  %.sink.i80.us.us.2.1 = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dz
  %i.ea = getelementptr inbounds nuw i8, ptr %.sink.i80.us.us.2.1, i64 16
  store double %i.dy, ptr %i.ea, align 8, !tbaa !131
  br label %.split121.us

.preheader.us.us.preheader:                       ; preds = %.preheader106.split.us
  store double %i.dt, ptr %i.dk, align 8, !tbaa !131
  %i.eb = load double, ptr %i.dn, align 8, !tbaa !131
  store double %i.eb, ptr %i.dp, align 8, !tbaa !131
  %i.ec = load double, ptr %i.dq, align 8, !tbaa !131
  store double %i.ec, ptr %i.ds, align 8, !tbaa !131
  br label %.split121.us

.preheader106.split:                              ; preds = %.preheader106
  %i.ed = load i64, ptr %i.cz, align 16
  %.sink.i78.us111.us.1136 = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.ed
  %i.ee = load double, ptr %.sink.i78.us111.us.1136, align 8, !tbaa !131 ; 2 uses
  br i1 %i.di, label %.preheader.us122.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader106.split
  %i.ef = load i64, ptr %i.dl, align 8
  %.sink.i80.1133 = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.ef
  store double %i.ee, ptr %.sink.i80.1133, align 8, !tbaa !131
  %i.eg = load i64, ptr %i.cz, align 16
  %.sink.i78.1.1 = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.eg
  %i.eh = getelementptr inbounds nuw i8, ptr %.sink.i78.1.1, i64 8
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !131
  %i.ej = load i64, ptr %i.dl, align 8
  %.sink.i80.1.1 = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.ej
  %i.ek = getelementptr inbounds nuw i8, ptr %.sink.i80.1.1, i64 8
  store double %i.ei, ptr %i.ek, align 8, !tbaa !131
  %i.el = load i64, ptr %i.cz, align 16
  %.sink.i78.2.1 = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.el
  %i.em = getelementptr inbounds nuw i8, ptr %.sink.i78.2.1, i64 16
  %i.en = load double, ptr %i.em, align 8, !tbaa !131
  %i.eo = load i64, ptr %i.dl, align 8
  %.sink.i80.2.1 = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.eo
  %i.ep = getelementptr inbounds nuw i8, ptr %.sink.i80.2.1, i64 16
  store double %i.en, ptr %i.ep, align 8, !tbaa !131
  br label %.split121.us

.preheader.us122.preheader:                       ; preds = %.preheader106.split
  store double %i.ee, ptr %i.dk, align 8, !tbaa !131
  %i.eq = load i64, ptr %i.cz, align 16
  %.sink.i78.us111.us.1.1 = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.eq
  %i.er = getelementptr inbounds nuw i8, ptr %.sink.i78.us111.us.1.1, i64 8
  %i.es = load double, ptr %i.er, align 8, !tbaa !131
  store double %i.es, ptr %i.dp, align 8, !tbaa !131
  %i.et = load i64, ptr %i.cz, align 16
  %.sink.i78.us111.us.2.1 = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.et
  %i.eu = getelementptr inbounds nuw i8, ptr %.sink.i78.us111.us.2.1, i64 16
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !131
  store double %i.ev, ptr %i.ds, align 8, !tbaa !131
  br label %.split121.us

bb.o:                                             ; preds = %.noexc75, %.noexc, %bb.l
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %bb.n
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.split121.us:                                     ; preds = %.preheader.preheader, %.preheader.us122.preheader, %.preheader.us.preheader, %.preheader.us.us.preheader
  %i.ey = icmp slt i32 %.fr, 2                    ; 3 uses
  %i.ez = load i64, ptr %i.dl, align 8
  %i.fa = shl i64 %i.ez, 1
  %.sink.idx.i = select i1 %i.ey, i64 0, i64 %i.fa
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 %.sink.idx.i
  %i.fb = sitofp <2 x i32> %i.e to <2 x double>
  %i.fc = fdiv <2 x double> splat (double 3.000000e-01), %i.fb ; 2 uses
  %i.fd = extractelement <2 x double> %i.fc, i64 0
  store double %i.fd, ptr %.sink.i, align 8, !tbaa !131
  %i.fe = load i64, ptr %i.dl, align 8
  %i.ff = shl i64 %i.fe, 1
  %.sink.idx.i81 = select i1 %i.ey, i64 0, i64 %i.ff
  %.sink.i82 = getelementptr inbounds nuw i8, ptr %i.dk, i64 %.sink.idx.i81
  %i.fg = getelementptr inbounds nuw i8, ptr %.sink.i82, i64 8
  %i.fh = extractelement <2 x double> %i.fc, i64 1
  store double %i.fh, ptr %i.fg, align 8, !tbaa !131
  %i.fi = load i64, ptr %i.dl, align 8
  %i.fj = shl i64 %i.fi, 1
  %.sink.idx.i83 = select i1 %i.ey, i64 0, i64 %i.fj
  %.sink.i84 = getelementptr inbounds nuw i8, ptr %i.dk, i64 %.sink.idx.i83
  %i.fk = getelementptr inbounds nuw i8, ptr %.sink.i84, i64 16
  store double 1.000000e+00, ptr %i.fk, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.fl = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.fm = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %i.fm, align 8
  store i32 50397184, ptr %9, align 8, !tbaa !156
  store ptr %5, ptr %i.fl, align 8, !tbaa !159
end_hunk_1
