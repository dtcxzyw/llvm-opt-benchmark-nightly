begin_hunk_0_@_ZN2cv3dnn16FlattenLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_:bb.a
bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  invoke void @_ZN2cv5utils5trace7details8traceArgERKNS2_8TraceArgEPKc(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN2cv3dnn16FlattenLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_E22__cv_trace_arg_name208, ptr noundef %i.c)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.d:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  invoke void @_ZNK2cv11_InputArray12getMatVectorERSt6vectorINS_3MatESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = load ptr, ptr %5, align 8, !tbaa !67     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !67
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %bb.g, label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZN2cv3dnn16FlattenLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_, ptr noundef nonnull @.str.15, i32 noundef 216) #20
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.k:                                             ; preds = %bb.h
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load ptr, ptr %6, align 8, !tbaa !28     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.o = load i64, ptr %i.m, align 8, !tbaa !22
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j
  %.pn = phi { ptr, i32 } [ %i.j, %bb.j ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.k, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.r

bb.l:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %8, ptr noundef nonnull align 4 dereferenceable(52) %i.q)
          to label %_ZNK2cv3Mat5shapeEv.exit unwind label %bb.q

_ZNK2cv3Mat5shapeEv.exit:                         ; preds = %bb.l
  invoke void @_ZN2cv3dnn19reshapeAndCopyFirstERKNS_11_InputArrayERKNS_12_OutputArrayERKNS_8MatShapeE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(52) %8)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %_ZNK2cv3Mat5shapeEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %i.r = load ptr, ptr %5, align 8, !tbaa !51     ; 3 uses
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !61   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.m, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i ], [ %i.r, %bb.m ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i) #19
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, %i.s
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !62

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !51
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.m
  %i.u = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.r, %bb.m ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !63
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #18
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit:          ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !68
  %.not.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %4)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #21
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret void

bb.q:                                             ; preds = %bb.l, %_ZNK2cv3Mat5shapeEv.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ae, %bb.q ], [ %i.i, %bb.f ]
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.c
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.r ], [ %i.d, %bb.c ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %.pn.pn.pn
}

declare noundef i32 @_ZN2cv3dnn14dnn5_v202606055Layer16inputNameToIndexENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef align 8) unnamed_addr #4

declare noundef i32 @_ZN2cv3dnn14dnn5_v202606055Layer17outputNameToIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2cv3dnn16FlattenLayerImpl14supportBackendEi(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 noundef %1) unnamed_addr #7 comdat align 2 {
switch.edge:
  %i.a = icmp ult i32 %1, 9
  %switch.cast = trunc i32 %1 to i9
  %switch.downshift = lshr i9 -216, %switch.cast
  %switch.masked = trunc i9 %switch.downshift to i1
  %i.b = select i1 %i.a, i1 %switch.masked, i1 false
  ret i1 %i.b
}

declare void @_ZN2cv3dnn14dnn5_v202606055Layer10initNgraphERKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS6_EERKS3_INS4_INS1_11BackendNodeEEESaISC_EE() unnamed_addr

declare void @_ZN2cv3dnn14dnn5_v202606055Layer9initVkComERKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS6_EERS8_() unnamed_addr

declare void @_ZN2cv3dnn14dnn5_v202606055Layer9initWebnnERKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS6_EERKS3_INS4_INS1_11BackendNodeEEESaISC_EE() unnamed_addr

declare void @_ZN2cv3dnn14dnn5_v202606055Layer8initCUDAEPvRKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS7_EESB_() unnamed_addr

declare void @_ZN2cv3dnn14dnn5_v202606055Layer9initTimVXEPvRKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS7_EESB_b() unnamed_addr

declare void @_ZN2cv3dnn14dnn5_v202606055Layer8initCannERKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS6_EESA_RKS3_INS4_INS1_11BackendNodeEEESaISC_EE() unnamed_addr

declare noundef zeroext i1 @_ZN2cv3dnn14dnn5_v202606055Layer13setActivationERKNS_3PtrINS1_15ActivationLayerEEE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 1) unnamed_addr #4

declare noundef zeroext i1 @_ZN2cv3dnn14dnn5_v202606055Layer7tryFuseERNS_3PtrIS2_EE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

