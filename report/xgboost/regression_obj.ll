Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/regression_obj?download=true
inline.NumInlined: 7708
inline.NumDeleted: 2228
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN7xgboost6common11ParallelForImZNKS0_9TransformILb0EE9EvaluatorIZNS_3obj10RegLossObjINS5_16LinearSquareLossEE11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmNS0_4SpanIfLm18446744073709551615EEENSN_ISK_Lm18446744073709551615EEENSN_IKfLm18446744073709551615EEESR_SR_E_E9LaunchCPUIJSA_NS9_ISK_EESB_SB_SB_EEEvSS_DpPT_EUlmE_EEvT_iNS0_5SchedEOT0_:bb.a
  br label %bb.q

bb.q:                                             ; preds = %thread-pre-split147, %.preheader72, %.preheader74, %.preheader79, %.preheader83, %.preheader88, %.preheader92
  %.pr71 = phi ptr [ %.pr71.pr, %thread-pre-split147 ], [ null, %.preheader72 ], [ null, %.preheader74 ], [ null, %.preheader79 ], [ null, %.preheader83 ], [ null, %.preheader88 ], [ null, %.preheader92 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %.not.i64 = icmp eq ptr %.pr71, null
  br i1 %.not.i64, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i: ; preds = %bb.q
  store ptr %.pr71, ptr %5, align 8, !tbaa !195
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %5) #37
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i
  unreachable

bb.s:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = load ptr, ptr %5, align 8, !tbaa !195
  %.not.i2.i = icmp eq ptr %i.ae, null
  br i1 %.not.i2.i, label %.body, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  br label %.body

_ZN4dmlc12OMPExceptionD2Ev.exit:                  ; preds = %.thread, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph106, %.preheader, %_ZN4dmlc12OMPExceptionD2Ev.exit
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph98, %.lr.ph100, %.lr.ph104, %.lr.ph102, %.lr.ph96, %.lr.ph
  %lpad.loopexit.split-lp180 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.s, %bb.t
  %eh.lpad-body = phi { ptr, i32 } [ %i.ad, %bb.s ], [ %i.ad, %bb.t ], [ %lpad.loopexit.split-lp180, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.af = load ptr, ptr %8, align 8, !tbaa !195
  %.not.i.i66 = icmp eq ptr %i.af, null
  br i1 %.not.i.i66, label %_ZN4dmlc12OMPExceptionD2Ev.exit68, label %bb.u

bb.u:                                             ; preds = %.body
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(48) %8) #21
  br label %_ZN4dmlc12OMPExceptionD2Ev.exit68

_ZN4dmlc12OMPExceptionD2Ev.exit68:                ; preds = %.body, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.v

bb.v:                                             ; preds = %_ZN4dmlc12OMPExceptionD2Ev.exit68, %bb.f
  %.pn52.pn = phi { ptr, i32 } [ %eh.lpad-body, %_ZN4dmlc12OMPExceptionD2Ev.exit68 ], [ %.pn, %bb.f ]
  resume { ptr, i32 } %.pn52.pn

bb.w:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #39
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZNK7xgboost6common9TransformILb0EE9EvaluatorIZNS_3obj10RegLossObjINS4_16LinearSquareLossEE11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmNS0_4SpanIfLm18446744073709551615EEENSM_ISJ_Lm18446744073709551615EEENSM_IKfLm18446744073709551615EEESQ_SQ_E_E9LaunchCPUIJS9_NS8_ISJ_EESA_SA_SA_EEEvSR_DpPT_ENKUlmE_clEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !599, !nonnull !80, !align !169 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !600, !nonnull !80, !align !169
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !179  ; 2 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN7xgboost16HostDeviceVectorIfE10HostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !161  ; 3 uses
  %i.g = tail call noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 2 uses
  %i.h = icmp ne ptr %i.f, null
  %i.i = icmp eq i64 %i.g, 0                      ; 2 uses
  %i.j = or i1 %i.h, %i.i
  br i1 %i.j, label %_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNS_3obj10RegLossObjINS4_16LinearSquareLossEE11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmNS0_4SpanIfLm18446744073709551615EEENSM_ISJ_Lm18446744073709551615EEENSM_IKfLm18446744073709551615EEESQ_SQ_E_E9UnpackHDVIfEENSM_IT_Lm18446744073709551615EEEPNS8_ISU_EE.exit, label %bb.b, !prof !164

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #39
  unreachable

_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNS_3obj10RegLossObjINS4_16LinearSquareLossEE11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmNS0_4SpanIfLm18446744073709551615EEENSM_ISJ_Lm18446744073709551615EEENSM_IKfLm18446744073709551615EEESQ_SQ_E_E9UnpackHDVIfEENSM_IT_Lm18446744073709551615EEEPNS8_ISU_EE.exit: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !601, !nonnull !80, !align !169
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !181  ; 2 uses
  %i.n = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN7xgboost16HostDeviceVectorINS_6detail20GradientPairInternalIfEEE10HostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !198  ; 6 uses
  %i.p = tail call noundef i64 @_ZNK7xgboost16HostDeviceVectorINS_6detail20GradientPairInternalIfEEE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
  %i.q = icmp ne ptr %i.o, null
  %i.r = icmp eq i64 %i.p, 0
  %i.s = or i1 %i.q, %i.r
  br i1 %i.s, label %_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNS_3obj10RegLossObjINS4_16LinearSquareLossEE11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmNS0_4SpanIfLm18446744073709551615EEENSM_ISJ_Lm18446744073709551615EEENSM_IKfLm18446744073709551615EEESQ_SQ_E_E9UnpackHDVISJ_EENSM_IT_Lm18446744073709551615EEEPNS8_ISU_EE.exit, label %bb.c, !prof !164

bb.c:                                             ; preds = %_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNS_3obj10RegLossObjINS4_16LinearSquareLossEE11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmNS0_4SpanIfLm18446744073709551615EEENSM_ISJ_Lm18446744073709551615EEENSM_IKfLm18446744073709551615EEESQ_SQ_E_E9UnpackHDVIfEENSM_IT_Lm18446744073709551615EEEPNS8_ISU_EE.exit
  tail call void @_ZSt9terminatev() #39
  unreachable

