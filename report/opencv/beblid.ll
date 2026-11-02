Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/beblid?download=true
inline.NumInlined: 675
inline.NumDeleted: 312
begin_hunk_0_@_ZN2cvL13parallel_for_ERKNS_5RangeESt8functionIFvS2_EEd:bb.a
bb.k:                                             ; preds = %_ZN2cv29ParallelLoopBodyLambdaWrapperC2ESt8functionIFvRKNS_5RangeEEE.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv29ParallelLoopBodyLambdaWrapperE, i64 16), ptr %2, align 8, !tbaa !15
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !101  ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.y, null
  br i1 %.not.i.i5, label %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = invoke noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i32 noundef 3)
          to label %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit unwind label %bb.m, !inline_history !102 ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #24, !inline_history !102
  unreachable

_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit:   ; preds = %bb.k, %bb.l
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %2) #20, !inline_history !102
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !101 ; 2 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit
  %i.ad = invoke noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void

bb.p:                                             ; preds = %_ZN2cv29ParallelLoopBodyLambdaWrapperC2ESt8functionIFvRKNS_5RangeEEE.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #20
  br label %.body

.body:                                            ; preds = %.body.i, %bb.p
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.p ], [ %i.r, %.body.i ]
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !101 ; 2 uses
  %.not.i7 = icmp eq ptr %i.ah, null
  br i1 %.not.i7, label %_ZNSt14_Function_baseD2Ev.exit8, label %bb.q

bb.q:                                             ; preds = %.body
  %i.ai = invoke noundef zeroext i1 %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit8 unwind label %bb.r ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit8:                  ; preds = %.body, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %common.resume
}

declare void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv29ParallelLoopBodyLambdaWrapperE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nounwind
declare void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv29ParallelLoopBodyLambdaWrapperD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv29ParallelLoopBodyLambdaWrapperE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit unwind label %bb.c, !inline_history !102 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #24, !inline_history !102
  unreachable

_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit:   ; preds = %bb.a, %bb.b
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #20, !inline_history !102
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv29ParallelLoopBodyLambdaWrapperclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.b, label %_ZNKSt8functionIFvRKN2cv5RangeEEEclES3_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt25__throw_bad_function_callv() #23
  unreachable

_ZNKSt8functionIFvRKN2cv5RangeEEEclES3_.exit:     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !100
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 4 dereferenceable(8) %1), !inline_history !162
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_11xfeatures2d11BEBLID_ImplINS5_17ABWLParamsFloatThEE25computeBoxDiffsDescriptorERKNS0_3MatERKSt6vectorINS0_8KeyPointESaISD_EERS9_EUlS3_E_E9_M_invokeERKSt9_Any_dataS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !97
  tail call void @_ZZN2cv11xfeatures2d11BEBLID_ImplINS0_17ABWLParamsFloatThEE25computeBoxDiffsDescriptorERKNS_3MatERKSt6vectorINS_8KeyPointESaIS8_EERS4_ENKUlRKNS_5RangeEE_clESG_(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 4 dereferenceable(8) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_11xfeatures2d11BEBLID_ImplINS5_17ABWLParamsFloatThEE25computeBoxDiffsDescriptorERKNS0_3MatERKSt6vectorINS0_8KeyPointESaISD_EERS9_EUlS3_E_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN2cv11xfeatures2d11BEBLID_ImplINS2_17ABWLParamsFloatThEE25computeBoxDiffsDescriptorERKNS1_3MatERKSt6vectorINS1_8KeyPointESaISA_EERS6_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN2cv11xfeatures2d11BEBLID_ImplINS0_17ABWLParamsFloatThEE25computeBoxDiffsDescriptorERKNS_3MatERKSt6vectorINS_8KeyPointESaIS8_EERS4_EUlRKNS_5RangeEE_, ptr %0, align 8, !tbaa !104
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv11xfeatures2d11BEBLID_ImplINS2_17ABWLParamsFloatThEE25computeBoxDiffsDescriptorERKNS1_3MatERKSt6vectorINS1_8KeyPointESaISA_EERS6_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !97
  store ptr %i.a, ptr %0, align 8, !tbaa !97
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv11xfeatures2d11BEBLID_ImplINS2_17ABWLParamsFloatThEE25computeBoxDiffsDescriptorERKNS1_3MatERKSt6vectorINS1_8KeyPointESaISA_EERS6_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !97
  %i.c = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #21 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false), !tbaa.struct !163
  store ptr %i.c, ptr %0, align 8, !tbaa !97
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv11xfeatures2d11BEBLID_ImplINS2_17ABWLParamsFloatThEE25computeBoxDiffsDescriptorERKNS1_3MatERKSt6vectorINS1_8KeyPointESaISA_EERS6_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !97     ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerIZN2cv11xfeatures2d11BEBLID_ImplINS2_17ABWLParamsFloatThEE25computeBoxDiffsDescriptorERKNS1_3MatERKSt6vectorINS1_8KeyPointESaISA_EERS6_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 48) #22
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv11xfeatures2d11BEBLID_ImplINS2_17ABWLParamsFloatThEE25computeBoxDiffsDescriptorERKNS1_3MatERKSt6vectorINS1_8KeyPointESaISA_EERS6_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN2cv11xfeatures2d11BEBLID_ImplINS2_17ABWLParamsFloatThEE25computeBoxDiffsDescriptorERKNS1_3MatERKSt6vectorINS1_8KeyPointESaISA_EERS6_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN2cv11xfeatures2d11BEBLID_ImplINS0_17ABWLParamsFloatThEE25computeBoxDiffsDescriptorERKNS_3MatERKSt6vectorINS_8KeyPointESaIS8_EERS4_ENKUlRKNS_5RangeEE_clESG_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %sincos.sin.i = alloca double, align 8          ; 4 uses
  %sincos.cos.i = alloca double, align 8          ; 4 uses
  %2 = alloca %"class.std::vector", align 8       ; 16 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !181    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !29   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 4 uses
  %i.i = sdiv exact i64 %i.h, 24
  %i.j = icmp ugt i64 %i.i, 384307168202282325
  br i1 %i.j, label %.noexc, label %_ZNSt6vectorIN2cv11xfeatures2d17ABWLParamsFloatThESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #23
  unreachable

_ZNSt6vectorIN2cv11xfeatures2d17ABWLParamsFloatThESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN2cv11xfeatures2d17ABWLParamsFloatThESaIS2_EEC2EmRKS3_.exit.thread.i, label %.noexc84

_ZNSt12_Vector_baseIN2cv11xfeatures2d17ABWLParamsFloatThESaIS2_EEC2EmRKS3_.exit.thread.i: ; preds = %_ZNSt6vectorIN2cv11xfeatures2d17ABWLParamsFloatThESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %.loopexit104.a

.noexc84:                                         ; preds = %_ZNSt6vectorIN2cv11xfeatures2d17ABWLParamsFloatThESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #21 ; 7 uses
  store ptr %i.k, ptr %2, align 8, !tbaa !29
  %i.l = getelementptr i8, ptr %i.k, i64 %i.h     ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.o = icmp eq i64 %i.h, 24
  br i1 %i.o, label %.loopexit104.a, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.noexc84, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.n, %.noexc84 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.06.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(24) %i.k, i64 24, i1 false), !tbaa.struct !34
  %i.p = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.p, %i.l
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.loopexit104.a, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !0

.loopexit104.a:                                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseIN2cv11xfeatures2d17ABWLParamsFloatThESaIS2_EEC2EmRKS3_.exit.thread.i, %.noexc84
  %i.q = phi ptr [ null, %_ZNSt12_Vector_baseIN2cv11xfeatures2d17ABWLParamsFloatThESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %i.k, %.noexc84 ], [ %i.k, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %.0.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN2cv11xfeatures2d17ABWLParamsFloatThESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %i.n, %.noexc84 ], [ %i.l, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store ptr %.0.i.i.i.i.i, ptr %i.r, align 8, !tbaa !35
  %i.s = load i32, ptr %1, align 4, !tbaa !84     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !85
  %i.v = icmp slt i32 %i.s, %i.u
  br i1 %i.v, label %.lr.ph119, label %._crit_edge

.lr.ph119:                                        ; preds = %.loopexit104.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !182, !nonnull !55, !align !106 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !80
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !107
  %i.ac = icmp slt i32 %i.ab, 2
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 128
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = sext i32 %i.s to i64                    ; 2 uses
  %i.ag = mul i64 %i.ae, %i.af
  %.sink.idx.i = select i1 %i.ac, i64 0, i64 %i.ag
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.z, i64 %.sink.idx.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 36 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !35
  %.pre122 = load ptr, ptr %i.b, align 8, !tbaa !29
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph119, %.loopexit
  %i.ao = phi ptr [ %.pre122, %.lr.ph119 ], [ %i.vl, %.loopexit ]
  %i.ap = phi ptr [ %.pre, %.lr.ph119 ], [ %i.vm, %.loopexit ]
  %indvars.iv = phi i64 [ %i.af, %.lr.ph119 ], [ %indvars.iv.next, %.loopexit ] ; 3 uses
  %.0118 = phi ptr [ %.sink.i, %.lr.ph119 ], [ %.5, %.loopexit ] ; 4 uses
  %.070117 = phi i8 [ 0, %.lr.ph119 ], [ %.575, %.loopexit ] ; 4 uses
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !183, !nonnull !55, !align !106
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !79
  %i.as = getelementptr inbounds nuw [28 x i8], ptr %i.ar, i64 %indvars.iv ; 4 uses
  %i.at = load float, ptr %i.ai, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %sincos.sin.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %sincos.cos.i)
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.av = load float, ptr %i.au, align 4, !tbaa !110
  %i.aw = fmul float %i.at, %i.av
  %i.ax = load i32, ptr %i.aj, align 4, !tbaa !56
  %i.ay = load i32, ptr %i.ak, align 8, !tbaa !57
  %i.az = add nsw i32 %i.ay, %i.ax
  %i.ba = sitofp i32 %i.az to float
  %i.bb = fmul nnan float %i.ba, 5.000000e-01
  %i.bc = fdiv float %i.aw, %i.bb                 ; 7 uses
  %i.bd = ptrtoint ptr %i.ap to i64
  %i.be = ptrtoint ptr %i.ao to i64
  %i.bf = sub i64 %i.bd, %i.be                    ; 2 uses
  %i.bg = sdiv exact i64 %i.bf, 24                ; 3 uses
  %i.bh = load ptr, ptr %i.r, align 8, !tbaa !35  ; 2 uses
  %i.bi = load ptr, ptr %2, align 8, !tbaa !29    ; 2 uses
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = sdiv exact i64 %i.bl, 24                ; 3 uses
  %i.bn = icmp ugt i64 %i.bg, %i.bm
  br i1 %i.bn, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bo = sub nuw nsw i64 %i.bg, %i.bm
  invoke void @_ZNSt6vectorIN2cv11xfeatures2d17ABWLParamsFloatThESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.bo)
          to label %_ZNSt6vectorIN2cv11xfeatures2d17ABWLParamsFloatThESaIS2_EE6resizeEm.exit.i unwind label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.bp = icmp ult i64 %i.bg, %i.bm
  br i1 %i.bp, label %bb.e, label %_ZNSt6vectorIN2cv11xfeatures2d17ABWLParamsFloatThESaIS2_EE6resizeEm.exit.i

bb.e:                                             ; preds = %bb.d
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bf ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bh, %i.bq
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv11xfeatures2d17ABWLParamsFloatThESaIS2_EE6resizeEm.exit.i, label %_ZSt8_DestroyIPN2cv11xfeatures2d17ABWLParamsFloatThES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN2cv11xfeatures2d17ABWLParamsFloatThES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %bb.e
  store ptr %i.bq, ptr %i.r, align 8, !tbaa !35
  br label %_ZNSt6vectorIN2cv11xfeatures2d17ABWLParamsFloatThESaIS2_EE6resizeEm.exit.i

_ZNSt6vectorIN2cv11xfeatures2d17ABWLParamsFloatThESaIS2_EE6resizeEm.exit.i: ; preds = %bb.c, %_ZSt8_DestroyIPN2cv11xfeatures2d17ABWLParamsFloatThES2_EvT_S4_RSaIT0_E.exit.i.i.i, %bb.e, %bb.d
  %i.br = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  %i.bs = load float, ptr %i.br, align 4, !tbaa !111 ; 3 uses
  %i.bt = fcmp oeq float %i.bs, -1.000000e+00
  br i1 %i.bt, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt6vectorIN2cv11xfeatures2d17ABWLParamsFloatThESaIS2_EE6resizeEm.exit.i
  %i.bu = fmul float %i.bc, -5.000000e-01
  %i.bv = load <2 x i32>, ptr %i.aj, align 4, !tbaa !31 ; 2 uses
  %i.bw = sitofp <2 x i32> %i.bv to <2 x float>
  %i.bx = load <2 x float>, ptr %i.as, align 4, !tbaa !33
  %i.by = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.bz = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ca = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bz, <2 x float> %i.bw, <2 x float> %i.bx)
  %i.cb = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bc, i64 0 ; 2 uses
  br label %bb.i

bb.g:                                             ; preds = %_ZNSt6vectorIN2cv11xfeatures2d17ABWLParamsFloatThESaIS2_EE6resizeEm.exit.i
  %i.cc = fcmp ult float %i.bs, 0.000000e+00
  br i1 %i.cc, label %.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cd = fpext nnan float %i.bs to double
  %i.ce = fmul nnan double %i.cd, f0x3F91DF46A2529D39
  call void @sincos(double %i.ce, ptr nonnull %sincos.sin.i, ptr nonnull %sincos.cos.i)
  %sin.i = load double, ptr %sincos.sin.i, align 8
  %cos.i = load double, ptr %sincos.cos.i, align 8
  %i.cf = insertelement <2 x double> poison, double %cos.i, i64 0
  %i.cg = insertelement <2 x double> %i.cf, double %sin.i, i64 1
  %i.ch = fptrunc <2 x double> %i.cg to <2 x float>
  br label %.thread.i

.thread.i:                                        ; preds = %bb.h, %bb.g
  %i.ci = phi <2 x float> [ %i.ch, %bb.h ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.g ] ; 3 uses
  %i.cj = fneg float %i.bc
  %i.ck = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.cl = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cm = fmul <2 x float> %i.cl, %i.ci           ; 4 uses
  %i.cn = extractelement <2 x float> %i.cm, i64 0
  %i.co = insertelement <2 x float> %i.cl, float %i.cj, i64 1 ; 2 uses
  %i.cp = fmul <2 x float> %i.co, %i.ci
  %i.cq = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cr = fneg <2 x float> %i.cm
  %i.cs = shufflevector <2 x float> %i.cm, <2 x float> %i.cr, <2 x i32> <i32 1, i32 2>
  %i.ct = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cq, <2 x float> %i.ci, <2 x float> %i.cs)
  %i.cu = load <2 x i32>, ptr %i.aj, align 4, !tbaa !31 ; 2 uses
  %i.cv = sitofp <2 x i32> %i.cu to <2 x float>
  %i.cw = fmul <2 x float> %i.ct, %i.cv
  %i.cx = load <2 x float>, ptr %i.as, align 4, !tbaa !33
  %i.cy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cw, <2 x float> splat (float 5.000000e-01), <2 x float> %i.cx)
  br label %bb.i