declare void @_ZNK2cv3dnn14dnn5_v202606055Layer13getScaleShiftERNS_3MatES4_(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #4

declare void @_ZNK2cv3dnn14dnn5_v202606055Layer17getScaleZeropointERfRi(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #4

declare void @_ZN2cv3dnn14dnn5_v202606055Layer13unsetAttachedEv(ptr noundef nonnull align 8 dereferenceable(156)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2cv3dnn16FlattenLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %17 = alloca %"struct.cv::MatShape", align 4    ; 10 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %21 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %23 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %25 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !72     ; 3 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %bb.b, label %.preheader144

.preheader144:                                    ; preds = %bb.a
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 52
  %i.h = icmp ugt i64 %i.g, 1
  br i1 %i.h, label %.lr.ph, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__func__._ZNK2cv3dnn16FlattenLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_, ptr noundef nonnull @.str.15, i32 noundef 99) #20
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
  %i.k = load ptr, ptr %13, align 8, !tbaa !28    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.n = load i64, ptr %i.l, align 8, !tbaa !22
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.j, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %common.resume

bb.g:                                             ; preds = %.lr.ph
  %i.p = add nuw i64 %.060147, 1                  ; 2 uses
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !69
  %i.r = load ptr, ptr %1, align 8, !tbaa !72     ; 2 uses
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = sdiv exact i64 %i.u, 52
  %i.w = icmp ult i64 %i.p, %i.v
  br i1 %i.w, label %.lr.ph, label %._crit_edge, !llvm.loop !73

._crit_edge:                                      ; preds = %bb.g, %.preheader144
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  call void @_ZN2cv8MatShapeC1Ev(ptr noundef nonnull align 4 dereferenceable(52) %17)
  %i.x = load ptr, ptr %1, align 8, !tbaa !72     ; 4 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !74   ; 7 uses
  %narrow.i = call i32 @llvm.smax.i32(i32 %i.y, i32 0) ; 16 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !32  ; 10 uses
  %i.ab = sub nsw i32 0, %narrow.i                ; 2 uses
  %.not.i = icmp slt i32 %i.aa, %i.ab
  %.not20.i = icmp sgt i32 %i.aa, %narrow.i
  %or.cond.i = or i1 %.not.i, %.not20.i
  br i1 %or.cond.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge
  call void @_ZN2cv6detail17check_failed_autoEiRKNS0_12CheckContextE(i32 noundef %i.aa, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3dnn14dnn5_v20260605L14normalize_axisEiiE15__cv_check__250) #20
  unreachable

bb.i:                                             ; preds = %._crit_edge
  %i.ac = icmp ult i32 %i.aa, %narrow.i
  br i1 %i.ac, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = icmp slt i32 %i.aa, 0
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ae = add nsw i32 %narrow.i, %i.aa
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.af = sub nsw i32 %i.aa, %narrow.i
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.i
  %i.ag = phi i32 [ %i.af, %bb.l ], [ %i.ae, %bb.k ], [ %i.aa, %bb.i ] ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !48 ; 8 uses
  %.not.i82 = icmp slt i32 %i.ai, %i.ab
  %.not20.i83 = icmp sgt i32 %i.ai, %narrow.i
  %or.cond.i84 = or i1 %.not.i82, %.not20.i83
  br i1 %or.cond.i84, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @_ZN2cv6detail17check_failed_autoEiRKNS0_12CheckContextE(i32 noundef %i.ai, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3dnn14dnn5_v20260605L14normalize_axisEiiE15__cv_check__250) #20
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.aj = icmp ult i32 %i.ai, %narrow.i
  br i1 %i.aj, label %_ZN2cv3dnn14dnn5_v20260605L14normalize_axisEii.exit85, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = icmp slt i32 %i.ai, 0
  br i1 %i.ak, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.al = add nsw i32 %i.ai, %narrow.i
  br label %_ZN2cv3dnn14dnn5_v20260605L14normalize_axisEii.exit85

bb.r:                                             ; preds = %bb.p
  %i.am = sub nsw i32 %i.ai, %narrow.i
  br label %_ZN2cv3dnn14dnn5_v20260605L14normalize_axisEii.exit85

_ZN2cv3dnn14dnn5_v20260605L14normalize_axisEii.exit85: ; preds = %bb.o, %bb.q, %bb.r
  %i.an = phi i32 [ %i.am, %bb.r ], [ %i.al, %bb.q ], [ %i.ai, %bb.o ] ; 5 uses
  %i.ao = icmp slt i32 %i.ag, 0
  %.not66 = icmp samesign ugt i32 %i.ag, %narrow.i
  %or.cond142 = select i1 %i.ao, i1 true, i1 %.not66
  br i1 %or.cond142, label %bb.x, label %bb.ac

.lr.ph:                                           ; preds = %.preheader144, %bb.g
  %i.ap = phi ptr [ %i.r, %bb.g ], [ %i.c, %.preheader144 ] ; 2 uses
  %.060147 = phi i64 [ %i.p, %bb.g ], [ 1, %.preheader144 ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [52 x i8], ptr %i.ap, i64 %.060147
  %i.ar = tail call noundef zeroext i1 @_ZN2cveqERKNS_8MatShapeES2_(ptr noundef nonnull align 4 dereferenceable(52) %i.aq, ptr noundef nonnull align 4 dereferenceable(52) %i.ap)
  br i1 %i.ar, label %bb.g, label %bb.s

bb.s:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @__func__._ZNK2cv3dnn16FlattenLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_, ptr noundef nonnull @.str.15, i32 noundef 102) #20
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.s
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

bb.w:                                             ; preds = %bb.t
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = load ptr, ptr %15, align 8, !tbaa !28   ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %bb.w
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !22
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86, %bb.v
  %.pn79 = phi { ptr, i32 } [ %i.as, %bb.v ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86 ], [ %i.at, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br label %common.resume

bb.x:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L14normalize_axisEii.exit85
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %19)
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @__func__._ZNK2cv3dnn16FlattenLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_, ptr noundef nonnull @.str.15, i32 noundef 121) #20
          to label %bb.z unwind label %bb.ab

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %bb.x
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

bb.ab:                                            ; preds = %bb.y
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = load ptr, ptr %18, align 8, !tbaa !28   ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %bb.ab
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !22
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89, %bb.aa
  %.pn67 = phi { ptr, i32 } [ %i.az, %bb.aa ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89 ], [ %i.ba, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  br label %bb.bj

bb.ac:                                            ; preds = %_ZN2cv3dnn14dnn5_v20260605L14normalize_axisEii.exit85
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.bh = load i8, ptr %i.bg, align 4, !tbaa !49, !range !59, !noundef !60
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.ad, label %bb.as

bb.ad:                                            ; preds = %bb.ac
  %i.bj = icmp slt i32 %i.aa, 0
  %i.bk = select i1 %i.bj, i32 %narrow.i, i32 0
  %spec.select = add nsw i32 %i.bk, %i.aa
  %.sroa.speculated128 = call i32 @llvm.smin.i32(i32 %narrow.i, i32 %spec.select) ; 4 uses
  %i.bl = icmp sgt i32 %.sroa.speculated128, 0
  br i1 %i.bl, label %.lr.ph157, label %.preheader

.lr.ph157:                                        ; preds = %bb.ad
  %narrow.i93 = call i32 @llvm.smax.i32(i32 %i.y, i32 1) ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.x, i64 12 ; 9 uses
  %i.bn = zext nneg i32 %.sroa.speculated128 to i64 ; 2 uses
  %i.bo = add nsw i32 %.sroa.speculated128, -1    ; 2 uses
  %i.bp = call i32 @llvm.umin.i32(i32 %narrow.i93, i32 %i.bo)
  %narrow = add nuw nsw i32 %i.bp, 1              ; 2 uses
  %.not211.not = icmp samesign ugt i32 %narrow.i93, %i.bo
  br i1 %.not211.not, label %_ZNK2cv8MatShapeixEm.exit.preheader, label %bb.ae

_ZNK2cv8MatShapeixEm.exit.preheader:              ; preds = %.lr.ph157
  %xtraiter = and i64 %i.bn, 7                    ; 3 uses
  %i.bq = icmp ult i32 %.sroa.speculated128, 8
  br i1 %i.bq, label %_ZNK2cv8MatShapeixEm.exit.epil.preheader, label %_ZNK2cv8MatShapeixEm.exit.preheader.new

_ZNK2cv8MatShapeixEm.exit.preheader.new:          ; preds = %_ZNK2cv8MatShapeixEm.exit.preheader
  %unroll_iter = and i64 %i.bn, 2147483640
  br label %_ZNK2cv8MatShapeixEm.exit

.preheader.loopexit.unr-lcssa:                    ; preds = %_ZNK2cv8MatShapeixEm.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %_ZNK2cv8MatShapeixEm.exit.epil.preheader

_ZNK2cv8MatShapeixEm.exit.epil.preheader:         ; preds = %.preheader.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit.preheader
  %indvars.iv168.epil.init = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.preheader ], [ %indvars.iv.next169.7, %.preheader.loopexit.unr-lcssa ]
  %.050154.epil.init = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit.preheader ], [ %i.dn, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod226 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod226)
  br label %_ZNK2cv8MatShapeixEm.exit.epil