_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNS_3obj10RegLossObjINS4_16LinearSquareLossEE11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmNS0_4SpanIfLm18446744073709551615EEENSM_ISJ_Lm18446744073709551615EEENSM_IKfLm18446744073709551615EEESQ_SQ_E_E9UnpackHDVISJ_EENSM_IT_Lm18446744073709551615EEEPNS8_ISU_EE.exit: ; preds = %_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNS_3obj10RegLossObjINS4_16LinearSquareLossEE11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmNS0_4SpanIfLm18446744073709551615EEENSM_ISJ_Lm18446744073709551615EEENSM_IKfLm18446744073709551615EEESQ_SQ_E_E9UnpackHDVIfEENSM_IT_Lm18446744073709551615EEEPNS8_ISU_EE.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !602, !nonnull !80, !align !169
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !179  ; 2 uses
  %i.w = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !161  ; 6 uses
  %i.y = tail call noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %i.z = icmp ne ptr %i.x, null
  %i.aa = icmp eq i64 %i.y, 0
  %i.ab = or i1 %i.z, %i.aa
  br i1 %i.ab, label %_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNS_3obj10RegLossObjINS4_16LinearSquareLossEE11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmNS0_4SpanIfLm18446744073709551615EEENSM_ISJ_Lm18446744073709551615EEENSM_IKfLm18446744073709551615EEESQ_SQ_E_E9UnpackHDVIfEENSM_IKT_Lm18446744073709551615EEEPKNS8_ISU_EE.exit, label %bb.d, !prof !164

bb.d:                                             ; preds = %_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNS_3obj10RegLossObjINS4_16LinearSquareLossEE11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmNS0_4SpanIfLm18446744073709551615EEENSM_ISJ_Lm18446744073709551615EEENSM_IKfLm18446744073709551615EEESQ_SQ_E_E9UnpackHDVISJ_EENSM_IT_Lm18446744073709551615EEEPNS8_ISU_EE.exit
  tail call void @_ZSt9terminatev() #39
  unreachable

_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNS_3obj10RegLossObjINS4_16LinearSquareLossEE11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmNS0_4SpanIfLm18446744073709551615EEENSM_ISJ_Lm18446744073709551615EEENSM_IKfLm18446744073709551615EEESQ_SQ_E_E9UnpackHDVIfEENSM_IKT_Lm18446744073709551615EEEPKNS8_ISU_EE.exit: ; preds = %_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNS_3obj10RegLossObjINS4_16LinearSquareLossEE11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmNS0_4SpanIfLm18446744073709551615EEENSM_ISJ_Lm18446744073709551615EEENSM_IKfLm18446744073709551615EEESQ_SQ_E_E9UnpackHDVISJ_EENSM_IT_Lm18446744073709551615EEEPNS8_ISU_EE.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !603, !nonnull !80, !align !169
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !179 ; 2 uses
  %i.af = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ae)
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !161 ; 6 uses
  %i.ah = tail call noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ae)
  %i.ai = icmp ne ptr %i.ag, null
  %i.aj = icmp eq i64 %i.ah, 0
  %i.ak = or i1 %i.ai, %i.aj
  br i1 %i.ak, label %_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNS_3obj10RegLossObjINS4_16LinearSquareLossEE11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmNS0_4SpanIfLm18446744073709551615EEENSM_ISJ_Lm18446744073709551615EEENSM_IKfLm18446744073709551615EEESQ_SQ_E_E9UnpackHDVIfEENSM_IKT_Lm18446744073709551615EEEPKNS8_ISU_EE.exit9, label %bb.e, !prof !164

bb.e:                                             ; preds = %_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNS_3obj10RegLossObjINS4_16LinearSquareLossEE11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmNS0_4SpanIfLm18446744073709551615EEENSM_ISJ_Lm18446744073709551615EEENSM_IKfLm18446744073709551615EEESQ_SQ_E_E9UnpackHDVIfEENSM_IKT_Lm18446744073709551615EEEPKNS8_ISU_EE.exit
  tail call void @_ZSt9terminatev() #39
  unreachable

_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNS_3obj10RegLossObjINS4_16LinearSquareLossEE11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmNS0_4SpanIfLm18446744073709551615EEENSM_ISJ_Lm18446744073709551615EEENSM_IKfLm18446744073709551615EEESQ_SQ_E_E9UnpackHDVIfEENSM_IKT_Lm18446744073709551615EEEPKNS8_ISU_EE.exit9: ; preds = %_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNS_3obj10RegLossObjINS4_16LinearSquareLossEE11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmNS0_4SpanIfLm18446744073709551615EEENSM_ISJ_Lm18446744073709551615EEENSM_IKfLm18446744073709551615EEESQ_SQ_E_E9UnpackHDVIfEENSM_IKT_Lm18446744073709551615EEEPKNS8_ISU_EE.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !604, !nonnull !80, !align !169
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !179 ; 2 uses
  %i.ao = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !161 ; 2 uses
  %i.aq = tail call noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
  %i.ar = icmp ne ptr %i.ap, null
  %i.as = icmp eq i64 %i.aq, 0
  %i.at = or i1 %i.ar, %i.as
  br i1 %i.at, label %_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNS_3obj10RegLossObjINS4_16LinearSquareLossEE11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmNS0_4SpanIfLm18446744073709551615EEENSM_ISJ_Lm18446744073709551615EEENSM_IKfLm18446744073709551615EEESQ_SQ_E_E9UnpackHDVIfEENSM_IKT_Lm18446744073709551615EEEPKNS8_ISU_EE.exit12, label %bb.f, !prof !164

bb.f:                                             ; preds = %_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNS_3obj10RegLossObjINS4_16LinearSquareLossEE11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmNS0_4SpanIfLm18446744073709551615EEENSM_ISJ_Lm18446744073709551615EEENSM_IKfLm18446744073709551615EEESQ_SQ_E_E9UnpackHDVIfEENSM_IKT_Lm18446744073709551615EEEPKNS8_ISU_EE.exit9
  tail call void @_ZSt9terminatev() #39
  unreachable

_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNS_3obj10RegLossObjINS4_16LinearSquareLossEE11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmNS0_4SpanIfLm18446744073709551615EEENSM_ISJ_Lm18446744073709551615EEENSM_IKfLm18446744073709551615EEESQ_SQ_E_E9UnpackHDVIfEENSM_IKT_Lm18446744073709551615EEEPKNS8_ISU_EE.exit12: ; preds = %_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNS_3obj10RegLossObjINS4_16LinearSquareLossEE11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmNS0_4SpanIfLm18446744073709551615EEENSM_ISJ_Lm18446744073709551615EEENSM_IKfLm18446744073709551615EEESQ_SQ_E_E9UnpackHDVIfEENSM_IKT_Lm18446744073709551615EEEPKNS8_ISU_EE.exit9
  %i.au = load i64, ptr %i.a, align 8, !tbaa !605 ; 3 uses
  %i.av = mul i64 %i.au, %1                       ; 8 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ax = add i64 %i.av, %i.au
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !37
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.ax, i64 %i.ay) ; 6 uses
  br i1 %i.i, label %bb.g, label %_ZNK7xgboost6common4SpanIfLm18446744073709551615EEixEm.exit.i, !prof !99

