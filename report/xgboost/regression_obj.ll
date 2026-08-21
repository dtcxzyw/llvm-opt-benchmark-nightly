Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/regression_obj?download=true
inline.NumInlined: 7707
inline.NumDeleted: 2228
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN7xgboost6common11ParallelForImZNKS0_9TransformILb0EE9EvaluatorIZNS_3obj10RegLossObjINS5_16LinearSquareLossEE11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmNS0_4SpanIfLm18446744073709551615EEENSN_ISK_Lm18446744073709551615EEENSN_IKfLm18446744073709551615EEESR_SR_E_E9LaunchCPUIJSA_NS9_ISK_EESB_SB_SB_EEEvSS_DpPT_EUlmE_EEvT_iNS0_5SchedEOT0_:bb.a

.preheader79:                                     ; preds = %bb.p
  br i1 %.not98, label %bb.w, label %.lr.ph85

.preheader77:                                     ; preds = %bb.p
  br i1 %.not98, label %bb.w, label %.lr.ph87

.lr.ph87:                                         ; preds = %.preheader77, %bb.q
  %.04186 = phi i64 [ %i.ad, %bb.q ], [ 0, %.preheader77 ] ; 2 uses
  invoke void @_ZN4dmlc12OMPException3RunIZNK7xgboost6common9TransformILb0EE9EvaluatorIZNS2_3obj10RegLossObjINS7_16LinearSquareLossEE11GetGradientERKNS2_16HostDeviceVectorIfEERKNS2_8MetaInfoEiPNS2_6linalg6TensorINS2_6detail20GradientPairInternalIfEELi2EEEEUlmNS3_4SpanIfLm18446744073709551615EEENSP_ISM_Lm18446744073709551615EEENSP_IKfLm18446744073709551615EEEST_ST_E_E9LaunchCPUIJSC_NSB_ISM_EESD_SD_SD_EEEvSU_DpPT_EUlmE_JmEEEvT_DpT0_(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull byval(%class.anon.194) align 8 %4, i64 noundef %.04186)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %.lr.ph87
  %i.ad = add nuw i64 %.04186, 1                  ; 2 uses
  %exitcond109.not = icmp eq i64 %i.ad, %0
  br i1 %exitcond109.not, label %thread-pre-split125, label %.lr.ph87, !llvm.loop !389

bb.r:                                             ; preds = %.lr.ph87
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph85:                                         ; preds = %.preheader79, %bb.s
  %.04084 = phi i64 [ %i.af, %bb.s ], [ 0, %.preheader79 ] ; 2 uses
  invoke void @_ZN4dmlc12OMPException3RunIZNK7xgboost6common9TransformILb0EE9EvaluatorIZNS2_3obj10RegLossObjINS7_16LinearSquareLossEE11GetGradientERKNS2_16HostDeviceVectorIfEERKNS2_8MetaInfoEiPNS2_6linalg6TensorINS2_6detail20GradientPairInternalIfEELi2EEEEUlmNS3_4SpanIfLm18446744073709551615EEENSP_ISM_Lm18446744073709551615EEENSP_IKfLm18446744073709551615EEEST_ST_E_E9LaunchCPUIJSC_NSB_ISM_EESD_SD_SD_EEEvSU_DpPT_EUlmE_JmEEEvT_DpT0_(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull byval(%class.anon.194) align 8 %4, i64 noundef %.04084)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %.lr.ph85
  %i.af = add nuw i64 %.04084, 1                  ; 2 uses
  %exitcond108.not = icmp eq i64 %i.af, %0
  br i1 %exitcond108.not, label %thread-pre-split125, label %.lr.ph85, !llvm.loop !390