_ZNK2cv8MatShapeixEm.exit.epil:                   ; preds = %_ZNK2cv8MatShapeixEm.exit.epil, %_ZNK2cv8MatShapeixEm.exit.epil.preheader
  %indvars.iv168.epil = phi i64 [ %indvars.iv.next169.epil, %_ZNK2cv8MatShapeixEm.exit.epil ], [ %indvars.iv168.epil.init, %_ZNK2cv8MatShapeixEm.exit.epil.preheader ] ; 2 uses
  %.050154.epil = phi i64 [ %i.bu, %_ZNK2cv8MatShapeixEm.exit.epil ], [ %.050154.epil.init, %_ZNK2cv8MatShapeixEm.exit.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNK2cv8MatShapeixEm.exit.epil ], [ 0, %_ZNK2cv8MatShapeixEm.exit.epil.preheader ]
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv168.epil
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !75
  %i.bt = sext i32 %i.bs to i64
  %i.bu = mul i64 %.050154.epil, %i.bt            ; 2 uses
  %indvars.iv.next169.epil = add nuw nsw i64 %indvars.iv168.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader, label %_ZNK2cv8MatShapeixEm.exit.epil, !llvm.loop !76

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit.epil, %bb.ad
  %.050.lcssa = phi i64 [ 1, %bb.ad ], [ %i.dn, %.preheader.loopexit.unr-lcssa ], [ %i.bu, %_ZNK2cv8MatShapeixEm.exit.epil ] ; 2 uses
  %.047.lcssa = phi i32 [ 0, %bb.ad ], [ %narrow, %_ZNK2cv8MatShapeixEm.exit.epil ], [ %narrow, %.preheader.loopexit.unr-lcssa ] ; 4 uses
  %i.bv = icmp sgt i32 %i.y, %.047.lcssa
  br i1 %i.bv, label %_ZNK2cv8MatShapeixEm.exit103.lr.ph, label %._crit_edge161.thread

_ZNK2cv8MatShapeixEm.exit103.lr.ph:               ; preds = %.preheader
  %i.bw = getelementptr inbounds nuw i8, ptr %i.x, i64 12 ; 9 uses
  %i.bx = zext nneg i32 %.047.lcssa to i64        ; 2 uses
  %i.by = sub i32 %i.y, %.047.lcssa               ; 2 uses
  %xtraiter227 = and i32 %i.by, 7                 ; 3 uses
  %i.bz = sub i32 %.047.lcssa, %i.y
  %i.ca = icmp ugt i32 %i.bz, -8
  br i1 %i.ca, label %_ZNK2cv8MatShapeixEm.exit103.epil.preheader, label %_ZNK2cv8MatShapeixEm.exit103.lr.ph.new

_ZNK2cv8MatShapeixEm.exit103.lr.ph.new:           ; preds = %_ZNK2cv8MatShapeixEm.exit103.lr.ph
  %unroll_iter232 = and i32 %i.by, -8
  br label %_ZNK2cv8MatShapeixEm.exit103

_ZNK2cv8MatShapeixEm.exit:                        ; preds = %_ZNK2cv8MatShapeixEm.exit, %_ZNK2cv8MatShapeixEm.exit.preheader.new
  %indvars.iv168 = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.preheader.new ], [ %indvars.iv.next169.7, %_ZNK2cv8MatShapeixEm.exit ] ; 9 uses
  %.050154 = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit.preheader.new ], [ %i.dn, %_ZNK2cv8MatShapeixEm.exit ]
  %niter = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.preheader.new ], [ %niter.next.7, %_ZNK2cv8MatShapeixEm.exit ]
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv168
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !75
  %i.cd = sext i32 %i.cc to i64
  %i.ce = mul i64 %.050154, %i.cd
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv168
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !75
  %i.ci = sext i32 %i.ch to i64
  %i.cj = mul i64 %i.ce, %i.ci
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv168
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !75
  %i.cn = sext i32 %i.cm to i64
  %i.co = mul i64 %i.cj, %i.cn
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv168
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !75
  %i.cs = sext i32 %i.cr to i64
  %i.ct = mul i64 %i.co, %i.cs
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv168
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !75
  %i.cx = sext i32 %i.cw to i64
  %i.cy = mul i64 %i.ct, %i.cx
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv168
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 20
  %i.db = load i32, ptr %i.da, align 4, !tbaa !75
  %i.dc = sext i32 %i.db to i64
  %i.dd = mul i64 %i.cy, %i.dc
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv168
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !75
  %i.dh = sext i32 %i.dg to i64
  %i.di = mul i64 %i.dd, %i.dh
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv168
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 28
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !75
  %i.dm = sext i32 %i.dl to i64
  %i.dn = mul i64 %i.di, %i.dm                    ; 3 uses
  %indvars.iv.next169.7 = add nuw nsw i64 %indvars.iv168, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.preheader.loopexit.unr-lcssa, label %_ZNK2cv8MatShapeixEm.exit, !llvm.loop !78

bb.ae:                                            ; preds = %.lr.ph157
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %12)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.25, i32 noundef 103) #20
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.do = landingpad { ptr, i32 }
          cleanup
  %i.dp = load ptr, ptr %11, align 8, !tbaa !28   ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.dr = icmp eq ptr %i.dp, %i.dq
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i95: ; preds = %bb.ag
  %i.ds = load i64, ptr %i.dq, align 8, !tbaa !22
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.dt) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i96

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, %bb.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i123, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i96
  %common.resume.op = phi { ptr, i32 } [ %i.do, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i96 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.hc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i117 ], [ %i.ho, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i123 ], [ %.pn79, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ], [ %.pn75.pn.pn, %bb.bj ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i96: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit103:                     ; preds = %_ZNK2cv8MatShapeixEm.exit103, %_ZNK2cv8MatShapeixEm.exit103.lr.ph.new
  %indvars.iv173 = phi i64 [ %i.bx, %_ZNK2cv8MatShapeixEm.exit103.lr.ph.new ], [ %indvars.iv.next174.7, %_ZNK2cv8MatShapeixEm.exit103 ] ; 9 uses
  %.049159 = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit103.lr.ph.new ], [ %i.fg, %_ZNK2cv8MatShapeixEm.exit103 ]
  %niter233 = phi i32 [ 0, %_ZNK2cv8MatShapeixEm.exit103.lr.ph.new ], [ %niter233.next.7, %_ZNK2cv8MatShapeixEm.exit103 ]
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv173
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !75
  %i.dw = sext i32 %i.dv to i64
  %i.dx = mul i64 %.049159, %i.dw
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv173
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !75
  %i.eb = sext i32 %i.ea to i64
  %i.ec = mul i64 %i.dx, %i.eb
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv173
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !75
  %i.eg = sext i32 %i.ef to i64
  %i.eh = mul i64 %i.ec, %i.eg
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv173
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 12
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !75
  %i.el = sext i32 %i.ek to i64
  %i.em = mul i64 %i.eh, %i.el
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv173
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !75
  %i.eq = sext i32 %i.ep to i64
  %i.er = mul i64 %i.em, %i.eq
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv173
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 20
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !75
  %i.ev = sext i32 %i.eu to i64
  %i.ew = mul i64 %i.er, %i.ev
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv173
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !75
  %i.fa = sext i32 %i.ez to i64
  %i.fb = mul i64 %i.ew, %i.fa
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv173
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 28
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !75
  %i.ff = sext i32 %i.fe to i64
  %i.fg = mul i64 %i.fb, %i.ff                    ; 3 uses
  %indvars.iv.next174.7 = add nuw nsw i64 %indvars.iv173, 8 ; 2 uses
  %niter233.next.7 = add i32 %niter233, 8         ; 2 uses
  %niter233.ncmp.7.not = icmp eq i32 %niter233.next.7, %unroll_iter232
  br i1 %niter233.ncmp.7.not, label %._crit_edge161.unr-lcssa, label %_ZNK2cv8MatShapeixEm.exit103, !llvm.loop !79

