begin_hunk_0_@_ZN2cv3dnn16EltwiseLayerImplD2Ev:bb.a
; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv3dnn16EltwiseLayerImplD0Ev(ptr noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !106  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v2026060515ActivationLayerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !107
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !109
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !114
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !114
  br label %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v2026060515ActivationLayerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !111
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v2026060515ActivationLayerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !112

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23
  br label %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v2026060515ActivationLayerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v2026060515ActivationLayerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.c, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !70   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1.i, label %_ZN2cv3dnn16EltwiseLayerImplD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v2026060515ActivationLayerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !79
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #22
  br label %_ZN2cv3dnn16EltwiseLayerImplD2Ev.exit

_ZN2cv3dnn16EltwiseLayerImplD2Ev.exit:            ; preds = %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v2026060515ActivationLayerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.h
  tail call void @_ZN2cv3dnn14dnn5_v202606055LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(156) dereferenceable(224) %0) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 224) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv9Algorithm5clearEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2cv9Algorithm5writeERNS_11FileStorageE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #8 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv9Algorithm4readERKNS_8FileNodeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #8 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2cv9Algorithm5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret i1 false
}

declare void @_ZNK2cv9Algorithm4saveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

declare void @_ZNK2cv9Algorithm14getDefaultNameB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

declare noundef ptr @_ZNK2cv3dnn14dnn5_v202606055Layer9subgraphsEv(ptr noundef nonnull align 8 dereferenceable(156)) unnamed_addr #3

declare void @_ZN2cv3dnn14dnn5_v202606055Layer8finalizeERKSt6vectorIPNS_3MatESaIS5_EERS3_IS4_SaIS4_EE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 1, ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn16EltwiseLayerImpl8finalizeERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector", align 8       ; 11 uses
  %4 = alloca %"struct.cv::MatShape", align 4     ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  invoke void @_ZNK2cv11_InputArray12getMatVectorERSt6vectorINS_3MatESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %.preheader unwind label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115  ; 2 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !116    ; 3 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %.loopexit17, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 12
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.c:                                             ; preds = %.lr.ph, %.critedge
  %i.f = phi ptr [ %i.c, %.lr.ph ], [ %i.i, %.critedge ]
  %.01035 = phi i64 [ 0, %.lr.ph ], [ %i.t, %.critedge ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.g = getelementptr inbounds nuw [208 x i8], ptr %i.f, i64 %.01035
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %4, ptr noundef nonnull align 4 dereferenceable(52) %i.h)
          to label %_ZNK2cv3Mat5shapeEv.exit unwind label %.loopexit18

_ZNK2cv3Mat5shapeEv.exit:                         ; preds = %bb.c
  %i.i = load ptr, ptr %3, align 8, !tbaa !116    ; 5 uses
  %i.j = getelementptr inbounds nuw [208 x i8], ptr %i.i, i64 %.01035
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !117  ; 6 uses
  %.not.i = icmp slt i32 %i.l, 0
  br i1 %.not.i, label %.invoke, label %bb.d

.invoke:                                          ; preds = %bb.d, %_ZNK2cv3Mat5shapeEv.exit
  %i.m = phi i32 [ 0, %_ZNK2cv3Mat5shapeEv.exit ], [ %i.l, %bb.d ]
  %i.n = phi i32 [ %i.l, %_ZNK2cv3Mat5shapeEv.exit ], [ %i.p, %bb.d ]
  %i.o = phi ptr [ @_ZZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEiiE15__cv_check__279, %_ZNK2cv3Mat5shapeEv.exit ], [ @_ZZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEiiE15__cv_check__280, %bb.d ]
  invoke void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef %i.m, i32 noundef %i.n, ptr noundef nonnull align 8 dereferenceable(48) %i.o) #25
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.d:                                             ; preds = %_ZNK2cv3Mat5shapeEv.exit
  %i.p = load i32, ptr %4, align 4, !tbaa !124    ; 2 uses
  %.not23.i = icmp sgt i32 %i.l, %i.p
  br i1 %.not23.i, label %.invoke, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d
  %.not28.i.not = icmp eq i32 %i.l, 0
  br i1 %.not28.i.not, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %wide.trip.count31.i = zext nneg i32 %i.l to i64
  br label %_ZNK2cv8MatShapeixEm.exit.i

bb.e:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond32.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count31.i
  br i1 %exitcond32.not.i, label %.loopexit, label %_ZNK2cv8MatShapeixEm.exit.i, !llvm.loop !125

_ZNK2cv8MatShapeixEm.exit.i:                      ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i
  %i.r = load i32, ptr %i.q, align 4, !tbaa !111
  %.not24.i = icmp eq i32 %i.r, 1
  br i1 %.not24.i, label %bb.e, label %.critedge

.loopexit:                                        ; preds = %.preheader.i, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i8 1, ptr %i.s, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !115
  br label %.loopexit17

.loopexit18:                                      ; preds = %bb.c
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit18, %.loopexit.split-lp
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit18 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.g

.critedge:                                        ; preds = %_ZNK2cv8MatShapeixEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.t = add nuw i64 %.01035, 1                   ; 2 uses
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !115  ; 2 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.i to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = sdiv exact i64 %i.x, 208
  %i.z = icmp ult i64 %i.t, %i.y
  br i1 %i.z, label %bb.c, label %.loopexit17, !llvm.loop !126

.loopexit17:                                      ; preds = %.critedge, %.preheader, %.loopexit
  %i.aa = phi ptr [ %.pre, %.loopexit ], [ %i.b, %.preheader ], [ %i.u, %.critedge ] ; 2 uses
  %i.ab = phi ptr [ %i.i, %.loopexit ], [ %i.c, %.preheader ], [ %i.i, %.critedge ] ; 3 uses
  %.not4.i.i.i = icmp eq ptr %i.ab, %i.aa
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit17, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.ab, %.loopexit17 ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i) #23
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ac, %i.aa
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !127

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !116
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %.loopexit17
  %i.ad = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.ab, %.loopexit17 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !128
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ai) #22
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit:          ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

bb.g:                                             ; preds = %.body, %bb.b
  %.pn = phi { ptr, i32 } [ %lpad.phi, %.body ], [ %i.e, %bb.b ]
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn
}