bb.i:                                             ; preds = %.thread.i, %bb.f
  %.083.i = phi float [ %i.bc, %bb.f ], [ %i.cn, %.thread.i ] ; 2 uses
  %i.cz = phi <2 x float> [ %i.ca, %bb.f ], [ %i.cy, %.thread.i ] ; 5 uses
  %i.da = phi <2 x float> [ %i.cb, %bb.f ], [ %i.cm, %.thread.i ] ; 4 uses
  %i.db = phi <2 x float> [ %i.cb, %bb.f ], [ %i.cp, %.thread.i ] ; 3 uses
  %i.dc = phi <2 x i32> [ %i.bv, %bb.f ], [ %i.cu, %.thread.i ] ; 2 uses
  %i.dd = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.de = load ptr, ptr %i.c, align 8, !tbaa !35  ; 7 uses
  %i.df = load ptr, ptr %i.b, align 8, !tbaa !29  ; 16 uses
  %.not.i = icmp eq ptr %i.de, %i.df              ; 3 uses
  br i1 %.not.i, label %_ZN2cv11xfeatures2dL11rectifyABWLINS0_17ABWLParamsFloatThEEEvRKSt6vectorIT_SaIS4_EERS6_RKNS_8KeyPointEfRKNS_5Size_IiEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = sub i64 %i.dg, %i.dh                    ; 6 uses
  %i.dj = sdiv exact i64 %i.di, 24                ; 4 uses
  %i.dk = load ptr, ptr %2, align 8, !tbaa !29    ; 12 uses
  %min.iters.check = icmp ult i64 %i.dj, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.dl = add i64 %i.di, -20                      ; 2 uses
  %i.dm = getelementptr i8, ptr %i.dk, i64 %i.dl
  %i.dn = getelementptr i8, ptr %i.df, i64 %i.dl
  %i.do = add i64 %i.di, -16                      ; 2 uses
  %i.dp = getelementptr i8, ptr %i.dk, i64 %i.do
  %i.dq = getelementptr i8, ptr %i.df, i64 %i.do
  %i.dr = add i64 %i.di, -12                      ; 2 uses
  %i.ds = getelementptr i8, ptr %i.dk, i64 %i.dr
  %i.dt = getelementptr i8, ptr %i.df, i64 %i.dr
  %i.du = add i64 %i.di, -8                       ; 2 uses
  %i.dv = getelementptr i8, ptr %i.dk, i64 %i.du
  %i.dw = getelementptr i8, ptr %i.df, i64 %i.du
  %i.dx = getelementptr i8, ptr %i.dk, i64 16
  %i.dy = add i64 %i.di, -4                       ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dk, i64 %i.dy
  %i.ea = getelementptr i8, ptr %i.df, i64 16
  %i.eb = getelementptr i8, ptr %i.df, i64 %i.dy
  %i.ec = getelementptr i8, ptr %i.dk, <4 x i64> <i64 0, i64 4, i64 8, i64 12>
  %i.ed = getelementptr i8, ptr %i.df, <4 x i64> <i64 0, i64 4, i64 8, i64 12>
  %i.ee = insertelement <4 x ptr> poison, ptr %i.dn, i64 0
  %i.ef = insertelement <4 x ptr> %i.ee, ptr %i.dq, i64 1
  %i.eg = insertelement <4 x ptr> %i.ef, ptr %i.dt, i64 2
  %i.eh = insertelement <4 x ptr> %i.eg, ptr %i.dw, i64 3
  %i.ei = icmp ult <4 x ptr> %i.ec, %i.eh
  %i.ej = insertelement <4 x ptr> poison, ptr %i.dm, i64 0
  %i.ek = insertelement <4 x ptr> %i.ej, ptr %i.dp, i64 1
  %i.el = insertelement <4 x ptr> %i.ek, ptr %i.ds, i64 2
  %i.em = insertelement <4 x ptr> %i.el, ptr %i.dv, i64 3
  %i.en = icmp ult <4 x ptr> %i.ed, %i.em
  %i.eo = and <4 x i1> %i.ei, %i.en
  %bound0209 = icmp ult ptr %i.dx, %i.eb
  %bound1210 = icmp ult ptr %i.ea, %i.dz
  %found.conflict211 = and i1 %bound0209, %bound1210
  %i.ep = bitcast <4 x i1> %i.eo to i4
  %i.eq = icmp ne i4 %i.ep, 0
  %op.rdx = or i1 %i.eq, %found.conflict211
  br i1 %op.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.er = and i64 %i.dj, 3                        ; 2 uses
  %i.es = icmp eq i64 %i.er, 0
  %i.et = select i1 %i.es, i64 4, i64 %i.er
  %n.vec = sub nsw i64 %i.dj, %i.et               ; 2 uses
  %broadcast.splat = shufflevector <2 x float> %i.db, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splat214 = shufflevector <2 x float> %i.da, <2 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splat216 = shufflevector <2 x float> %i.cz, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splat218 = shufflevector <2 x float> %i.da, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splat220 = shufflevector <2 x float> %i.cz, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splatinsert221 = insertelement <4 x float> poison, float %i.bc, i64 0
  %broadcast.splat222 = shufflevector <4 x float> %broadcast.splatinsert221, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.eu = or disjoint i64 %index, 1               ; 2 uses
  %i.ev = or disjoint i64 %index, 2               ; 2 uses
  %i.ew = or disjoint i64 %index, 3               ; 2 uses
  %i.ex = getelementptr inbounds nuw [24 x i8], ptr %i.df, i64 %index ; 6 uses
  %i.ey = getelementptr inbounds nuw [24 x i8], ptr %i.df, i64 %i.eu ; 6 uses
  %i.ez = getelementptr inbounds nuw [24 x i8], ptr %i.df, i64 %i.ev ; 6 uses
  %i.fa = getelementptr inbounds nuw [24 x i8], ptr %i.df, i64 %i.ew ; 6 uses
  %i.fb = load i32, ptr %i.ex, align 4, !tbaa !185, !alias.scope !186
  %i.fc = load i32, ptr %i.ey, align 4, !tbaa !185, !alias.scope !186
  %i.fd = load i32, ptr %i.ez, align 4, !tbaa !185, !alias.scope !186
  %i.fe = load i32, ptr %i.fa, align 4, !tbaa !185, !alias.scope !186
  %i.ff = insertelement <4 x i32> poison, i32 %i.fb, i64 0
  %i.fg = insertelement <4 x i32> %i.ff, i32 %i.fc, i64 1
  %i.fh = insertelement <4 x i32> %i.fg, i32 %i.fd, i64 2
  %i.fi = insertelement <4 x i32> %i.fh, i32 %i.fe, i64 3
  %i.fj = sitofp <4 x i32> %i.fi to <4 x float>
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fa, i64 4
  %i.fo = load i32, ptr %i.fk, align 4, !tbaa !187, !alias.scope !188
  %i.fp = load i32, ptr %i.fl, align 4, !tbaa !187, !alias.scope !188
  %i.fq = load i32, ptr %i.fm, align 4, !tbaa !187, !alias.scope !188
  %i.fr = load i32, ptr %i.fn, align 4, !tbaa !187, !alias.scope !188
  %i.fs = insertelement <4 x i32> poison, i32 %i.fo, i64 0
  %i.ft = insertelement <4 x i32> %i.fs, i32 %i.fp, i64 1
  %i.fu = insertelement <4 x i32> %i.ft, i32 %i.fq, i64 2
  %i.fv = insertelement <4 x i32> %i.fu, i32 %i.fr, i64 3
  %i.fw = sitofp <4 x i32> %i.fv to <4 x float>   ; 2 uses
  %i.fx = fmul <4 x float> %broadcast.splat, %i.fw
  %i.fy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat214, <4 x float> %i.fj, <4 x float> %i.fx)
  %i.fz = fadd <4 x float> %broadcast.splat216, %i.fy
  %i.ga = fadd <4 x float> %i.fz, splat (float 5.000000e-01)
  %i.gb = fptosi <4 x float> %i.ga to <4 x i32>   ; 4 uses
  %i.gc = getelementptr inbounds nuw [24 x i8], ptr %i.dk, i64 %index ; 3 uses
  %i.gd = getelementptr inbounds nuw [24 x i8], ptr %i.dk, i64 %i.eu ; 3 uses
  %i.ge = getelementptr inbounds nuw [24 x i8], ptr %i.dk, i64 %i.ev ; 3 uses
  %i.gf = getelementptr inbounds nuw [24 x i8], ptr %i.dk, i64 %i.ew ; 3 uses
  %i.gg = load i32, ptr %i.ex, align 4, !tbaa !185, !alias.scope !186
  %i.gh = load i32, ptr %i.ey, align 4, !tbaa !185, !alias.scope !186
  %i.gi = load i32, ptr %i.ez, align 4, !tbaa !185, !alias.scope !186
  %i.gj = load i32, ptr %i.fa, align 4, !tbaa !185, !alias.scope !186
  %i.gk = insertelement <4 x i32> poison, i32 %i.gg, i64 0
  %i.gl = insertelement <4 x i32> %i.gk, i32 %i.gh, i64 1
  %i.gm = insertelement <4 x i32> %i.gl, i32 %i.gi, i64 2
  %i.gn = insertelement <4 x i32> %i.gm, i32 %i.gj, i64 3
  %i.go = sitofp <4 x i32> %i.gn to <4 x float>
  %i.gp = fmul <4 x float> %broadcast.splat214, %i.fw
  %i.gq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat218, <4 x float> %i.go, <4 x float> %i.gp)
  %i.gr = fadd <4 x float> %broadcast.splat220, %i.gq
  %i.gs = fadd <4 x float> %i.gr, splat (float 5.000000e-01)
  %i.gt = fptosi <4 x float> %i.gs to <4 x i32>   ; 4 uses
  %i.gu = shufflevector <4 x i32> %i.gb, <4 x i32> %i.gt, <2 x i32> <i32 0, i32 4>
  store <2 x i32> %i.gu, ptr %i.gc, align 4, !tbaa !31, !alias.scope !189, !noalias !55
  %i.gv = shufflevector <4 x i32> %i.gb, <4 x i32> %i.gt, <2 x i32> <i32 1, i32 5>
  store <2 x i32> %i.gv, ptr %i.gd, align 4, !tbaa !31, !alias.scope !189, !noalias !55
  %i.gw = shufflevector <4 x i32> %i.gb, <4 x i32> %i.gt, <2 x i32> <i32 2, i32 6>
  store <2 x i32> %i.gw, ptr %i.ge, align 4, !tbaa !31, !alias.scope !189, !noalias !55
  %i.gx = shufflevector <4 x i32> %i.gb, <4 x i32> %i.gt, <2 x i32> <i32 3, i32 7>
  store <2 x i32> %i.gx, ptr %i.gf, align 4, !tbaa !31, !alias.scope !189, !noalias !55
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ex, i64 8 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ey, i64 8 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8 ; 2 uses
  %i.hc = load i32, ptr %i.gy, align 4, !tbaa !190, !alias.scope !191
  %i.hd = load i32, ptr %i.gz, align 4, !tbaa !190, !alias.scope !191
  %i.he = load i32, ptr %i.ha, align 4, !tbaa !190, !alias.scope !191
  %i.hf = load i32, ptr %i.hb, align 4, !tbaa !190, !alias.scope !191
  %i.hg = insertelement <4 x i32> poison, i32 %i.hc, i64 0
  %i.hh = insertelement <4 x i32> %i.hg, i32 %i.hd, i64 1
  %i.hi = insertelement <4 x i32> %i.hh, i32 %i.he, i64 2
  %i.hj = insertelement <4 x i32> %i.hi, i32 %i.hf, i64 3
  %i.hk = sitofp <4 x i32> %i.hj to <4 x float>
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ex, i64 12
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ey, i64 12
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ez, i64 12
  %i.ho = getelementptr inbounds nuw i8, ptr %i.fa, i64 12
  %i.hp = load i32, ptr %i.hl, align 4, !tbaa !192, !alias.scope !193
  %i.hq = load i32, ptr %i.hm, align 4, !tbaa !192, !alias.scope !193
  %i.hr = load i32, ptr %i.hn, align 4, !tbaa !192, !alias.scope !193
  %i.hs = load i32, ptr %i.ho, align 4, !tbaa !192, !alias.scope !193
  %i.ht = insertelement <4 x i32> poison, i32 %i.hp, i64 0
  %i.hu = insertelement <4 x i32> %i.ht, i32 %i.hq, i64 1
  %i.hv = insertelement <4 x i32> %i.hu, i32 %i.hr, i64 2
  %i.hw = insertelement <4 x i32> %i.hv, i32 %i.hs, i64 3
  %i.hx = sitofp <4 x i32> %i.hw to <4 x float>   ; 2 uses
  %i.hy = fmul <4 x float> %broadcast.splat, %i.hx
  %i.hz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat214, <4 x float> %i.hk, <4 x float> %i.hy)
  %i.ia = fadd <4 x float> %broadcast.splat216, %i.hz
  %i.ib = fadd <4 x float> %i.ia, splat (float 5.000000e-01)
  %i.ic = fptosi <4 x float> %i.ib to <4 x i32>   ; 4 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.ie = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.if = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.ig = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.ih = load i32, ptr %i.gy, align 4, !tbaa !190, !alias.scope !191
  %i.ii = load i32, ptr %i.gz, align 4, !tbaa !190, !alias.scope !191
  %i.ij = load i32, ptr %i.ha, align 4, !tbaa !190, !alias.scope !191
  %i.ik = load i32, ptr %i.hb, align 4, !tbaa !190, !alias.scope !191
  %i.il = insertelement <4 x i32> poison, i32 %i.ih, i64 0
  %i.im = insertelement <4 x i32> %i.il, i32 %i.ii, i64 1
  %i.in = insertelement <4 x i32> %i.im, i32 %i.ij, i64 2
  %i.io = insertelement <4 x i32> %i.in, i32 %i.ik, i64 3
  %i.ip = sitofp <4 x i32> %i.io to <4 x float>
  %i.iq = fmul <4 x float> %broadcast.splat214, %i.hx
  %i.ir = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat218, <4 x float> %i.ip, <4 x float> %i.iq)
  %i.is = fadd <4 x float> %broadcast.splat220, %i.ir
  %i.it = fadd <4 x float> %i.is, splat (float 5.000000e-01)
  %i.iu = fptosi <4 x float> %i.it to <4 x i32>   ; 4 uses
  %i.iv = shufflevector <4 x i32> %i.ic, <4 x i32> %i.iu, <2 x i32> <i32 0, i32 4>
  store <2 x i32> %i.iv, ptr %i.id, align 4, !tbaa !31, !alias.scope !194, !noalias !55
  %i.iw = shufflevector <4 x i32> %i.ic, <4 x i32> %i.iu, <2 x i32> <i32 1, i32 5>
  store <2 x i32> %i.iw, ptr %i.ie, align 4, !tbaa !31, !alias.scope !194, !noalias !55
  %i.ix = shufflevector <4 x i32> %i.ic, <4 x i32> %i.iu, <2 x i32> <i32 2, i32 6>
  store <2 x i32> %i.ix, ptr %i.if, align 4, !tbaa !31, !alias.scope !194, !noalias !55
  %i.iy = shufflevector <4 x i32> %i.ic, <4 x i32> %i.iu, <2 x i32> <i32 3, i32 7>
  store <2 x i32> %i.iy, ptr %i.ig, align 4, !tbaa !31, !alias.scope !194, !noalias !55
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.jc = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.jd = load i32, ptr %i.iz, align 4, !tbaa !195, !alias.scope !196
  %i.je = load i32, ptr %i.ja, align 4, !tbaa !195, !alias.scope !196
  %i.jf = load i32, ptr %i.jb, align 4, !tbaa !195, !alias.scope !196
  %i.jg = load i32, ptr %i.jc, align 4, !tbaa !195, !alias.scope !196
  %i.jh = insertelement <4 x i32> poison, i32 %i.jd, i64 0
  %i.ji = insertelement <4 x i32> %i.jh, i32 %i.je, i64 1
  %i.jj = insertelement <4 x i32> %i.ji, i32 %i.jf, i64 2
  %i.jk = insertelement <4 x i32> %i.jj, i32 %i.jg, i64 3
  %i.jl = sitofp <4 x i32> %i.jk to <4 x float>
  %i.jm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat222, <4 x float> %i.jl, <4 x float> splat (float 5.000000e-01))
  %i.jn = fptosi <4 x float> %i.jm to <4 x i32>   ; 4 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.jp = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.jr = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.js = extractelement <4 x i32> %i.jn, i64 0
  store i32 %i.js, ptr %i.jo, align 4, !tbaa !195, !alias.scope !197, !noalias !196
  %i.jt = extractelement <4 x i32> %i.jn, i64 1
  store i32 %i.jt, ptr %i.jp, align 4, !tbaa !195, !alias.scope !197, !noalias !196
  %i.ju = extractelement <4 x i32> %i.jn, i64 2
  store i32 %i.ju, ptr %i.jq, align 4, !tbaa !195, !alias.scope !197, !noalias !196
  %i.jv = extractelement <4 x i32> %i.jn, i64 3
  store i32 %i.jv, ptr %i.jr, align 4, !tbaa !195, !alias.scope !197, !noalias !196
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jw = icmp eq i64 %index.next, %n.vec
  br i1 %i.jw, label %scalar.ph.preheader, label %vector.body, !llvm.loop !175

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph.i
  %.090.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %vector.body ]
  %i.jx = extractelement <2 x float> %i.cz, i64 0
  %i.jy = insertelement <2 x float> %i.db, float %.083.i, i64 0
  %i.jz = extractelement <2 x float> %i.da, i64 1
  %i.ka = extractelement <2 x float> %i.cz, i64 1
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.090.i = phi i64 [ %i.lt, %scalar.ph ], [ %.090.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.kb = getelementptr inbounds nuw [24 x i8], ptr %i.df, i64 %.090.i ; 6 uses
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !185
  %i.kd = sitofp i32 %i.kc to float
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kb, i64 4
  %i.kf = getelementptr inbounds nuw [24 x i8], ptr %i.dk, i64 %.090.i ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 4
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kb, i64 8 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kb, i64 12
  %i.kj = load i32, ptr %i.ke, align 4, !tbaa !187
  %i.kk = load i32, ptr %i.ki, align 4, !tbaa !192
  %i.kl = insertelement <2 x i32> poison, i32 %i.kk, i64 0
  %i.km = insertelement <2 x i32> %i.kl, i32 %i.kj, i64 1
  %i.kn = sitofp <2 x i32> %i.km to <2 x float>   ; 2 uses
  %i.ko = load i32, ptr %i.kh, align 4, !tbaa !190
  %i.kp = insertelement <2 x i32> poison, i32 %i.ko, i64 0
  %i.kq = fmul <2 x float> %i.dd, %i.kn
  %i.kr = fmul <2 x float> %i.jy, %i.kn           ; 2 uses
  %i.ks = extractelement <2 x float> %i.kr, i64 1
  %i.kt = call float @llvm.fmuladd.f32(float %.083.i, float %i.kd, float %i.ks)
  %i.ku = fadd float %i.jx, %i.kt
  %i.kv = fadd float %i.ku, 5.000000e-01
  %i.kw = fptosi float %i.kv to i32
  store i32 %i.kw, ptr %i.kf, align 4, !tbaa !185
  %i.kx = load i32, ptr %i.kb, align 4, !tbaa !185
  %i.ky = insertelement <2 x i32> %i.kp, i32 %i.kx, i64 1
  %i.kz = sitofp <2 x i32> %i.ky to <2 x float>
  %i.la = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.da, <2 x float> %i.kz, <2 x float> %i.kq)
  %i.lb = fadd <2 x float> %i.cz, %i.la
  %i.lc = fadd <2 x float> %i.lb, splat (float 5.000000e-01)
  %i.ld = fptosi <2 x float> %i.lc to <2 x i32>
  %i.le = shufflevector <2 x i32> %i.ld, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.le, ptr %i.kg, align 4, !tbaa !31
  %i.lf = load i32, ptr %i.kh, align 4, !tbaa !190
  %i.lg = sitofp i32 %i.lf to float
  %i.lh = extractelement <2 x float> %i.kr, i64 0
  %i.li = call float @llvm.fmuladd.f32(float %i.jz, float %i.lg, float %i.lh)
  %i.lj = fadd float %i.ka, %i.li
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kf, i64 12
  %i.ll = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !195
  %i.ln = sitofp i32 %i.lm to float
  %i.lo = fadd float %i.lj, 5.000000e-01
  %i.lp = call float @llvm.fmuladd.f32(float %i.bc, float %i.ln, float 5.000000e-01)
  %i.lq = insertelement <2 x float> poison, float %i.lo, i64 0
  %i.lr = insertelement <2 x float> %i.lq, float %i.lp, i64 1
  %i.ls = fptosi <2 x float> %i.lr to <2 x i32>
  store <2 x i32> %i.ls, ptr %i.lk, align 4, !tbaa !31
  %i.lt = add nuw i64 %.090.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.lt, %i.dj
  br i1 %exitcond.not.i, label %_ZN2cv11xfeatures2dL11rectifyABWLINS0_17ABWLParamsFloatThEEEvRKSt6vectorIT_SaIS4_EERS6_RKNS_8KeyPointEfRKNS_5Size_IiEE.exit, label %scalar.ph, !llvm.loop !176