._crit_edge161.unr-lcssa:                         ; preds = %_ZNK2cv8MatShapeixEm.exit103
  %lcmp.mod229.not = icmp eq i32 %xtraiter227, 0
  br i1 %lcmp.mod229.not, label %._crit_edge161, label %_ZNK2cv8MatShapeixEm.exit103.epil.preheader

_ZNK2cv8MatShapeixEm.exit103.epil.preheader:      ; preds = %._crit_edge161.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit103.lr.ph
  %indvars.iv173.epil.init = phi i64 [ %i.bx, %_ZNK2cv8MatShapeixEm.exit103.lr.ph ], [ %indvars.iv.next174.7, %._crit_edge161.unr-lcssa ]
  %.049159.epil.init = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit103.lr.ph ], [ %i.fg, %._crit_edge161.unr-lcssa ]
  %lcmp.mod231 = icmp ne i32 %xtraiter227, 0
  call void @llvm.assume(i1 %lcmp.mod231)
  br label %_ZNK2cv8MatShapeixEm.exit103.epil

_ZNK2cv8MatShapeixEm.exit103.epil:                ; preds = %_ZNK2cv8MatShapeixEm.exit103.epil, %_ZNK2cv8MatShapeixEm.exit103.epil.preheader
  %indvars.iv173.epil = phi i64 [ %indvars.iv173.epil.init, %_ZNK2cv8MatShapeixEm.exit103.epil.preheader ], [ %indvars.iv.next174.epil, %_ZNK2cv8MatShapeixEm.exit103.epil ] ; 2 uses
  %.049159.epil = phi i64 [ %.049159.epil.init, %_ZNK2cv8MatShapeixEm.exit103.epil.preheader ], [ %i.fk, %_ZNK2cv8MatShapeixEm.exit103.epil ]
  %epil.iter228 = phi i32 [ 0, %_ZNK2cv8MatShapeixEm.exit103.epil.preheader ], [ %epil.iter228.next, %_ZNK2cv8MatShapeixEm.exit103.epil ]
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv173.epil
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !75
  %i.fj = sext i32 %i.fi to i64
  %i.fk = mul i64 %.049159.epil, %i.fj            ; 2 uses
  %indvars.iv.next174.epil = add nuw nsw i64 %indvars.iv173.epil, 1
  %epil.iter228.next = add i32 %epil.iter228, 1   ; 2 uses
  %epil.iter228.cmp.not = icmp eq i32 %epil.iter228.next, %xtraiter227
  br i1 %epil.iter228.cmp.not, label %._crit_edge161, label %_ZNK2cv8MatShapeixEm.exit103.epil, !llvm.loop !80

._crit_edge161:                                   ; preds = %_ZNK2cv8MatShapeixEm.exit103.epil, %._crit_edge161.unr-lcssa
  %.lcssa = phi i64 [ %i.fg, %._crit_edge161.unr-lcssa ], [ %i.fk, %_ZNK2cv8MatShapeixEm.exit103.epil ] ; 2 uses
  %i.fl = icmp ult i64 %.lcssa, 2147483648
  br i1 %i.fl, label %._crit_edge161.thread, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge161
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.21, ptr noundef nonnull align 1 dereferenceable(1) %21)
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @__func__._ZNK2cv3dnn16FlattenLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_, ptr noundef nonnull @.str.15, i32 noundef 134) #20
          to label %bb.aj unwind label %bb.al

bb.aj:                                            ; preds = %bb.ai
  unreachable

bb.ak:                                            ; preds = %bb.ah
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

bb.al:                                            ; preds = %bb.ai
  %i.fn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fo = load ptr, ptr %20, align 8, !tbaa !28   ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.fq = icmp eq ptr %i.fo, %i.fp
  br i1 %i.fq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %bb.al
  %i.fr = load i64, ptr %i.fp, align 8, !tbaa !22
  %i.fs = add i64 %i.fr, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fs) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104, %bb.ak
  %.pn73 = phi { ptr, i32 } [ %i.fm, %bb.ak ], [ %i.fn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104 ], [ %i.fn, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  br label %bb.bj

._crit_edge161.thread:                            ; preds = %.preheader, %._crit_edge161
  %.049.lcssa213 = phi i64 [ %.lcssa, %._crit_edge161 ], [ 1, %.preheader ]
  %i.ft = icmp ult i64 %.050.lcssa, 2147483647
  br i1 %i.ft, label %bb.ar, label %bb.am

bb.am:                                            ; preds = %._crit_edge161.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(1) %23)
          to label %bb.an unwind label %bb.ap

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @__func__._ZNK2cv3dnn16FlattenLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_, ptr noundef nonnull @.str.15, i32 noundef 134) #20
          to label %bb.ao unwind label %bb.aq

bb.ao:                                            ; preds = %bb.an
  unreachable

bb.ap:                                            ; preds = %bb.am
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

bb.aq:                                            ; preds = %bb.an
  %i.fv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fw = load ptr, ptr %22, align 8, !tbaa !28   ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.fy = icmp eq ptr %i.fw, %i.fx
  br i1 %i.fy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %bb.aq
  %i.fz = load i64, ptr %i.fx, align 8, !tbaa !22
  %i.ga = add i64 %i.fz, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.ga) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107, %bb.ap
  %.pn75 = phi { ptr, i32 } [ %i.fu, %bb.ap ], [ %i.fv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107 ], [ %i.fv, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  br label %bb.bj

bb.ar:                                            ; preds = %._crit_edge161.thread
  %i.gb = trunc nuw nsw i64 %.050.lcssa to i32
  call void @_ZN2cv8MatShape9push_backEi(ptr noundef nonnull align 4 dereferenceable(52) %17, i32 noundef %i.gb)
  %i.gc = trunc nuw nsw i64 %.049.lcssa213 to i32
  call void @_ZN2cv8MatShape9push_backEi(ptr noundef nonnull align 4 dereferenceable(52) %17, i32 noundef %i.gc)
  br label %.loopexit

bb.as:                                            ; preds = %bb.ac
  %.not69 = icmp slt i32 %i.an, %i.ag
  %.not70 = icmp sgt i32 %i.an, %narrow.i
  %or.cond = or i1 %.not69, %.not70
  br i1 %or.cond, label %bb.at, label %bb.ay

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull @.str.23, ptr noundef nonnull align 1 dereferenceable(1) %25)
          to label %bb.au unwind label %bb.aw

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull @__func__._ZNK2cv3dnn16FlattenLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_, ptr noundef nonnull @.str.15, i32 noundef 139) #20
          to label %bb.av unwind label %bb.ax

bb.av:                                            ; preds = %bb.au
  unreachable

bb.aw:                                            ; preds = %bb.at
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