bb.g:                                             ; preds = %_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNS_3obj10RegLossObjINS4_16LinearSquareLossEE11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmNS0_4SpanIfLm18446744073709551615EEENSM_ISJ_Lm18446744073709551615EEENSM_IKfLm18446744073709551615EEESQ_SQ_E_E9UnpackHDVIfEENSM_IKT_Lm18446744073709551615EEEPKNS8_ISU_EE.exit12
  tail call void @_ZSt9terminatev() #39
  unreachable

_ZNK7xgboost6common4SpanIfLm18446744073709551615EEixEm.exit.i: ; preds = %_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNS_3obj10RegLossObjINS4_16LinearSquareLossEE11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmNS0_4SpanIfLm18446744073709551615EEENSM_ISJ_Lm18446744073709551615EEENSM_IKfLm18446744073709551615EEESQ_SQ_E_E9UnpackHDVIfEENSM_IKT_Lm18446744073709551615EEEPKNS8_ISU_EE.exit12
  %i.az = load float, ptr %i.f, align 4, !tbaa !81 ; 3 uses
  %.not32.i = icmp eq i64 %i.g, 1
  br i1 %.not32.i, label %bb.h, label %_ZNK7xgboost6common4SpanIfLm18446744073709551615EEixEm.exit25.i, !prof !99

bb.h:                                             ; preds = %_ZNK7xgboost6common4SpanIfLm18446744073709551615EEixEm.exit.i
  tail call void @_ZSt9terminatev() #39
  unreachable

_ZNK7xgboost6common4SpanIfLm18446744073709551615EEixEm.exit25.i: ; preds = %_ZNK7xgboost6common4SpanIfLm18446744073709551615EEixEm.exit.i
  %i.ba = icmp ult i64 %i.av, %.sroa.speculated.i
  br i1 %i.ba, label %.lr.ph.i, label %_ZZN7xgboost3obj10RegLossObjINS0_16LinearSquareLossEE11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENKUlmNS_6common4SpanIfLm18446744073709551615EEENSJ_ISF_Lm18446744073709551615EEENSJ_IKfLm18446744073709551615EEESN_SN_E_clEmSK_SL_SN_SN_SN_.exit

.lr.ph.i:                                         ; preds = %_ZNK7xgboost6common4SpanIfLm18446744073709551615EEixEm.exit25.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !81
  %i.bd = fcmp une float %i.bc, 0.000000e+00
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bf = load i32, ptr %i.be, align 8
  %i.bg = zext i32 %i.bf to i64
  br i1 %i.bd, label %.lr.ph.split.us.i.preheader, label %.lr.ph.split.i

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i
  %i.bh = sub i64 %.sroa.speculated.i, %i.av      ; 3 uses
  %min.iters.check = icmp ult i64 %i.bh, 12
  br i1 %min.iters.check, label %.lr.ph.split.us.i.preheader39, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.us.i.preheader
  %i.bi = mul i64 %i.au, %1                       ; 2 uses
  %i.bj = shl i64 %i.bi, 3
  %i.bk = getelementptr i8, ptr %i.o, i64 %i.bj   ; 2 uses
  %i.bl = shl i64 %.sroa.speculated.i, 3
  %i.bm = getelementptr i8, ptr %i.o, i64 %i.bl   ; 2 uses
  %i.bn = shl i64 %i.bi, 2                        ; 2 uses
  %i.bo = getelementptr i8, ptr %i.x, i64 %i.bn
  %i.bp = shl i64 %.sroa.speculated.i, 2          ; 2 uses
  %i.bq = getelementptr i8, ptr %i.x, i64 %i.bp
  %bound0 = icmp ult ptr %i.bk, %i.bq
  %bound1 = icmp ult ptr %i.bo, %i.bm
  %found.conflict = and i1 %bound0, %bound1
  %2 = getelementptr i8, ptr %i.ag, i64 %i.bn
  %3 = getelementptr i8, ptr %i.ag, i64 %i.bp
  %bound035 = icmp ult ptr %i.bk, %3
  %bound136 = icmp ult ptr %2, %i.bm
  %found.conflict37 = and i1 %bound035, %bound136
  %conflict.rdx = or i1 %found.conflict, %found.conflict37
  br i1 %conflict.rdx, label %.lr.ph.split.us.i.preheader39, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bh, -4                      ; 3 uses
  %i.br = add i64 %i.av, %n.vec
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.az, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bs = add nuw i64 %i.av, %index               ; 3 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.bs
  %wide.load = load <4 x float>, ptr %i.bt, align 4, !tbaa !81, !alias.scope !606
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.bs
  %wide.load38 = load <4 x float>, ptr %i.bu, align 4, !tbaa !81, !alias.scope !607 ; 2 uses
  %i.bv = fcmp oeq <4 x float> %wide.load38, splat (float 1.000000e+00)
  %i.bw = select <4 x i1> %i.bv, <4 x float> %broadcast.splat, <4 x float> splat (float 1.000000e+00) ; 2 uses
  %i.bx = fsub <4 x float> %wide.load, %wide.load38
  %i.by = fmul <4 x float> %i.bx, %i.bw
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.bs
  %interleaved.vec = shufflevector <4 x float> %i.by, <4 x float> %i.bw, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.bz, align 4, !tbaa !81, !alias.scope !608, !noalias !609
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !596

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bh, %n.vec
  br i1 %cmp.n, label %_ZZN7xgboost3obj10RegLossObjINS0_16LinearSquareLossEE11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENKUlmNS_6common4SpanIfLm18446744073709551615EEENSJ_ISF_Lm18446744073709551615EEENSJ_IKfLm18446744073709551615EEESN_SN_E_clEmSK_SL_SN_SN_SN_.exit, label %.lr.ph.split.us.i.preheader39