_ZN2cv11xfeatures2dL11rectifyABWLINS0_17ABWLParamsFloatThEEEvRKSt6vectorIT_SaIS4_EERS6_RKNS_8KeyPointEfRKNS_5Size_IiEE.exit: ; preds = %scalar.ph, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %sincos.sin.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %sincos.cos.i)
  %i.lu = load ptr, ptr %i.ah, align 8, !tbaa !183, !nonnull !55, !align !106
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !79
  %i.lw = getelementptr inbounds nuw [28 x i8], ptr %i.lv, i64 %indvars.iv ; 3 uses
  %i.lx = load ptr, ptr %i.al, align 8, !tbaa !198, !nonnull !55, !align !114 ; 2 uses
  %i.ly = load float, ptr %i.ai, align 8, !tbaa !64
  %i.lz = getelementptr i8, ptr %i.lx, i64 4
  %.val81 = load i32, ptr %i.lz, align 4
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  %i.mb = load float, ptr %i.ma, align 4, !tbaa !110
  %i.mc = fmul float %i.ly, %i.mb
  %i.md = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.dc)
  %i.me = sitofp i32 %i.md to float
  %i.mf = fdiv float %i.mc, %i.me
  %i.mg = sitofp <2 x i32> %i.dc to <2 x float>
  %i.mh = insertelement <2 x float> poison, float %i.mf, i64 0
  %i.mi = shufflevector <2 x float> %i.mh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mj = fmul <2 x float> %i.mi, %i.mg           ; 2 uses
  %i.mk = extractelement <2 x float> %i.mj, i64 0
  %i.ml = fmul float %i.mk, 1.750000e+00          ; 2 uses
  %i.mm = extractelement <2 x float> %i.mj, i64 1
  %i.mn = fmul float %i.mm, 1.750000e+00          ; 2 uses
  %i.mo = load float, ptr %i.lw, align 4, !tbaa !115 ; 2 uses
  %i.mp = fcmp olt float %i.mo, %i.ml
  br i1 %i.mp, label %.preheader, label %bb.j

bb.j:                                             ; preds = %_ZN2cv11xfeatures2dL11rectifyABWLINS0_17ABWLParamsFloatThEEEvRKSt6vectorIT_SaIS4_EERS6_RKNS_8KeyPointEfRKNS_5Size_IiEE.exit
  %.val = load i32, ptr %i.lx, align 4
  %i.mq = fadd float %i.mo, %i.ml
  %i.mr = sitofp i32 %.val to float
  %i.ms = fcmp ult float %i.mq, %i.mr
  br i1 %i.ms, label %bb.k, label %.preheader

bb.k:                                             ; preds = %bb.j
  %i.mt = getelementptr inbounds nuw i8, ptr %i.lw, i64 4
  %i.mu = load float, ptr %i.mt, align 4, !tbaa !116 ; 2 uses
  %i.mv = fcmp olt float %i.mu, %i.mn
  br i1 %i.mv, label %.preheader, label %.split

.split:                                           ; preds = %bb.k
  %i.mw = fadd float %i.mn, %i.mu
  %i.mx = sitofp i32 %.val81 to float
  %i.my = fcmp ult float %i.mw, %i.mx
  br i1 %i.my, label %bb.p, label %.preheader

.preheader:                                       ; preds = %_ZN2cv11xfeatures2dL11rectifyABWLINS0_17ABWLParamsFloatThEEEvRKSt6vectorIT_SaIS4_EERS6_RKNS_8KeyPointEfRKNS_5Size_IiEE.exit, %bb.j, %bb.k, %.split
  br i1 %.not.i, label %.loopexit, label %.lr.ph113

.lr.ph113:                                        ; preds = %.preheader, %bb.o
  %i.mz = phi ptr [ %i.rn, %bb.o ], [ %i.df, %.preheader ]
  %.1112 = phi ptr [ %.2, %bb.o ], [ %.0118, %.preheader ] ; 3 uses
  %.171111 = phi i8 [ %.272, %bb.o ], [ %.070117, %.preheader ]
  %.076110 = phi i64 [ %i.rl, %bb.o ], [ 0, %.preheader ] ; 4 uses
  %i.na = load ptr, ptr %2, align 8, !tbaa !29
  %i.nb = getelementptr inbounds nuw [24 x i8], ptr %i.na, i64 %.076110 ; 5 uses
  %i.nc = load ptr, ptr %i.am, align 8, !tbaa !199, !nonnull !55, !align !106 ; 5 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 12
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nc, i64 8
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nb, i64 16
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nb, i64 4
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !190 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nb, i64 12
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nc, i64 4
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !107
  %i.nm = icmp slt i32 %i.nl, 2                   ; 4 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nc, i64 24
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !80 ; 4 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.nc, i64 128
  %i.nq = load i64, ptr %i.np, align 8            ; 4 uses
  %i.nr = load i32, ptr %i.nd, align 4, !tbaa !117 ; 2 uses
  %i.ns = load i32, ptr %i.ne, align 8, !tbaa !118 ; 2 uses
  %i.nt = load i32, ptr %i.nb, align 4, !tbaa !185 ; 2 uses
  %i.nu = load i32, ptr %i.nf, align 4, !tbaa !195 ; 8 uses
  %i.nv = sub nsw i32 %i.nt, %i.nu                ; 3 uses
  %i.nw = icmp slt i32 %i.nv, 0
  %i.nx = add nsw i32 %i.nr, -1                   ; 4 uses
  %.not.i86 = icmp slt i32 %i.nv, %i.nx
  %i.ny = add nsw i32 %i.nr, -2                   ; 2 uses
  %spec.select.i = select i1 %.not.i86, i32 %i.nv, i32 %i.ny
  %.0101.i = select i1 %i.nw, i32 0, i32 %spec.select.i ; 2 uses
  %i.nz = load i32, ptr %i.ng, align 4, !tbaa !187 ; 2 uses
  %i.oa = sub nsw i32 %i.nz, %i.nu                ; 3 uses
  %i.ob = icmp slt i32 %i.oa, 0
  %i.oc = add nsw i32 %i.ns, -1                   ; 4 uses
  %.not113.i = icmp slt i32 %i.oa, %i.oc
  %i.od = add nsw i32 %i.ns, -2                   ; 2 uses
  %spec.select120.i = select i1 %.not113.i, i32 %i.oa, i32 %i.od
  %.0100.i = select i1 %i.ob, i32 0, i32 %spec.select120.i ; 2 uses
  %i.oe = add nsw i32 %i.nu, %i.nt                ; 2 uses
  %i.of = icmp slt i32 %i.oe, 0
  %i.og = add nsw i32 %i.oe, 1
  %spec.select121.i = call i32 @llvm.smin.i32(i32 %i.og, i32 %i.nx)
  %.099.i = select i1 %i.of, i32 1, i32 %spec.select121.i ; 2 uses
  %i.oh = add nsw i32 %i.nz, %i.nu                ; 2 uses
  %i.oi = icmp slt i32 %i.oh, 0
  %i.oj = add nsw i32 %i.oh, 1
  %spec.select122.i = call i32 @llvm.smin.i32(i32 %i.oj, i32 %i.oc)
  %.098.i = select i1 %i.oi, i32 1, i32 %spec.select122.i ; 2 uses
  %i.ok = sub nsw i32 %i.ni, %i.nu                ; 3 uses
  %i.ol = icmp slt i32 %i.ok, 0
  %.not116.i = icmp slt i32 %i.ok, %i.nx
  %spec.select123.i = select i1 %.not116.i, i32 %i.ok, i32 %i.ny
  %.097.i = select i1 %i.ol, i32 0, i32 %spec.select123.i ; 2 uses
  %i.om = load i32, ptr %i.nj, align 4, !tbaa !192 ; 2 uses
  %i.on = sub nsw i32 %i.om, %i.nu                ; 3 uses
  %i.oo = icmp slt i32 %i.on, 0
  %.not117.i = icmp slt i32 %i.on, %i.oc
  %spec.select124.i = select i1 %.not117.i, i32 %i.on, i32 %i.od
  %.096.i = select i1 %i.oo, i32 0, i32 %spec.select124.i ; 2 uses
  %i.op = add nsw i32 %i.ni, %i.nu                ; 2 uses
  %i.oq = icmp slt i32 %i.op, 0
  %i.or = add nsw i32 %i.op, 1
  %spec.select125.i = call i32 @llvm.smin.i32(i32 %i.or, i32 %i.nx)
  %.095.i = select i1 %i.oq, i32 1, i32 %spec.select125.i ; 2 uses
  %i.os = add nsw i32 %i.om, %i.nu                ; 2 uses
  %i.ot = icmp slt i32 %i.os, 0
  %i.ou = add nsw i32 %i.os, 1
  %spec.select126.i = call i32 @llvm.smin.i32(i32 %i.ou, i32 %i.oc)
  %.0.i87 = select i1 %i.ot, i32 1, i32 %spec.select126.i ; 2 uses
  %i.ov = sext i32 %.0100.i to i64
  %i.ow = mul i64 %i.nq, %i.ov
  %.sink.idx.i.i = select i1 %i.nm, i64 0, i64 %i.ow
  %.sink.i.i = getelementptr inbounds nuw i8, ptr %i.no, i64 %.sink.idx.i.i ; 2 uses
  %i.ox = sext i32 %.0101.i to i64                ; 2 uses
  %i.oy = getelementptr inbounds [4 x i8], ptr %.sink.i.i, i64 %i.ox
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !31
  %i.pa = sext i32 %.099.i to i64                 ; 2 uses
  %i.pb = getelementptr inbounds [4 x i8], ptr %.sink.i.i, i64 %i.pa
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !31
  %i.pd = sext i32 %.098.i to i64
  %i.pe = mul i64 %i.nq, %i.pd
  %.sink.idx.i129.i = select i1 %i.nm, i64 0, i64 %i.pe
  %.sink.i130.i = getelementptr inbounds nuw i8, ptr %i.no, i64 %.sink.idx.i129.i ; 2 uses
  %i.pf = getelementptr inbounds [4 x i8], ptr %.sink.i130.i, i64 %i.ox
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !31
  %i.ph = getelementptr inbounds [4 x i8], ptr %.sink.i130.i, i64 %i.pa
  %i.pi = load i32, ptr %i.ph, align 4, !tbaa !31
  %i.pj = add i32 %i.pc, %i.pg
  %i.pk = sub i32 %i.oz, %i.pj
  %i.pl = add i32 %i.pk, %i.pi
  %i.pm = sub nsw i32 %.098.i, %.0100.i
  %i.pn = sub nsw i32 %.099.i, %.0101.i
  %i.po = mul nsw i32 %i.pm, %i.pn
  %i.pp = sext i32 %.096.i to i64
  %i.pq = mul i64 %i.nq, %i.pp
  %.sink.idx.i133.i = select i1 %i.nm, i64 0, i64 %i.pq
  %.sink.i134.i = getelementptr inbounds nuw i8, ptr %i.no, i64 %.sink.idx.i133.i ; 2 uses
  %i.pr = sext i32 %.097.i to i64                 ; 2 uses
  %i.ps = getelementptr inbounds [4 x i8], ptr %.sink.i134.i, i64 %i.pr
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !31
  %i.pu = sext i32 %.095.i to i64                 ; 2 uses
  %i.pv = getelementptr inbounds [4 x i8], ptr %.sink.i134.i, i64 %i.pu
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !31
  %i.px = sext i32 %.0.i87 to i64
  %i.py = mul i64 %i.nq, %i.px
  %.sink.idx.i137.i = select i1 %i.nm, i64 0, i64 %i.py
  %.sink.i138.i = getelementptr inbounds nuw i8, ptr %i.no, i64 %.sink.idx.i137.i ; 2 uses
  %i.pz = getelementptr inbounds [4 x i8], ptr %.sink.i138.i, i64 %i.pr
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !31
  %i.qb = getelementptr inbounds [4 x i8], ptr %.sink.i138.i, i64 %i.pu
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !31
  %i.qd = add i32 %i.pw, %i.qa
  %i.qe = sub i32 %i.pt, %i.qd
  %i.qf = add i32 %i.qe, %i.qc
  %i.qg = insertelement <2 x i32> poison, i32 %i.qf, i64 0
  %i.qh = insertelement <2 x i32> %i.qg, i32 %i.pl, i64 1
  %i.qi = sitofp <2 x i32> %i.qh to <2 x float>
  %i.qj = sub nsw i32 %.0.i87, %.096.i
  %i.qk = sub nsw i32 %.095.i, %.097.i
  %i.ql = mul nsw i32 %i.qj, %i.qk
  %i.qm = insertelement <2 x i32> poison, i32 %i.ql, i64 0
  %i.qn = insertelement <2 x i32> %i.qm, i32 %i.po, i64 1
  %i.qo = sitofp <2 x i32> %i.qn to <2 x float>
  %i.qp = fdiv <2 x float> %i.qi, %i.qo           ; 2 uses
  %shift224 = shufflevector <2 x float> %i.qp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop225 = fsub <2 x float> %shift224, %i.qp
  %i.qq = extractelement <2 x float> %foldExtExtBinop225, i64 0
  %i.qr = trunc i64 %.076110 to i32
  %i.qs = and i32 %i.qr, 7                        ; 2 uses
  %i.qt = xor i32 %i.qs, 7
  %i.qu = getelementptr inbounds nuw [24 x i8], ptr %i.mz, i64 %.076110
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 20
  %i.qw = load float, ptr %i.qv, align 4, !tbaa !200
  %i.qx = fcmp ole float %i.qq, %i.qw
  %i.qy = zext i1 %i.qx to i32
  %i.qz = shl nuw nsw i32 %i.qy, %i.qt
  %i.ra = trunc nuw i32 %i.qz to i8
  %i.rb = or i8 %.171111, %i.ra                   ; 2 uses
  %i.rc = icmp eq i32 %i.qs, 7
  br i1 %i.rc, label %bb.l, label %bb.o

bb.l:                                             ; preds = %.lr.ph113
  store i8 %i.rb, ptr %.1112, align 1, !tbaa !22
  %i.rd = getelementptr inbounds nuw i8, ptr %.1112, i64 1
  br label %bb.o

bb.m:                                             ; preds = %bb.c
  %i.re = landingpad { ptr, i32 }
          cleanup
  %i.rf = load ptr, ptr %2, align 8, !tbaa !29    ; 3 uses
  %.not.i.i.i88 = icmp eq ptr %i.rf, null
  br i1 %.not.i.i.i88, label %_ZNSt6vectorIN2cv11xfeatures2d17ABWLParamsFloatThESaIS2_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.rg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !28
  %i.ri = ptrtoint ptr %i.rh to i64
  %i.rj = ptrtoint ptr %i.rf to i64
  %i.rk = sub i64 %i.ri, %i.rj
  call void @_ZdlPvm(ptr noundef nonnull %i.rf, i64 noundef %i.rk) #22
  br label %_ZNSt6vectorIN2cv11xfeatures2d17ABWLParamsFloatThESaIS2_EED2Ev.exit

bb.o:                                             ; preds = %.lr.ph113, %bb.l
  %.272 = phi i8 [ 0, %bb.l ], [ %i.rb, %.lr.ph113 ] ; 2 uses
  %.2 = phi ptr [ %i.rd, %bb.l ], [ %.1112, %.lr.ph113 ] ; 2 uses
  %i.rl = add nuw i64 %.076110, 1                 ; 2 uses
  %i.rm = load ptr, ptr %i.c, align 8, !tbaa !35  ; 2 uses
  %i.rn = load ptr, ptr %i.b, align 8, !tbaa !29  ; 3 uses
  %i.ro = ptrtoint ptr %i.rm to i64
  %i.rp = ptrtoint ptr %i.rn to i64
  %i.rq = sub i64 %i.ro, %i.rp
  %i.rr = sdiv exact i64 %i.rq, 24
  %i.rs = icmp ult i64 %i.rl, %i.rr
  br i1 %i.rs, label %.lr.ph113, label %.loopexit, !llvm.loop !177