bb.ax:                                            ; preds = %bb.au
  %i.ge = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gf = load ptr, ptr %24, align 8, !tbaa !28   ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.gh = icmp eq ptr %i.gf, %i.gg
  br i1 %i.gh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110: ; preds = %bb.ax
  %i.gi = load i64, ptr %i.gg, align 8, !tbaa !22
  %i.gj = add i64 %i.gi, 1
  call void @_ZdlPvm(ptr noundef %i.gf, i64 noundef %i.gj) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110, %bb.aw
  %.pn71 = phi { ptr, i32 } [ %i.gd, %bb.aw ], [ %i.ge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110 ], [ %i.ge, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  br label %bb.bj

bb.ay:                                            ; preds = %bb.as
  %i.gk = add i32 %i.an, 1                        ; 3 uses
  %.not25.i.not = icmp sgt i32 %i.y, %i.an
  br i1 %.not25.i.not, label %.lr.ph.i, label %bb.az

.lr.ph.i:                                         ; preds = %bb.ay
  %i.gl = getelementptr inbounds nuw i8, ptr %i.x, i64 12 ; 2 uses
  %i.gm = zext i32 %i.gk to i64                   ; 3 uses
  %26 = call i32 @llvm.usub.sat.i32(i32 %i.y, i32 range(i32 0, -2147483648) %i.ag)
  %27 = sub nuw nsw i32 %i.an, %i.ag
  %.not38.not.i = icmp samesign ugt i32 %26, %27
  br i1 %.not38.not.i, label %.lr.ph.split.i, label %30

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %28 = zext nneg i32 %i.ag to i64                ; 5 uses
  %29 = sub nsw i64 %i.gm, %28                    ; 3 uses
  %min.iters.check = icmp ult i64 %29, 8
  br i1 %min.iters.check, label %_ZNK2cv8MatShapeixEm.exit.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.i
  %n.vec = and i64 %29, -8                        ; 3 uses
  %i.gn = add nsw i64 %n.vec, %28
  %invariant.gep = getelementptr [4 x i8], ptr %i.gl, i64 %28
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.gp, %vector.body ]
  %vec.phi219 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.gq, %vector.body ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !75
  %wide.load220 = load <4 x i32>, ptr %i.go, align 4, !tbaa !75
  %i.gp = mul <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.gq = mul <4 x i32> %wide.load220, %vec.phi219 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gr = icmp eq i64 %index.next, %n.vec
  br i1 %i.gr, label %middle.block, label %vector.body, !llvm.loop !81

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.gq, %i.gp
  %i.gs = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %29, %n.vec
  br i1 %cmp.n, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit, label %_ZNK2cv8MatShapeixEm.exit.i.preheader

_ZNK2cv8MatShapeixEm.exit.i.preheader:            ; preds = %.lr.ph.split.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %28, %.lr.ph.split.i ], [ %i.gn, %middle.block ]
  %.02129.i.ph = phi i32 [ 1, %.lr.ph.split.i ], [ %i.gs, %middle.block ]
  br label %_ZNK2cv8MatShapeixEm.exit.i

bb.az:                                            ; preds = %bb.ay
  call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef range(i32 1, -2147483648) %i.gk, i32 noundef %narrow.i, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEiiE15__cv_check__167) #20
  unreachable

_ZNK2cv8MatShapeixEm.exit.i:                      ; preds = %_ZNK2cv8MatShapeixEm.exit.i.preheader, %_ZNK2cv8MatShapeixEm.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZNK2cv8MatShapeixEm.exit.i ], [ %indvars.iv.i.ph, %_ZNK2cv8MatShapeixEm.exit.i.preheader ] ; 2 uses
  %.02129.i = phi i32 [ %i.gv, %_ZNK2cv8MatShapeixEm.exit.i ], [ %.02129.i.ph, %_ZNK2cv8MatShapeixEm.exit.i.preheader ]
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %indvars.iv.i
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !75
  %i.gv = mul i32 %i.gu, %.02129.i                ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.gm
  br i1 %exitcond.not.i, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit, label %_ZNK2cv8MatShapeixEm.exit.i, !llvm.loop !84

30:                                               ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %10)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.25, i32 noundef 103) #20
          to label %31 unwind label %32

31:                                               ; preds = %30
  unreachable

32:                                               ; preds = %30
  %33 = landingpad { ptr, i32 }
          cleanup
  %34 = load ptr, ptr %9, align 8, !tbaa !28      ; 2 uses
  %35 = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %36 = icmp eq ptr %34, %35
  br i1 %36, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %32
  %37 = load i64, ptr %35, align 8, !tbaa !22
  %38 = add i64 %37, 1
  call void @_ZdlPvm(ptr noundef %34, i64 noundef %38) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %common.resume

_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit: ; preds = %_ZNK2cv8MatShapeixEm.exit.i, %middle.block
  %.lcssa218 = phi i32 [ %i.gs, %middle.block ], [ %i.gv, %_ZNK2cv8MatShapeixEm.exit.i ]
  %.not216 = icmp eq i32 %i.ag, 0
  br i1 %.not216, label %._crit_edge150, label %.lr.ph149

._crit_edge150:                                   ; preds = %_ZNK2cv8MatShapeixEm.exit119, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit
  call void @_ZN2cv8MatShape9push_backEi(ptr noundef nonnull align 4 dereferenceable(52) %17, i32 noundef %.lcssa218)
  %i.gw = zext nneg i32 %narrow.i to i64
  %i.gx = icmp ult i32 %i.gk, %narrow.i
  br i1 %i.gx, label %.lr.ph153, label %.loopexit

.lr.ph149:                                        ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit, %_ZNK2cv8MatShapeixEm.exit119
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK2cv8MatShapeixEm.exit119 ], [ 0, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit ] ; 3 uses
  %i.gy = load ptr, ptr %1, align 8, !tbaa !72    ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !74
  %narrow.i114 = call i32 @llvm.smax.i32(i32 %i.gz, i32 1)
  %i.ha = zext nneg i32 %narrow.i114 to i64
  %i.hb = icmp samesign ult i64 %indvars.iv, %i.ha
  br i1 %i.hb, label %_ZNK2cv8MatShapeixEm.exit119, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph149
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %8)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.25, i32 noundef 103) #20
          to label %bb.bb unwind label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  unreachable

bb.bc:                                            ; preds = %bb.ba
  %i.hc = landingpad { ptr, i32 }
          cleanup
  %i.hd = load ptr, ptr %7, align 8, !tbaa !28    ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.hf = icmp eq ptr %i.hd, %i.he
  br i1 %i.hf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i116: ; preds = %bb.bc
  %i.hg = load i64, ptr %i.he, align 8, !tbaa !22
  %i.hh = add i64 %i.hg, 1
  call void @_ZdlPvm(ptr noundef %i.hd, i64 noundef %i.hh) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i117: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i116
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit119:                     ; preds = %.lr.ph149
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gy, i64 12
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %indvars.iv
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !75
  call void @_ZN2cv8MatShape9push_backEi(ptr noundef nonnull align 4 dereferenceable(52) %17, i32 noundef %i.hk)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %28
  br i1 %exitcond.not, label %._crit_edge150, label %.lr.ph149, !llvm.loop !85