.lr.ph.split.us.i.preheader39:                    ; preds = %vector.memcheck, %.lr.ph.split.us.i.preheader, %middle.block
  %.02433.us.i.ph = phi i64 [ %i.av, %vector.memcheck ], [ %i.av, %.lr.ph.split.us.i.preheader ], [ %i.br, %middle.block ]
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader39, %.lr.ph.split.us.i
  %.02433.us.i = phi i64 [ %i.cj, %.lr.ph.split.us.i ], [ %.02433.us.i.ph, %.lr.ph.split.us.i.preheader39 ] ; 4 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.02433.us.i
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !81
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.02433.us.i
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !81 ; 2 uses
  %i.cf = fcmp oeq float %i.ce, 1.000000e+00
  %.0.us.i = select i1 %i.cf, float %i.az, float 1.000000e+00 ; 2 uses
  %i.cg = fsub float %i.cc, %i.ce
  %i.ch = fmul float %i.cg, %.0.us.i
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.02433.us.i ; 2 uses
  store float %i.ch, ptr %i.ci, align 4, !tbaa !81
  %.sroa_idx26.us.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  store float %.0.us.i, ptr %.sroa_idx26.us.i, align 4, !tbaa !81
  %i.cj = add nuw i64 %.02433.us.i, 1             ; 2 uses
  %i.ck = icmp ult i64 %i.cj, %.sroa.speculated.i
  br i1 %i.ck, label %.lr.ph.split.us.i, label %_ZZN7xgboost3obj10RegLossObjINS0_16LinearSquareLossEE11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENKUlmNS_6common4SpanIfLm18446744073709551615EEENSJ_ISF_Lm18446744073709551615EEENSJ_IKfLm18446744073709551615EEESN_SN_E_clEmSK_SL_SN_SN_SN_.exit, !llvm.loop !597

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %.lr.ph.split.i
  %.02433.i = phi i64 [ %i.cx, %.lr.ph.split.i ], [ %i.av, %.lr.ph.i ] ; 5 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.02433.i
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !81
  %i.cn = udiv i64 %.02433.i, %i.bg
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.cn
  %i.cp = load float, ptr %i.co, align 4, !tbaa !81 ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.02433.i
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !81 ; 2 uses
  %i.cs = fcmp oeq float %i.cr, 1.000000e+00
  %i.ct = fmul float %i.az, %i.cp
  %.0.i = select i1 %i.cs, float %i.ct, float %i.cp ; 2 uses
  %i.cu = fsub float %i.cm, %i.cr
  %i.cv = fmul float %i.cu, %.0.i
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.02433.i ; 2 uses
  store float %i.cv, ptr %i.cw, align 4, !tbaa !81
  %.sroa_idx26.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  store float %.0.i, ptr %.sroa_idx26.i, align 4, !tbaa !81
  %i.cx = add nuw i64 %.02433.i, 1                ; 2 uses
  %i.cy = icmp ult i64 %i.cx, %.sroa.speculated.i
  br i1 %i.cy, label %.lr.ph.split.i, label %_ZZN7xgboost3obj10RegLossObjINS0_16LinearSquareLossEE11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENKUlmNS_6common4SpanIfLm18446744073709551615EEENSJ_ISF_Lm18446744073709551615EEENSJ_IKfLm18446744073709551615EEESN_SN_E_clEmSK_SL_SN_SN_SN_.exit, !llvm.loop !598

_ZZN7xgboost3obj10RegLossObjINS0_16LinearSquareLossEE11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENKUlmNS_6common4SpanIfLm18446744073709551615EEENSJ_ISF_Lm18446744073709551615EEENSJ_IKfLm18446744073709551615EEESN_SN_E_clEmSK_SL_SN_SN_SN_.exit: ; preds = %.lr.ph.split.i, %.lr.ph.split.us.i, %middle.block, %_ZNK7xgboost6common4SpanIfLm18446744073709551615EEixEm.exit25.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4dmlc12OMPException3RunIZNK7xgboost6common9TransformILb0EE9EvaluatorIZNS2_3obj10RegLossObjINS7_16LinearSquareLossEE11GetGradientERKNS2_16HostDeviceVectorIfEERKNS2_8MetaInfoEiPNS2_6linalg6TensorINS2_6detail20GradientPairInternalIfEELi2EEEEUlmNS3_4SpanIfLm18446744073709551615EEENSP_ISM_Lm18446744073709551615EEENSP_IKfLm18446744073709551615EEEST_ST_E_E9LaunchCPUIJSC_NSB_ISM_EESD_SD_SD_EEEvSU_DpPT_EUlmE_JmEEEvT_DpT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef byval(%class.anon.194) align 8 %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  invoke void @_ZZNK7xgboost6common9TransformILb0EE9EvaluatorIZNS_3obj10RegLossObjINS4_16LinearSquareLossEE11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmNS0_4SpanIfLm18446744073709551615EEENSM_ISJ_Lm18446744073709551615EEENSM_IKfLm18446744073709551615EEESQ_SQ_E_E9LaunchCPUIJS9_NS8_ISJ_EESA_SA_SA_EEEvSR_DpPT_ENKUlmE_clEm(ptr noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %2)
          to label %bb.n unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr @_ZTIN4dmlc5ErrorE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.b = extractvalue { ptr, i32 } %i.a, 0        ; 2 uses
  %i.c = extractvalue { ptr, i32 } %i.a, 1        ; 2 uses
  %i.d = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4dmlc5ErrorE) #21
  %i.e = icmp eq i32 %i.c, %i.d
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = call ptr @__cxa_begin_catch(ptr %i.b) #21 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #21 ; 2 uses
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.h) #37
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.c
  %i.i = load ptr, ptr %0, align 8, !tbaa !195
  %.not20 = icmp eq ptr %i.i, null
  br i1 %.not20, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.j = load ptr, ptr %6, align 8, !tbaa !195
  store ptr null, ptr %6, align 8, !tbaa !195
  %i.k = load ptr, ptr %0, align 8, !tbaa !195    ; 2 uses
  store ptr %i.k, ptr %4, align 8, !tbaa !195
  store ptr %i.j, ptr %0, align 8, !tbaa !195
  %.not.i.i8 = icmp eq ptr %i.k, null
  br i1 %.not.i.i8, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit: ; preds = %bb.e
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #21
  %.pr = load ptr, ptr %6, align 8, !tbaa !195
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %.sink.split

bb.g:                                             ; preds = %bb.b
  %i.l = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #21
  %i.m = icmp eq i32 %i.c, %i.l
  br i1 %i.m, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.n = call ptr @__cxa_begin_catch(ptr %i.b) #21 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.p = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.o) #21 ; 2 uses
  %.not.i.i9 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i9, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit11, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.p) #37
          to label %.noexc10 unwind label %bb.l