declare void @_ZN2cv3dnn14dnn5_v202606055Layer7forwardERSt6vectorIPNS_3MatESaIS5_EERS3_IS4_SaIS4_EESB_(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 1, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn16EltwiseLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %8 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 9 uses
  %9 = alloca %"class.std::vector", align 8       ; 21 uses
  %10 = alloca %"class.std::vector", align 8      ; 16 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %13 = alloca %"struct.cv::MatShape", align 4    ; 7 uses
  %14 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %15 = alloca %"struct.cv::MatShape", align 4    ; 10 uses
  %16 = alloca %"class.std::vector.28", align 8   ; 9 uses
  %17 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %18 = alloca %"class.cv::Mat", align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv3dnn16EltwiseLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_E25__cv_trace_location_fn690)
  %i.a = load ptr, ptr %8, align 8, !tbaa !129
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !57
  invoke void @_ZN2cv5utils5trace7details8traceArgERKNS2_8TraceArgEPKc(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN2cv3dnn16EltwiseLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_E22__cv_trace_arg_name691, ptr noundef %i.c)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.d, %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.e = invoke noundef i32 @_ZNK2cv11_InputArray5depthEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.f = icmp eq i32 %i.e, 7
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN2cv3dnn14dnn5_v202606055Layer16forward_fallbackERKNS_11_InputArrayERKNS_12_OutputArrayES8_(ptr noundef nonnull align 8 dereferenceable(156) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.bl unwind label %bb.c

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  invoke void @_ZNK2cv11_InputArray12getMatVectorERSt6vectorINS_3MatESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  invoke void @_ZNK2cv11_InputArray12getMatVectorERSt6vectorINS_3MatESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !115
  %i.i = load ptr, ptr %10, align 8, !tbaa !116
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp eq i64 %i.l, 208
  br i1 %i.m, label %bb.p, label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.42, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZN2cv3dnn16EltwiseLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_, ptr noundef nonnull @.str.9, i32 noundef 706) #25
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.o:                                             ; preds = %bb.l
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %11, align 8, !tbaa !57    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.t = load i64, ptr %i.r, align 8, !tbaa !51
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.n
  %.pn = phi { ptr, i32 } [ %i.o, %bb.n ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.p, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.bo

bb.p:                                             ; preds = %bb.i
  %i.v = invoke noundef i32 @_ZN2cv13getNumThreadsEv()
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.x = load i32, ptr %i.w, align 8, !tbaa !74
  %i.y = icmp eq i32 %i.x, 0
  %.pre655 = load ptr, ptr %9, align 8, !tbaa !116 ; 6 uses
  br i1 %i.y, label %bb.r, label %.loopexit219

bb.r:                                             ; preds = %bb.q
  %i.z = getelementptr inbounds nuw i8, ptr %.pre655, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !117
  %i.ab = icmp sgt i32 %i.aa, 2
  br i1 %i.ab, label %.preheader.split, label %.loopexit219

.preheader.split:                                 ; preds = %bb.r
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !115
  %.not591 = icmp eq ptr %i.ad, %.pre655
  br i1 %.not591, label %.loopexit219, label %.lr.ph590

.lr.ph590:                                        ; preds = %.preheader.split
  %i.ae = getelementptr inbounds nuw i8, ptr %13, i64 12
  %i.af = getelementptr inbounds nuw i8, ptr %15, i64 12 ; 11 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %15, i64 20
  %i.ah = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN2cv3dnn16EltwiseLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_:bb.a

declare noundef i32 @_ZN2cv3dnn14dnn5_v202606055Layer16inputNameToIndexENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef align 8) unnamed_addr #3

declare noundef i32 @_ZN2cv3dnn14dnn5_v202606055Layer17outputNameToIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2cv3dnn16EltwiseLayerImpl14supportBackendEi(ptr noundef nonnull align 8 dereferenceable(224) %0, i32 noundef %1) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 5
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.c = load i32, ptr %i.b, align 8, !tbaa !74
  switch i32 %i.c, label %bb.e [
    i32 1, label %bb.c
    i32 2, label %bb.c
    i32 0, label %switch.edge
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.e = load i32, ptr %i.d, align 4, !tbaa !48
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %switch.edge

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !149
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !149
  %i.k = icmp eq ptr %i.h, %i.j
  br label %switch.edge

bb.e:                                             ; preds = %bb.b
  br label %switch.edge

bb.f:                                             ; preds = %bb.a
  %i.l = icmp eq i32 %1, 3
  br label %switch.edge

switch.edge:                                      ; preds = %bb.b, %bb.c, %bb.d, %bb.f, %bb.e
  %.0 = phi i1 [ %i.l, %bb.f ], [ false, %bb.e ], [ false, %bb.c ], [ %i.k, %bb.d ], [ true, %bb.b ]
  ret i1 %.0
}

declare void @_ZN2cv3dnn14dnn5_v202606055Layer10initNgraphERKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS6_EERKS3_INS4_INS1_11BackendNodeEEESaISC_EE() unnamed_addr

declare void @_ZN2cv3dnn14dnn5_v202606055Layer9initVkComERKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS6_EERS8_() unnamed_addr

declare void @_ZN2cv3dnn14dnn5_v202606055Layer9initWebnnERKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS6_EERKS3_INS4_INS1_11BackendNodeEEESaISC_EE() unnamed_addr

declare void @_ZN2cv3dnn14dnn5_v202606055Layer8initCUDAEPvRKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS7_EESB_() unnamed_addr

declare void @_ZN2cv3dnn14dnn5_v202606055Layer9initTimVXEPvRKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS7_EESB_b() unnamed_addr

declare void @_ZN2cv3dnn14dnn5_v202606055Layer8initCannERKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS6_EESA_RKS3_INS4_INS1_11BackendNodeEEESaISC_EE() unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2cv3dnn16EltwiseLayerImpl13setActivationERKNS_3PtrINS0_14dnn5_v2026060515ActivationLayerEEE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !150
  %i.c = icmp eq ptr %i.b, null
  %i.d = load ptr, ptr %1, align 8                ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  %or.cond = select i1 %i.c, i1 true, i1 %i.e
  br i1 %or.cond, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.a, align 8, !tbaa !150
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !106  ; 4 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !106  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.i
  br i1 %.not.i.i.i.i, label %_ZN2cv3PtrINS_3dnn14dnn5_v2026060515ActivationLayerEEaSERKS4_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not7.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not7.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.k = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load i32, ptr %i.j, align 4, !tbaa !111
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.j, align 4, !tbaa !111
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.n = atomicrmw volatile add ptr %i.j, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !106
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i: ; preds = %bb.f, %bb.e, %bb.c
  %i.o = phi ptr [ %i.i, %bb.c ], [ %i.i, %bb.e ], [ %.pr.pre.i.i.i.i, %bb.f ] ; 8 uses
  %.not8.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not8.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  %i.q = load atomic i64, ptr %i.p acquire, align 8 ; 2 uses
  %i.r = icmp eq i64 %i.q, 4294967297
  %i.s = trunc i64 %i.q to i32                    ; 2 uses
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.p, align 8, !tbaa !107
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 0, ptr %i.t, align 4, !tbaa !109
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !14
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #23, !inline_history !151
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !14
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #23, !inline_history !151
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i9.i.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i9.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = add nsw i32 %i.s, -1
  store i32 %i.ab, ptr %i.p, align 8, !tbaa !111
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ac = atomicrmw volatile add ptr %i.p, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i.i = phi i32 [ %i.s, %bb.j ], [ %i.ac, %bb.k ]
  %i.ad = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ad, label %bb.l, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, !prof !112

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #23
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i: ; preds = %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  store ptr %i.h, ptr %i.f, align 8, !tbaa !106
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !150
  br label %_ZN2cv3PtrINS_3dnn14dnn5_v2026060515ActivationLayerEEaSERKS4_.exit

_ZN2cv3PtrINS_3dnn14dnn5_v2026060515ActivationLayerEEaSERKS4_.exit: ; preds = %bb.b, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i
  %i.ae = phi ptr [ %i.d, %bb.b ], [ %.pre, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i ]
  %i.af = icmp ne ptr %i.ae, null
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %_ZN2cv3PtrINS_3dnn14dnn5_v2026060515ActivationLayerEEaSERKS4_.exit
  %.0 = phi i1 [ %i.af, %_ZN2cv3PtrINS_3dnn14dnn5_v2026060515ActivationLayerEEaSERKS4_.exit ], [ false, %bb.a ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZN2cv3dnn14dnn5_v202606055Layer7tryFuseERNS_3PtrIS2_EE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

declare void @_ZNK2cv3dnn14dnn5_v202606055Layer13getScaleShiftERNS_3MatES4_(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #3

declare void @_ZNK2cv3dnn14dnn5_v202606055Layer17getScaleZeropointERfRi(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #3

declare void @_ZN2cv3dnn14dnn5_v202606055Layer13unsetAttachedEv(ptr noundef nonnull align 8 dereferenceable(156)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2cv3dnn16EltwiseLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %20 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %22 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %24 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %26 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %28 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %30 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %32 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !152
  %i.c = load ptr, ptr %1, align 8, !tbaa !155    ; 8 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 52                  ; 3 uses
  %i.h = icmp ugt i64 %i.g, 1
  br i1 %i.h, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.66, ptr noundef nonnull align 1 dereferenceable(1) %18)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @__func__._ZNK2cv3dnn16EltwiseLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_, ptr noundef nonnull @.str.9, i32 noundef 193) #25
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = load ptr, ptr %17, align 8, !tbaa !57    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.n = load i64, ptr %i.l, align 8, !tbaa !51
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.j, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  br label %common.resume

bb.g:                                             ; preds = %bb.a
  %i.p = load i32, ptr %i.c, align 4, !tbaa !124
  %.fr301 = freeze i32 %i.p                       ; 8 uses
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %.fr301, i32 0) ; 5 uses
  %spec.select.i = zext nneg i32 %narrow.i to i64 ; 3 uses
  %i.q = icmp slt i32 %.fr301, 1
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNSt6vectorIN2cv8MatShapeESaIS1_EE14_M_fill_assignEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 1, ptr noundef nonnull align 4 dereferenceable(52) %i.c)
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !69   ; 2 uses
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !70   ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %.lr.ph, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.x, %i.w
  %i.z = ashr exact i64 %i.y, 2
  %i.aa = icmp eq i64 %i.z, %i.g
  br i1 %i.aa, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.68, ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @__func__._ZNK2cv3dnn16EltwiseLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_, ptr noundef nonnull @.str.9, i32 noundef 199) #25
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126