bb.t:                                             ; preds = %.lr.ph85
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph:                                           ; preds = %.preheader81, %bb.u
  %.083 = phi i64 [ %i.ah, %bb.u ], [ 0, %.preheader81 ] ; 2 uses
  invoke void @_ZN4dmlc12OMPException3RunIZNK7xgboost6common9TransformILb0EE9EvaluatorIZNS2_3obj10RegLossObjINS7_16LinearSquareLossEE11GetGradientERKNS2_16HostDeviceVectorIfEERKNS2_8MetaInfoEiPNS2_6linalg6TensorINS2_6detail20GradientPairInternalIfEELi2EEEEUlmNS3_4SpanIfLm18446744073709551615EEENSP_ISM_Lm18446744073709551615EEENSP_IKfLm18446744073709551615EEEST_ST_E_E9LaunchCPUIJSC_NSB_ISM_EESD_SD_SD_EEEvSU_DpPT_EUlmE_JmEEEvT_DpT0_(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull byval(%class.anon.194) align 8 %4, i64 noundef %.083)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %.lr.ph
  %i.ah = add nuw i64 %.083, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ah, %0
  br i1 %exitcond.not, label %thread-pre-split125, label %.lr.ph, !llvm.loop !391

bb.v:                                             ; preds = %.lr.ph
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

thread-pre-split125:                              ; preds = %bb.u, %bb.s, %bb.q, %bb.n, %bb.l, %bb.i
  %.pr71.pr = load ptr, ptr %8, align 8, !tbaa !392
  br label %bb.w

bb.w:                                             ; preds = %thread-pre-split125, %.preheader72, %.preheader73, %.preheader75, %.preheader77, %.preheader79, %.preheader81
  %.pr71 = phi ptr [ %.pr71.pr, %thread-pre-split125 ], [ null, %.preheader72 ], [ null, %.preheader73 ], [ null, %.preheader75 ], [ null, %.preheader77 ], [ null, %.preheader79 ], [ null, %.preheader81 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %.not.i64 = icmp eq ptr %.pr71, null
  br i1 %.not.i64, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i: ; preds = %bb.w
  store ptr %.pr71, ptr %5, align 8, !tbaa !392
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %5) #37
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i
  unreachable

bb.y:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = load ptr, ptr %5, align 8, !tbaa !392
  %.not.i2.i = icmp eq ptr %i.ak, null
  br i1 %.not.i2.i, label %.body, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  br label %.body

_ZN4dmlc12OMPExceptionD2Ev.exit:                  ; preds = %.thread, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph95, %.preheader, %_ZN4dmlc12OMPExceptionD2Ev.exit
  ret void

.body:                                            ; preds = %bb.z, %bb.y, %bb.v, %bb.t, %bb.r, %bb.o, %bb.m, %bb.j
  %.pn52 = phi { ptr, i32 } [ %i.ai, %bb.v ], [ %i.w, %bb.j ], [ %i.z, %bb.m ], [ %i.ab, %bb.o ], [ %i.ae, %bb.r ], [ %i.ag, %bb.t ], [ %i.aj, %bb.y ], [ %i.aj, %bb.z ]
  %i.al = load ptr, ptr %8, align 8, !tbaa !392
  %.not.i.i66 = icmp eq ptr %i.al, null
  br i1 %.not.i.i66, label %_ZN4dmlc12OMPExceptionD2Ev.exit68, label %bb.aa

bb.aa:                                            ; preds = %.body
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(48) %8) #21
  br label %_ZN4dmlc12OMPExceptionD2Ev.exit68

_ZN4dmlc12OMPExceptionD2Ev.exit68:                ; preds = %.body, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN4dmlc12OMPExceptionD2Ev.exit68, %bb.f
  %.pn52.pn = phi { ptr, i32 } [ %.pn52, %_ZN4dmlc12OMPExceptionD2Ev.exit68 ], [ %.pn, %bb.f ]
  resume { ptr, i32 } %.pn52.pn