bb.p:                                             ; preds = %.split
  br i1 %.not.i, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.p
  %i.rt = load ptr, ptr %2, align 8, !tbaa !29
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.r
  %i.ru = phi ptr [ %i.vd, %bb.r ], [ %i.df, %.lr.ph.preheader ] ; 2 uses
  %i.rv = phi ptr [ %i.ve, %bb.r ], [ %i.de, %.lr.ph.preheader ]
  %.3108 = phi ptr [ %.4, %bb.r ], [ %.0118, %.lr.ph.preheader ] ; 3 uses
  %.373107 = phi i8 [ %.474, %bb.r ], [ %.070117, %.lr.ph.preheader ]
  %.177106 = phi i64 [ %i.vf, %bb.r ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.079105 = phi ptr [ %i.va, %bb.r ], [ %i.rt, %.lr.ph.preheader ] ; 6 uses
  %i.rw = trunc i64 %.177106 to i32
  %i.rx = and i32 %i.rw, 7                        ; 2 uses
  %i.ry = xor i32 %i.rx, 7
  %i.rz = load i32, ptr %.079105, align 4, !tbaa !185 ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %.079105, i64 16
  %i.sb = load i32, ptr %i.sa, align 4, !tbaa !195 ; 6 uses
  %i.sc = sub nsw i32 %i.rz, %i.sb                ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %.079105, i64 4
  %i.se = load i32, ptr %i.sd, align 4, !tbaa !187 ; 2 uses
  %i.sf = sub nsw i32 %i.se, %i.sb
  %i.sg = load ptr, ptr %i.am, align 8, !tbaa !199, !nonnull !55, !align !106
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 12
  %i.si = load i32, ptr %i.sh, align 4, !tbaa !117 ; 4 uses
  %i.sj = mul nsw i32 %i.si, %i.sf                ; 2 uses
  %i.sk = add i32 %i.sb, 1                        ; 4 uses
  %i.sl = add i32 %i.sk, %i.rz                    ; 2 uses
  %i.sm = add i32 %i.sk, %i.se
  %i.sn = mul nsw i32 %i.si, %i.sm                ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %.079105, i64 8
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !190 ; 2 uses
  %i.sq = sub nsw i32 %i.sp, %i.sb                ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %.079105, i64 12
  %i.ss = load i32, ptr %i.sr, align 4, !tbaa !192 ; 2 uses
  %i.st = sub nsw i32 %i.ss, %i.sb
  %i.su = mul nsw i32 %i.st, %i.si                ; 2 uses
  %i.sv = add i32 %i.sk, %i.sp                    ; 2 uses
  %i.sw = add i32 %i.sk, %i.ss
  %i.sx = mul nsw i32 %i.sw, %i.si                ; 2 uses
  %i.sy = shl i32 %i.sb, 1
  %i.sz = or disjoint i32 %i.sy, 1                ; 2 uses
  %i.ta = load ptr, ptr %i.an, align 8, !tbaa !201, !nonnull !55, !align !106
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !82 ; 8 uses
  %i.tc = add nsw i32 %i.sj, %i.sc
  %i.td = sext i32 %i.tc to i64
  %i.te = getelementptr inbounds [4 x i8], ptr %i.tb, i64 %i.td
  %i.tf = load i32, ptr %i.te, align 4, !tbaa !31
  %i.tg = add nsw i32 %i.sn, %i.sl
  %i.th = sext i32 %i.tg to i64
  %i.ti = getelementptr inbounds [4 x i8], ptr %i.tb, i64 %i.th
  %i.tj = load i32, ptr %i.ti, align 4, !tbaa !31
  %i.tk = add nsw i32 %i.sj, %i.sl
  %i.tl = sext i32 %i.tk to i64
  %i.tm = getelementptr inbounds [4 x i8], ptr %i.tb, i64 %i.tl
  %i.tn = load i32, ptr %i.tm, align 4, !tbaa !31
  %i.to = add nsw i32 %i.sn, %i.sc
  %i.tp = sext i32 %i.to to i64
  %i.tq = getelementptr inbounds [4 x i8], ptr %i.tb, i64 %i.tp
  %i.tr = load i32, ptr %i.tq, align 4, !tbaa !31
  %i.ts = add nsw i32 %i.su, %i.sq
  %i.tt = sext i32 %i.ts to i64
  %i.tu = getelementptr inbounds [4 x i8], ptr %i.tb, i64 %i.tt
  %i.tv = load i32, ptr %i.tu, align 4, !tbaa !31
  %i.tw = add nsw i32 %i.sx, %i.sv
  %i.tx = sext i32 %i.tw to i64
  %i.ty = getelementptr inbounds [4 x i8], ptr %i.tb, i64 %i.tx
  %i.tz = load i32, ptr %i.ty, align 4, !tbaa !31
  %i.ua = add nsw i32 %i.su, %i.sv
  %i.ub = sext i32 %i.ua to i64
  %i.uc = getelementptr inbounds [4 x i8], ptr %i.tb, i64 %i.ub
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !31
  %i.ue = add nsw i32 %i.sx, %i.sq
  %i.uf = sext i32 %i.ue to i64
  %i.ug = getelementptr inbounds [4 x i8], ptr %i.tb, i64 %i.uf
  %i.uh = load i32, ptr %i.ug, align 4, !tbaa !31
  %.neg92 = add i32 %i.tj, %i.tf
  %i.ui = add i32 %i.tn, %i.tr
  %i.uj = add i32 %i.ui, %i.tv
  %i.uk = add i32 %i.uj, %i.tz
  %i.ul = sub i32 %.neg92, %i.uk
  %i.um = add nsw i32 %i.ul, %i.ud
  %i.un = add nsw i32 %i.um, %i.uh
  %i.uo = sitofp i32 %i.un to float
  %i.up = getelementptr inbounds nuw [24 x i8], ptr %i.ru, i64 %.177106
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 20
  %i.ur = load float, ptr %i.uq, align 4, !tbaa !200
  %i.us = mul nsw i32 %i.sz, %i.sz
  %i.ut = uitofp nneg i32 %i.us to float
  %i.uu = fmul float %i.ur, %i.ut
  %i.uv = fcmp oge float %i.uu, %i.uo
  %i.uw = zext i1 %i.uv to i32
  %i.ux = shl nuw nsw i32 %i.uw, %i.ry
  %i.uy = trunc nuw i32 %i.ux to i8
  %i.uz = or i8 %.373107, %i.uy                   ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %.079105, i64 24
  %i.vb = icmp eq i32 %i.rx, 7
  br i1 %i.vb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph
  store i8 %i.uz, ptr %.3108, align 1, !tbaa !22
  %i.vc = getelementptr inbounds nuw i8, ptr %.3108, i64 1
  %.pre125 = load ptr, ptr %i.c, align 8, !tbaa !35
  %.pre126 = load ptr, ptr %i.b, align 8, !tbaa !29
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %bb.q
  %i.vd = phi ptr [ %.pre126, %bb.q ], [ %i.ru, %.lr.ph ] ; 3 uses
  %i.ve = phi ptr [ %.pre125, %bb.q ], [ %i.rv, %.lr.ph ] ; 3 uses
  %.474 = phi i8 [ 0, %bb.q ], [ %i.uz, %.lr.ph ] ; 2 uses
  %.4 = phi ptr [ %i.vc, %bb.q ], [ %.3108, %.lr.ph ] ; 2 uses
  %i.vf = add nuw i64 %.177106, 1                 ; 2 uses
  %i.vg = ptrtoint ptr %i.ve to i64
  %i.vh = ptrtoint ptr %i.vd to i64
  %i.vi = sub i64 %i.vg, %i.vh
  %i.vj = sdiv exact i64 %i.vi, 24
  %i.vk = icmp ult i64 %i.vf, %i.vj
  br i1 %i.vk, label %.lr.ph, label %.loopexit, !llvm.loop !178

.loopexit:                                        ; preds = %bb.r, %bb.o, %bb.p, %.preheader
  %i.vl = phi ptr [ %i.rn, %bb.o ], [ %i.de, %.preheader ], [ %i.de, %bb.p ], [ %i.vd, %bb.r ]
  %i.vm = phi ptr [ %i.rm, %bb.o ], [ %i.de, %.preheader ], [ %i.de, %bb.p ], [ %i.ve, %bb.r ]
  %.575 = phi i8 [ %.272, %bb.o ], [ %.070117, %.preheader ], [ %.070117, %bb.p ], [ %.474, %bb.r ]
  %.5 = phi ptr [ %.2, %bb.o ], [ %.0118, %.preheader ], [ %.0118, %bb.p ], [ %.4, %bb.r ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.vn = load i32, ptr %i.t, align 4, !tbaa !85
  %i.vo = sext i32 %i.vn to i64
  %i.vp = icmp slt i64 %indvars.iv.next, %i.vo
  br i1 %i.vp, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !179

._crit_edge.loopexit:                             ; preds = %.loopexit
  %.pre127 = load ptr, ptr %2, align 8, !tbaa !29
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.loopexit104.a
  %i.vq = phi ptr [ %.pre127, %._crit_edge.loopexit ], [ %i.q, %.loopexit104.a ] ; 3 uses
  %.not.i.i.i89 = icmp eq ptr %i.vq, null
  br i1 %.not.i.i.i89, label %_ZNSt6vectorIN2cv11xfeatures2d17ABWLParamsFloatThESaIS2_EED2Ev.exit90, label %bb.s

bb.s:                                             ; preds = %._crit_edge
  %i.vr = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !28
  %i.vt = ptrtoint ptr %i.vs to i64
  %i.vu = ptrtoint ptr %i.vq to i64
  %i.vv = sub i64 %i.vt, %i.vu
  call void @_ZdlPvm(ptr noundef nonnull %i.vq, i64 noundef %i.vv) #22
  br label %_ZNSt6vectorIN2cv11xfeatures2d17ABWLParamsFloatThESaIS2_EED2Ev.exit90

_ZNSt6vectorIN2cv11xfeatures2d17ABWLParamsFloatThESaIS2_EED2Ev.exit90: ; preds = %._crit_edge, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void

_ZNSt6vectorIN2cv11xfeatures2d17ABWLParamsFloatThESaIS2_EED2Ev.exit: ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %i.re
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #16

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2cv11xfeatures2d17ABWLParamsFloatThESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !29     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 24                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 384307168202282325, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPN2cv11xfeatures2d17ABWLParamsFloatThEmS2_ET_S4_T0_RSaIT1_E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.idx.i.i.i.i.i = mul nuw nsw i64 %i.q, 24
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.d
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i.i ], [ %i.p, %bb.d ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.06.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(24) %i.b, i64 24, i1 false), !tbaa.struct !34
  %i.t = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.t, %i.s
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt27__uninitialized_default_n_aIPN2cv11xfeatures2d17ABWLParamsFloatThEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !0

_ZSt27__uninitialized_default_n_aIPN2cv11xfeatures2d17ABWLParamsFloatThEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.c
  %.0.i.i.i = phi ptr [ %i.p, %bb.c ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !35
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.u = icmp ult i64 %i.n, %1
  br i1 %i.u, label %bb.f, label %_ZNKSt6vectorIN2cv11xfeatures2d17ABWLParamsFloatThESaIS2_EE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #23
  unreachable

_ZNKSt6vectorIN2cv11xfeatures2d17ABWLParamsFloatThESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.v = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.v, i64 384307168202282325) ; 2 uses
  %i.x = mul nuw nsw i64 %i.w, 24
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #21 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.f ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  %i.aa = add nsw i64 %1, -1                      ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_ZSt27__uninitialized_default_n_aIPN2cv11xfeatures2d17ABWLParamsFloatThEmS2_ET_S4_T0_RSaIT1_E.exit35, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIN2cv11xfeatures2d17ABWLParamsFloatThESaIS2_EE12_M_check_lenEmPKc.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  %.idx.i.i.i.i.i30 = mul nuw nsw i64 %i.aa, 24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx.i.i.i.i.i30
  br label %.lr.ph.i.i.i.i.i.i.i31

.lr.ph.i.i.i.i.i.i.i31:                           ; preds = %.lr.ph.i.i.i.i.i.i.i31, %bb.g
  %.06.i.i.i.i.i.i.i32 = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i.i31 ], [ %i.ac, %bb.g ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.06.i.i.i.i.i.i.i32, ptr noundef nonnull align 4 dereferenceable(24) %i.z, i64 24, i1 false), !tbaa.struct !34
  %i.ae = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i33 = icmp eq ptr %i.ae, %i.ad
  br i1 %.not.i.i.i.i.i.i.i33, label %_ZSt27__uninitialized_default_n_aIPN2cv11xfeatures2d17ABWLParamsFloatThEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i.i.i.i.i31, !llvm.loop !0

_ZSt27__uninitialized_default_n_aIPN2cv11xfeatures2d17ABWLParamsFloatThEmS2_ET_S4_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i.i.i.i.i31, %_ZNKSt6vectorIN2cv11xfeatures2d17ABWLParamsFloatThESaIS2_EE12_M_check_lenEmPKc.exit
  %i.af = icmp sgt i64 %i.f, 0
  br i1 %i.af, label %bb.h, label %_ZNSt6vectorIN2cv11xfeatures2d17ABWLParamsFloatThESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN2cv11xfeatures2d17ABWLParamsFloatThEmS2_ET_S4_T0_RSaIT1_E.exit35
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.y, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIN2cv11xfeatures2d17ABWLParamsFloatThESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit

_ZNSt6vectorIN2cv11xfeatures2d17ABWLParamsFloatThESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPN2cv11xfeatures2d17ABWLParamsFloatThEmS2_ET_S4_T0_RSaIT1_E.exit35, %bb.h
  %.not.i37 = icmp eq ptr %i.c, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseIN2cv11xfeatures2d17ABWLParamsFloatThESaIS2_EE13_M_deallocateEPS2_m.exit38, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN2cv11xfeatures2d17ABWLParamsFloatThESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.ag = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.ah, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ai) #22
  br label %_ZNSt12_Vector_baseIN2cv11xfeatures2d17ABWLParamsFloatThESaIS2_EE13_M_deallocateEPS2_m.exit38

_ZNSt12_Vector_baseIN2cv11xfeatures2d17ABWLParamsFloatThESaIS2_EE13_M_deallocateEPS2_m.exit38: ; preds = %_ZNSt6vectorIN2cv11xfeatures2d17ABWLParamsFloatThESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.i
  store ptr %i.y, ptr %0, align 8, !tbaa !29
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %1
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !35
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %i.w
  store ptr %i.ak, ptr %i.h, align 8, !tbaa !28
  br label %bb.j

bb.j:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN2cv11xfeatures2d17ABWLParamsFloatThEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN2cv11xfeatures2d17ABWLParamsFloatThESaIS2_EE13_M_deallocateEPS2_m.exit38, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv11xfeatures2d11BEBLID_ImplINS1_10ABWLParamsEEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv11xfeatures2d11BEBLID_ImplINS1_10ABWLParamsEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN2cv11xfeatures2d11BEBLID_ImplINS1_10ABWLParamsEEEEvPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #22
  br label %_ZSt8_DestroyIN2cv11xfeatures2d11BEBLID_ImplINS1_10ABWLParamsEEEEvPT_.exit

_ZSt8_DestroyIN2cv11xfeatures2d11BEBLID_ImplINS1_10ABWLParamsEEEEvPT_.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN2cv9Feature2DD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(48) %i.h) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv11xfeatures2d11BEBLID_ImplINS1_10ABWLParamsEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv11xfeatures2d11BEBLID_ImplINS2_10ABWLParamsEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv11xfeatures2d11BEBLID_ImplINS1_10ABWLParamsEEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !59   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !22
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #20
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv11xfeatures2d11BEBLID_ImplINS0_10ABWLParamsEED2Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv11xfeatures2d10ABWLParamsESaIS2_EED2Ev.exit, label %bb.b
end_hunk_0
begin_hunk_1_@_ZN2cv11xfeatures2d11BEBLID_ImplINS0_10ABWLParamsEE7computeERKNS_11_InputArrayERSt6vectorINS_8KeyPointESaIS8_EERKNS_12_OutputArrayE:bb.a