bb.o:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load ptr, ptr %19, align 8, !tbaa !57   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124: ; preds = %bb.o
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !51
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124, %bb.n
  %.pn93 = phi { ptr, i32 } [ %i.ab, %bb.n ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124 ], [ %i.ac, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  br label %common.resume

.thread:                                          ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !48
  %i.ak = icmp eq i32 %i.aj, 1
  br i1 %i.ak, label %.lr.ph, label %bb.p

bb.p:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @.str.69, ptr noundef nonnull align 1 dereferenceable(1) %22)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @__func__._ZNK2cv3dnn16EltwiseLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_, ptr noundef nonnull @.str.9, i32 noundef 200) #25
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %bb.p
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

bb.t:                                             ; preds = %bb.q
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %21, align 8, !tbaa !57   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127: ; preds = %bb.t
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !51
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127, %bb.s
  %.pn95 = phi { ptr, i32 } [ %i.al, %bb.s ], [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127 ], [ %i.am, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br label %common.resume

.lr.ph:                                           ; preds = %.thread, %bb.i
  %i.as = icmp ne i32 %.fr301, 1                  ; 4 uses
  %.in.v = select i1 %i.as, i64 16, i64 12
  %.in = getelementptr inbounds nuw i8, ptr %i.c, i64 %.in.v
  %i.at = load i32, ptr %.in, align 4, !tbaa !111 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.av = load i32, ptr %i.au, align 4, !tbaa !111 ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %umax323 = tail call i64 @llvm.umax.i64(i64 %i.g, i64 2) ; 2 uses
  br i1 %i.as, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.y
  %.070266.us = phi i64 [ %i.bg, %bb.y ], [ 1, %.lr.ph ] ; 2 uses
  %.071265.us = phi i1 [ %spec.select.us, %bb.y ], [ false, %.lr.ph ]
  %.0213264.us = phi i32 [ %.1.us, %bb.y ], [ %i.at, %.lr.ph ] ; 6 uses
  %i.ax = getelementptr inbounds nuw [52 x i8], ptr %i.c, i64 %.070266.us ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !111
  %i.ba = icmp eq i32 %i.av, %i.az
  br i1 %i.ba, label %bb.u, label %.split.us

bb.u:                                             ; preds = %.lr.ph.split.us
  %i.bb = load i32, ptr %i.ax, align 4, !tbaa !124
  %i.bc = icmp sgt i32 %i.bb, 1
  br i1 %i.bc, label %_ZNK2cv8MatShapeixEm.exit159.us, label %.split269.us

_ZNK2cv8MatShapeixEm.exit159.us:                  ; preds = %bb.u
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !111 ; 3 uses
  %.not104.us = icmp ne i32 %.0213264.us, %i.be   ; 2 uses
  %spec.select.us = select i1 %.not104.us, i1 true, i1 %.071265.us ; 2 uses
  %i.bf = load i32, ptr %i.aw, align 8, !tbaa !74
  switch i32 %i.bf, label %.split271.us [
    i32 0, label %bb.x
    i32 1, label %bb.w
    i32 2, label %bb.y
    i32 3, label %bb.v
  ]

bb.v:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit159.us
  %.sroa.speculated.us = tail call i32 @llvm.smax.i32(i32 %.0213264.us, i32 %i.be)
  br label %bb.y

bb.w:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit159.us
  %.not107.us = icmp slt i32 %.0213264.us, %i.be
  br i1 %.not107.us, label %.split273.us, label %bb.y

bb.x:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit159.us
  br i1 %.not104.us, label %.split275.us, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %_ZNK2cv8MatShapeixEm.exit159.us
  %.1.us = phi i32 [ %.0213264.us, %bb.x ], [ %.0213264.us, %bb.w ], [ %.0213264.us, %_ZNK2cv8MatShapeixEm.exit159.us ], [ %.sroa.speculated.us, %bb.v ] ; 2 uses
  %i.bg = add nuw i64 %.070266.us, 1              ; 2 uses
  %exitcond324.not = icmp eq i64 %i.bg, %umax323
  br i1 %exitcond324.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !156

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i198, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i192, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i177, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i172, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i157
  %common.resume.op = phi { ptr, i32 } [ %.pn105, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168 ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i157 ], [ %i.de, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i172 ], [ %43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.eq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i177 ], [ %.pn108, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165 ], [ %i.ff, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i192 ], [ %i.fm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i198 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn95, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129 ], [ %.pn93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126 ], [ %.pn99, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188 ], [ %.pn101, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148 ], [ %.pn110, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162 ]
  resume { ptr, i32 } %common.resume.op

._crit_edge:                                      ; preds = %bb.av, %bb.y
  %.0213.lcssa = phi i32 [ %.1.us, %bb.y ], [ %.1, %bb.av ] ; 2 uses
  %.071.lcssa = phi i1 [ %spec.select.us, %bb.y ], [ %spec.select, %bb.av ]
  br i1 %.071.lcssa, label %bb.aw, label %bb.ax

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.av
  %.070266 = phi i64 [ %i.cu, %bb.av ], [ 1, %.lr.ph ] ; 2 uses
  %.071265 = phi i1 [ %spec.select, %bb.av ], [ false, %.lr.ph ]
  %.0213264 = phi i32 [ %.1, %bb.av ], [ %i.at, %.lr.ph ] ; 5 uses
  %i.bh = getelementptr inbounds nuw [52 x i8], ptr %i.c, i64 %.070266
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !111
  %i.bk = icmp eq i32 %i.av, %i.bj
  br i1 %i.bk, label %bb.ad, label %.split.us

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.70, ptr noundef nonnull align 1 dereferenceable(1) %24)
          to label %bb.z unwind label %bb.ab

bb.z:                                             ; preds = %.split.us
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @__func__._ZNK2cv3dnn16EltwiseLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_, ptr noundef nonnull @.str.9, i32 noundef 208) #25
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  unreachable

bb.ab:                                            ; preds = %.split.us
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148

bb.ac:                                            ; preds = %bb.z
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bn = load ptr, ptr %23, align 8, !tbaa !57   ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146: ; preds = %bb.ac
  %i.bq = load i64, ptr %i.bo, align 8, !tbaa !51
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146, %bb.ab
  %.pn101 = phi { ptr, i32 } [ %i.bl, %bb.ab ], [ %i.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146 ], [ %i.bm, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  br label %common.resume

bb.ad:                                            ; preds = %.lr.ph.split
  %.not104 = icmp ne i32 %.0213264, %i.av         ; 2 uses
  %spec.select = select i1 %.not104, i1 true, i1 %.071265 ; 2 uses
  %i.bs = load i32, ptr %i.aw, align 8, !tbaa !74
  switch i32 %i.bs, label %.split271.us [
    i32 0, label %bb.ag
    i32 1, label %bb.al
    i32 2, label %bb.av
    i32 3, label %bb.aq
  ]

.split269.us:                                     ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %16)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.39, i32 noundef 103) #25
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %.split269.us
  unreachable