bb.ac:                                            ; preds = %bb.e
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #39
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZNK7xgboost6common9TransformILb0EE9EvaluatorIZNS_3obj10RegLossObjINS4_16LinearSquareLossEE11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmNS0_4SpanIfLm18446744073709551615EEENSM_ISJ_Lm18446744073709551615EEENSM_IKfLm18446744073709551615EEESQ_SQ_E_E9LaunchCPUIJS9_NS8_ISJ_EESA_SA_SA_EEEvSR_DpPT_ENKUlmE_clEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !394, !nonnull !80, !align !289 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !395, !nonnull !80, !align !289
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !359  ; 2 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN7xgboost16HostDeviceVectorIfE10HostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !268  ; 3 uses
  %i.g = tail call noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 2 uses
  %i.h = icmp ne ptr %i.f, null
  %i.i = icmp eq i64 %i.g, 0                      ; 2 uses
  %i.j = or i1 %i.h, %i.i
  br i1 %i.j, label %_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNS_3obj10RegLossObjINS4_16LinearSquareLossEE11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmNS0_4SpanIfLm18446744073709551615EEENSM_ISJ_Lm18446744073709551615EEENSM_IKfLm18446744073709551615EEESQ_SQ_E_E9UnpackHDVIfEENSM_IT_Lm18446744073709551615EEEPNS8_ISU_EE.exit, label %bb.b, !prof !271

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #39
  unreachable

_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNS_3obj10RegLossObjINS4_16LinearSquareLossEE11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmNS0_4SpanIfLm18446744073709551615EEENSM_ISJ_Lm18446744073709551615EEENSM_IKfLm18446744073709551615EEESQ_SQ_E_E9UnpackHDVIfEENSM_IT_Lm18446744073709551615EEEPNS8_ISU_EE.exit: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !396, !nonnull !80, !align !289
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !361  ; 2 uses
  %i.n = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN7xgboost16HostDeviceVectorINS_6detail20GradientPairInternalIfEEE10HostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !397  ; 6 uses
  %i.p = tail call noundef i64 @_ZNK7xgboost16HostDeviceVectorINS_6detail20GradientPairInternalIfEEE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
  %i.q = icmp ne ptr %i.o, null
  %i.r = icmp eq i64 %i.p, 0
  %i.s = or i1 %i.q, %i.r
  br i1 %i.s, label %_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNS_3obj10RegLossObjINS4_16LinearSquareLossEE11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmNS0_4SpanIfLm18446744073709551615EEENSM_ISJ_Lm18446744073709551615EEENSM_IKfLm18446744073709551615EEESQ_SQ_E_E9UnpackHDVISJ_EENSM_IT_Lm18446744073709551615EEEPNS8_ISU_EE.exit, label %bb.c, !prof !271

bb.c:                                             ; preds = %_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNS_3obj10RegLossObjINS4_16LinearSquareLossEE11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmNS0_4SpanIfLm18446744073709551615EEENSM_ISJ_Lm18446744073709551615EEENSM_IKfLm18446744073709551615EEESQ_SQ_E_E9UnpackHDVIfEENSM_IT_Lm18446744073709551615EEEPNS8_ISU_EE.exit
  tail call void @_ZSt9terminatev() #39
  unreachable

_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNS_3obj10RegLossObjINS4_16LinearSquareLossEE11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmNS0_4SpanIfLm18446744073709551615EEENSM_ISJ_Lm18446744073709551615EEENSM_IKfLm18446744073709551615EEESQ_SQ_E_E9UnpackHDVISJ_EENSM_IT_Lm18446744073709551615EEEPNS8_ISU_EE.exit: ; preds = %_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNS_3obj10RegLossObjINS4_16LinearSquareLossEE11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmNS0_4SpanIfLm18446744073709551615EEENSM_ISJ_Lm18446744073709551615EEENSM_IKfLm18446744073709551615EEESQ_SQ_E_E9UnpackHDVIfEENSM_IT_Lm18446744073709551615EEEPNS8_ISU_EE.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !400, !nonnull !80, !align !289
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !359  ; 2 uses
  %i.w = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !268  ; 6 uses
  %i.y = tail call noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %i.z = icmp ne ptr %i.x, null
  %i.aa = icmp eq i64 %i.y, 0
  %i.ab = or i1 %i.z, %i.aa
  br i1 %i.ab, label %_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNS_3obj10RegLossObjINS4_16LinearSquareLossEE11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmNS0_4SpanIfLm18446744073709551615EEENSM_ISJ_Lm18446744073709551615EEENSM_IKfLm18446744073709551615EEESQ_SQ_E_E9UnpackHDVIfEENSM_IKT_Lm18446744073709551615EEEPKNS8_ISU_EE.exit, label %bb.d, !prof !271