.noexc10:                                         ; preds = %bb.i
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit11:        ; preds = %bb.h
  %i.q = load ptr, ptr %0, align 8, !tbaa !195
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.j, label %.sink.split

bb.j:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.r = load ptr, ptr %5, align 8, !tbaa !195
  store ptr null, ptr %5, align 8, !tbaa !195
  %i.s = load ptr, ptr %0, align 8, !tbaa !195    ; 2 uses
  store ptr %i.s, ptr %3, align 8, !tbaa !195
  store ptr %i.r, ptr %0, align 8, !tbaa !195
  %.not.i.i12 = icmp eq ptr %i.s, null
  br i1 %.not.i.i12, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit13.thread, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit13

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit13.thread: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit15

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit13: ; preds = %bb.j
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #21
  %.pr18 = load ptr, ptr %5, align 8, !tbaa !195
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %.not.i14 = icmp eq ptr %.pr18, null
  br i1 %.not.i14, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit15, label %bb.k

end_hunk_0
begin_hunk_1_@_ZZN7xgboost6linalg8cpu_impl17ElementWiseKernelIKfLi2EZNS_3obj21PseudoHuberRegression11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS0_6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmmE_EEvNS0_10TensorViewIT_XT0_EEEiOT1_ENKUlOSL_E_clINS_6common7Range1dEEEDaSP_:bb.a
  %mul.result = shl i64 %i.ac, 3
  %mul.overflow = icmp ugt i64 %i.ac, 2305843009213693951
  %invariant.op = or i1 %ident.check27, %ident.check28
  %.mask = and i64 %i.u, 2305843009213693952
  %stride.check = icmp ne i64 %.mask, 0
  %.mask135 = and i64 %i.x, 2305843009213693952
  %stride.check55 = icmp ne i64 %.mask135, 0
  %n.vec = and i64 %i.f, 4611686018427387900      ; 3 uses
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br label %.preheader

.preheader.lr.ph.split.split.us:                  ; preds = %.preheader.lr.ph.split
  %i.ap = load i64, ptr %i.l, align 8, !tbaa !37  ; 4 uses
  %i.aq = load i64, ptr %i.m, align 8, !tbaa !37  ; 2 uses
  %i.ar = load ptr, ptr %i.n, align 8, !tbaa !276 ; 3 uses
  %i.as = add i64 %i.f, -1                        ; 2 uses
  %scevgep96 = getelementptr i8, ptr %i.h, i64 172
  %i.at = shl i64 %i.c, 2
  %i.au = add i64 %i.at, -4                       ; 2 uses
  %i.av = mul i64 %i.x, %i.au
  %i.aw = shl i64 %i.f, 2                         ; 2 uses
  %i.ax = getelementptr i8, ptr %i.z, i64 %i.av
  %scevgep97 = getelementptr i8, ptr %i.ax, i64 %i.aw
  %i.ay = mul i64 %i.x, %i.a
  %i.az = shl i64 %i.ay, 2
  %scevgep98 = getelementptr i8, ptr %i.z, i64 %i.az
  %i.ba = mul i64 %i.u, %i.au
  %i.bb = getelementptr i8, ptr %i.w, i64 %i.ba
  %scevgep99 = getelementptr i8, ptr %i.bb, i64 %i.aw
  %i.bc = mul i64 %i.u, %i.a
  %i.bd = shl i64 %i.bc, 2
  %scevgep100 = getelementptr i8, ptr %i.w, i64 %i.bd
  %i.be = shl i64 %i.c, 3
  %i.bf = add i64 %i.be, -8
  %i.bg = mul i64 %i.ap, %i.bf
  %i.bh = shl i64 %i.f, 3
  %i.bi = getelementptr i8, ptr %i.ar, i64 %i.bg
  %scevgep101 = getelementptr i8, ptr %i.bi, i64 %i.bh ; 3 uses
  %i.bj = mul i64 %i.ap, %i.a
  %i.bk = shl i64 %i.bj, 3
  %scevgep102 = getelementptr i8, ptr %i.ar, i64 %i.bk ; 3 uses
  %min.iters.check104 = icmp ult i64 %i.f, 4
  %ident.check68 = icmp ne i64 %i.aq, 1
  %ident.check69 = icmp ne i64 %i.v, 1
  %ident.check70 = icmp ne i64 %i.y, 1
  %mul.result72 = shl i64 %i.as, 3
  %mul.overflow73 = icmp ugt i64 %i.as, 2305843009213693951
  %i.bl = or i1 %ident.check68, %ident.check69
  %i.bm = or i1 %i.bl, %ident.check70
  %invariant.op140 = or i1 %mul.overflow73, %i.bm
  %bound0106 = icmp ult ptr %scevgep102, %scevgep99
  %bound1107 = icmp ult ptr %scevgep100, %scevgep101
  %found.conflict108 = and i1 %bound0106, %bound1107
  %.mask136 = and i64 %i.ap, 1152921504606846976
  %.mask137 = and i64 %i.u, 2305843009213693952
  %i.bn = or disjoint i64 %.mask137, %.mask136
  %i.bo = icmp ne i64 %i.bn, 0
  %i.bp = or i1 %found.conflict108, %i.bo
  %bound0111 = icmp ult ptr %scevgep102, %scevgep97
  %bound1112 = icmp ult ptr %scevgep98, %scevgep101
  %found.conflict113 = and i1 %bound0111, %bound1112
  %.mask138 = and i64 %i.x, 2305843009213693952
  %stride.check114 = icmp ne i64 %.mask138, 0
  %i.bq = or i1 %found.conflict113, %stride.check114
  %conflict.rdx115 = or i1 %i.bp, %i.bq
  %bound0116 = icmp ult ptr %scevgep102, %scevgep96
  %bound1117 = icmp ult ptr %i.i, %scevgep101
  %found.conflict118 = and i1 %bound0116, %bound1117
  %conflict.rdx119 = or i1 %conflict.rdx115, %found.conflict118
  %n.vec121 = and i64 %i.f, 4611686018427387900   ; 3 uses
  %cmp.n133 = icmp eq i64 %i.f, %n.vec121
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge.split.us.us, %.preheader.lr.ph.split.split.us
  %.0810.us = phi i64 [ %i.a, %.preheader.lr.ph.split.split.us ], [ %i.dr, %._crit_edge.split.us.us ] ; 4 uses
  %i.br = mul i64 %i.u, %.0810.us
  %i.bs = getelementptr [4 x i8], ptr %i.w, i64 %i.br ; 2 uses
  %i.bt = mul i64 %i.x, %.0810.us
  %i.bu = getelementptr [4 x i8], ptr %i.z, i64 %i.bt ; 2 uses
  %i.bv = mul i64 %i.ap, %.0810.us
  %i.bw = getelementptr [8 x i8], ptr %i.ar, i64 %i.bv ; 4 uses
  %i.bx = getelementptr i8, ptr %i.bw, i64 %mul.result72
  %i.by = icmp ult ptr %i.bx, %i.bw
  %.reass141 = or i1 %i.by, %invariant.op140
  %or.cond = select i1 %min.iters.check104, i1 true, i1 %.reass141
  %brmerge = select i1 %or.cond, i1 true, i1 %conflict.rdx119
  br i1 %brmerge, label %_ZZN7xgboost3obj21PseudoHuberRegression11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENUlmmE_clEmm.exit.us.us.preheader, label %vector.ph120