bb.af:                                            ; preds = %.split269.us
  %i.bt = landingpad { ptr, i32 }
          cleanup
  %i.bu = load ptr, ptr %15, align 8, !tbaa !57   ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i157, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i156: ; preds = %bb.af
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !51
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.by) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i157

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i157: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i156
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %common.resume

bb.ag:                                            ; preds = %bb.ad
  br i1 %.not104, label %.split275.us, label %bb.av

.split275.us:                                     ; preds = %bb.ag, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull @.str.71, ptr noundef nonnull align 1 dereferenceable(1) %26)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %.split275.us
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull @__func__._ZNK2cv3dnn16EltwiseLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_, ptr noundef nonnull @.str.9, i32 noundef 216) #25
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  unreachable

bb.aj:                                            ; preds = %.split275.us
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162

bb.ak:                                            ; preds = %bb.ah
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cb = load ptr, ptr %25, align 8, !tbaa !57   ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160: ; preds = %bb.ak
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !51
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160, %bb.aj
  %.pn110 = phi { ptr, i32 } [ %i.bz, %bb.aj ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160 ], [ %i.ca, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  br label %common.resume

bb.al:                                            ; preds = %bb.ad
  %.not107 = icmp slt i32 %.0213264, %i.av
  br i1 %.not107, label %.split273.us, label %bb.av

.split273.us:                                     ; preds = %bb.al, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull @.str.72, ptr noundef nonnull align 1 dereferenceable(1) %28)
          to label %bb.am unwind label %bb.ao

bb.am:                                            ; preds = %.split273.us
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull @__func__._ZNK2cv3dnn16EltwiseLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_, ptr noundef nonnull @.str.9, i32 noundef 220) #25
          to label %bb.an unwind label %bb.ap

bb.an:                                            ; preds = %bb.am
  unreachable

bb.ao:                                            ; preds = %.split273.us
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165

bb.ap:                                            ; preds = %bb.am
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ci = load ptr, ptr %27, align 8, !tbaa !57   ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163: ; preds = %bb.ap
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !51
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163, %bb.ao
  %.pn108 = phi { ptr, i32 } [ %i.cg, %bb.ao ], [ %i.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163 ], [ %i.ch, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  br label %common.resume

bb.aq:                                            ; preds = %bb.ad
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %.0213264, i32 %i.av)
  br label %bb.av

.split271.us:                                     ; preds = %bb.ad, %_ZNK2cv8MatShapeixEm.exit159.us
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull @.str.61, ptr noundef nonnull align 1 dereferenceable(1) %30)
          to label %bb.ar unwind label %bb.at

bb.ar:                                            ; preds = %.split271.us
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull @__func__._ZNK2cv3dnn16EltwiseLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_, ptr noundef nonnull @.str.9, i32 noundef 232) #25
          to label %bb.as unwind label %bb.au

bb.as:                                            ; preds = %bb.ar
  unreachable

bb.at:                                            ; preds = %.split271.us
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168

bb.au:                                            ; preds = %bb.ar
  %i.co = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cp = load ptr, ptr %29, align 8, !tbaa !57   ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166: ; preds = %bb.au
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !51
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.ct) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166, %bb.at
  %.pn105 = phi { ptr, i32 } [ %i.cn, %bb.at ], [ %i.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166 ], [ %i.co, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  br label %common.resume

bb.av:                                            ; preds = %bb.ad, %bb.al, %bb.aq, %bb.ag
  %.1 = phi i32 [ %i.av, %bb.ag ], [ %.0213264, %bb.al ], [ %.0213264, %bb.ad ], [ %.sroa.speculated, %bb.aq ] ; 2 uses
  %i.cu = add nuw i64 %.070266, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.cu, %umax323
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !156

bb.aw:                                            ; preds = %._crit_edge
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !74
  br label %bb.ax

bb.ax:                                            ; preds = %._crit_edge, %bb.aw
  %i.cx = phi i32 [ %i.cw, %bb.aw ], [ 0, %._crit_edge ]
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !78
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 %.0213.lcssa, ptr %i.cz, align 8, !tbaa !16
  tail call void @_ZNSt6vectorIN2cv8MatShapeESaIS1_EE14_M_fill_assignEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 1, ptr noundef nonnull align 4 dereferenceable(52) %i.c)
  %i.da = load ptr, ptr %3, align 8, !tbaa !155   ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !124
  %narrow.i169 = tail call i32 @llvm.smax.i32(i32 %i.db, i32 1) ; 2 uses
  %i.dc = zext i1 %i.as to i32
  %i.dd = icmp samesign ugt i32 %narrow.i169, %i.dc
  br i1 %i.dd, label %_ZN2cv8MatShapeixEm.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %14)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.39, i32 noundef 97) #25
          to label %bb.az unwind label %bb.ba

bb.az:                                            ; preds = %bb.ay
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.de = landingpad { ptr, i32 }
          cleanup
  %i.df = load ptr, ptr %13, align 8, !tbaa !57   ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i172, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i171

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i171: ; preds = %bb.ba
  %i.di = load i64, ptr %i.dg, align 8, !tbaa !51
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.dj) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i172

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i172: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i171
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %common.resume

_ZN2cv8MatShapeixEm.exit:                         ; preds = %bb.ax
  %i.dk = zext i1 %i.as to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.da, i64 12 ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.dk
  store i32 %.0213.lcssa, ptr %i.dm, align 4, !tbaa !111
  %i.dn = load ptr, ptr %i.a, align 8, !tbaa !152 ; 2 uses
  %i.do = load ptr, ptr %1, align 8, !tbaa !155   ; 6 uses
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = sub i64 %i.dp, %i.dq
  %i.ds = sdiv exact i64 %i.dr, 52                ; 2 uses
  %.not302 = icmp eq ptr %i.dn, %i.do
  br i1 %.not302, label %.loopexit, label %.lr.ph282

.lr.ph282:                                        ; preds = %_ZN2cv8MatShapeixEm.exit
  %.not97 = icmp eq i32 %.fr301, 1
  %i.dt = select i1 %.not97, i32 1, i32 2         ; 2 uses
  %.not.i = icmp slt i32 %.fr301, %i.dt
  %33 = icmp slt i32 %.fr301, 3
  br i1 %.not.i, label %bb.be, label %.lr.ph282.split

.lr.ph282.split:                                  ; preds = %.lr.ph282
  %.not28.i = icmp samesign ugt i32 %.fr301, %i.dt
  br i1 %.not28.i, label %.lr.ph282.split.split.us, label %.lr.ph282.split.split

.lr.ph282.split.split.us:                         ; preds = %.lr.ph282.split, %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.thread.us.a
  %.066281.us = phi i64 [ %i.eg, %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.thread.us.a ], [ 0, %.lr.ph282.split ] ; 4 uses
  %.067280.us = phi i8 [ %spec.select117222.us.a, %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.thread.us.a ], [ 0, %.lr.ph282.split ] ; 2 uses
  %.068279.us = phi i64 [ %spec.select116221.us.a, %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.thread.us.a ], [ 0, %.lr.ph282.split ] ; 2 uses
  %i.du = getelementptr inbounds nuw [52 x i8], ptr %i.do, i64 %.066281.us ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !124 ; 3 uses
  %.not23.i.us.a = icmp sgt i32 %narrow.i, %i.dv
  br i1 %.not23.i.us.a, label %.split288.us.a, label %.preheader.i.us

.preheader.i.us:                                  ; preds = %.lr.ph282.split.split.us
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 12 ; 2 uses
  %34 = tail call i32 @llvm.umax.i32(i32 %i.dv, i32 range(i32 0, 3) 2)
  %wide.trip.count.i.us = zext nneg i32 %34 to i64
  br label %35

35:                                               ; preds = %bb.bb, %.preheader.i.us
  %indvars.iv.i.us = phi i64 [ 2, %.preheader.i.us ], [ %indvars.iv.next.i.us.a, %bb.bb ] ; 3 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.i.us, %wide.trip.count.i.us
  br i1 %exitcond.not.i.us, label %.split291.us, label %_ZNK2cv8MatShapeixEm.exit.i.us.a