bb.d:                                             ; preds = %_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNS_3obj10RegLossObjINS4_16LinearSquareLossEE11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmNS0_4SpanIfLm18446744073709551615EEENSM_ISJ_Lm18446744073709551615EEENSM_IKfLm18446744073709551615EEESQ_SQ_E_E9UnpackHDVISJ_EENSM_IT_Lm18446744073709551615EEEPNS8_ISU_EE.exit
  tail call void @_ZSt9terminatev() #39
  unreachable

_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNS_3obj10RegLossObjINS4_16LinearSquareLossEE11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmNS0_4SpanIfLm18446744073709551615EEENSM_ISJ_Lm18446744073709551615EEENSM_IKfLm18446744073709551615EEESQ_SQ_E_E9UnpackHDVIfEENSM_IKT_Lm18446744073709551615EEEPKNS8_ISU_EE.exit: ; preds = %_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNS_3obj10RegLossObjINS4_16LinearSquareLossEE11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmNS0_4SpanIfLm18446744073709551615EEENSM_ISJ_Lm18446744073709551615EEENSM_IKfLm18446744073709551615EEESQ_SQ_E_E9UnpackHDVISJ_EENSM_IT_Lm18446744073709551615EEEPNS8_ISU_EE.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !401, !nonnull !80, !align !289
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !359 ; 2 uses
  %i.af = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ae)
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !268 ; 6 uses
  %i.ah = tail call noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ae)
  %i.ai = icmp ne ptr %i.ag, null
  %i.aj = icmp eq i64 %i.ah, 0
  %i.ak = or i1 %i.ai, %i.aj
  br i1 %i.ak, label %_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNS_3obj10RegLossObjINS4_16LinearSquareLossEE11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmNS0_4SpanIfLm18446744073709551615EEENSM_ISJ_Lm18446744073709551615EEENSM_IKfLm18446744073709551615EEESQ_SQ_E_E9UnpackHDVIfEENSM_IKT_Lm18446744073709551615EEEPKNS8_ISU_EE.exit9, label %bb.e, !prof !271

bb.e:                                             ; preds = %_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNS_3obj10RegLossObjINS4_16LinearSquareLossEE11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmNS0_4SpanIfLm18446744073709551615EEENSM_ISJ_Lm18446744073709551615EEENSM_IKfLm18446744073709551615EEESQ_SQ_E_E9UnpackHDVIfEENSM_IKT_Lm18446744073709551615EEEPKNS8_ISU_EE.exit
  tail call void @_ZSt9terminatev() #39
  unreachable