vector.ph120:                                     ; preds = %.preheader.us
  %i.bz = load float, ptr %i.i, align 8, !tbaa !81, !alias.scope !1160 ; 2 uses
  %i.ca = fmul float %i.bz, %i.bz
  %broadcast.splatinsert126 = insertelement <4 x float> poison, float %i.ca, i64 0
  %broadcast.splat127 = shufflevector <4 x float> %broadcast.splatinsert126, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.cb = load float, ptr %i.k, align 8, !tbaa !81, !alias.scope !1160
  %broadcast.splatinsert128 = insertelement <4 x float> poison, float %i.cb, i64 0
  %broadcast.splat129 = shufflevector <4 x float> %broadcast.splatinsert128, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body122

vector.body122:                                   ; preds = %vector.body122, %vector.ph120
  %index123 = phi i64 [ 0, %vector.ph120 ], [ %index.next131, %vector.body122 ] ; 4 uses
  %i.cc = getelementptr [4 x i8], ptr %i.bs, i64 %index123
  %wide.load124 = load <4 x float>, ptr %i.cc, align 4, !tbaa !81, !alias.scope !1161
  %i.cd = getelementptr [4 x i8], ptr %i.bu, i64 %index123
  %wide.load125 = load <4 x float>, ptr %i.cd, align 4, !tbaa !81, !alias.scope !1162
  %i.ce = fsub <4 x float> %wide.load124, %wide.load125 ; 3 uses
  %i.cf = fmul <4 x float> %i.ce, %i.ce           ; 2 uses
  %i.cg = fdiv <4 x float> %i.cf, %broadcast.splat127
  %i.ch = fadd <4 x float> %i.cg, splat (float 1.000000e+00)
  %i.ci = tail call <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.ch) ; 2 uses
  %i.cj = fadd <4 x float> %broadcast.splat127, %i.cf
  %i.ck = fmul <4 x float> %i.cj, %i.ci
  %i.cl = fdiv <4 x float> %broadcast.splat127, %i.ck
  %i.cm = fdiv <4 x float> %i.ce, %i.ci
  %i.cn = fmul <4 x float> %i.cm, %broadcast.splat129
  %i.co = fmul <4 x float> %i.cl, %broadcast.splat129
  %i.cp = getelementptr [8 x i8], ptr %i.bw, i64 %index123
  %interleaved.vec130 = shufflevector <4 x float> %i.cn, <4 x float> %i.co, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec130, ptr %i.cp, align 4, !tbaa !81, !alias.scope !1163, !noalias !1164
  %index.next131 = add nuw i64 %index123, 4       ; 2 uses
  %i.cq = icmp eq i64 %index.next131, %n.vec121
  br i1 %i.cq, label %middle.block132, label %vector.body122, !llvm.loop !1147

middle.block132:                                  ; preds = %vector.body122
  br i1 %cmp.n133, label %._crit_edge.split.us.us, label %_ZZN7xgboost3obj21PseudoHuberRegression11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENUlmmE_clEmm.exit.us.us.preheader

_ZZN7xgboost3obj21PseudoHuberRegression11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENUlmmE_clEmm.exit.us.us.preheader: ; preds = %.preheader.us, %middle.block132
  %.09.us.us.ph = phi i64 [ 0, %.preheader.us ], [ %n.vec121, %middle.block132 ]
  br label %_ZZN7xgboost3obj21PseudoHuberRegression11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENUlmmE_clEmm.exit.us.us

_ZZN7xgboost3obj21PseudoHuberRegression11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENUlmmE_clEmm.exit.us.us: ; preds = %_ZZN7xgboost3obj21PseudoHuberRegression11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENUlmmE_clEmm.exit.us.us.preheader, %_ZZN7xgboost3obj21PseudoHuberRegression11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENUlmmE_clEmm.exit.us.us
  %.09.us.us = phi i64 [ %i.dq, %_ZZN7xgboost3obj21PseudoHuberRegression11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENUlmmE_clEmm.exit.us.us ], [ %.09.us.us.ph, %_ZZN7xgboost3obj21PseudoHuberRegression11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENUlmmE_clEmm.exit.us.us.preheader ] ; 4 uses
  %i.cr = mul i64 %i.v, %.09.us.us
  %i.cs = getelementptr [4 x i8], ptr %i.bs, i64 %i.cr
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !81
  %i.cu = mul i64 %i.y, %.09.us.us
  %i.cv = getelementptr [4 x i8], ptr %i.bu, i64 %i.cu
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !81
  %i.cx = load float, ptr %i.i, align 8, !tbaa !81 ; 2 uses
  %i.cy = load float, ptr %i.k, align 8, !tbaa !81
  %i.cz = mul i64 %i.aq, %.09.us.us
  %i.da = getelementptr [8 x i8], ptr %i.bw, i64 %i.cz
  %i.db = fsub float %i.ct, %i.cw                 ; 3 uses
  %i.dc = fmul float %i.db, %i.db                 ; 2 uses
  %i.dd = fmul float %i.cx, %i.cx                 ; 3 uses
  %i.de = fdiv float %i.dc, %i.dd
  %i.df = fadd float %i.de, 1.000000e+00
  %sqrt.i.us.us = tail call float @llvm.sqrt.f32(float %i.df) ; 2 uses
  %i.dg = fadd float %i.dd, %i.dc
  %i.dh = fmul float %i.dg, %sqrt.i.us.us
  %i.di = insertelement <2 x float> poison, float %i.db, i64 0
  %i.dj = insertelement <2 x float> %i.di, float %i.dd, i64 1
  %i.dk = insertelement <2 x float> poison, float %sqrt.i.us.us, i64 0
  %i.dl = insertelement <2 x float> %i.dk, float %i.dh, i64 1
  %i.dm = fdiv <2 x float> %i.dj, %i.dl
  %i.dn = insertelement <2 x float> poison, float %i.cy, i64 0
  %i.do = shufflevector <2 x float> %i.dn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dp = fmul <2 x float> %i.dm, %i.do
  store <2 x float> %i.dp, ptr %i.da, align 4, !tbaa !81
  %i.dq = add nuw i64 %.09.us.us, 1               ; 2 uses
  %exitcond18.not = icmp eq i64 %i.dq, %i.f
  br i1 %exitcond18.not, label %._crit_edge.split.us.us, label %_ZZN7xgboost3obj21PseudoHuberRegression11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENUlmmE_clEmm.exit.us.us, !llvm.loop !1148