bb.aj:                                            ; preds = %bb.ai, %bb.e
  %.pn34 = phi { ptr, i32 } [ %i.f, %bb.e ], [ %.pn31.pn, %bb.ai ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  resume { ptr, i32 } %.pn34
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK2cv11xfeatures2d11BEBLID_ImplINS0_10ABWLParamsEE14descriptorSizeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 24
  %i.i = lshr i64 %i.h, 3
  %i.j = trunc i64 %i.i to i32
  ret i32 %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK2cv11xfeatures2d11BEBLID_ImplINS0_10ABWLParamsEE14descriptorTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK2cv11xfeatures2d11BEBLID_ImplINS0_10ABWLParamsEE11defaultNormEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i32 6
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv11xfeatures2d11BEBLID_ImplINS0_10ABWLParamsEE14setScaleFactorEf(ptr noundef nonnull align 8 dereferenceable(48) %0, float noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %1, ptr %i.a, align 8, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef float @_ZNK2cv11xfeatures2d11BEBLID_ImplINS0_10ABWLParamsEE14getScaleFactorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load float, ptr %i.a, align 8, !tbaa !54
  ret float %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv11xfeatures2d11BEBLID_ImplINS0_10ABWLParamsEE25computeBoxDiffsDescriptorERKNS_3MatERKSt6vectorINS_8KeyPointESaIS8_EERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(208) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt8functionIFvRKN2cv5RangeEEEC2IZNS0_11xfeatures2d11BEBLID_ImplINS7_10ABWLParamsEE25computeBoxDiffsDescriptorERKNS0_3MatERKSt6vectorINS0_8KeyPointESaISF_EERSB_EUlS3_E_vEEOT_.exit:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %4 = alloca %"class.cv::Size_", align 8         ; 5 uses
  %5 = alloca %"class.cv::Range", align 4         ; 6 uses
  %6 = alloca %"class.std::function", align 8     ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !80
  store ptr %i.c, ptr %i.a, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load <2 x i32>, ptr %i.d, align 8, !tbaa !31
  %i.f = add nsw <2 x i32> %i.e, splat (i32 -1)
  %i.g = shufflevector <2 x i32> %i.f, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.g, ptr %4, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !78
  %i.j = load ptr, ptr %2, align 8, !tbaa !79
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = sdiv exact i64 %i.m, 28
  %i.o = trunc i64 %i.n to i32
  store i32 0, ptr %5, align 4, !tbaa !84
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %i.o, ptr %i.p, align 4, !tbaa !85
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.r, align 8
  %i.s = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #21 ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %0, ptr %i.s, align 16, !tbaa !120
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %3, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !89
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %2, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !91
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %4, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !93
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr %1, ptr %.sroa.8.0..sroa_idx, align 16, !tbaa !89
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store ptr %i.a, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !96
  store ptr %i.s, ptr %6, align 8, !tbaa !97
  store ptr @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_11xfeatures2d11BEBLID_ImplINS5_10ABWLParamsEE25computeBoxDiffsDescriptorERKNS0_3MatERKSt6vectorINS0_8KeyPointESaISD_EERS9_EUlS3_E_E9_M_invokeERKSt9_Any_dataS3_, ptr %i.t, align 8, !tbaa !100
  store ptr @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_11xfeatures2d11BEBLID_ImplINS5_10ABWLParamsEE25computeBoxDiffsDescriptorERKNS0_3MatERKSt6vectorINS0_8KeyPointESaISD_EERS9_EUlS3_E_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation, ptr %i.q, align 8, !tbaa !101
  invoke fastcc void @_ZN2cvL13parallel_for_ERKNS_5RangeESt8functionIFvS2_EEd(ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef align 8 %6)
          to label %bb.a unwind label %bb.d

bb.a:                                             ; preds = %_ZNSt8functionIFvRKN2cv5RangeEEEC2IZNS0_11xfeatures2d11BEBLID_ImplINS7_10ABWLParamsEE25computeBoxDiffsDescriptorERKNS0_3MatERKSt6vectorINS0_8KeyPointESaISF_EERSB_EUlS3_E_vEEOT_.exit
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !101  ; 2 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = invoke noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void

bb.d:                                             ; preds = %_ZNSt8functionIFvRKN2cv5RangeEEEC2IZNS0_11xfeatures2d11BEBLID_ImplINS7_10ABWLParamsEE25computeBoxDiffsDescriptorERKNS0_3MatERKSt6vectorINS0_8KeyPointESaISF_EERSB_EUlS3_E_vEEOT_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !101  ; 2 uses
  %.not.i9 = icmp eq ptr %i.z, null
  br i1 %.not.i9, label %_ZNSt14_Function_baseD2Ev.exit10, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = invoke noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit10 unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #24
  unreachable

_ZNSt14_Function_baseD2Ev.exit10:                 ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_11xfeatures2d11BEBLID_ImplINS5_10ABWLParamsEE25computeBoxDiffsDescriptorERKNS0_3MatERKSt6vectorINS0_8KeyPointESaISD_EERS9_EUlS3_E_E9_M_invokeERKSt9_Any_dataS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !97
  tail call void @_ZZN2cv11xfeatures2d11BEBLID_ImplINS0_10ABWLParamsEE25computeBoxDiffsDescriptorERKNS_3MatERKSt6vectorINS_8KeyPointESaIS8_EERS4_ENKUlRKNS_5RangeEE_clESG_(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 4 dereferenceable(8) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_11xfeatures2d11BEBLID_ImplINS5_10ABWLParamsEE25computeBoxDiffsDescriptorERKNS0_3MatERKSt6vectorINS0_8KeyPointESaISD_EERS9_EUlS3_E_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN2cv11xfeatures2d11BEBLID_ImplINS2_10ABWLParamsEE25computeBoxDiffsDescriptorERKNS1_3MatERKSt6vectorINS1_8KeyPointESaISA_EERS6_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN2cv11xfeatures2d11BEBLID_ImplINS0_10ABWLParamsEE25computeBoxDiffsDescriptorERKNS_3MatERKSt6vectorINS_8KeyPointESaIS8_EERS4_EUlRKNS_5RangeEE_, ptr %0, align 8, !tbaa !104
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv11xfeatures2d11BEBLID_ImplINS2_10ABWLParamsEE25computeBoxDiffsDescriptorERKNS1_3MatERKSt6vectorINS1_8KeyPointESaISA_EERS6_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !97
  store ptr %i.a, ptr %0, align 8, !tbaa !97
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv11xfeatures2d11BEBLID_ImplINS2_10ABWLParamsEE25computeBoxDiffsDescriptorERKNS1_3MatERKSt6vectorINS1_8KeyPointESaISA_EERS6_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !97
  %i.c = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #21 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false), !tbaa.struct !208
  store ptr %i.c, ptr %0, align 8, !tbaa !97
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv11xfeatures2d11BEBLID_ImplINS2_10ABWLParamsEE25computeBoxDiffsDescriptorERKNS1_3MatERKSt6vectorINS1_8KeyPointESaISA_EERS6_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !97     ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerIZN2cv11xfeatures2d11BEBLID_ImplINS2_10ABWLParamsEE25computeBoxDiffsDescriptorERKNS1_3MatERKSt6vectorINS1_8KeyPointESaISA_EERS6_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 48) #22
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv11xfeatures2d11BEBLID_ImplINS2_10ABWLParamsEE25computeBoxDiffsDescriptorERKNS1_3MatERKSt6vectorINS1_8KeyPointESaISA_EERS6_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN2cv11xfeatures2d11BEBLID_ImplINS2_10ABWLParamsEE25computeBoxDiffsDescriptorERKNS1_3MatERKSt6vectorINS1_8KeyPointESaISA_EERS6_EUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN2cv11xfeatures2d11BEBLID_ImplINS0_10ABWLParamsEE25computeBoxDiffsDescriptorERKNS_3MatERKSt6vectorINS_8KeyPointESaIS8_EERS4_ENKUlRKNS_5RangeEE_clESG_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %sincos.sin.i = alloca double, align 8          ; 4 uses
  %sincos.cos.i = alloca double, align 8          ; 4 uses
  %2 = alloca %"class.std::vector.11", align 8    ; 16 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !226    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !41   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 4 uses
  %i.i = sdiv exact i64 %i.h, 24
  %i.j = icmp ugt i64 %i.i, 384307168202282325
  br i1 %i.j, label %.noexc, label %_ZNSt6vectorIN2cv11xfeatures2d10ABWLParamsESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #23
  unreachable

_ZNSt6vectorIN2cv11xfeatures2d10ABWLParamsESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN2cv11xfeatures2d10ABWLParamsESaIS2_EEC2EmRKS3_.exit.thread.i, label %.noexc84

_ZNSt12_Vector_baseIN2cv11xfeatures2d10ABWLParamsESaIS2_EEC2EmRKS3_.exit.thread.i: ; preds = %_ZNSt6vectorIN2cv11xfeatures2d10ABWLParamsESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %.loopexit104.a

.noexc84:                                         ; preds = %_ZNSt6vectorIN2cv11xfeatures2d10ABWLParamsESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #21 ; 7 uses
  store ptr %i.k, ptr %2, align 8, !tbaa !41
  %i.l = getelementptr i8, ptr %i.k, i64 %i.h     ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.o = icmp eq i64 %i.h, 24
  br i1 %i.o, label %.loopexit104.a, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.noexc84, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.n, %.noexc84 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.06.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(24) %i.k, i64 24, i1 false), !tbaa.struct !45
  %i.p = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.p, %i.l
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.loopexit104.a, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !1

.loopexit104.a:                                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseIN2cv11xfeatures2d10ABWLParamsESaIS2_EEC2EmRKS3_.exit.thread.i, %.noexc84
  %i.q = phi ptr [ null, %_ZNSt12_Vector_baseIN2cv11xfeatures2d10ABWLParamsESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %i.k, %.noexc84 ], [ %i.k, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %.0.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN2cv11xfeatures2d10ABWLParamsESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %i.n, %.noexc84 ], [ %i.l, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store ptr %.0.i.i.i.i.i, ptr %i.r, align 8, !tbaa !40
  %i.s = load i32, ptr %1, align 4, !tbaa !84     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !85
  %i.v = icmp slt i32 %i.s, %i.u
  br i1 %i.v, label %.lr.ph119, label %._crit_edge

.lr.ph119:                                        ; preds = %.loopexit104.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !227, !nonnull !55, !align !106 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !80
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !107
  %i.ac = icmp slt i32 %i.ab, 2
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 128
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = sext i32 %i.s to i64                    ; 2 uses
  %i.ag = mul i64 %i.ae, %i.af
  %.sink.idx.i = select i1 %i.ac, i64 0, i64 %i.ag
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.z, i64 %.sink.idx.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 36 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !40
  %.pre122 = load ptr, ptr %i.b, align 8, !tbaa !41
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph119, %.loopexit
  %i.ao = phi ptr [ %.pre122, %.lr.ph119 ], [ %i.vk, %.loopexit ]
  %i.ap = phi ptr [ %.pre, %.lr.ph119 ], [ %i.vl, %.loopexit ]
  %indvars.iv = phi i64 [ %i.af, %.lr.ph119 ], [ %indvars.iv.next, %.loopexit ] ; 3 uses
  %.0118 = phi ptr [ %.sink.i, %.lr.ph119 ], [ %.5, %.loopexit ] ; 4 uses
  %.070117 = phi i8 [ 0, %.lr.ph119 ], [ %.575, %.loopexit ] ; 4 uses
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !228, !nonnull !55, !align !106
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !79
  %i.as = getelementptr inbounds nuw [28 x i8], ptr %i.ar, i64 %indvars.iv ; 4 uses
  %i.at = load float, ptr %i.ai, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %sincos.sin.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %sincos.cos.i)
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.av = load float, ptr %i.au, align 4, !tbaa !110
  %i.aw = fmul float %i.at, %i.av
  %i.ax = load i32, ptr %i.aj, align 4, !tbaa !56
  %i.ay = load i32, ptr %i.ak, align 8, !tbaa !57
  %i.az = add nsw i32 %i.ay, %i.ax
  %i.ba = sitofp i32 %i.az to float
  %i.bb = fmul nnan float %i.ba, 5.000000e-01
  %i.bc = fdiv float %i.aw, %i.bb                 ; 7 uses
  %i.bd = ptrtoint ptr %i.ap to i64
  %i.be = ptrtoint ptr %i.ao to i64
  %i.bf = sub i64 %i.bd, %i.be                    ; 2 uses
  %i.bg = sdiv exact i64 %i.bf, 24                ; 3 uses
  %i.bh = load ptr, ptr %i.r, align 8, !tbaa !40  ; 2 uses
  %i.bi = load ptr, ptr %2, align 8, !tbaa !41    ; 2 uses
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = sdiv exact i64 %i.bl, 24                ; 3 uses
  %i.bn = icmp ugt i64 %i.bg, %i.bm
  br i1 %i.bn, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bo = sub nuw nsw i64 %i.bg, %i.bm
  invoke void @_ZNSt6vectorIN2cv11xfeatures2d10ABWLParamsESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.bo)
          to label %_ZNSt6vectorIN2cv11xfeatures2d10ABWLParamsESaIS2_EE6resizeEm.exit.i unwind label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.bp = icmp ult i64 %i.bg, %i.bm
  br i1 %i.bp, label %bb.e, label %_ZNSt6vectorIN2cv11xfeatures2d10ABWLParamsESaIS2_EE6resizeEm.exit.i

bb.e:                                             ; preds = %bb.d
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bf ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bh, %i.bq
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv11xfeatures2d10ABWLParamsESaIS2_EE6resizeEm.exit.i, label %_ZSt8_DestroyIPN2cv11xfeatures2d10ABWLParamsES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN2cv11xfeatures2d10ABWLParamsES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %bb.e
  store ptr %i.bq, ptr %i.r, align 8, !tbaa !40
  br label %_ZNSt6vectorIN2cv11xfeatures2d10ABWLParamsESaIS2_EE6resizeEm.exit.i

_ZNSt6vectorIN2cv11xfeatures2d10ABWLParamsESaIS2_EE6resizeEm.exit.i: ; preds = %bb.c, %_ZSt8_DestroyIPN2cv11xfeatures2d10ABWLParamsES2_EvT_S4_RSaIT0_E.exit.i.i.i, %bb.e, %bb.d
  %i.br = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  %i.bs = load float, ptr %i.br, align 4, !tbaa !111 ; 3 uses
  %i.bt = fcmp oeq float %i.bs, -1.000000e+00
  br i1 %i.bt, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt6vectorIN2cv11xfeatures2d10ABWLParamsESaIS2_EE6resizeEm.exit.i
  %i.bu = fmul float %i.bc, -5.000000e-01
  %i.bv = load <2 x i32>, ptr %i.aj, align 4, !tbaa !31 ; 2 uses
  %i.bw = sitofp <2 x i32> %i.bv to <2 x float>
  %i.bx = load <2 x float>, ptr %i.as, align 4, !tbaa !33
  %i.by = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.bz = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ca = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bz, <2 x float> %i.bw, <2 x float> %i.bx)
  %i.cb = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bc, i64 0 ; 2 uses
  br label %bb.i

bb.g:                                             ; preds = %_ZNSt6vectorIN2cv11xfeatures2d10ABWLParamsESaIS2_EE6resizeEm.exit.i
  %i.cc = fcmp ult float %i.bs, 0.000000e+00
  br i1 %i.cc, label %.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cd = fpext nnan float %i.bs to double
  %i.ce = fmul nnan double %i.cd, f0x3F91DF46A2529D39
  call void @sincos(double %i.ce, ptr nonnull %sincos.sin.i, ptr nonnull %sincos.cos.i)
  %sin.i = load double, ptr %sincos.sin.i, align 8
  %cos.i = load double, ptr %sincos.cos.i, align 8
  %i.cf = insertelement <2 x double> poison, double %cos.i, i64 0
  %i.cg = insertelement <2 x double> %i.cf, double %sin.i, i64 1
  %i.ch = fptrunc <2 x double> %i.cg to <2 x float>
  br label %.thread.i

.thread.i:                                        ; preds = %bb.h, %bb.g
  %i.ci = phi <2 x float> [ %i.ch, %bb.h ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.g ] ; 3 uses
  %i.cj = fneg float %i.bc
  %i.ck = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.cl = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cm = fmul <2 x float> %i.cl, %i.ci           ; 4 uses
  %i.cn = extractelement <2 x float> %i.cm, i64 0
  %i.co = insertelement <2 x float> %i.cl, float %i.cj, i64 1 ; 2 uses
  %i.cp = fmul <2 x float> %i.co, %i.ci
  %i.cq = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cr = fneg <2 x float> %i.cm
  %i.cs = shufflevector <2 x float> %i.cm, <2 x float> %i.cr, <2 x i32> <i32 1, i32 2>
  %i.ct = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cq, <2 x float> %i.ci, <2 x float> %i.cs)
  %i.cu = load <2 x i32>, ptr %i.aj, align 4, !tbaa !31 ; 2 uses
  %i.cv = sitofp <2 x i32> %i.cu to <2 x float>
  %i.cw = fmul <2 x float> %i.ct, %i.cv
  %i.cx = load <2 x float>, ptr %i.as, align 4, !tbaa !33
  %i.cy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cw, <2 x float> splat (float 5.000000e-01), <2 x float> %i.cx)
  br label %bb.i