_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNS_3obj10RegLossObjINS4_16LinearSquareLossEE11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmNS0_4SpanIfLm18446744073709551615EEENSM_ISJ_Lm18446744073709551615EEENSM_IKfLm18446744073709551615EEESQ_SQ_E_E9UnpackHDVIfEENSM_IKT_Lm18446744073709551615EEEPKNS8_ISU_EE.exit9: ; preds = %_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNS_3obj10RegLossObjINS4_16LinearSquareLossEE11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmNS0_4SpanIfLm18446744073709551615EEENSM_ISJ_Lm18446744073709551615EEENSM_IKfLm18446744073709551615EEESQ_SQ_E_E9UnpackHDVIfEENSM_IKT_Lm18446744073709551615EEEPKNS8_ISU_EE.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !402, !nonnull !80, !align !289
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !359 ; 2 uses
  %i.ao = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !268 ; 2 uses
  %i.aq = tail call noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
  %i.ar = icmp ne ptr %i.ap, null
  %i.as = icmp eq i64 %i.aq, 0
  %i.at = or i1 %i.ar, %i.as
  br i1 %i.at, label %_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNS_3obj10RegLossObjINS4_16LinearSquareLossEE11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmNS0_4SpanIfLm18446744073709551615EEENSM_ISJ_Lm18446744073709551615EEENSM_IKfLm18446744073709551615EEESQ_SQ_E_E9UnpackHDVIfEENSM_IKT_Lm18446744073709551615EEEPKNS8_ISU_EE.exit12, label %bb.f, !prof !271

bb.f:                                             ; preds = %_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNS_3obj10RegLossObjINS4_16LinearSquareLossEE11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmNS0_4SpanIfLm18446744073709551615EEENSM_ISJ_Lm18446744073709551615EEENSM_IKfLm18446744073709551615EEESQ_SQ_E_E9UnpackHDVIfEENSM_IKT_Lm18446744073709551615EEEPKNS8_ISU_EE.exit9
  tail call void @_ZSt9terminatev() #39
  unreachable

_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNS_3obj10RegLossObjINS4_16LinearSquareLossEE11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmNS0_4SpanIfLm18446744073709551615EEENSM_ISJ_Lm18446744073709551615EEENSM_IKfLm18446744073709551615EEESQ_SQ_E_E9UnpackHDVIfEENSM_IKT_Lm18446744073709551615EEEPKNS8_ISU_EE.exit12: ; preds = %_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNS_3obj10RegLossObjINS4_16LinearSquareLossEE11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmNS0_4SpanIfLm18446744073709551615EEENSM_ISJ_Lm18446744073709551615EEENSM_IKfLm18446744073709551615EEESQ_SQ_E_E9UnpackHDVIfEENSM_IKT_Lm18446744073709551615EEEPKNS8_ISU_EE.exit9
  %i.au = load i64, ptr %i.a, align 8, !tbaa !403 ; 3 uses
  %i.av = mul i64 %i.au, %1                       ; 8 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ax = add i64 %i.av, %i.au
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !17
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.ax, i64 %i.ay) ; 6 uses
  br i1 %i.i, label %bb.g, label %_ZNK7xgboost6common4SpanIfLm18446744073709551615EEixEm.exit.i, !prof !116

bb.g:                                             ; preds = %_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNS_3obj10RegLossObjINS4_16LinearSquareLossEE11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmNS0_4SpanIfLm18446744073709551615EEENSM_ISJ_Lm18446744073709551615EEENSM_IKfLm18446744073709551615EEESQ_SQ_E_E9UnpackHDVIfEENSM_IKT_Lm18446744073709551615EEEPKNS8_ISU_EE.exit12
  tail call void @_ZSt9terminatev() #39
  unreachable