_ZNK2cv8MatShapeixEm.exit.i.us.a:                 ; preds = %35
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv.i.us
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !111
  %.not24.i.us.a = icmp eq i32 %i.dy, 1
  br i1 %.not24.i.us.a, label %bb.bb, label %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.us.a

bb.bb:                                            ; preds = %_ZNK2cv8MatShapeixEm.exit.i.us.a
  %indvars.iv.next.i.us.a = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond32.not.i.us = icmp eq i64 %indvars.iv.next.i.us.a, %spec.select.i
  br i1 %exitcond32.not.i.us, label %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.thread.us.a, label %35, !llvm.loop !125

_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.us.a: ; preds = %_ZNK2cv8MatShapeixEm.exit.i.us.a
  %i.dz = trunc nuw i8 %.067280.us to i1
  %spec.select116.us.a = select i1 %i.dz, i64 %.068279.us, i64 %.066281.us ; 4 uses
  %.not98.us = icmp eq i64 %.066281.us, %spec.select116.us.a
  %brmerge = or i1 %.not98.us, %33
  br i1 %brmerge, label %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.thread.us.a, label %.lr.ph278.us

bb.bc:                                            ; preds = %_ZNK2cv8MatShapeixEm.exit179.us
  %i.ea = add nuw nsw i64 %.064277.us, 1          ; 2 uses
  %exitcond329.not = icmp eq i64 %i.ea, %spec.select.i
  br i1 %exitcond329.not, label %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.thread.us.a, label %bb.bd, !llvm.loop !157

bb.bd:                                            ; preds = %.lr.ph278.us, %bb.bc
  %.064277.us = phi i64 [ 2, %.lr.ph278.us ], [ %i.ea, %bb.bc ] ; 4 uses
  %exitcond328.not.a = icmp eq i64 %.064277.us, %umax327
  br i1 %exitcond328.not.a, label %.split293.us, label %_ZNK2cv8MatShapeixEm.exit179.us

_ZNK2cv8MatShapeixEm.exit179.us:                  ; preds = %bb.bd
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %.064277.us
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !111
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %.064277.us
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !111
  %i.ef = icmp eq i32 %i.ec, %i.ee
  br i1 %i.ef, label %bb.bc, label %.split295.us

_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.thread.us.a: ; preds = %bb.bb, %bb.bc, %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.us.a
  %spec.select117222.us.a = phi i8 [ 1, %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.us.a ], [ 1, %bb.bc ], [ %.067280.us, %bb.bb ] ; 2 uses
  %spec.select116221.us.a = phi i64 [ %spec.select116.us.a, %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.us.a ], [ %spec.select116.us.a, %bb.bc ], [ %.068279.us, %bb.bb ] ; 2 uses
  %i.eg = add nuw i64 %.066281.us, 1              ; 2 uses
  %exitcond331.not = icmp eq i64 %i.eg, %i.ds
  br i1 %exitcond331.not, label %._crit_edge283, label %.lr.ph282.split.split.us, !llvm.loop !158

.lr.ph278.us:                                     ; preds = %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.us.a
  %i.eh = getelementptr inbounds nuw [52 x i8], ptr %i.do, i64 %spec.select116.us.a ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !124
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 12
  %i.ek = tail call i32 @llvm.smax.i32(i32 %i.ei, i32 2)
  %umax327 = zext nneg i32 %i.ek to i64
  br label %bb.bd

._crit_edge283:                                   ; preds = %_ZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEii.exit.thread.us.a
  %36 = trunc nuw i8 %spec.select117222.us.a to i1
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %38 = load i32, ptr %37, align 8, !tbaa !74
  %39 = icmp eq i32 %38, 0
  %or.cond3 = select i1 %39, i1 %36, i1 false
  %i.el = icmp sgt i32 %.fr301, 2
  %or.cond = and i1 %or.cond3, %i.el
  br i1 %or.cond, label %.lr.ph300, label %.loopexit

.lr.ph300:                                        ; preds = %._crit_edge283
  %40 = getelementptr inbounds nuw [52 x i8], ptr %i.do, i64 %spec.select116221.us.a ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %40, i64 12
  %spec.select.i196 = zext nneg i32 %narrow.i169 to i64
  br label %bb.bm

.lr.ph282.split.split:                            ; preds = %.lr.ph282.split, %.preheader.i
  %.066281 = phi i64 [ %i.eo, %.preheader.i ], [ 0, %.lr.ph282.split ] ; 2 uses
  %41 = getelementptr inbounds nuw [52 x i8], ptr %i.do, i64 %.066281
  %i.en = load i32, ptr %41, align 4, !tbaa !124  ; 2 uses
  %.not23.i = icmp sgt i32 %narrow.i, %i.en
  br i1 %.not23.i, label %.split288.us.a, label %.preheader.i

bb.be:                                            ; preds = %.lr.ph282
  tail call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef range(i32 0, 3) 2, i32 noundef %narrow.i, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEiiE15__cv_check__279) #25
  unreachable

.preheader.i:                                     ; preds = %.lr.ph282.split.split
  %i.eo = add nuw i64 %.066281, 1                 ; 2 uses
  %exitcond326.not.a = icmp eq i64 %i.eo, %i.ds
  br i1 %exitcond326.not.a, label %.loopexit, label %.lr.ph282.split.split, !llvm.loop !158

.split288.us.a:                                   ; preds = %.lr.ph282.split.split, %.lr.ph282.split.split.us
  %.us-phi289 = phi i32 [ %i.dv, %.lr.ph282.split.split.us ], [ %i.en, %.lr.ph282.split.split ]
  tail call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef %narrow.i, i32 noundef %.us-phi289, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3dnn14dnn5_v20260605L9isAllOnesERKNS_8MatShapeEiiE15__cv_check__280) #25
  unreachable

.split291.us:                                     ; preds = %35
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %12)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.39, i32 noundef 103) #25
          to label %42 unwind label %bb.bf

42:                                               ; preds = %.split291.us
  unreachable

bb.bf:                                            ; preds = %.split291.us
  %43 = landingpad { ptr, i32 }
          cleanup
  %44 = load ptr, ptr %11, align 8, !tbaa !57     ; 2 uses
  %45 = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %46 = icmp eq ptr %44, %45
  br i1 %46, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.bf
  %47 = load i64, ptr %45, align 8, !tbaa !51
  %i.ep = add i64 %47, 1
  call void @_ZdlPvm(ptr noundef %44, i64 noundef %i.ep) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %common.resume

.split293.us:                                     ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %10)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.39, i32 noundef 103) #25
          to label %bb.bg unwind label %bb.bh

bb.bg:                                            ; preds = %.split293.us
  unreachable

bb.bh:                                            ; preds = %.split293.us
  %i.eq = landingpad { ptr, i32 }
          cleanup
  %i.er = load ptr, ptr %9, align 8, !tbaa !57    ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.et = icmp eq ptr %i.er, %i.es
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i177, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i176

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i176: ; preds = %bb.bh
  %i.eu = load i64, ptr %i.es, align 8, !tbaa !51
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.ev) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i177

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i177: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i176
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %common.resume

.split295.us:                                     ; preds = %_ZNK2cv8MatShapeixEm.exit179.us
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull @.str.73, ptr noundef nonnull align 1 dereferenceable(1) %32)
          to label %bb.bi unwind label %bb.bk

bb.bi:                                            ; preds = %.split295.us
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull @__func__._ZNK2cv3dnn16EltwiseLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_, ptr noundef nonnull @.str.9, i32 noundef 259) #25
          to label %bb.bj unwind label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  unreachable

bb.bk:                                            ; preds = %.split295.us
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188