._crit_edge.split.us.us:                          ; preds = %_ZZN7xgboost3obj21PseudoHuberRegression11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENUlmmE_clEmm.exit.us.us, %middle.block132
  %i.dr = add nuw i64 %.0810.us, 1                ; 2 uses
  %exitcond19.not = icmp eq i64 %i.dr, %i.c
  br i1 %exitcond19.not, label %._crit_edge12.split, label %.preheader.us, !llvm.loop !1149

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge.split
  %indvar = phi i64 [ 0, %.preheader.preheader ], [ %indvar.next, %._crit_edge.split ] ; 3 uses
  %.0810 = phi i64 [ %i.a, %.preheader.preheader ], [ %i.fg, %._crit_edge.split ] ; 6 uses
  %i.ds = mul i64 %i.u, %.0810
  %i.dt = getelementptr [4 x i8], ptr %i.w, i64 %i.ds ; 2 uses
  %i.du = mul i64 %i.x, %.0810
  %i.dv = getelementptr [4 x i8], ptr %i.z, i64 %i.du ; 2 uses
  %exitcond16.not = icmp eq i64 %.0810, %umax
  br i1 %exitcond16.not, label %bb.b, label %.lr.ph.split.split, !prof !99

.lr.ph.split.split:                               ; preds = %.preheader
  %i.dw = load ptr, ptr %i.j, align 8, !tbaa !283 ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %.0810 ; 3 uses
  %i.dy = load i64, ptr %i.l, align 8, !tbaa !37  ; 2 uses
  %i.dz = mul i64 %i.dy, %.0810
  %i.ea = load i64, ptr %i.m, align 8, !tbaa !37  ; 2 uses
  %i.eb = load ptr, ptr %i.n, align 8, !tbaa !276 ; 2 uses
  %i.ec = getelementptr [8 x i8], ptr %i.eb, i64 %i.dz ; 8 uses
  br i1 %min.iters.check, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.split.split
  %ident.check = icmp ne i64 %i.ea, 1
  %i.ed = getelementptr i8, ptr %i.ec, i64 %mul.result
  %i.ee = icmp ult ptr %i.ed, %i.ec
  %i.ef = or i1 %i.ee, %mul.overflow
  %.reass = or i1 %ident.check, %invariant.op
  %i.eg = or i1 %.reass, %i.ef
  br i1 %i.eg, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.eh = add i64 %i.a, %indvar
  %i.ei = shl i64 %i.eh, 3
  %i.ej = mul i64 %i.dy, %i.ei
  %i.ek = getelementptr i8, ptr %i.eb, i64 %i.ej
  %i.el = getelementptr i8, ptr %i.ek, i64 %i.ao  ; 4 uses
  %bound0 = icmp ult ptr %i.ec, %scevgep50
  %bound1 = icmp ult ptr %scevgep51, %i.el
  %found.conflict = and i1 %bound0, %bound1
  %i.em = or i1 %found.conflict, %stride.check
  %bound052 = icmp ult ptr %i.ec, %scevgep48
  %bound153 = icmp ult ptr %scevgep49, %i.el
  %found.conflict54 = and i1 %bound052, %bound153
  %i.en = or i1 %found.conflict54, %stride.check55
  %conflict.rdx = or i1 %i.em, %i.en
  %bound056 = icmp ult ptr %i.ec, %scevgep
  %bound157 = icmp ult ptr %i.i, %i.el
  %found.conflict58 = and i1 %bound056, %bound157
  %conflict.rdx59 = or i1 %conflict.rdx, %found.conflict58
  %2 = add i64 %i.a, %indvar
  %3 = shl i64 %2, 2
  %4 = getelementptr i8, ptr %i.dw, i64 %3
  %5 = getelementptr i8, ptr %4, i64 4
  %bound060 = icmp ult ptr %i.ec, %5
  %bound161 = icmp ult ptr %i.dx, %i.el
  %found.conflict62 = and i1 %bound060, %bound161
  %conflict.rdx63 = or i1 %conflict.rdx59, %found.conflict62
  br i1 %conflict.rdx63, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.eo = load float, ptr %i.i, align 8, !tbaa !81, !alias.scope !1165 ; 2 uses
  %i.ep = fmul float %i.eo, %i.eo
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ep, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.eq = load float, ptr %i.dx, align 4, !tbaa !81, !alias.scope !1166
  %broadcast.splatinsert65 = insertelement <4 x float> poison, float %i.eq, i64 0
  %broadcast.splat66 = shufflevector <4 x float> %broadcast.splatinsert65, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.er = getelementptr [4 x i8], ptr %i.dt, i64 %index
  %wide.load = load <4 x float>, ptr %i.er, align 4, !tbaa !81, !alias.scope !1167
  %i.es = getelementptr [4 x i8], ptr %i.dv, i64 %index
  %wide.load64 = load <4 x float>, ptr %i.es, align 4, !tbaa !81, !alias.scope !1168
  %i.et = fsub <4 x float> %wide.load, %wide.load64 ; 3 uses
  %i.eu = fmul <4 x float> %i.et, %i.et           ; 2 uses
  %i.ev = fdiv <4 x float> %i.eu, %broadcast.splat
  %i.ew = fadd <4 x float> %i.ev, splat (float 1.000000e+00)
  %i.ex = tail call <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.ew) ; 2 uses
  %i.ey = fadd <4 x float> %broadcast.splat, %i.eu
  %i.ez = fmul <4 x float> %i.ey, %i.ex
  %i.fa = fdiv <4 x float> %broadcast.splat, %i.ez
  %i.fb = fdiv <4 x float> %i.et, %i.ex
  %i.fc = fmul <4 x float> %i.fb, %broadcast.splat66
  %i.fd = fmul <4 x float> %i.fa, %broadcast.splat66
  %i.fe = getelementptr [8 x i8], ptr %i.ec, i64 %index
  %interleaved.vec = shufflevector <4 x float> %i.fc, <4 x float> %i.fd, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.fe, align 4, !tbaa !81, !alias.scope !1169, !noalias !1170
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ff = icmp eq i64 %index.next, %n.vec
  br i1 %i.ff, label %middle.block, label %vector.body, !llvm.loop !1156

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.split, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.preheader