bb.i:                                             ; preds = %.thread.i, %bb.f
  %.083.i = phi float [ %i.bc, %bb.f ], [ %i.cn, %.thread.i ] ; 2 uses
  %i.cz = phi <2 x float> [ %i.ca, %bb.f ], [ %i.cy, %.thread.i ] ; 5 uses
  %i.da = phi <2 x float> [ %i.cb, %bb.f ], [ %i.cm, %.thread.i ] ; 4 uses
  %i.db = phi <2 x float> [ %i.cb, %bb.f ], [ %i.cp, %.thread.i ] ; 3 uses
  %i.dc = phi <2 x i32> [ %i.bv, %bb.f ], [ %i.cu, %.thread.i ] ; 2 uses
  %i.dd = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.de = load ptr, ptr %i.c, align 8, !tbaa !40  ; 7 uses
  %i.df = load ptr, ptr %i.b, align 8, !tbaa !41  ; 16 uses
  %.not.i = icmp eq ptr %i.de, %i.df              ; 3 uses
  br i1 %.not.i, label %_ZN2cv11xfeatures2dL11rectifyABWLINS0_10ABWLParamsEEEvRKSt6vectorIT_SaIS4_EERS6_RKNS_8KeyPointEfRKNS_5Size_IiEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = sub i64 %i.dg, %i.dh                    ; 6 uses
  %i.dj = sdiv exact i64 %i.di, 24                ; 4 uses
  %i.dk = load ptr, ptr %2, align 8, !tbaa !41    ; 12 uses
  %min.iters.check = icmp ult i64 %i.dj, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.dl = add i64 %i.di, -20                      ; 2 uses
  %i.dm = getelementptr i8, ptr %i.dk, i64 %i.dl
  %i.dn = getelementptr i8, ptr %i.df, i64 %i.dl
  %i.do = add i64 %i.di, -16                      ; 2 uses
  %i.dp = getelementptr i8, ptr %i.dk, i64 %i.do
  %i.dq = getelementptr i8, ptr %i.df, i64 %i.do
  %i.dr = add i64 %i.di, -12                      ; 2 uses
  %i.ds = getelementptr i8, ptr %i.dk, i64 %i.dr
  %i.dt = getelementptr i8, ptr %i.df, i64 %i.dr
  %i.du = add i64 %i.di, -8                       ; 2 uses
  %i.dv = getelementptr i8, ptr %i.dk, i64 %i.du
  %i.dw = getelementptr i8, ptr %i.df, i64 %i.du
  %i.dx = getelementptr i8, ptr %i.dk, i64 16
  %i.dy = add i64 %i.di, -4                       ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dk, i64 %i.dy
  %i.ea = getelementptr i8, ptr %i.df, i64 16
  %i.eb = getelementptr i8, ptr %i.df, i64 %i.dy
  %i.ec = getelementptr i8, ptr %i.dk, <4 x i64> <i64 0, i64 4, i64 8, i64 12>
  %i.ed = getelementptr i8, ptr %i.df, <4 x i64> <i64 0, i64 4, i64 8, i64 12>
  %i.ee = insertelement <4 x ptr> poison, ptr %i.dn, i64 0
  %i.ef = insertelement <4 x ptr> %i.ee, ptr %i.dq, i64 1
  %i.eg = insertelement <4 x ptr> %i.ef, ptr %i.dt, i64 2
  %i.eh = insertelement <4 x ptr> %i.eg, ptr %i.dw, i64 3
  %i.ei = icmp ult <4 x ptr> %i.ec, %i.eh
  %i.ej = insertelement <4 x ptr> poison, ptr %i.dm, i64 0
  %i.ek = insertelement <4 x ptr> %i.ej, ptr %i.dp, i64 1
  %i.el = insertelement <4 x ptr> %i.ek, ptr %i.ds, i64 2
  %i.em = insertelement <4 x ptr> %i.el, ptr %i.dv, i64 3
  %i.en = icmp ult <4 x ptr> %i.ed, %i.em
  %i.eo = and <4 x i1> %i.ei, %i.en
  %bound0209 = icmp ult ptr %i.dx, %i.eb
  %bound1210 = icmp ult ptr %i.ea, %i.dz
  %found.conflict211 = and i1 %bound0209, %bound1210
  %i.ep = bitcast <4 x i1> %i.eo to i4
  %i.eq = icmp ne i4 %i.ep, 0
  %op.rdx = or i1 %i.eq, %found.conflict211
  br i1 %op.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.er = and i64 %i.dj, 3                        ; 2 uses
  %i.es = icmp eq i64 %i.er, 0
  %i.et = select i1 %i.es, i64 4, i64 %i.er
  %n.vec = sub nsw i64 %i.dj, %i.et               ; 2 uses
  %broadcast.splat = shufflevector <2 x float> %i.db, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splat214 = shufflevector <2 x float> %i.da, <2 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splat216 = shufflevector <2 x float> %i.cz, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splat218 = shufflevector <2 x float> %i.da, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splat220 = shufflevector <2 x float> %i.cz, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splatinsert221 = insertelement <4 x float> poison, float %i.bc, i64 0
  %broadcast.splat222 = shufflevector <4 x float> %broadcast.splatinsert221, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.eu = or disjoint i64 %index, 1               ; 2 uses
  %i.ev = or disjoint i64 %index, 2               ; 2 uses
  %i.ew = or disjoint i64 %index, 3               ; 2 uses
  %i.ex = getelementptr inbounds nuw [24 x i8], ptr %i.df, i64 %index ; 6 uses
  %i.ey = getelementptr inbounds nuw [24 x i8], ptr %i.df, i64 %i.eu ; 6 uses
  %i.ez = getelementptr inbounds nuw [24 x i8], ptr %i.df, i64 %i.ev ; 6 uses
  %i.fa = getelementptr inbounds nuw [24 x i8], ptr %i.df, i64 %i.ew ; 6 uses
  %i.fb = load i32, ptr %i.ex, align 4, !tbaa !230, !alias.scope !231
  %i.fc = load i32, ptr %i.ey, align 4, !tbaa !230, !alias.scope !231
  %i.fd = load i32, ptr %i.ez, align 4, !tbaa !230, !alias.scope !231
  %i.fe = load i32, ptr %i.fa, align 4, !tbaa !230, !alias.scope !231
  %i.ff = insertelement <4 x i32> poison, i32 %i.fb, i64 0
  %i.fg = insertelement <4 x i32> %i.ff, i32 %i.fc, i64 1
  %i.fh = insertelement <4 x i32> %i.fg, i32 %i.fd, i64 2
  %i.fi = insertelement <4 x i32> %i.fh, i32 %i.fe, i64 3
  %i.fj = sitofp <4 x i32> %i.fi to <4 x float>
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fa, i64 4
  %i.fo = load i32, ptr %i.fk, align 4, !tbaa !232, !alias.scope !233
  %i.fp = load i32, ptr %i.fl, align 4, !tbaa !232, !alias.scope !233
  %i.fq = load i32, ptr %i.fm, align 4, !tbaa !232, !alias.scope !233
  %i.fr = load i32, ptr %i.fn, align 4, !tbaa !232, !alias.scope !233
  %i.fs = insertelement <4 x i32> poison, i32 %i.fo, i64 0
  %i.ft = insertelement <4 x i32> %i.fs, i32 %i.fp, i64 1
  %i.fu = insertelement <4 x i32> %i.ft, i32 %i.fq, i64 2
  %i.fv = insertelement <4 x i32> %i.fu, i32 %i.fr, i64 3
  %i.fw = sitofp <4 x i32> %i.fv to <4 x float>   ; 2 uses
  %i.fx = fmul <4 x float> %broadcast.splat, %i.fw
  %i.fy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat214, <4 x float> %i.fj, <4 x float> %i.fx)
  %i.fz = fadd <4 x float> %broadcast.splat216, %i.fy
  %i.ga = fadd <4 x float> %i.fz, splat (float 5.000000e-01)
  %i.gb = fptosi <4 x float> %i.ga to <4 x i32>   ; 4 uses
  %i.gc = getelementptr inbounds nuw [24 x i8], ptr %i.dk, i64 %index ; 3 uses
  %i.gd = getelementptr inbounds nuw [24 x i8], ptr %i.dk, i64 %i.eu ; 3 uses
  %i.ge = getelementptr inbounds nuw [24 x i8], ptr %i.dk, i64 %i.ev ; 3 uses
  %i.gf = getelementptr inbounds nuw [24 x i8], ptr %i.dk, i64 %i.ew ; 3 uses
  %i.gg = load i32, ptr %i.ex, align 4, !tbaa !230, !alias.scope !231
  %i.gh = load i32, ptr %i.ey, align 4, !tbaa !230, !alias.scope !231
  %i.gi = load i32, ptr %i.ez, align 4, !tbaa !230, !alias.scope !231
  %i.gj = load i32, ptr %i.fa, align 4, !tbaa !230, !alias.scope !231
  %i.gk = insertelement <4 x i32> poison, i32 %i.gg, i64 0
  %i.gl = insertelement <4 x i32> %i.gk, i32 %i.gh, i64 1
  %i.gm = insertelement <4 x i32> %i.gl, i32 %i.gi, i64 2
  %i.gn = insertelement <4 x i32> %i.gm, i32 %i.gj, i64 3
  %i.go = sitofp <4 x i32> %i.gn to <4 x float>
  %i.gp = fmul <4 x float> %broadcast.splat214, %i.fw
  %i.gq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat218, <4 x float> %i.go, <4 x float> %i.gp)
  %i.gr = fadd <4 x float> %broadcast.splat220, %i.gq
  %i.gs = fadd <4 x float> %i.gr, splat (float 5.000000e-01)
  %i.gt = fptosi <4 x float> %i.gs to <4 x i32>   ; 4 uses
  %i.gu = shufflevector <4 x i32> %i.gb, <4 x i32> %i.gt, <2 x i32> <i32 0, i32 4>
  store <2 x i32> %i.gu, ptr %i.gc, align 4, !tbaa !31, !alias.scope !234, !noalias !55
  %i.gv = shufflevector <4 x i32> %i.gb, <4 x i32> %i.gt, <2 x i32> <i32 1, i32 5>
  store <2 x i32> %i.gv, ptr %i.gd, align 4, !tbaa !31, !alias.scope !234, !noalias !55
  %i.gw = shufflevector <4 x i32> %i.gb, <4 x i32> %i.gt, <2 x i32> <i32 2, i32 6>
  store <2 x i32> %i.gw, ptr %i.ge, align 4, !tbaa !31, !alias.scope !234, !noalias !55
  %i.gx = shufflevector <4 x i32> %i.gb, <4 x i32> %i.gt, <2 x i32> <i32 3, i32 7>
  store <2 x i32> %i.gx, ptr %i.gf, align 4, !tbaa !31, !alias.scope !234, !noalias !55
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ex, i64 8 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ey, i64 8 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8 ; 2 uses
  %i.hc = load i32, ptr %i.gy, align 4, !tbaa !235, !alias.scope !236
  %i.hd = load i32, ptr %i.gz, align 4, !tbaa !235, !alias.scope !236
  %i.he = load i32, ptr %i.ha, align 4, !tbaa !235, !alias.scope !236
  %i.hf = load i32, ptr %i.hb, align 4, !tbaa !235, !alias.scope !236
  %i.hg = insertelement <4 x i32> poison, i32 %i.hc, i64 0
  %i.hh = insertelement <4 x i32> %i.hg, i32 %i.hd, i64 1
  %i.hi = insertelement <4 x i32> %i.hh, i32 %i.he, i64 2
  %i.hj = insertelement <4 x i32> %i.hi, i32 %i.hf, i64 3
  %i.hk = sitofp <4 x i32> %i.hj to <4 x float>
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ex, i64 12
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ey, i64 12
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ez, i64 12
  %i.ho = getelementptr inbounds nuw i8, ptr %i.fa, i64 12
  %i.hp = load i32, ptr %i.hl, align 4, !tbaa !237, !alias.scope !238
  %i.hq = load i32, ptr %i.hm, align 4, !tbaa !237, !alias.scope !238
  %i.hr = load i32, ptr %i.hn, align 4, !tbaa !237, !alias.scope !238
  %i.hs = load i32, ptr %i.ho, align 4, !tbaa !237, !alias.scope !238
  %i.ht = insertelement <4 x i32> poison, i32 %i.hp, i64 0
  %i.hu = insertelement <4 x i32> %i.ht, i32 %i.hq, i64 1
  %i.hv = insertelement <4 x i32> %i.hu, i32 %i.hr, i64 2
  %i.hw = insertelement <4 x i32> %i.hv, i32 %i.hs, i64 3
  %i.hx = sitofp <4 x i32> %i.hw to <4 x float>   ; 2 uses
  %i.hy = fmul <4 x float> %broadcast.splat, %i.hx
  %i.hz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat214, <4 x float> %i.hk, <4 x float> %i.hy)
  %i.ia = fadd <4 x float> %broadcast.splat216, %i.hz
  %i.ib = fadd <4 x float> %i.ia, splat (float 5.000000e-01)
  %i.ic = fptosi <4 x float> %i.ib to <4 x i32>   ; 4 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.ie = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.if = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.ig = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.ih = load i32, ptr %i.gy, align 4, !tbaa !235, !alias.scope !236
  %i.ii = load i32, ptr %i.gz, align 4, !tbaa !235, !alias.scope !236
  %i.ij = load i32, ptr %i.ha, align 4, !tbaa !235, !alias.scope !236
  %i.ik = load i32, ptr %i.hb, align 4, !tbaa !235, !alias.scope !236
  %i.il = insertelement <4 x i32> poison, i32 %i.ih, i64 0
  %i.im = insertelement <4 x i32> %i.il, i32 %i.ii, i64 1
  %i.in = insertelement <4 x i32> %i.im, i32 %i.ij, i64 2
  %i.io = insertelement <4 x i32> %i.in, i32 %i.ik, i64 3
  %i.ip = sitofp <4 x i32> %i.io to <4 x float>
  %i.iq = fmul <4 x float> %broadcast.splat214, %i.hx
  %i.ir = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat218, <4 x float> %i.ip, <4 x float> %i.iq)
  %i.is = fadd <4 x float> %broadcast.splat220, %i.ir
  %i.it = fadd <4 x float> %i.is, splat (float 5.000000e-01)
  %i.iu = fptosi <4 x float> %i.it to <4 x i32>   ; 4 uses
  %i.iv = shufflevector <4 x i32> %i.ic, <4 x i32> %i.iu, <2 x i32> <i32 0, i32 4>
  store <2 x i32> %i.iv, ptr %i.id, align 4, !tbaa !31, !alias.scope !239, !noalias !55
  %i.iw = shufflevector <4 x i32> %i.ic, <4 x i32> %i.iu, <2 x i32> <i32 1, i32 5>
  store <2 x i32> %i.iw, ptr %i.ie, align 4, !tbaa !31, !alias.scope !239, !noalias !55
  %i.ix = shufflevector <4 x i32> %i.ic, <4 x i32> %i.iu, <2 x i32> <i32 2, i32 6>
  store <2 x i32> %i.ix, ptr %i.if, align 4, !tbaa !31, !alias.scope !239, !noalias !55
  %i.iy = shufflevector <4 x i32> %i.ic, <4 x i32> %i.iu, <2 x i32> <i32 3, i32 7>
  store <2 x i32> %i.iy, ptr %i.ig, align 4, !tbaa !31, !alias.scope !239, !noalias !55
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.jc = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.jd = load i32, ptr %i.iz, align 4, !tbaa !240, !alias.scope !241
  %i.je = load i32, ptr %i.ja, align 4, !tbaa !240, !alias.scope !241
  %i.jf = load i32, ptr %i.jb, align 4, !tbaa !240, !alias.scope !241
  %i.jg = load i32, ptr %i.jc, align 4, !tbaa !240, !alias.scope !241
  %i.jh = insertelement <4 x i32> poison, i32 %i.jd, i64 0
  %i.ji = insertelement <4 x i32> %i.jh, i32 %i.je, i64 1
  %i.jj = insertelement <4 x i32> %i.ji, i32 %i.jf, i64 2
  %i.jk = insertelement <4 x i32> %i.jj, i32 %i.jg, i64 3
  %i.jl = sitofp <4 x i32> %i.jk to <4 x float>
  %i.jm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat222, <4 x float> %i.jl, <4 x float> splat (float 5.000000e-01))
  %i.jn = fptosi <4 x float> %i.jm to <4 x i32>   ; 4 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.jp = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.jr = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.js = extractelement <4 x i32> %i.jn, i64 0
  store i32 %i.js, ptr %i.jo, align 4, !tbaa !240, !alias.scope !242, !noalias !241
  %i.jt = extractelement <4 x i32> %i.jn, i64 1
  store i32 %i.jt, ptr %i.jp, align 4, !tbaa !240, !alias.scope !242, !noalias !241
  %i.ju = extractelement <4 x i32> %i.jn, i64 2
  store i32 %i.ju, ptr %i.jq, align 4, !tbaa !240, !alias.scope !242, !noalias !241
  %i.jv = extractelement <4 x i32> %i.jn, i64 3
  store i32 %i.jv, ptr %i.jr, align 4, !tbaa !240, !alias.scope !242, !noalias !241
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jw = icmp eq i64 %index.next, %n.vec
  br i1 %i.jw, label %scalar.ph.preheader, label %vector.body, !llvm.loop !220

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph.i
  %.090.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %vector.body ]
  %i.jx = extractelement <2 x float> %i.cz, i64 0
  %i.jy = insertelement <2 x float> %i.db, float %.083.i, i64 0
  %i.jz = extractelement <2 x float> %i.da, i64 1
  %i.ka = extractelement <2 x float> %i.cz, i64 1
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.090.i = phi i64 [ %i.lt, %scalar.ph ], [ %.090.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.kb = getelementptr inbounds nuw [24 x i8], ptr %i.df, i64 %.090.i ; 6 uses
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !230
  %i.kd = sitofp i32 %i.kc to float
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kb, i64 4
  %i.kf = getelementptr inbounds nuw [24 x i8], ptr %i.dk, i64 %.090.i ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 4
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kb, i64 8 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kb, i64 12
  %i.kj = load i32, ptr %i.ke, align 4, !tbaa !232
  %i.kk = load i32, ptr %i.ki, align 4, !tbaa !237
  %i.kl = insertelement <2 x i32> poison, i32 %i.kk, i64 0
  %i.km = insertelement <2 x i32> %i.kl, i32 %i.kj, i64 1
  %i.kn = sitofp <2 x i32> %i.km to <2 x float>   ; 2 uses
  %i.ko = load i32, ptr %i.kh, align 4, !tbaa !235
  %i.kp = insertelement <2 x i32> poison, i32 %i.ko, i64 0
  %i.kq = fmul <2 x float> %i.dd, %i.kn
  %i.kr = fmul <2 x float> %i.jy, %i.kn           ; 2 uses
  %i.ks = extractelement <2 x float> %i.kr, i64 1
  %i.kt = call float @llvm.fmuladd.f32(float %.083.i, float %i.kd, float %i.ks)
  %i.ku = fadd float %i.jx, %i.kt
  %i.kv = fadd float %i.ku, 5.000000e-01
  %i.kw = fptosi float %i.kv to i32
  store i32 %i.kw, ptr %i.kf, align 4, !tbaa !230
  %i.kx = load i32, ptr %i.kb, align 4, !tbaa !230
  %i.ky = insertelement <2 x i32> %i.kp, i32 %i.kx, i64 1
  %i.kz = sitofp <2 x i32> %i.ky to <2 x float>
  %i.la = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.da, <2 x float> %i.kz, <2 x float> %i.kq)
  %i.lb = fadd <2 x float> %i.cz, %i.la
  %i.lc = fadd <2 x float> %i.lb, splat (float 5.000000e-01)
  %i.ld = fptosi <2 x float> %i.lc to <2 x i32>
  %i.le = shufflevector <2 x i32> %i.ld, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.le, ptr %i.kg, align 4, !tbaa !31
  %i.lf = load i32, ptr %i.kh, align 4, !tbaa !235
  %i.lg = sitofp i32 %i.lf to float
  %i.lh = extractelement <2 x float> %i.kr, i64 0
  %i.li = call float @llvm.fmuladd.f32(float %i.jz, float %i.lg, float %i.lh)
  %i.lj = fadd float %i.ka, %i.li
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kf, i64 12
  %i.ll = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !240
  %i.ln = sitofp i32 %i.lm to float
  %i.lo = fadd float %i.lj, 5.000000e-01
  %i.lp = call float @llvm.fmuladd.f32(float %i.bc, float %i.ln, float 5.000000e-01)
  %i.lq = insertelement <2 x float> poison, float %i.lo, i64 0
  %i.lr = insertelement <2 x float> %i.lq, float %i.lp, i64 1
  %i.ls = fptosi <2 x float> %i.lr to <2 x i32>
  store <2 x i32> %i.ls, ptr %i.lk, align 4, !tbaa !31
  %i.lt = add nuw i64 %.090.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.lt, %i.dj
  br i1 %exitcond.not.i, label %_ZN2cv11xfeatures2dL11rectifyABWLINS0_10ABWLParamsEEEvRKSt6vectorIT_SaIS4_EERS6_RKNS_8KeyPointEfRKNS_5Size_IiEE.exit, label %scalar.ph, !llvm.loop !221

_ZN2cv11xfeatures2dL11rectifyABWLINS0_10ABWLParamsEEEvRKSt6vectorIT_SaIS4_EERS6_RKNS_8KeyPointEfRKNS_5Size_IiEE.exit: ; preds = %scalar.ph, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %sincos.sin.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %sincos.cos.i)
  %i.lu = load ptr, ptr %i.ah, align 8, !tbaa !228, !nonnull !55, !align !106
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !79
  %i.lw = getelementptr inbounds nuw [28 x i8], ptr %i.lv, i64 %indvars.iv ; 3 uses
  %i.lx = load ptr, ptr %i.al, align 8, !tbaa !243, !nonnull !55, !align !114 ; 2 uses
  %i.ly = load float, ptr %i.ai, align 8, !tbaa !54
  %i.lz = getelementptr i8, ptr %i.lx, i64 4
  %.val81 = load i32, ptr %i.lz, align 4
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  %i.mb = load float, ptr %i.ma, align 4, !tbaa !110
  %i.mc = fmul float %i.ly, %i.mb
  %i.md = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.dc)
  %i.me = sitofp i32 %i.md to float
  %i.mf = fdiv float %i.mc, %i.me
  %i.mg = sitofp <2 x i32> %i.dc to <2 x float>
  %i.mh = insertelement <2 x float> poison, float %i.mf, i64 0
  %i.mi = shufflevector <2 x float> %i.mh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mj = fmul <2 x float> %i.mi, %i.mg           ; 2 uses
  %i.mk = extractelement <2 x float> %i.mj, i64 0
  %i.ml = fmul float %i.mk, 1.750000e+00          ; 2 uses
  %i.mm = extractelement <2 x float> %i.mj, i64 1
  %i.mn = fmul float %i.mm, 1.750000e+00          ; 2 uses
  %i.mo = load float, ptr %i.lw, align 4, !tbaa !115 ; 2 uses
  %i.mp = fcmp olt float %i.mo, %i.ml
  br i1 %i.mp, label %.preheader, label %bb.j

bb.j:                                             ; preds = %_ZN2cv11xfeatures2dL11rectifyABWLINS0_10ABWLParamsEEEvRKSt6vectorIT_SaIS4_EERS6_RKNS_8KeyPointEfRKNS_5Size_IiEE.exit
  %.val = load i32, ptr %i.lx, align 4
  %i.mq = fadd float %i.mo, %i.ml
  %i.mr = sitofp i32 %.val to float
  %i.ms = fcmp ult float %i.mq, %i.mr
  br i1 %i.ms, label %bb.k, label %.preheader

bb.k:                                             ; preds = %bb.j
  %i.mt = getelementptr inbounds nuw i8, ptr %i.lw, i64 4
  %i.mu = load float, ptr %i.mt, align 4, !tbaa !116 ; 2 uses
  %i.mv = fcmp olt float %i.mu, %i.mn
  br i1 %i.mv, label %.preheader, label %.split

.split:                                           ; preds = %bb.k
  %i.mw = fadd float %i.mn, %i.mu
  %i.mx = sitofp i32 %.val81 to float
  %i.my = fcmp ult float %i.mw, %i.mx
  br i1 %i.my, label %bb.p, label %.preheader