bb.bl:                                            ; preds = %bb.bi
  %i.ex = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ey = load ptr, ptr %31, align 8, !tbaa !57   ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.fa = icmp eq ptr %i.ey, %i.ez
  br i1 %i.fa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186: ; preds = %bb.bl
  %i.fb = load i64, ptr %i.ez, align 8, !tbaa !51
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fc) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186, %bb.bk
  %.pn99 = phi { ptr, i32 } [ %i.ew, %bb.bk ], [ %i.ex, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186 ], [ %i.ex, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  br label %common.resume

bb.bm:                                            ; preds = %.lr.ph300, %_ZN2cv8MatShapeixEm.exit200
  %.0299 = phi i64 [ 2, %.lr.ph300 ], [ %i.fv, %_ZN2cv8MatShapeixEm.exit200 ] ; 5 uses
  %i.fd = load i32, ptr %40, align 4, !tbaa !124
  %narrow.i189 = tail call i32 @llvm.smax.i32(i32 %i.fd, i32 1)
  %spec.select.i190 = zext nneg i32 %narrow.i189 to i64
  %i.fe = icmp samesign ult i64 %.0299, %spec.select.i190
  br i1 %i.fe, label %_ZNK2cv8MatShapeixEm.exit194, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %8)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.39, i32 noundef 103) #25
          to label %bb.bo unwind label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  unreachable

bb.bp:                                            ; preds = %bb.bn
  %i.ff = landingpad { ptr, i32 }
          cleanup
  %i.fg = load ptr, ptr %7, align 8, !tbaa !57    ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.fi = icmp eq ptr %i.fg, %i.fh
  br i1 %i.fi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i192, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i191

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i191: ; preds = %bb.bp
  %i.fj = load i64, ptr %i.fh, align 8, !tbaa !51
  %i.fk = add i64 %i.fj, 1
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fk) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i192

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i192: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i191
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit194:                     ; preds = %bb.bm
  %i.fl = icmp samesign ult i64 %.0299, %spec.select.i196
  br i1 %i.fl, label %_ZN2cv8MatShapeixEm.exit200, label %bb.bq

bb.bq:                                            ; preds = %_ZNK2cv8MatShapeixEm.exit194
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.39, i32 noundef 97) #25
          to label %bb.br unwind label %bb.bs

bb.br:                                            ; preds = %bb.bq
  unreachable

bb.bs:                                            ; preds = %bb.bq
  %i.fm = landingpad { ptr, i32 }
          cleanup
  %i.fn = load ptr, ptr %5, align 8, !tbaa !57    ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.fp = icmp eq ptr %i.fn, %i.fo
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i198, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i197

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i197: ; preds = %bb.bs
  %i.fq = load i64, ptr %i.fo, align 8, !tbaa !51
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fn, i64 noundef %i.fr) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i198

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i198: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i197
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %common.resume

_ZN2cv8MatShapeixEm.exit200:                      ; preds = %_ZNK2cv8MatShapeixEm.exit194
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %.0299
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !111
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %.0299
  store i32 %i.ft, ptr %i.fu, align 4, !tbaa !111
  %i.fv = add nuw nsw i64 %.0299, 1               ; 2 uses
  %exitcond332.not = icmp eq i64 %i.fv, %spec.select.i
  br i1 %exitcond332.not, label %.loopexit, label %bb.bm, !llvm.loop !159

.loopexit:                                        ; preds = %.preheader.i, %_ZN2cv8MatShapeixEm.exit200, %_ZN2cv8MatShapeixEm.exit, %._crit_edge283, %bb.h
  ret i1 false
}

declare void @_ZNK2cv3dnn14dnn5_v202606055Layer8getTypesERKSt6vectorIiSaIiEEiiRS5_S8_(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

declare noundef i32 @_ZNK2cv3dnn14dnn5_v202606055Layer10getLayoutsERKSt6vectorINS_10DataLayoutESaIS4_EERS6_iS9_(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 1, ptr noundef nonnull align 1, i32 noundef, ptr noundef nonnull align 1) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZNK2cv3dnn16EltwiseLayerImpl8getFLOPSERKSt6vectorINS_8MatShapeESaIS3_EES7_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !152  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !155    ; 4 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.74, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZNK2cv3dnn16EltwiseLayerImpl8getFLOPSERKSt6vectorINS_8MatShapeESaIS3_EES7_, ptr noundef nonnull @.str.9, i32 noundef 878) #25
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %3, align 8, !tbaa !57     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8, !tbaa !51
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %i.d

bb.e:                                             ; preds = %bb.a
  %i.j = load i32, ptr %i.c, align 4, !tbaa !124  ; 3 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %_ZNK2cv8MatShapeixEm.exit.lr.ph.i, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit

_ZNK2cv8MatShapeixEm.exit.lr.ph.i:                ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 9 uses
  %wide.trip.count.i = zext nneg i32 %i.j to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 7       ; 3 uses
  %i.m = icmp ult i32 %i.j, 8
  br i1 %i.m, label %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader, label %_ZNK2cv8MatShapeixEm.exit.lr.ph.i.new

_ZNK2cv8MatShapeixEm.exit.lr.ph.i.new:            ; preds = %_ZNK2cv8MatShapeixEm.exit.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483640
  br label %_ZNK2cv8MatShapeixEm.exit.i

_ZNK2cv8MatShapeixEm.exit.i:                      ; preds = %_ZNK2cv8MatShapeixEm.exit.i, %_ZNK2cv8MatShapeixEm.exit.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.lr.ph.i.new ], [ %indvars.iv.next.i.7, %_ZNK2cv8MatShapeixEm.exit.i ] ; 9 uses
  %.02127.i = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit.lr.ph.i.new ], [ %i.az, %_ZNK2cv8MatShapeixEm.exit.i ]
  %niter = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.lr.ph.i.new ], [ %niter.next.7, %_ZNK2cv8MatShapeixEm.exit.i ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.o = load i32, ptr %i.n, align 4, !tbaa !111
  %i.p = sext i32 %i.o to i64
  %i.q = mul i64 %.02127.i, %i.p
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !111
  %i.u = sext i32 %i.t to i64
  %i.v = mul i64 %i.q, %i.u
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i32, ptr %i.x, align 4, !tbaa !111
  %i.z = sext i32 %i.y to i64
  %i.aa = mul i64 %i.v, %i.z
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !111
  %i.ae = sext i32 %i.ad to i64
  %i.af = mul i64 %i.aa, %i.ae
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !111
  %i.aj = sext i32 %i.ai to i64
  %i.ak = mul i64 %i.af, %i.aj
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 20
  %i.an = load i32, ptr %i.am, align 4, !tbaa !111
  %i.ao = sext i32 %i.an to i64
  %i.ap = mul i64 %i.ak, %i.ao
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !111
  %i.at = sext i32 %i.as to i64
  %i.au = mul i64 %i.ap, %i.at
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 28
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !111
  %i.ay = sext i32 %i.ax to i64
  %i.az = mul i64 %i.au, %i.ay                    ; 3 uses
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa, label %_ZNK2cv8MatShapeixEm.exit.i, !llvm.loop !160

_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa: ; preds = %_ZNK2cv8MatShapeixEm.exit.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit, label %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader

_ZNK2cv8MatShapeixEm.exit.i.epil.preheader:       ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.lr.ph.i ], [ %indvars.iv.next.i.7, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa ]
  %.02127.i.epil.init = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit.lr.ph.i ], [ %i.az, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa ]
  %lcmp.mod12 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod12)
  br label %_ZNK2cv8MatShapeixEm.exit.i.epil

_ZNK2cv8MatShapeixEm.exit.i.epil:                 ; preds = %_ZNK2cv8MatShapeixEm.exit.i.epil, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ], [ %indvars.iv.next.i.epil, %_ZNK2cv8MatShapeixEm.exit.i.epil ] ; 2 uses
  %.02127.i.epil = phi i64 [ %.02127.i.epil.init, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ], [ %i.bd, %_ZNK2cv8MatShapeixEm.exit.i.epil ]
  %epil.iter = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.i.epil.preheader ], [ %epil.iter.next, %_ZNK2cv8MatShapeixEm.exit.i.epil ]
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i.epil
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !111
  %i.bc = sext i32 %i.bb to i64
  %i.bd = mul i64 %.02127.i.epil, %i.bc           ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit, label %_ZNK2cv8MatShapeixEm.exit.i.epil, !llvm.loop !161