_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.preheader: ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.split.split, %middle.block
  %.09.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.split.split ], [ %n.vec, %middle.block ]
  br label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i

._crit_edge12.split:                              ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %.preheader.lr.ph, %bb.a
  ret void

._crit_edge.split:                                ; preds = %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i, %middle.block
  %i.fg = add i64 %.0810, 1                       ; 2 uses
  %exitcond17.not = icmp eq i64 %i.fg, %i.c
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond17.not, label %._crit_edge12.split, label %.preheader, !llvm.loop !1149

_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i: ; preds = %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.preheader, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i
  %.09 = phi i64 [ %i.gg, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i ], [ %.09.ph, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i.preheader ] ; 4 uses
  %i.fh = mul i64 %i.v, %.09
  %i.fi = getelementptr [4 x i8], ptr %i.dt, i64 %i.fh
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !81
  %i.fk = mul i64 %i.y, %.09
  %i.fl = getelementptr [4 x i8], ptr %i.dv, i64 %i.fk
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !81
  %i.fn = load float, ptr %i.i, align 8, !tbaa !81 ; 2 uses
  %i.fo = load float, ptr %i.dx, align 4, !tbaa !81
  %i.fp = mul i64 %i.ea, %.09
  %i.fq = getelementptr [8 x i8], ptr %i.ec, i64 %i.fp
  %i.fr = fsub float %i.fj, %i.fm                 ; 3 uses
  %i.fs = fmul float %i.fr, %i.fr                 ; 2 uses
  %i.ft = fmul float %i.fn, %i.fn                 ; 3 uses
  %i.fu = fdiv float %i.fs, %i.ft
  %i.fv = fadd float %i.fu, 1.000000e+00
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.fv) ; 2 uses
  %i.fw = fadd float %i.ft, %i.fs
  %i.fx = fmul float %i.fw, %sqrt.i
  %i.fy = insertelement <2 x float> poison, float %i.fr, i64 0
  %i.fz = insertelement <2 x float> %i.fy, float %i.ft, i64 1
  %i.ga = insertelement <2 x float> poison, float %sqrt.i, i64 0
  %i.gb = insertelement <2 x float> %i.ga, float %i.fx, i64 1
  %i.gc = fdiv <2 x float> %i.fz, %i.gb
  %i.gd = insertelement <2 x float> poison, float %i.fo, i64 0
  %i.ge = shufflevector <2 x float> %i.gd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gf = fmul <2 x float> %i.gc, %i.ge
  store <2 x float> %i.gf, ptr %i.fq, align 4, !tbaa !81
  %i.gg = add nuw i64 %.09, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.gg, %i.f
  br i1 %exitcond.not, label %._crit_edge.split, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i.i, !llvm.loop !1157

bb.b:                                             ; preds = %.preheader
  tail call void @_ZSt9terminatev() #39
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common11ParallelForImZNS0_13ParallelFor1dILm2048EmZNS_6linalg8cpu_impl17ElementWiseKernelIKfLi2EZNS_3obj21PseudoHuberRegression11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS3_6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmmE_EEvNS3_10TensorViewIT_XT0_EEEiOT1_EUlOSO_E0_EEvT0_iSR_EUlSO_E_EEvSO_iNS0_5SchedEOSU_(i64 noundef %0, i32 noundef %1, i32 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %6 = alloca %"class.xgboost::common::Range1d", align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %7 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %8 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %9 = alloca %"class.dmlc::OMPException", align 8 ; 13 uses
  %i.c = icmp eq i32 %1, 1
  br i1 %i.c, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.a
  %.not125 = icmp eq i64 %0, 0
  br i1 %.not125, label %.loopexit, label %.lr.ph118

.lr.ph118:                                        ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph118, %bb.b
  %.0117 = phi i64 [ 0, %.lr.ph118 ], [ %i.k, %bb.b ] ; 2 uses
  %i.e = shl i64 %.0117, 11                       ; 3 uses
  %i.f = load ptr, ptr %4, align 8, !tbaa !1181, !nonnull !80, !align !169
  %i.g = load i64, ptr %i.f, align 8, !tbaa !37
  %i.h = sub i64 %i.g, %i.e
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.h, i64 2048)
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !1182, !nonnull !80, !align !169
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.j = add i64 %.sroa.speculated.i, %i.e
  call void @_ZN7xgboost6common7Range1dC2Emm(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef %i.e, i64 noundef %i.j)
  call void @_ZZN7xgboost6linalg8cpu_impl17ElementWiseKernelIKfLi2EZNS_3obj21PseudoHuberRegression11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS0_6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmmE_EEvNS0_10TensorViewIT_XT0_EEEiOT1_ENKUlOSL_E0_clINS_6common7Range1dEEEDaSP_(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.k = add nuw i64 %.0117, 1                    ; 2 uses
  %exitcond147.not = icmp eq i64 %i.k, %0
  br i1 %exitcond147.not, label %.loopexit, label %bb.b, !llvm.loop !1171

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %1, ptr %i.a, align 4, !tbaa !100, !noalias !1183
  store i32 1, ptr %i.b, align 4, !tbaa !100, !noalias !1183
  %.not.i = icmp slt i32 %1, 1
  br i1 %.not.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.c
  call void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %7, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %.pr = load ptr, ptr %7, align 8, !tbaa !83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.l = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.l, ptr noundef nonnull @.str.126, i32 noundef 196)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.e

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.m = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.f ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.57, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.127, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.p = load ptr, ptr %7, align 8, !tbaa !83     ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !34
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !38
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef %i.q, i64 noundef %i.s)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.f

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull @.str.59, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %.noexc, %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit71, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.g unwind label %bb.ad

end_hunk_1