.preheader:                                       ; preds = %_ZN2cv11xfeatures2dL11rectifyABWLINS0_10ABWLParamsEEEvRKSt6vectorIT_SaIS4_EERS6_RKNS_8KeyPointEfRKNS_5Size_IiEE.exit, %bb.j, %bb.k, %.split
  br i1 %.not.i, label %.loopexit, label %.lr.ph113

.lr.ph113:                                        ; preds = %.preheader, %bb.o
  %i.mz = phi ptr [ %i.ro, %bb.o ], [ %i.df, %.preheader ]
  %.1112 = phi ptr [ %.2, %bb.o ], [ %.0118, %.preheader ] ; 3 uses
  %.171111 = phi i8 [ %.272, %bb.o ], [ %.070117, %.preheader ]
  %.076110 = phi i64 [ %i.rm, %bb.o ], [ 0, %.preheader ] ; 4 uses
  %i.na = load ptr, ptr %2, align 8, !tbaa !41
  %i.nb = getelementptr inbounds nuw [24 x i8], ptr %i.na, i64 %.076110 ; 5 uses
  %i.nc = load ptr, ptr %i.am, align 8, !tbaa !244, !nonnull !55, !align !106 ; 5 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 12
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nc, i64 8
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nb, i64 16
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nb, i64 4
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !235 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nb, i64 12
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nc, i64 4
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !107
  %i.nm = icmp slt i32 %i.nl, 2                   ; 4 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nc, i64 24
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !80 ; 4 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.nc, i64 128
  %i.nq = load i64, ptr %i.np, align 8            ; 4 uses
  %i.nr = load i32, ptr %i.nd, align 4, !tbaa !117 ; 2 uses
  %i.ns = load i32, ptr %i.ne, align 8, !tbaa !118 ; 2 uses
  %i.nt = load i32, ptr %i.nb, align 4, !tbaa !230 ; 2 uses
  %i.nu = load i32, ptr %i.nf, align 4, !tbaa !240 ; 8 uses
  %i.nv = sub nsw i32 %i.nt, %i.nu                ; 3 uses
  %i.nw = icmp slt i32 %i.nv, 0
  %i.nx = add nsw i32 %i.nr, -1                   ; 4 uses
  %.not.i86 = icmp slt i32 %i.nv, %i.nx
  %i.ny = add nsw i32 %i.nr, -2                   ; 2 uses
  %spec.select.i = select i1 %.not.i86, i32 %i.nv, i32 %i.ny
  %.0101.i = select i1 %i.nw, i32 0, i32 %spec.select.i ; 2 uses
  %i.nz = load i32, ptr %i.ng, align 4, !tbaa !232 ; 2 uses
  %i.oa = sub nsw i32 %i.nz, %i.nu                ; 3 uses
  %i.ob = icmp slt i32 %i.oa, 0
  %i.oc = add nsw i32 %i.ns, -1                   ; 4 uses
  %.not113.i = icmp slt i32 %i.oa, %i.oc
  %i.od = add nsw i32 %i.ns, -2                   ; 2 uses
  %spec.select120.i = select i1 %.not113.i, i32 %i.oa, i32 %i.od
  %.0100.i = select i1 %i.ob, i32 0, i32 %spec.select120.i ; 2 uses
  %i.oe = add nsw i32 %i.nu, %i.nt                ; 2 uses
  %i.of = icmp slt i32 %i.oe, 0
  %i.og = add nsw i32 %i.oe, 1
  %spec.select121.i = call i32 @llvm.smin.i32(i32 %i.og, i32 %i.nx)
  %.099.i = select i1 %i.of, i32 1, i32 %spec.select121.i ; 2 uses
  %i.oh = add nsw i32 %i.nz, %i.nu                ; 2 uses
  %i.oi = icmp slt i32 %i.oh, 0
  %i.oj = add nsw i32 %i.oh, 1
  %spec.select122.i = call i32 @llvm.smin.i32(i32 %i.oj, i32 %i.oc)
  %.098.i = select i1 %i.oi, i32 1, i32 %spec.select122.i ; 2 uses
  %i.ok = sub nsw i32 %i.ni, %i.nu                ; 3 uses
  %i.ol = icmp slt i32 %i.ok, 0
  %.not116.i = icmp slt i32 %i.ok, %i.nx
  %spec.select123.i = select i1 %.not116.i, i32 %i.ok, i32 %i.ny
  %.097.i = select i1 %i.ol, i32 0, i32 %spec.select123.i ; 2 uses
  %i.om = load i32, ptr %i.nj, align 4, !tbaa !237 ; 2 uses
  %i.on = sub nsw i32 %i.om, %i.nu                ; 3 uses
  %i.oo = icmp slt i32 %i.on, 0
  %.not117.i = icmp slt i32 %i.on, %i.oc
  %spec.select124.i = select i1 %.not117.i, i32 %i.on, i32 %i.od
  %.096.i = select i1 %i.oo, i32 0, i32 %spec.select124.i ; 2 uses
  %i.op = add nsw i32 %i.ni, %i.nu                ; 2 uses
  %i.oq = icmp slt i32 %i.op, 0
  %i.or = add nsw i32 %i.op, 1
  %spec.select125.i = call i32 @llvm.smin.i32(i32 %i.or, i32 %i.nx)
  %.095.i = select i1 %i.oq, i32 1, i32 %spec.select125.i ; 2 uses
  %i.os = add nsw i32 %i.om, %i.nu                ; 2 uses
  %i.ot = icmp slt i32 %i.os, 0
  %i.ou = add nsw i32 %i.os, 1
  %spec.select126.i = call i32 @llvm.smin.i32(i32 %i.ou, i32 %i.oc)
  %.0.i87 = select i1 %i.ot, i32 1, i32 %spec.select126.i ; 2 uses
  %i.ov = sext i32 %.0100.i to i64
  %i.ow = mul i64 %i.nq, %i.ov
  %.sink.idx.i.i = select i1 %i.nm, i64 0, i64 %i.ow
  %.sink.i.i = getelementptr inbounds nuw i8, ptr %i.no, i64 %.sink.idx.i.i ; 2 uses
  %i.ox = sext i32 %.0101.i to i64                ; 2 uses
  %i.oy = getelementptr inbounds [4 x i8], ptr %.sink.i.i, i64 %i.ox
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !31
  %i.pa = sext i32 %.099.i to i64                 ; 2 uses
  %i.pb = getelementptr inbounds [4 x i8], ptr %.sink.i.i, i64 %i.pa
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !31
  %i.pd = sext i32 %.098.i to i64
  %i.pe = mul i64 %i.nq, %i.pd
  %.sink.idx.i129.i = select i1 %i.nm, i64 0, i64 %i.pe
  %.sink.i130.i = getelementptr inbounds nuw i8, ptr %i.no, i64 %.sink.idx.i129.i ; 2 uses
  %i.pf = getelementptr inbounds [4 x i8], ptr %.sink.i130.i, i64 %i.ox
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !31
  %i.ph = getelementptr inbounds [4 x i8], ptr %.sink.i130.i, i64 %i.pa
  %i.pi = load i32, ptr %i.ph, align 4, !tbaa !31
  %i.pj = add i32 %i.pc, %i.pg
  %i.pk = sub i32 %i.oz, %i.pj
  %i.pl = add i32 %i.pk, %i.pi
  %i.pm = sub nsw i32 %.098.i, %.0100.i
  %i.pn = sub nsw i32 %.099.i, %.0101.i
  %i.po = mul nsw i32 %i.pm, %i.pn
  %i.pp = sext i32 %.096.i to i64
  %i.pq = mul i64 %i.nq, %i.pp
  %.sink.idx.i133.i = select i1 %i.nm, i64 0, i64 %i.pq
  %.sink.i134.i = getelementptr inbounds nuw i8, ptr %i.no, i64 %.sink.idx.i133.i ; 2 uses
  %i.pr = sext i32 %.097.i to i64                 ; 2 uses
  %i.ps = getelementptr inbounds [4 x i8], ptr %.sink.i134.i, i64 %i.pr
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !31
  %i.pu = sext i32 %.095.i to i64                 ; 2 uses
  %i.pv = getelementptr inbounds [4 x i8], ptr %.sink.i134.i, i64 %i.pu
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !31
  %i.px = sext i32 %.0.i87 to i64
  %i.py = mul i64 %i.nq, %i.px
  %.sink.idx.i137.i = select i1 %i.nm, i64 0, i64 %i.py
  %.sink.i138.i = getelementptr inbounds nuw i8, ptr %i.no, i64 %.sink.idx.i137.i ; 2 uses
  %i.pz = getelementptr inbounds [4 x i8], ptr %.sink.i138.i, i64 %i.pr
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !31
  %i.qb = getelementptr inbounds [4 x i8], ptr %.sink.i138.i, i64 %i.pu
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !31
  %i.qd = add i32 %i.pw, %i.qa
  %i.qe = sub i32 %i.pt, %i.qd
  %i.qf = add i32 %i.qe, %i.qc
  %i.qg = insertelement <2 x i32> poison, i32 %i.qf, i64 0
  %i.qh = insertelement <2 x i32> %i.qg, i32 %i.pl, i64 1
  %i.qi = sitofp <2 x i32> %i.qh to <2 x float>
  %i.qj = sub nsw i32 %.0.i87, %.096.i
  %i.qk = sub nsw i32 %.095.i, %.097.i
  %i.ql = mul nsw i32 %i.qj, %i.qk
  %i.qm = insertelement <2 x i32> poison, i32 %i.ql, i64 0
  %i.qn = insertelement <2 x i32> %i.qm, i32 %i.po, i64 1
  %i.qo = sitofp <2 x i32> %i.qn to <2 x float>
  %i.qp = fdiv <2 x float> %i.qi, %i.qo           ; 2 uses
  %shift224 = shufflevector <2 x float> %i.qp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop225 = fsub <2 x float> %shift224, %i.qp
  %i.qq = extractelement <2 x float> %foldExtExtBinop225, i64 0
  %i.qr = trunc i64 %.076110 to i32
  %i.qs = and i32 %i.qr, 7                        ; 2 uses
  %i.qt = xor i32 %i.qs, 7
  %i.qu = getelementptr inbounds nuw [24 x i8], ptr %i.mz, i64 %.076110
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 20
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !245
  %i.qx = sitofp i32 %i.qw to float
  %i.qy = fcmp ole float %i.qq, %i.qx
  %i.qz = zext i1 %i.qy to i32
  %i.ra = shl nuw nsw i32 %i.qz, %i.qt
  %i.rb = trunc nuw i32 %i.ra to i8
  %i.rc = or i8 %.171111, %i.rb                   ; 2 uses
  %i.rd = icmp eq i32 %i.qs, 7
  br i1 %i.rd, label %bb.l, label %bb.o

bb.l:                                             ; preds = %.lr.ph113
  store i8 %i.rc, ptr %.1112, align 1, !tbaa !22
  %i.re = getelementptr inbounds nuw i8, ptr %.1112, i64 1
  br label %bb.o

bb.m:                                             ; preds = %bb.c
  %i.rf = landingpad { ptr, i32 }
          cleanup
end_hunk_1
begin_hunk_2_@_ZZN2cv11xfeatures2d11BEBLID_ImplINS0_10ABWLParamsEE25computeBoxDiffsDescriptorERKNS_3MatERKSt6vectorINS_8KeyPointESaIS8_EERS4_ENKUlRKNS_5RangeEE_clESG_:bb.a
  %i.ue = load i32, ptr %i.ud, align 4, !tbaa !31
  %i.uf = add nsw i32 %i.sy, %i.sr
  %i.ug = sext i32 %i.uf to i64
  %i.uh = getelementptr inbounds [4 x i8], ptr %i.tc, i64 %i.ug
  %i.ui = load i32, ptr %i.uh, align 4, !tbaa !31
  %.neg92 = add i32 %i.tk, %i.tg
  %i.uj = add i32 %i.to, %i.ts
  %i.uk = add i32 %i.uj, %i.tw
  %i.ul = add i32 %i.uk, %i.ua
  %i.um = sub i32 %.neg92, %i.ul
  %i.un = add nsw i32 %i.um, %i.ue
  %i.uo = add nsw i32 %i.un, %i.ui
  %i.up = getelementptr inbounds nuw [24 x i8], ptr %i.rv, i64 %.177106
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 20
  %i.ur = load i32, ptr %i.uq, align 4, !tbaa !245
  %i.us = mul nsw i32 %i.ta, %i.ta
  %i.ut = mul nsw i32 %i.us, %i.ur
  %i.uu = icmp sle i32 %i.uo, %i.ut
  %i.uv = zext i1 %i.uu to i32
  %i.uw = shl nuw nsw i32 %i.uv, %i.rz
  %i.ux = trunc nuw i32 %i.uw to i8
  %i.uy = or i8 %.373107, %i.ux                   ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %.079105, i64 24
  %i.va = icmp eq i32 %i.ry, 7
  br i1 %i.va, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph
  store i8 %i.uy, ptr %.3108, align 1, !tbaa !22
  %i.vb = getelementptr inbounds nuw i8, ptr %.3108, i64 1
  %.pre125 = load ptr, ptr %i.c, align 8, !tbaa !40
  %.pre126 = load ptr, ptr %i.b, align 8, !tbaa !41
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %bb.q
  %i.vc = phi ptr [ %.pre126, %bb.q ], [ %i.rv, %.lr.ph ] ; 3 uses
  %i.vd = phi ptr [ %.pre125, %bb.q ], [ %i.rw, %.lr.ph ] ; 3 uses
  %.474 = phi i8 [ 0, %bb.q ], [ %i.uy, %.lr.ph ] ; 2 uses
  %.4 = phi ptr [ %i.vb, %bb.q ], [ %.3108, %.lr.ph ] ; 2 uses
  %i.ve = add nuw i64 %.177106, 1                 ; 2 uses
  %i.vf = ptrtoint ptr %i.vd to i64
  %i.vg = ptrtoint ptr %i.vc to i64
  %i.vh = sub i64 %i.vf, %i.vg
  %i.vi = sdiv exact i64 %i.vh, 24
  %i.vj = icmp ult i64 %i.ve, %i.vi
  br i1 %i.vj, label %.lr.ph, label %.loopexit, !llvm.loop !223

.loopexit:                                        ; preds = %bb.r, %bb.o, %bb.p, %.preheader
  %i.vk = phi ptr [ %i.ro, %bb.o ], [ %i.de, %.preheader ], [ %i.de, %bb.p ], [ %i.vc, %bb.r ]
  %i.vl = phi ptr [ %i.rn, %bb.o ], [ %i.de, %.preheader ], [ %i.de, %bb.p ], [ %i.vd, %bb.r ]
  %.575 = phi i8 [ %.272, %bb.o ], [ %.070117, %.preheader ], [ %.070117, %bb.p ], [ %.474, %bb.r ]
  %.5 = phi ptr [ %.2, %bb.o ], [ %.0118, %.preheader ], [ %.0118, %bb.p ], [ %.4, %bb.r ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.vm = load i32, ptr %i.t, align 4, !tbaa !85
  %i.vn = sext i32 %i.vm to i64
  %i.vo = icmp slt i64 %indvars.iv.next, %i.vn
  br i1 %i.vo, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !224

._crit_edge.loopexit:                             ; preds = %.loopexit
  %.pre127 = load ptr, ptr %2, align 8, !tbaa !41
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.loopexit104.a
  %i.vp = phi ptr [ %.pre127, %._crit_edge.loopexit ], [ %i.q, %.loopexit104.a ] ; 3 uses
  %.not.i.i.i89 = icmp eq ptr %i.vp, null
  br i1 %.not.i.i.i89, label %_ZNSt6vectorIN2cv11xfeatures2d10ABWLParamsESaIS2_EED2Ev.exit90, label %bb.s

bb.s:                                             ; preds = %._crit_edge
  %i.vq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.vr = load ptr, ptr %i.vq, align 8, !tbaa !43
  %i.vs = ptrtoint ptr %i.vr to i64
  %i.vt = ptrtoint ptr %i.vp to i64
  %i.vu = sub i64 %i.vs, %i.vt
  call void @_ZdlPvm(ptr noundef nonnull %i.vp, i64 noundef %i.vu) #22
  br label %_ZNSt6vectorIN2cv11xfeatures2d10ABWLParamsESaIS2_EED2Ev.exit90

_ZNSt6vectorIN2cv11xfeatures2d10ABWLParamsESaIS2_EED2Ev.exit90: ; preds = %._crit_edge, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void

_ZNSt6vectorIN2cv11xfeatures2d10ABWLParamsESaIS2_EED2Ev.exit: ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %i.rf
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2cv11xfeatures2d10ABWLParamsESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !41     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !43
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 24                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 384307168202282325, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPN2cv11xfeatures2d10ABWLParamsEmS2_ET_S4_T0_RSaIT1_E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.idx.i.i.i.i.i = mul nuw nsw i64 %i.q, 24
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.d
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i.i ], [ %i.p, %bb.d ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.06.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(24) %i.b, i64 24, i1 false), !tbaa.struct !45
  %i.t = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.t, %i.s
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt27__uninitialized_default_n_aIPN2cv11xfeatures2d10ABWLParamsEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1

_ZSt27__uninitialized_default_n_aIPN2cv11xfeatures2d10ABWLParamsEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.c
  %.0.i.i.i = phi ptr [ %i.p, %bb.c ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !40
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.u = icmp ult i64 %i.n, %1
  br i1 %i.u, label %bb.f, label %_ZNKSt6vectorIN2cv11xfeatures2d10ABWLParamsESaIS2_EE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #23
  unreachable

_ZNKSt6vectorIN2cv11xfeatures2d10ABWLParamsESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.v = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.v, i64 384307168202282325) ; 2 uses
  %i.x = mul nuw nsw i64 %i.w, 24
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #21 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.f ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  %i.aa = add nsw i64 %1, -1                      ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_ZSt27__uninitialized_default_n_aIPN2cv11xfeatures2d10ABWLParamsEmS2_ET_S4_T0_RSaIT1_E.exit35, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIN2cv11xfeatures2d10ABWLParamsESaIS2_EE12_M_check_lenEmPKc.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  %.idx.i.i.i.i.i30 = mul nuw nsw i64 %i.aa, 24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx.i.i.i.i.i30
  br label %.lr.ph.i.i.i.i.i.i.i31