.lr.ph153:                                        ; preds = %._crit_edge150, %_ZNK2cv8MatShapeixEm.exit125
  %.0151 = phi i64 [ %i.hx, %_ZNK2cv8MatShapeixEm.exit125 ], [ %i.gm, %._crit_edge150 ] ; 3 uses
  %i.hl = load ptr, ptr %1, align 8, !tbaa !72    ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !74
  %narrow.i120 = call i32 @llvm.smax.i32(i32 %i.hm, i32 1)
  %spec.select.i121 = zext nneg i32 %narrow.i120 to i64
  %i.hn = icmp samesign ult i64 %.0151, %spec.select.i121
  br i1 %i.hn, label %_ZNK2cv8MatShapeixEm.exit125, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph153
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.25, i32 noundef 103) #20
          to label %bb.be unwind label %bb.bf

bb.be:                                            ; preds = %bb.bd
  unreachable

bb.bf:                                            ; preds = %bb.bd
  %i.ho = landingpad { ptr, i32 }
          cleanup
  %i.hp = load ptr, ptr %5, align 8, !tbaa !28    ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.hr = icmp eq ptr %i.hp, %i.hq
  br i1 %i.hr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i123, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i122

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i122: ; preds = %bb.bf
  %i.hs = load i64, ptr %i.hq, align 8, !tbaa !22
  %i.ht = add i64 %i.hs, 1
  call void @_ZdlPvm(ptr noundef %i.hp, i64 noundef %i.ht) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i123

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i123: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i122
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit125:                     ; preds = %.lr.ph153
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hl, i64 12
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %.0151
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !75
  call void @_ZN2cv8MatShape9push_backEi(ptr noundef nonnull align 4 dereferenceable(52) %17, i32 noundef %i.hw)
  %i.hx = add nuw nsw i64 %.0151, 1               ; 2 uses
  %exitcond167.not = icmp eq i64 %i.hx, %i.gw
  br i1 %exitcond167.not, label %.loopexit, label %.lr.ph153, !llvm.loop !86

.loopexit:                                        ; preds = %_ZNK2cv8MatShapeixEm.exit125, %._crit_edge150, %bb.ar
  %i.hy = load ptr, ptr %i.a, align 8, !tbaa !69
  %i.hz = load ptr, ptr %1, align 8, !tbaa !72
  %i.ia = ptrtoint ptr %i.hy to i64
  %i.ib = ptrtoint ptr %i.hz to i64
  %i.ic = sub i64 %i.ia, %i.ib                    ; 2 uses
  %i.id = sdiv exact i64 %i.ic, 52                ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !69 ; 3 uses
  %i.ig = load ptr, ptr %3, align 8, !tbaa !72    ; 2 uses
  %i.ih = ptrtoint ptr %i.if to i64
  %i.ii = ptrtoint ptr %i.ig to i64
  %i.ij = sub i64 %i.ih, %i.ii
  %i.ik = sdiv exact i64 %i.ij, 52                ; 3 uses
  %i.il = icmp ugt i64 %i.id, %i.ik
  br i1 %i.il, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %.loopexit
  %i.im = sub nuw nsw i64 %i.id, %i.ik
  call void @_ZNSt6vectorIN2cv8MatShapeESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.if, i64 noundef %i.im, ptr noundef nonnull align 4 dereferenceable(52) %17)
  br label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE6resizeEmRKS1_.exit

bb.bh:                                            ; preds = %.loopexit
  %i.in = icmp ult i64 %i.id, %i.ik
  br i1 %i.in, label %bb.bi, label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE6resizeEmRKS1_.exit

bb.bi:                                            ; preds = %bb.bh
  %i.io = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.ic ; 2 uses
  %.not.i.i = icmp eq ptr %i.if, %i.io
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE6resizeEmRKS1_.exit, label %_ZSt8_DestroyIPN2cv8MatShapeES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv8MatShapeES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.bi
  store ptr %i.io, ptr %i.ie, align 8, !tbaa !69
  br label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE6resizeEmRKS1_.exit

_ZNSt6vectorIN2cv8MatShapeESaIS1_EE6resizeEmRKS1_.exit: ; preds = %bb.bg, %bb.bh, %bb.bi, %_ZSt8_DestroyIPN2cv8MatShapeES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  ret i1 true

bb.bj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91
  %.pn75.pn.pn = phi { ptr, i32 } [ %.pn67, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91 ], [ %.pn71, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112 ], [ %.pn75, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109 ], [ %.pn73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv3dnn16FlattenLayerImpl8getTypesERKSt6vectorIiSaIiEEiiRS4_S7_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87
  %i.c = load ptr, ptr %1, align 8, !tbaa !90     ; 2 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.32, ptr noundef nonnull align 1 dereferenceable(1) %7)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZNK2cv3dnn16FlattenLayerImpl8getTypesERKSt6vectorIiSaIiEEiiRS4_S7_, ptr noundef nonnull @.str.15, i32 noundef 165) #20
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %6, align 8, !tbaa !28     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8, !tbaa !22
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  resume { ptr, i32 } %i.d

bb.e:                                             ; preds = %bb.a
  %i.j = sext i32 %2 to i64
  tail call void @_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  ret void
}

declare noundef i32 @_ZNK2cv3dnn14dnn5_v202606055Layer10getLayoutsERKSt6vectorINS_10DataLayoutESaIS4_EERS6_iS9_(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 1, ptr noundef nonnull align 1, i32 noundef, ptr noundef nonnull align 1) unnamed_addr #4