_ZNK7xgboost6common4SpanIfLm18446744073709551615EEixEm.exit.i: ; preds = %_ZNK7xgboost6common9TransformILb0EE9EvaluatorIZNS_3obj10RegLossObjINS4_16LinearSquareLossEE11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEEUlmNS0_4SpanIfLm18446744073709551615EEENSM_ISJ_Lm18446744073709551615EEENSM_IKfLm18446744073709551615EEESQ_SQ_E_E9UnpackHDVIfEENSM_IKT_Lm18446744073709551615EEEPKNS8_ISU_EE.exit12
  %i.az = load float, ptr %i.f, align 4, !tbaa !81 ; 3 uses
  %.not32.i = icmp eq i64 %i.g, 1
  br i1 %.not32.i, label %bb.h, label %_ZNK7xgboost6common4SpanIfLm18446744073709551615EEixEm.exit25.i, !prof !116

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
  br i1 %i.bd, label %.lr.ph.split.us.i.preheader, label %.lr.ph.split.i

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i
  %i.bf = sub i64 %.sroa.speculated.i, %i.av      ; 3 uses
  %min.iters.check = icmp ult i64 %i.bf, 12
  br i1 %min.iters.check, label %.lr.ph.split.us.i.preheader36, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.us.i.preheader
  %i.bg = mul i64 %i.au, %1                       ; 2 uses
  %i.bh = shl i64 %i.bg, 3
  %scevgep = getelementptr i8, ptr %i.o, i64 %i.bh ; 2 uses
  %i.bi = shl i64 %.sroa.speculated.i, 3
  %scevgep27 = getelementptr i8, ptr %i.o, i64 %i.bi ; 2 uses
  %i.bj = shl i64 %i.bg, 2                        ; 2 uses
  %scevgep28 = getelementptr i8, ptr %i.x, i64 %i.bj
  %i.bk = shl i64 %.sroa.speculated.i, 2          ; 2 uses
  %scevgep29 = getelementptr i8, ptr %i.x, i64 %i.bk
  %scevgep30 = getelementptr i8, ptr %i.ag, i64 %i.bj
  %scevgep31 = getelementptr i8, ptr %i.ag, i64 %i.bk
  %bound0 = icmp ult ptr %scevgep, %scevgep29
  %bound1 = icmp ult ptr %scevgep28, %scevgep27
  %found.conflict = and i1 %bound0, %bound1
  %bound032 = icmp ult ptr %scevgep, %scevgep31
  %bound133 = icmp ult ptr %scevgep30, %scevgep27
  %found.conflict34 = and i1 %bound032, %bound133
  %conflict.rdx = or i1 %found.conflict, %found.conflict34
  br i1 %conflict.rdx, label %.lr.ph.split.us.i.preheader36, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bf, -4                      ; 3 uses
  %i.bl = add i64 %i.av, %n.vec
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.az, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bm = add nuw i64 %i.av, %index               ; 3 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.bm
  %wide.load = load <4 x float>, ptr %i.bn, align 4, !tbaa !81, !alias.scope !404
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.bm
  %wide.load35 = load <4 x float>, ptr %i.bo, align 4, !tbaa !81, !alias.scope !407 ; 2 uses
  %i.bp = fcmp oeq <4 x float> %wide.load35, splat (float 1.000000e+00)
  %i.bq = select <4 x i1> %i.bp, <4 x float> %broadcast.splat, <4 x float> splat (float 1.000000e+00) ; 2 uses
  %i.br = fsub <4 x float> %wide.load, %wide.load35
  %i.bs = fmul <4 x float> %i.br, %i.bq
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.bm
  %interleaved.vec = shufflevector <4 x float> %i.bs, <4 x float> %i.bq, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.bt, align 4, !alias.scope !409, !noalias !411
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !412

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bf, %n.vec
  br i1 %cmp.n, label %_ZZN7xgboost3obj10RegLossObjINS0_16LinearSquareLossEE11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENKUlmNS_6common4SpanIfLm18446744073709551615EEENSJ_ISF_Lm18446744073709551615EEENSJ_IKfLm18446744073709551615EEESN_SN_E_clEmSK_SL_SN_SN_SN_.exit, label %.lr.ph.split.us.i.preheader36