.lr.ph.i.i.i.i.i.i.i31:                           ; preds = %.lr.ph.i.i.i.i.i.i.i31, %bb.g
  %.06.i.i.i.i.i.i.i32 = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i.i31 ], [ %i.ac, %bb.g ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.06.i.i.i.i.i.i.i32, ptr noundef nonnull align 4 dereferenceable(24) %i.z, i64 24, i1 false), !tbaa.struct !45
  %i.ae = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i33 = icmp eq ptr %i.ae, %i.ad
  br i1 %.not.i.i.i.i.i.i.i33, label %_ZSt27__uninitialized_default_n_aIPN2cv11xfeatures2d10ABWLParamsEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i.i.i.i.i31, !llvm.loop !1

_ZSt27__uninitialized_default_n_aIPN2cv11xfeatures2d10ABWLParamsEmS2_ET_S4_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i.i.i.i.i31, %_ZNKSt6vectorIN2cv11xfeatures2d10ABWLParamsESaIS2_EE12_M_check_lenEmPKc.exit
  %i.af = icmp sgt i64 %i.f, 0
  br i1 %i.af, label %bb.h, label %_ZNSt6vectorIN2cv11xfeatures2d10ABWLParamsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN2cv11xfeatures2d10ABWLParamsEmS2_ET_S4_T0_RSaIT1_E.exit35
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.y, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIN2cv11xfeatures2d10ABWLParamsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit

_ZNSt6vectorIN2cv11xfeatures2d10ABWLParamsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPN2cv11xfeatures2d10ABWLParamsEmS2_ET_S4_T0_RSaIT1_E.exit35, %bb.h
  %.not.i37 = icmp eq ptr %i.c, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseIN2cv11xfeatures2d10ABWLParamsESaIS2_EE13_M_deallocateEPS2_m.exit38, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN2cv11xfeatures2d10ABWLParamsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.ag = load ptr, ptr %i.h, align 8, !tbaa !43
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.ah, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ai) #22
  br label %_ZNSt12_Vector_baseIN2cv11xfeatures2d10ABWLParamsESaIS2_EE13_M_deallocateEPS2_m.exit38

_ZNSt12_Vector_baseIN2cv11xfeatures2d10ABWLParamsESaIS2_EE13_M_deallocateEPS2_m.exit38: ; preds = %_ZNSt6vectorIN2cv11xfeatures2d10ABWLParamsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.i
  store ptr %i.y, ptr %0, align 8, !tbaa !41
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %1
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !40
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %i.w
  store ptr %i.ak, ptr %i.h, align 8, !tbaa !43
  br label %bb.j

bb.j:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN2cv11xfeatures2d10ABWLParamsEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN2cv11xfeatures2d10ABWLParamsESaIS2_EE13_M_deallocateEPS2_m.exit38, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, errnomem: write)
declare void @sincos(double noundef, ptr, ptr) local_unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #16

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #20 = { nounwind }
attributes #21 = { builtin allocsize(0) }
attributes #22 = { builtin nounwind }
attributes #23 = { noreturn }
attributes #24 = { noreturn nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !105}
!1 = distinct !{!1, !105}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"branch_weights", i32 1, i32 1048575}
!11 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !7, i64 8, !7, i64 12}
!12 = !{!11, !7, i64 8}
!13 = !{!11, !7, i64 12}
!14 = !{!"vtable pointer", !5, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"any pointer", !6, i64 0}
!17 = !{!"p1 omnipotent char", !16, i64 0}
!18 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !17, i64 0}
!19 = !{!"long", !6, i64 0}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !18, i64 0, !19, i64 8, !6, i64 16}
!21 = !{!20, !17, i64 0}
!22 = !{!6, !6, i64 0}
!23 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !16, i64 0}
!24 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !23, i64 0}
!25 = !{!24, !23, i64 0}
!26 = !{!"p1 _ZTSN2cv11xfeatures2d17ABWLParamsFloatThE", !16, i64 0}
!27 = !{!"_ZTSNSt12_Vector_baseIN2cv11xfeatures2d17ABWLParamsFloatThESaIS2_EE17_Vector_impl_dataE", !26, i64 0, !26, i64 8, !26, i64 16}
!28 = !{!27, !26, i64 16}
!29 = !{!27, !26, i64 0}
!30 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!31 = !{!7, !7, i64 0}
!32 = !{!"float", !6, i64 0}
!33 = !{!32, !32, i64 0}
!34 = !{i64 0, i64 4, !31, i64 4, i64 4, !31, i64 8, i64 4, !31, i64 12, i64 4, !31, i64 16, i64 4, !31, i64 20, i64 4, !33}
!35 = !{!27, !26, i64 8}
!36 = !{!18, !17, i64 0}
!37 = !{!20, !19, i64 8}
!38 = !{!"p1 _ZTSN2cv11xfeatures2d10ABWLParamsE", !16, i64 0}
!39 = !{!"_ZTSNSt12_Vector_baseIN2cv11xfeatures2d10ABWLParamsESaIS2_EE17_Vector_impl_dataE", !38, i64 0, !38, i64 8, !38, i64 16}
!40 = !{!39, !38, i64 8}
!41 = !{!39, !38, i64 0}
!42 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!43 = !{!39, !38, i64 16}
!44 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!45 = !{i64 0, i64 4, !31, i64 4, i64 4, !31, i64 8, i64 4, !31, i64 12, i64 4, !31, i64 16, i64 4, !31, i64 20, i64 4, !31}
!46 = !{!"_ZTSN2cv9AlgorithmE"}
!47 = !{!"_ZTSN2cv9Feature2DE", !46, i64 0}
!48 = !{!"_ZTSN2cv11xfeatures2d6BEBLIDE", !47, i64 0}
!49 = !{!"_ZTSNSt12_Vector_baseIN2cv11xfeatures2d10ABWLParamsESaIS2_EE12_Vector_implE", !39, i64 0}
!50 = !{!"_ZTSSt12_Vector_baseIN2cv11xfeatures2d10ABWLParamsESaIS2_EE", !49, i64 0}
!51 = !{!"_ZTSSt6vectorIN2cv11xfeatures2d10ABWLParamsESaIS2_EE", !50, i64 0}
!52 = !{!"_ZTSN2cv5Size_IiEE", !7, i64 0, !7, i64 4}
!53 = !{!"_ZTSN2cv11xfeatures2d11BEBLID_ImplINS0_10ABWLParamsEEE", !48, i64 0, !51, i64 8, !32, i64 32, !52, i64 36}
!54 = !{!53, !32, i64 32}
!55 = !{}
!56 = !{!52, !7, i64 0}
!57 = !{!52, !7, i64 4}
!58 = !{!"_ZTSSt9type_info", !17, i64 8}
!59 = !{!58, !17, i64 8}
!60 = !{!"_ZTSNSt12_Vector_baseIN2cv11xfeatures2d17ABWLParamsFloatThESaIS2_EE12_Vector_implE", !27, i64 0}
!61 = !{!"_ZTSSt12_Vector_baseIN2cv11xfeatures2d17ABWLParamsFloatThESaIS2_EE", !60, i64 0}
!62 = !{!"_ZTSSt6vectorIN2cv11xfeatures2d17ABWLParamsFloatThESaIS2_EE", !61, i64 0}
!63 = !{!"_ZTSN2cv11xfeatures2d11BEBLID_ImplINS0_17ABWLParamsFloatThEEE", !48, i64 0, !62, i64 8, !32, i64 32, !52, i64 36}
!64 = !{!63, !32, i64 32}
!65 = !{!"_ZTSN2cv11_InputArrayE", !7, i64 0, !16, i64 8, !52, i64 16}
!66 = !{!65, !16, i64 8}
!67 = !{!"p1 _ZTSN2cv8KeyPointE", !16, i64 0}
!68 = !{!67, !67, i64 0}
!69 = !{!"p1 _ZTSN2cv12MatAllocatorE", !16, i64 0}
!70 = !{!"p1 _ZTSN2cv8UMatDataE", !16, i64 0}
!71 = !{!"_ZTSN2cv10DataLayoutE", !6, i64 0}
!72 = !{!"_ZTSN2cv8MatShapeE", !7, i64 0, !71, i64 4, !7, i64 8, !6, i64 12}
!73 = !{!"_ZTSN2cv7MatStepE", !6, i64 0}
!74 = !{!"_ZTSN2cv3MatE", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !69, i64 56, !70, i64 64, !72, i64 72, !73, i64 128}
!75 = !{!74, !7, i64 0}
!76 = !{!65, !7, i64 0}
!77 = !{!"_ZTSNSt12_Vector_baseIN2cv8KeyPointESaIS1_EE17_Vector_impl_dataE", !67, i64 0, !67, i64 8, !67, i64 16}
!78 = !{!77, !67, i64 8}
!79 = !{!77, !67, i64 0}
!80 = !{!74, !17, i64 24}
!81 = !{!"p1 int", !16, i64 0}
!82 = !{!81, !81, i64 0}
!83 = !{!"_ZTSN2cv5RangeE", !7, i64 0, !7, i64 4}
!84 = !{!83, !7, i64 0}
!85 = !{!83, !7, i64 4}
!86 = !{!"p1 _ZTSN2cv11xfeatures2d11BEBLID_ImplINS0_17ABWLParamsFloatThEEE", !16, i64 0}
!87 = !{!86, !86, i64 0}
!88 = !{!"p1 _ZTSN2cv3MatE", !16, i64 0}
!89 = !{!88, !88, i64 0}
!90 = !{!"p1 _ZTSSt6vectorIN2cv8KeyPointESaIS1_EE", !16, i64 0}
!91 = !{!90, !90, i64 0}
!92 = !{!"p1 _ZTSN2cv5Size_IiEE", !16, i64 0}
!93 = !{!92, !92, i64 0}
!94 = !{!"any p2 pointer", !16, i64 0}
!95 = !{!"p2 int", !94, i64 0}
!96 = !{!95, !95, i64 0}
!97 = !{!16, !16, i64 0}
!98 = !{!"_ZTSSt14_Function_base", !6, i64 0, !16, i64 16}
!99 = !{!"_ZTSSt8functionIFvRKN2cv5RangeEEE", !98, i64 0, !16, i64 24}
!100 = !{!99, !16, i64 24}
!101 = !{!98, !16, i64 16}
!102 = !{ptr @_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev}
!103 = !{!"p1 _ZTSSt9type_info", !16, i64 0}
!104 = !{!103, !103, i64 0}
!105 = !{!"llvm.loop.mustprogress"}
!106 = !{i64 8}
!107 = !{!74, !7, i64 4}
!108 = !{!"_ZTSN2cv6Point_IfEE", !32, i64 0, !32, i64 4}
!109 = !{!"_ZTSN2cv8KeyPointE", !108, i64 0, !32, i64 8, !32, i64 12, !32, i64 16, !7, i64 20, !7, i64 24}
!110 = !{!109, !32, i64 8}
!111 = !{!109, !32, i64 12}
!112 = !{!"llvm.loop.isvectorized", i32 1}
!113 = !{!"llvm.loop.unroll.runtime.disable"}
!114 = !{i64 4}
!115 = !{!109, !32, i64 0}
!116 = !{!109, !32, i64 4}
!117 = !{!74, !7, i64 12}
!118 = !{!74, !7, i64 8}
!119 = !{!"p1 _ZTSN2cv11xfeatures2d11BEBLID_ImplINS0_10ABWLParamsEEE", !16, i64 0}
!120 = !{!119, !119, i64 0}
!121 = distinct !{!121, i1 true, !"_ZN2cvL7makePtrINS_11xfeatures2d11TEBLID_ImplEJfSt6vectorINS1_17ABWLParamsFloatThESaIS4_EEEEENS_3PtrIT_EEDpRKT0_"}
!122 = distinct !{!122, !121, !"_ZN2cvL7makePtrINS_11xfeatures2d11TEBLID_ImplEJfSt6vectorINS1_17ABWLParamsFloatThESaIS4_EEEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!123 = distinct !{!123, i1 true, !"_ZSt11make_sharedIN2cv11xfeatures2d11TEBLID_ImplEJRKfRKSt6vectorINS1_17ABWLParamsFloatThESaIS6_EEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESD_E4typeEEDpOT0_"}
!124 = distinct !{!124, !123, !"_ZSt11make_sharedIN2cv11xfeatures2d11TEBLID_ImplEJRKfRKSt6vectorINS1_17ABWLParamsFloatThESaIS6_EEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESD_E4typeEEDpOT0_: argument 0"}
!125 = distinct !{!125, i1 true, !"_ZN2cvL7makePtrINS_11xfeatures2d11TEBLID_ImplEJfSt6vectorINS1_17ABWLParamsFloatThESaIS4_EEEEENS_3PtrIT_EEDpRKT0_"}
!126 = distinct !{!126, !125, !"_ZN2cvL7makePtrINS_11xfeatures2d11TEBLID_ImplEJfSt6vectorINS1_17ABWLParamsFloatThESaIS4_EEEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!127 = distinct !{!127, i1 true, !"_ZSt11make_sharedIN2cv11xfeatures2d11TEBLID_ImplEJRKfRKSt6vectorINS1_17ABWLParamsFloatThESaIS6_EEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESD_E4typeEEDpOT0_"}
!128 = distinct !{!128, !127, !"_ZSt11make_sharedIN2cv11xfeatures2d11TEBLID_ImplEJRKfRKSt6vectorINS1_17ABWLParamsFloatThESaIS6_EEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESD_E4typeEEDpOT0_: argument 0"}
!129 = !{!124, !122}
!130 = !{!128, !126}
!131 = !{!"p1 _ZTSN2cv11xfeatures2d6TEBLIDE", !16, i64 0}
!132 = !{!"_ZTSSt12__shared_ptrIN2cv11xfeatures2d6TEBLIDELN9__gnu_cxx12_Lock_policyE2EE", !131, i64 0, !24, i64 8}
!133 = !{!132, !131, i64 0}
!134 = !{!19, !19, i64 0}
!135 = distinct !{!135, i1 true, !"_ZN2cvL7makePtrINS_11xfeatures2d11BEBLID_ImplINS1_10ABWLParamsEEEJfSt6vectorIS3_SaIS3_EEEEENS_3PtrIT_EEDpRKT0_"}
!136 = distinct !{!136, !135, !"_ZN2cvL7makePtrINS_11xfeatures2d11BEBLID_ImplINS1_10ABWLParamsEEEJfSt6vectorIS3_SaIS3_EEEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!137 = distinct !{!137, i1 true, !"_ZSt11make_sharedIN2cv11xfeatures2d11BEBLID_ImplINS1_10ABWLParamsEEEJRKfRKSt6vectorIS3_SaIS3_EEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESE_E4typeEEDpOT0_"}
!138 = distinct !{!138, !137, !"_ZSt11make_sharedIN2cv11xfeatures2d11BEBLID_ImplINS1_10ABWLParamsEEEJRKfRKSt6vectorIS3_SaIS3_EEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESE_E4typeEEDpOT0_: argument 0"}
!139 = distinct !{!139, i1 true, !"_ZN2cvL7makePtrINS_11xfeatures2d11BEBLID_ImplINS1_10ABWLParamsEEEJfSt6vectorIS3_SaIS3_EEEEENS_3PtrIT_EEDpRKT0_"}
!140 = distinct !{!140, !139, !"_ZN2cvL7makePtrINS_11xfeatures2d11BEBLID_ImplINS1_10ABWLParamsEEEJfSt6vectorIS3_SaIS3_EEEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!141 = distinct !{!141, i1 true, !"_ZSt11make_sharedIN2cv11xfeatures2d11BEBLID_ImplINS1_10ABWLParamsEEEJRKfRKSt6vectorIS3_SaIS3_EEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESE_E4typeEEDpOT0_"}
!142 = distinct !{!142, !141, !"_ZSt11make_sharedIN2cv11xfeatures2d11BEBLID_ImplINS1_10ABWLParamsEEEJRKfRKSt6vectorIS3_SaIS3_EEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESE_E4typeEEDpOT0_: argument 0"}
!143 = !{!138, !136}
!144 = !{!38, !38, i64 0}
!145 = !{!142, !140}
!146 = !{!"p1 _ZTSN2cv11xfeatures2d6BEBLIDE", !16, i64 0}
!147 = !{!"_ZTSSt12__shared_ptrIN2cv11xfeatures2d6BEBLIDELN9__gnu_cxx12_Lock_policyE2EE", !146, i64 0, !24, i64 8}
!148 = !{!147, !146, i64 0}
!149 = distinct !{!149, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!150 = distinct !{!150, !149, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!151 = !{!150}
!152 = distinct !{!152, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!153 = distinct !{!153, !152, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!154 = !{!153}
!155 = !{!26, !26, i64 0}
!156 = distinct !{!156, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!157 = distinct !{!157, !156, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!158 = distinct !{!158, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!159 = distinct !{!159, !158, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!160 = !{!157}
!161 = !{!159}
!162 = distinct !{null}
!163 = !{i64 0, i64 8, !87, i64 8, i64 8, !89, i64 16, i64 8, !91, i64 24, i64 8, !93, i64 32, i64 8, !89, i64 40, i64 8, !96}
!164 = distinct !{!164, i1 false, !"LVerDomain"}
!165 = distinct !{!165, !164}
!166 = distinct !{!166, !164}
!167 = distinct !{!167, !164}
!168 = distinct !{!168, !164}
!169 = distinct !{!169, !164}
!170 = distinct !{!170, !164}
!171 = distinct !{!171, !164}
!172 = distinct !{!172, !164}
!173 = distinct !{!173, !164}
!174 = distinct !{!174, !164}
!175 = distinct !{!175, !105, !112, !113}
!176 = distinct !{!176, !105, !112}
!177 = distinct !{!177, !105}
!178 = distinct !{!178, !105}
!179 = distinct !{!179, !105}
!180 = !{!"_ZTSZN2cv11xfeatures2d11BEBLID_ImplINS0_17ABWLParamsFloatThEE25computeBoxDiffsDescriptorERKNS_3MatERKSt6vectorINS_8KeyPointESaIS8_EERS4_EUlRKNS_5RangeEE_", !86, i64 0, !88, i64 8, !90, i64 16, !92, i64 24, !88, i64 32, !95, i64 40}
!181 = !{!180, !86, i64 0}
!182 = !{!180, !88, i64 8}
!183 = !{!180, !90, i64 16}
!184 = !{!"_ZTSN2cv11xfeatures2d17ABWLParamsFloatThE", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !32, i64 20}
!185 = !{!184, !7, i64 0}
!186 = !{!165}
!187 = !{!184, !7, i64 4}
!188 = !{!166}
!189 = !{!168, !167}
end_hunk_2