declare noundef i64 @_ZNK2cv3dnn14dnn5_v202606055Layer8getFLOPSERKSt6vectorINS_8MatShapeESaIS4_EES8_(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

declare noundef zeroext i1 @_ZN2cv3dnn14dnn5_v202606055Layer18updateMemoryShapesERKSt6vectorINS_8MatShapeESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2cv3dnn16FlattenLayerImpl20alwaysSupportInplaceEv(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret i1 true
}

declare noundef zeroext i1 @_ZNK2cv3dnn14dnn5_v202606055Layer19dynamicOutputShapesEv(ptr noundef nonnull align 8 dereferenceable(156)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2cv3dnn16FlattenLayerImpl15isDataShufflingEv(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret i1 true
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK2cv3dnn14dnn5_v202606055Layer9dumpAttrsERSoi(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK2cv3dnn14dnn5_v202606055Layer4dumpERSoib(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i1 noundef zeroext) unnamed_addr #4

declare void @_ZN2cv3dnn14dnn5_v202606055LayerC2Ev(ptr noundef nonnull align 8 dereferenceable(156)) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #19 ; 0 uses
  tail call void @_ZSt9terminatev() #21
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #10

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZNK2cv3dnn14dnn5_v202606059DictValue3getIlEET_i(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %i.a = icmp eq i32 %1, -1
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !91     ; 3 uses
  switch i32 %i.b, label %bb.c [
    i32 0, label %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit
    i32 3, label %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit
    i32 2, label %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void (ptr, ptr, ...) @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull @.str.7, i32 noundef %i.b)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -3, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv, ptr noundef nonnull @.str.4, i32 noundef 310) #20
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = load ptr, ptr %3, align 8, !tbaa !28     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.g = load i64, ptr %i.e, align 8, !tbaa !22
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i30 ], [ %.pn24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35 ], [ %.pn22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %common.resume

_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit: ; preds = %bb.b, %bb.b, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !22   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.0.in.i = load i64, ptr %i.k, align 8, !tbaa !50
  %i.l = and i64 %.0.in.i, 4294967295
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.o, label %.thread

bb.f:                                             ; preds = %bb.a
  %i.n = icmp sgt i32 %1, -1
  br i1 %i.n, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.o = load i32, ptr %0, align 8, !tbaa !91     ; 3 uses
  switch i32 %i.o, label %bb.h [
    i32 0, label %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit32
    i32 3, label %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit32
    i32 2, label %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit32
  ]

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void (ptr, ptr, ...) @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull @.str.7, i32 noundef %i.o)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -3, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv, ptr noundef nonnull @.str.4, i32 noundef 310) #20
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %2, align 8, !tbaa !28     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29: ; preds = %bb.j
  %i.t = load i64, ptr %i.r, align 8, !tbaa !22
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i30: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %common.resume

_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit32: ; preds = %bb.g, %bb.g, %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !22   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.0.in.i27 = load i64, ptr %i.x, align 8, !tbaa !50
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi:bb.a
  %i.bb = icmp eq i64 %index.next47, %n.vec41
  br i1 %i.bb, label %middle.block48, label %vector.body44, !llvm.loop !121

middle.block48:                                   ; preds = %vector.body44
  %cmp.n49 = icmp eq i64 %i.aw, %n.vec41
  br i1 %cmp.n49, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit, %middle.block48
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.z, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_.exit ], [ %i.ay, %middle.block48 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.ap, ptr %.06.i.i.i.i.i.i.i, align 4, !tbaa !75
  %i.bc = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bc, %i.ar
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !122

_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block48
  store ptr %i.ar, ptr %i.y, align 8, !tbaa !87
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.bd = icmp eq i64 %1, 0
  br i1 %i.bd, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.idx.i.i = shl nuw nsw i64 %1, 2               ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i.i ; 3 uses
  %i.bf = load i32, ptr %2, align 4, !tbaa !75    ; 2 uses
  %i.bg = add nsw i64 %.idx.i.i, -4               ; 2 uses
  %i.bh = lshr exact i64 %i.bg, 2
  %i.bi = add nuw nsw i64 %i.bh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bg, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i12.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.h
  %n.vec = and i64 %i.bi, 9223372036854775800     ; 3 uses
  %i.bj = shl i64 %n.vec, 2
  %i.bk = getelementptr i8, ptr %i.c, i64 %i.bj
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bf, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bl = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.c, i64 %i.bl ; 2 uses
  %i.bm = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !75
  store <4 x i32> %broadcast.splat, ptr %i.bm, align 4, !tbaa !75
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !123

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bi, %n.vec
  br i1 %cmp.n, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit, label %.lr.ph.i.i.i.i12.preheader

.lr.ph.i.i.i.i12.preheader:                       ; preds = %bb.h, %middle.block
  %.06.i.i.i.i13.ph = phi ptr [ %i.c, %bb.h ], [ %i.bk, %middle.block ]
  br label %.lr.ph.i.i.i.i12

.lr.ph.i.i.i.i12:                                 ; preds = %.lr.ph.i.i.i.i12.preheader, %.lr.ph.i.i.i.i12
  %.06.i.i.i.i13 = phi ptr [ %i.bo, %.lr.ph.i.i.i.i12 ], [ %.06.i.i.i.i13.ph, %.lr.ph.i.i.i.i12.preheader ] ; 2 uses
  store i32 %i.bf, ptr %.06.i.i.i.i13, align 4, !tbaa !75
  %i.bo = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i13, i64 4 ; 2 uses
  %.not.i.i.i.i14 = icmp eq ptr %i.bo, %i.be
  br i1 %.not.i.i.i.i14, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit, label %.lr.ph.i.i.i.i12, !llvm.loop !124

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit:              ; preds = %.lr.ph.i.i.i.i12, %middle.block, %bb.g
  %.0.i.i = phi ptr [ %i.c, %bb.g ], [ %i.be, %middle.block ], [ %i.be, %.lr.ph.i.i.i.i12 ] ; 2 uses
  %.not.i = icmp eq ptr %i.z, %.0.i.i
  br i1 %.not.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i:          ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit
  store ptr %.0.i.i, ptr %i.y, align 8, !tbaa !87
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit, %bb.d, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit, %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IPN2cv3dnn16FlattenLayerImplEEET_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !125
  %i.a = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #17
          to label %bb.b unwind label %bb.c       ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !126
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !128
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN2cv3dnn16FlattenLayerImplELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.d, align 8, !tbaa !129
  store ptr %i.a, ptr %0, align 8, !tbaa !125
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %i.f) #19 ; 0 uses
  %i.h = icmp eq ptr %1, null
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2cv3dnn14dnn5_v202606055LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %1) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 168) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  invoke void @__cxa_rethrow() #20
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
  tail call void @__clang_call_terminate(ptr %i.k) #21
  unreachable