.lr.ph.split.us.i.preheader36:                    ; preds = %vector.memcheck, %.lr.ph.split.us.i.preheader, %middle.block
  %.02433.us.i.ph = phi i64 [ %i.av, %vector.memcheck ], [ %i.av, %.lr.ph.split.us.i.preheader ], [ %i.bl, %middle.block ]
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader36, %.lr.ph.split.us.i
  %.02433.us.i = phi i64 [ %i.cd, %.lr.ph.split.us.i ], [ %.02433.us.i.ph, %.lr.ph.split.us.i.preheader36 ] ; 4 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.02433.us.i
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !81
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.02433.us.i
  %i.by = load float, ptr %i.bx, align 4, !tbaa !81 ; 2 uses
  %i.bz = fcmp oeq float %i.by, 1.000000e+00
  %.0.us.i = select i1 %i.bz, float %i.az, float 1.000000e+00 ; 2 uses
  %i.ca = fsub float %i.bw, %i.by
  %i.cb = fmul float %i.ca, %.0.us.i
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.02433.us.i ; 2 uses
  store float %i.cb, ptr %i.cc, align 4
  %.sroa_idx26.us.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  store float %.0.us.i, ptr %.sroa_idx26.us.i, align 4
  %i.cd = add nuw i64 %.02433.us.i, 1             ; 2 uses
  %i.ce = icmp ult i64 %i.cd, %.sroa.speculated.i
  br i1 %i.ce, label %.lr.ph.split.us.i, label %_ZZN7xgboost3obj10RegLossObjINS0_16LinearSquareLossEE11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENKUlmNS_6common4SpanIfLm18446744073709551615EEENSJ_ISF_Lm18446744073709551615EEENSJ_IKfLm18446744073709551615EEESN_SN_E_clEmSK_SL_SN_SN_SN_.exit, !llvm.loop !415

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %.lr.ph.split.i
  %.02433.i = phi i64 [ %i.ct, %.lr.ph.split.i ], [ %i.av, %.lr.ph.i ] ; 5 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.02433.i
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !81
  %i.ch = load i32, ptr %i.be, align 8, !tbaa !416
  %i.ci = zext i32 %i.ch to i64
  %i.cj = udiv i64 %.02433.i, %i.ci
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.cj
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !81 ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.02433.i
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !81 ; 2 uses
  %i.co = fcmp oeq float %i.cn, 1.000000e+00
  %i.cp = fmul float %i.az, %i.cl
  %.0.i = select i1 %i.co, float %i.cp, float %i.cl ; 2 uses
  %i.cq = fsub float %i.cg, %i.cn
  %i.cr = fmul float %i.cq, %.0.i
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.02433.i ; 2 uses
  store float %i.cr, ptr %i.cs, align 4
  %.sroa_idx26.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  store float %.0.i, ptr %.sroa_idx26.i, align 4
  %i.ct = add nuw i64 %.02433.i, 1                ; 2 uses
  %i.cu = icmp ult i64 %i.ct, %.sroa.speculated.i
  br i1 %i.cu, label %.lr.ph.split.i, label %_ZZN7xgboost3obj10RegLossObjINS0_16LinearSquareLossEE11GetGradientERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEiPNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEENKUlmNS_6common4SpanIfLm18446744073709551615EEENSJ_ISF_Lm18446744073709551615EEENSJ_IKfLm18446744073709551615EEESN_SN_E_clEmSK_SL_SN_SN_SN_.exit, !llvm.loop !417

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
  %i.i = load ptr, ptr %0, align 8, !tbaa !392
  %.not20 = icmp eq ptr %i.i, null
  br i1 %.not20, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.j = load ptr, ptr %6, align 8, !tbaa !392
  store ptr null, ptr %6, align 8, !tbaa !392
  %i.k = load ptr, ptr %0, align 8, !tbaa !392    ; 2 uses
  store ptr %i.k, ptr %4, align 8, !tbaa !392
  store ptr %i.j, ptr %0, align 8, !tbaa !392
  %.not.i.i8 = icmp eq ptr %i.k, null
  br i1 %.not.i.i8, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit: ; preds = %bb.e
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #21
  %.pr = load ptr, ptr %6, align 8, !tbaa !392
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
  %i.q = load ptr, ptr %0, align 8, !tbaa !392
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.j, label %.sink.split

bb.j:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %5) #21
end_hunk_0