_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit: ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit.i.epil, %bb.e
  %.021.lcssa.i = phi i64 [ 1, %bb.e ], [ %i.az, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit.loopexit.unr-lcssa ], [ %i.bd, %_ZNK2cv8MatShapeixEm.exit.i.epil ]
  %i.be = ptrtoint ptr %i.b to i64
  %i.bf = ptrtoint ptr %i.c to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = sdiv exact i64 %i.bg, 52
  %i.bi = mul i64 %.021.lcssa.i, %i.bh
  ret i64 %i.bi
}

declare noundef zeroext i1 @_ZN2cv3dnn14dnn5_v202606055Layer18updateMemoryShapesERKSt6vectorINS_8MatShapeESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

declare noundef zeroext i1 @_ZNK2cv3dnn14dnn5_v202606055Layer20alwaysSupportInplaceEv(ptr noundef nonnull align 8 dereferenceable(156)) unnamed_addr #3

declare noundef zeroext i1 @_ZNK2cv3dnn14dnn5_v202606055Layer19dynamicOutputShapesEv(ptr noundef nonnull align 8 dereferenceable(156)) unnamed_addr #3

declare noundef zeroext i1 @_ZNK2cv3dnn14dnn5_v202606055Layer15isDataShufflingEv(ptr noundef nonnull align 8 dereferenceable(156)) unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK2cv3dnn14dnn5_v202606055Layer9dumpAttrsERSoi(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK2cv3dnn14dnn5_v202606055Layer4dumpERSoib(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i1 noundef zeroext) unnamed_addr #3

declare void @_ZN2cv3dnn14dnn5_v202606055LayerC2Ev(ptr noundef nonnull align 8 dereferenceable(156)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN2cv3dnn14dnn5_v202606055LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(156) dereferenceable(156)) unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #23 ; 0 uses
  tail call void @_ZSt9terminatev() #26
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #12

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @tolower(i32 noundef) local_unnamed_addr #13

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv3dnn14dnn5_v202606059DictValue3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_i(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.5", align 1  ; 3 uses
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN2cv8MatShapeESaIS1_EEC2EmRKS1_RKS2_:bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #22
  br label %_ZNSt12_Vector_baseIN2cv8MatShapeESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN2cv8MatShapeESaIS1_EED2Ev.exit: ; preds = %.body, %bb.g
  resume { ptr, i32 } %i.m
}

declare noundef nonnull align 4 dereferenceable(52) ptr @_ZN2cv8MatShapeaSERKS0_(ptr noundef nonnull align 4 dereferenceable(52), ptr noundef nonnull align 4 dereferenceable(52)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IPN2cv3dnn16EltwiseLayerImplEEET_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !106
  %i.a = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #21
          to label %bb.b unwind label %bb.c       ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !107
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !109
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN2cv3dnn16EltwiseLayerImplELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.d, align 8, !tbaa !263
  store ptr %i.a, ptr %0, align 8, !tbaa !106
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %i.f) #23 ; 0 uses
  %i.h = icmp eq ptr %1, null
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2cv3dnn16EltwiseLayerImplD2Ev(ptr noundef nonnull align 8 dead_on_return(217) dereferenceable(224) %1) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 224) #22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  invoke void @__cxa_rethrow() #25
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.i

bb.h:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #26
  unreachable

bb.i:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN2cv3dnn16EltwiseLayerImplELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN2cv3dnn16EltwiseLayerImplELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !263  ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !106  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v2026060515ActivationLayerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !107
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !109
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #23, !inline_history !114
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #23, !inline_history !114
  br label %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v2026060515ActivationLayerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.e:                                             ; preds = %bb.c
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !111
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.i, %bb.f ], [ %i.s, %bb.g ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.t, label %bb.h, label %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v2026060515ActivationLayerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !112

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #23
  br label %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v2026060515ActivationLayerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v2026060515ActivationLayerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.d, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !70   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i1.i, label %_ZN2cv3dnn16EltwiseLayerImplD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v2026060515ActivationLayerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !79
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #22
  br label %_ZN2cv3dnn16EltwiseLayerImplD2Ev.exit

_ZN2cv3dnn16EltwiseLayerImplD2Ev.exit:            ; preds = %_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v2026060515ActivationLayerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.i
  tail call void @_ZN2cv3dnn14dnn5_v202606055LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(156) dereferenceable(224) %i.b) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 224) #22
  br label %bb.j