bb.i:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN2cv3dnn16FlattenLayerImplELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN2cv3dnn16FlattenLayerImplELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !129  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2cv3dnn14dnn5_v202606055LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %i.b) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 168) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN2cv3dnn16FlattenLayerImplELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt15_Sp_counted_ptrIPN2cv3dnn16FlattenLayerImplELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { builtin allocsize(0) }
attributes #18 = { builtin nounwind }
attributes #19 = { nounwind }
attributes #20 = { noreturn }
attributes #21 = { noreturn nounwind }

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
!9 = !{!"_ZTSSt12__shared_ptrIN2cv3dnn14dnn5_v2026060512FlattenLayerELN9__gnu_cxx12_Lock_policyE2EE", !10, i64 0, !12, i64 8}
!10 = !{!"p1 _ZTSN2cv3dnn14dnn5_v2026060512FlattenLayerE", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !13, i64 0}
!13 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"vtable pointer", !7, i64 0}
!16 = !{!17, !18, i64 0}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !18, i64 0}
!18 = !{!"p1 omnipotent char", !11, i64 0}
!19 = !{!20, !21, i64 8}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !17, i64 0, !21, i64 8, !6, i64 16}
!21 = !{!"long", !6, i64 0}
!22 = !{!6, !6, i64 0}
!23 = !{!24, !27, i64 8}
!24 = !{!"_ZTSSt15_Rb_tree_header", !25, i64 0, !21, i64 32}
!25 = !{!"_ZTSSt18_Rb_tree_node_base", !26, i64 0, !27, i64 8, !27, i64 16, !27, i64 24}
!26 = !{!"_ZTSSt14_Rb_tree_color", !6, i64 0}
!27 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !11, i64 0}
!28 = !{!20, !18, i64 0}
!29 = !{!27, !27, i64 0}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!33, !5, i64 160}
!33 = !{!"_ZTSN2cv3dnn16FlattenLayerImplE", !34, i64 0, !47, i64 156, !5, i64 160, !5, i64 164}
!34 = !{!"_ZTSN2cv3dnn14dnn5_v2026060512FlattenLayerE", !35, i64 0}
!35 = !{!"_ZTSN2cv3dnn14dnn5_v202606055LayerE", !36, i64 0, !37, i64 8, !42, i64 32, !42, i64 56, !11, i64 80, !20, i64 88, !20, i64 120, !5, i64 152}
!36 = !{!"_ZTSN2cv9AlgorithmE"}
!37 = !{!"_ZTSSt6vectorIN2cv3MatESaIS1_EE", !38, i64 0}
!38 = !{!"_ZTSSt12_Vector_baseIN2cv3MatESaIS1_EE", !39, i64 0}
!39 = !{!"_ZTSNSt12_Vector_baseIN2cv3MatESaIS1_EE12_Vector_implE", !40, i64 0}
!40 = !{!"_ZTSNSt12_Vector_baseIN2cv3MatESaIS1_EE17_Vector_impl_dataE", !41, i64 0, !41, i64 8, !41, i64 16}
!41 = !{!"p1 _ZTSN2cv3MatE", !11, i64 0}
!42 = !{!"_ZTSSt6vectorIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE", !43, i64 0}
!43 = !{!"_ZTSSt12_Vector_baseIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE", !44, i64 0}
!44 = !{!"_ZTSNSt12_Vector_baseIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE12_Vector_implE", !45, i64 0}
!45 = !{!"_ZTSNSt12_Vector_baseIN2cv3dnn14dnn5_v202606053ArgESaIS3_EE17_Vector_impl_dataE", !46, i64 0, !46, i64 8, !46, i64 16}
!46 = !{!"p1 _ZTSN2cv3dnn14dnn5_v202606053ArgE", !11, i64 0}
!47 = !{!"bool", !6, i64 0}
!48 = !{!33, !5, i64 164}
!49 = !{!33, !47, i64 156}
!50 = !{!21, !21, i64 0}
!51 = !{!40, !41, i64 0}
!52 = !{!53, !5, i64 4}
!53 = !{!"_ZTSN2cv3MatE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !54, i64 56, !55, i64 64, !56, i64 72, !58, i64 128}
!54 = !{!"p1 _ZTSN2cv12MatAllocatorE", !11, i64 0}
!55 = !{!"p1 _ZTSN2cv8UMatDataE", !11, i64 0}
!56 = !{!"_ZTSN2cv8MatShapeE", !5, i64 0, !57, i64 4, !5, i64 8, !6, i64 12}
!57 = !{!"_ZTSN2cv10DataLayoutE", !6, i64 0}
!58 = !{!"_ZTSN2cv7MatStepE", !6, i64 0}
!59 = !{i8 0, i8 2}
!60 = !{}
!61 = !{!40, !41, i64 8}
!62 = distinct !{!62, !31}
!63 = !{!40, !41, i64 16}
!64 = !{!65, !66, i64 0}
!65 = !{!"_ZTSN2cv5utils5trace7details6RegionE", !66, i64 0, !5, i64 8}
!66 = !{!"p1 _ZTSN2cv5utils5trace7details6Region4ImplE", !11, i64 0}
!67 = !{!41, !41, i64 0}
!68 = !{!65, !5, i64 8}
!69 = !{!70, !71, i64 8}
!70 = !{!"_ZTSNSt12_Vector_baseIN2cv8MatShapeESaIS1_EE17_Vector_impl_dataE", !71, i64 0, !71, i64 8, !71, i64 16}
!71 = !{!"p1 _ZTSN2cv8MatShapeE", !11, i64 0}
!72 = !{!70, !71, i64 0}
!73 = distinct !{!73, !31}
!74 = !{!56, !5, i64 0}
!75 = !{!5, !5, i64 0}
!76 = distinct !{!76, !77}
!77 = !{!"llvm.loop.unroll.disable"}
!78 = distinct !{!78, !31}
!79 = distinct !{!79, !31}
!80 = distinct !{!80, !77}
!81 = distinct !{!81, !31, !82, !83}
!82 = !{!"llvm.loop.isvectorized", i32 1}
!83 = !{!"llvm.loop.unroll.runtime.disable"}
!84 = distinct !{!84, !31, !83, !82}
!85 = distinct !{!85, !31}
!86 = distinct !{!86, !31}
!87 = !{!88, !89, i64 8}
!88 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !89, i64 0, !89, i64 8, !89, i64 16}
!89 = !{!"p1 int", !11, i64 0}
!90 = !{!88, !89, i64 0}
!91 = !{!92, !93, i64 0}
!92 = !{!"_ZTSN2cv3dnn14dnn5_v202606059DictValueE", !93, i64 0, !6, i64 8}
!93 = !{!"_ZTSN2cv5ParamE", !6, i64 0}
!94 = !{!95, !96, i64 0}
!95 = !{!"_ZTSN2cv10AutoBufferIlLm1EEE", !96, i64 0, !21, i64 8, !6, i64 16}
!96 = !{!"p1 long", !11, i64 0}
!97 = !{!98, !99, i64 0}
!98 = !{!"_ZTSN2cv10AutoBufferIdLm1EEE", !99, i64 0, !21, i64 8, !6, i64 16}
!99 = !{!"p1 double", !11, i64 0}
!100 = !{!101, !101, i64 0}
!101 = !{!"double", !6, i64 0}
!102 = !{!103, !104, i64 0}
!103 = !{!"_ZTSN2cv10AutoBufferINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1EEE", !104, i64 0, !21, i64 8, !6, i64 16}
!104 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0}
!105 = distinct !{null}
!106 = !{!70, !71, i64 16}
!107 = !{!108, !109, i64 0}
!108 = !{!"_ZTSNSt6vectorIN2cv8MatShapeESaIS1_EE16_Temporary_valueE", !109, i64 0, !6, i64 8}
!109 = !{!"p1 _ZTSSt6vectorIN2cv8MatShapeESaIS1_EE", !11, i64 0}
!110 = !{!71, !71, i64 0}
!111 = distinct !{!111, !31}
!112 = distinct !{!112, !31}
!113 = distinct !{!113, !31}
!114 = distinct !{!114, !31}
!115 = distinct !{!115, !31}
!116 = !{!88, !89, i64 16}
!117 = distinct !{!117, !31, !82, !83}
!118 = distinct !{!118, !31, !83, !82}
!119 = distinct !{!119, !31, !82, !83}
!120 = distinct !{!120, !31, !83, !82}
!121 = distinct !{!121, !31, !82, !83}
!122 = distinct !{!122, !31, !83, !82}
!123 = distinct !{!123, !31, !82, !83}
!124 = distinct !{!124, !31, !83, !82}
!125 = !{!12, !13, i64 0}
!126 = !{!127, !5, i64 8}
!127 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !5, i64 8, !5, i64 12}
!128 = !{!127, !5, i64 12}
!129 = !{!130, !131, i64 16}
!130 = !{!"_ZTSSt15_Sp_counted_ptrIPN2cv3dnn16FlattenLayerImplELN9__gnu_cxx12_Lock_policyE2EE", !127, i64 0, !131, i64 16}
!131 = !{!"p1 _ZTSN2cv3dnn16FlattenLayerImplE", !11, i64 0}
end_hunk_1