bb.j:                                             ; preds = %_ZN2cv3dnn16EltwiseLayerImplD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN2cv3dnn16EltwiseLayerImplELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt15_Sp_counted_ptrIPN2cv3dnn16EltwiseLayerImplELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #8 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #16

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #21 = { builtin allocsize(0) }
attributes #22 = { builtin nounwind }
attributes #23 = { nounwind }
attributes #24 = { nounwind willreturn memory(read) }
attributes #25 = { noreturn }
attributes #26 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSSt12__shared_ptrIN2cv3dnn14dnn5_v2026060512EltwiseLayerELN9__gnu_cxx12_Lock_policyE2EE", !10, i64 0, !12, i64 8}
!10 = !{!"p1 _ZTSN2cv3dnn14dnn5_v2026060512EltwiseLayerE", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !13, i64 0}
!13 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"vtable pointer", !7, i64 0}
!16 = !{!17, !5, i64 192}
!17 = !{!"_ZTSN2cv3dnn16EltwiseLayerImplE", !18, i64 0, !35, i64 156, !36, i64 160, !41, i64 184, !41, i64 188, !5, i64 192, !42, i64 200, !46, i64 216}
!18 = !{!"_ZTSN2cv3dnn14dnn5_v2026060512EltwiseLayerE", !19, i64 0}
!19 = !{!"_ZTSN2cv3dnn14dnn5_v202606055LayerE", !20, i64 0, !21, i64 8, !26, i64 32, !26, i64 56, !11, i64 80, !31, i64 88, !31, i64 120, !5, i64 152}
!20 = !{!"_ZTSN2cv9AlgorithmE"}
!21 = !{!"_ZTSSt6vectorIN2cv3MatESaIS1_EE", !22, i64 0}
!22 = !{!"_ZTSSt12_Vector_baseIN2cv3MatESaIS1_EE", !23, i64 0}
!23 = !{!"_ZTSNSt12_Vector_baseIN2cv3MatESaIS1_EE12_Vector_implE", !24, i64 0}
!24 = !{!"_ZTSNSt12_Vector_baseIN2cv3MatESaIS1_EE17_Vector_impl_dataE", !25, i64 0, !25, i64 8, !25, i64 16}
!25 = !{!"p1 _ZTSN2cv3MatE", !11, i64 0}
!26 = !{!"_ZTSSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE", !27, i64 0}
!27 = !{!"_ZTSSt12_Vector_baseIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE", !28, i64 0}
!28 = !{!"_ZTSNSt12_Vector_baseIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE12_Vector_implE", !29, i64 0}
!29 = !{!"_ZTSNSt12_Vector_baseIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_Vector_impl_dataE", !30, i64 0, !30, i64 8, !30, i64 16}
!30 = !{!"p1 _ZTSN2cv3dnn14dnn5_v202606053ArgE", !11, i64 0}
!31 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !32, i64 0, !34, i64 8, !6, i64 16}
!32 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !33, i64 0}
!33 = !{!"p1 omnipotent char", !11, i64 0}
!34 = !{!"long", !6, i64 0}
!35 = !{!"_ZTSN2cv3dnn16EltwiseLayerImpl9EltwiseOpE", !6, i64 0}
!36 = !{!"_ZTSSt6vectorIfSaIfEE", !37, i64 0}
!37 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !38, i64 0}
!38 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !39, i64 0}
!39 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !40, i64 0, !40, i64 8, !40, i64 16}
!40 = !{!"p1 float", !11, i64 0}
!41 = !{!"_ZTSN2cv3dnn16EltwiseLayerImpl18OutputChannelsModeE", !6, i64 0}
!42 = !{!"_ZTSN2cv3PtrINS_3dnn14dnn5_v2026060515ActivationLayerEEE", !43, i64 0}
!43 = !{!"_ZTSSt10shared_ptrIN2cv3dnn14dnn5_v2026060515ActivationLayerEE", !44, i64 0}
!44 = !{!"_ZTSSt12__shared_ptrIN2cv3dnn14dnn5_v2026060515ActivationLayerELN9__gnu_cxx12_Lock_policyE2EE", !45, i64 0, !12, i64 8}
!45 = !{!"p1 _ZTSN2cv3dnn14dnn5_v2026060515ActivationLayerE", !11, i64 0}
!46 = !{!"bool", !6, i64 0}
!47 = !{!17, !46, i64 216}
!48 = !{!17, !35, i64 156}
!49 = !{!32, !33, i64 0}
!50 = !{!31, !34, i64 8}
!51 = !{!6, !6, i64 0}
!52 = !{!53, !56, i64 8}
!53 = !{!"_ZTSSt15_Rb_tree_header", !54, i64 0, !34, i64 32}
!54 = !{!"_ZTSSt18_Rb_tree_node_base", !55, i64 0, !56, i64 8, !56, i64 16, !56, i64 24}
!55 = !{!"_ZTSSt14_Rb_tree_color", !6, i64 0}
!56 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !11, i64 0}
!57 = !{!31, !33, i64 0}
!58 = !{!56, !56, i64 0}
!59 = distinct !{!59, !60}
!60 = !{!"llvm.loop.mustprogress"}
!61 = !{!62}
!62 = distinct !{!62, !63, !"_ZN2cvL11toLowerCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!63 = distinct !{!63, !"_ZN2cvL11toLowerCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!64 = !{!34, !34, i64 0}
!65 = distinct !{!65, !60}
!66 = !{!67, !68, i64 0}
!67 = !{!"_ZTSN2cv3dnn14dnn5_v202606059DictValueE", !68, i64 0, !6, i64 8}
!68 = !{!"_ZTSN2cv5ParamE", !6, i64 0}
!69 = !{!39, !40, i64 8}
!70 = !{!39, !40, i64 0}
!71 = !{!72, !72, i64 0}
!72 = !{!"float", !6, i64 0}
!73 = distinct !{!73, !60}
!74 = !{!17, !41, i64 184}
!75 = !{!76}
!76 = distinct !{!76, !77, !"_ZN2cvL11toLowerCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!77 = distinct !{!77, !"_ZN2cvL11toLowerCaseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!78 = !{!17, !41, i64 188}
!79 = !{!39, !40, i64 16}
!80 = !{!81}
!81 = distinct !{!81, !82, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!82 = distinct !{!82, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!83 = !{!84, !85, i64 0}
!84 = !{!"_ZTSN2cv10AutoBufferIlLm1EEE", !85, i64 0, !34, i64 8, !6, i64 16}
!85 = !{!"p1 long", !11, i64 0}
!86 = !{!84, !34, i64 8}
!87 = distinct !{!87, !60}
!88 = !{!89, !90, i64 0}
!89 = !{!"_ZTSN2cv10AutoBufferINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1EEE", !90, i64 0, !34, i64 8, !6, i64 16}
!90 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0}
!91 = !{!89, !34, i64 8}
!92 = distinct !{!92, !93}
!93 = !{!"llvm.loop.unroll.disable"}
!94 = distinct !{!94, !60}
!95 = !{!96, !97, i64 0}
!96 = !{!"_ZTSN2cv10AutoBufferIdLm1EEE", !97, i64 0, !34, i64 8, !6, i64 16}
!97 = !{!"p1 double", !11, i64 0}
!98 = !{!96, !34, i64 8}
!99 = !{!100, !100, i64 0}
!100 = !{!"double", !6, i64 0}
!101 = distinct !{!101, !60, !102, !103}
!102 = !{!"llvm.loop.isvectorized", i32 1}
!103 = !{!"llvm.loop.unroll.runtime.disable"}
!104 = distinct !{!104, !93}
!105 = distinct !{!105, !60, !102}
!106 = !{!12, !13, i64 0}
!107 = !{!108, !5, i64 8}
!108 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !5, i64 8, !5, i64 12}
!109 = !{!108, !5, i64 12}
!110 = distinct !{null, null}
!111 = !{!5, !5, i64 0}
!112 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!113 = distinct !{ptr @_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v2026060515ActivationLayerELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!114 = distinct !{ptr @_ZN2cv3dnn16EltwiseLayerImplD2Ev, ptr @_ZNSt12__shared_ptrIN2cv3dnn14dnn5_v2026060515ActivationLayerELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!115 = !{!24, !25, i64 8}
!116 = !{!24, !25, i64 0}
!117 = !{!118, !5, i64 4}
!118 = !{!"_ZTSN2cv3MatE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !33, i64 24, !33, i64 32, !33, i64 40, !33, i64 48, !119, i64 56, !120, i64 64, !121, i64 72, !123, i64 128}
!119 = !{!"p1 _ZTSN2cv12MatAllocatorE", !11, i64 0}
!120 = !{!"p1 _ZTSN2cv8UMatDataE", !11, i64 0}
!121 = !{!"_ZTSN2cv8MatShapeE", !5, i64 0, !122, i64 4, !5, i64 8, !6, i64 12}
!122 = !{!"_ZTSN2cv10DataLayoutE", !6, i64 0}
!123 = !{!"_ZTSN2cv7MatStepE", !6, i64 0}
!124 = !{!121, !5, i64 0}
!125 = distinct !{!125, !60}
!126 = distinct !{!126, !60}
!127 = distinct !{!127, !60}
!128 = !{!24, !25, i64 16}
!129 = !{!130, !131, i64 0}
!130 = !{!"_ZTSN2cv5utils5trace7details6RegionE", !131, i64 0, !5, i64 8}
!131 = !{!"p1 _ZTSN2cv5utils5trace7details6Region4ImplE", !11, i64 0}
!132 = distinct !{!132, !60}
!133 = distinct !{!133, !93}
!134 = !{!135, !136, i64 0}
!135 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !136, i64 0, !136, i64 8, !136, i64 16}
!136 = !{!"p1 int", !11, i64 0}
!137 = !{!135, !136, i64 16}
!138 = !{!135, !136, i64 8}
!139 = !{!118, !5, i64 0}
!140 = distinct !{!140, !60}
!141 = distinct !{!141, !60}
!142 = distinct !{!142, !93}
!143 = distinct !{!143, !60}
!144 = !{!118, !33, i64 24}
!145 = distinct !{!145, !93}
!146 = distinct !{!146, !93}
!147 = distinct !{!147, !60}
!148 = !{!130, !5, i64 8}
!149 = !{!40, !40, i64 0}
!150 = !{!44, !45, i64 0}
!151 = distinct !{null, null, null, null, null}
!152 = !{!153, !154, i64 8}
!153 = !{!"_ZTSNSt12_Vector_baseIN2cv8MatShapeESaIS1_EE17_Vector_impl_dataE", !154, i64 0, !154, i64 8, !154, i64 16}
!154 = !{!"p1 _ZTSN2cv8MatShapeE", !11, i64 0}
!155 = !{!153, !154, i64 0}
!156 = distinct !{!156, !60}
!157 = distinct !{!157, !60}
!158 = distinct !{!158, !60}
!159 = distinct !{!159, !60}
!160 = distinct !{!160, !60}
!161 = distinct !{!161, !93}
!162 = distinct !{null}
end_hunk_2
