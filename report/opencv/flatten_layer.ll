Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/flatten_layer?download=true
inline.NumInlined: 365
inline.NumDeleted: 206
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN2cv3dnn16FlattenLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_:bb.a
  br i1 %.not, label %bb.d, label %bb.b

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
  %15 = alloca %"struct.cv::MatShape", align 4    ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %21 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %23 = alloca %"class.std::allocator.5", align 1 ; 3 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZNK2cv3dnn16FlattenLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_, ptr noundef nonnull @.str.15, i32 noundef 99) #20
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
  %i.k = load ptr, ptr %11, align 8, !tbaa !28    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.n = load i64, ptr %i.l, align 8, !tbaa !22
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.j, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
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
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  call void @_ZN2cv8MatShapeC1Ev(ptr noundef nonnull align 4 dereferenceable(52) %15)
  %i.x = load ptr, ptr %1, align 8, !tbaa !72     ; 4 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !74   ; 6 uses
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
  %i.ag = phi i32 [ %i.af, %bb.l ], [ %i.ae, %bb.k ], [ %i.aa, %bb.i ] ; 5 uses
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
  %i.an = phi i32 [ %i.am, %bb.r ], [ %i.al, %bb.q ], [ %i.ai, %bb.o ] ; 4 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__func__._ZNK2cv3dnn16FlattenLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_, ptr noundef nonnull @.str.15, i32 noundef 102) #20
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
  %i.au = load ptr, ptr %13, align 8, !tbaa !28   ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %bb.w
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !22
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86, %bb.v
  %.pn79 = phi { ptr, i32 } [ %i.as, %bb.v ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86 ], [ %i.at, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %common.resume

bb.x:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L14normalize_axisEii.exit85
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @__func__._ZNK2cv3dnn16FlattenLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_, ptr noundef nonnull @.str.15, i32 noundef 121) #20
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
  %i.bb = load ptr, ptr %16, align 8, !tbaa !28   ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %bb.ab
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !22
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89, %bb.aa
  %.pn67 = phi { ptr, i32 } [ %i.az, %bb.aa ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89 ], [ %i.ba, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  br label %bb.bg

bb.ac:                                            ; preds = %_ZN2cv3dnn14dnn5_v20260605L14normalize_axisEii.exit85
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.bh = load i8, ptr %i.bg, align 4, !tbaa !49, !range !59, !noundef !60
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.ad, label %bb.ap

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
  %24 = zext nneg i32 %.sroa.speculated128 to i64 ; 2 uses
  %i.bn = add nsw i32 %.sroa.speculated128, -1    ; 2 uses
  %i.bo = call i32 @llvm.umin.i32(i32 %narrow.i93, i32 %i.bn)
  %narrow = add nuw nsw i32 %i.bo, 1              ; 2 uses
  %.not207.not = icmp samesign ugt i32 %narrow.i93, %i.bn
  br i1 %.not207.not, label %_ZNK2cv8MatShapeixEm.exit.preheader, label %26

_ZNK2cv8MatShapeixEm.exit.preheader:              ; preds = %.lr.ph157
  %xtraiter = and i64 %24, 7                      ; 3 uses
  %25 = icmp ult i32 %.sroa.speculated128, 8
  br i1 %25, label %_ZNK2cv8MatShapeixEm.exit.epil.preheader, label %_ZNK2cv8MatShapeixEm.exit.preheader.new

_ZNK2cv8MatShapeixEm.exit.preheader.new:          ; preds = %_ZNK2cv8MatShapeixEm.exit.preheader
  %unroll_iter = and i64 %24, 2147483640
  br label %_ZNK2cv8MatShapeixEm.exit

.preheader.loopexit.unr-lcssa:                    ; preds = %_ZNK2cv8MatShapeixEm.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %_ZNK2cv8MatShapeixEm.exit.epil.preheader

_ZNK2cv8MatShapeixEm.exit.epil.preheader:         ; preds = %.preheader.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit.preheader
  %indvars.iv168.epil.init = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.preheader ], [ %indvars.iv.next169.7, %.preheader.loopexit.unr-lcssa ]
  %.050154.epil.init = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit.preheader ], [ %i.dl, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod222 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod222)
  br label %_ZNK2cv8MatShapeixEm.exit.epil

_ZNK2cv8MatShapeixEm.exit.epil:                   ; preds = %_ZNK2cv8MatShapeixEm.exit.epil, %_ZNK2cv8MatShapeixEm.exit.epil.preheader
  %indvars.iv168.epil = phi i64 [ %indvars.iv.next169.epil, %_ZNK2cv8MatShapeixEm.exit.epil ], [ %indvars.iv168.epil.init, %_ZNK2cv8MatShapeixEm.exit.epil.preheader ] ; 2 uses
  %.050154.epil = phi i64 [ %i.bs, %_ZNK2cv8MatShapeixEm.exit.epil ], [ %.050154.epil.init, %_ZNK2cv8MatShapeixEm.exit.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNK2cv8MatShapeixEm.exit.epil ], [ 0, %_ZNK2cv8MatShapeixEm.exit.epil.preheader ]
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv168.epil
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !75
  %i.br = sext i32 %i.bq to i64
  %i.bs = mul i64 %.050154.epil, %i.br            ; 2 uses
  %indvars.iv.next169.epil = add nuw nsw i64 %indvars.iv168.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader, label %_ZNK2cv8MatShapeixEm.exit.epil, !llvm.loop !76

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit.epil, %bb.ad
  %.050.lcssa = phi i64 [ 1, %bb.ad ], [ %i.dl, %.preheader.loopexit.unr-lcssa ], [ %i.bs, %_ZNK2cv8MatShapeixEm.exit.epil ] ; 2 uses
  %.047.lcssa = phi i32 [ 0, %bb.ad ], [ %narrow, %_ZNK2cv8MatShapeixEm.exit.epil ], [ %narrow, %.preheader.loopexit.unr-lcssa ] ; 4 uses
  %i.bt = icmp sgt i32 %i.y, %.047.lcssa
  br i1 %i.bt, label %_ZNK2cv8MatShapeixEm.exit103.lr.ph, label %._crit_edge161.thread

_ZNK2cv8MatShapeixEm.exit103.lr.ph:               ; preds = %.preheader
  %i.bu = getelementptr inbounds nuw i8, ptr %i.x, i64 12 ; 9 uses
  %i.bv = zext nneg i32 %.047.lcssa to i64        ; 2 uses
  %i.bw = sub i32 %i.y, %.047.lcssa               ; 2 uses
  %xtraiter223 = and i32 %i.bw, 7                 ; 3 uses
  %i.bx = sub i32 %.047.lcssa, %i.y
  %i.by = icmp ugt i32 %i.bx, -8
  br i1 %i.by, label %_ZNK2cv8MatShapeixEm.exit103.epil.preheader, label %_ZNK2cv8MatShapeixEm.exit103.lr.ph.new

_ZNK2cv8MatShapeixEm.exit103.lr.ph.new:           ; preds = %_ZNK2cv8MatShapeixEm.exit103.lr.ph
  %unroll_iter228 = and i32 %i.bw, -8
  br label %_ZNK2cv8MatShapeixEm.exit103

_ZNK2cv8MatShapeixEm.exit:                        ; preds = %_ZNK2cv8MatShapeixEm.exit, %_ZNK2cv8MatShapeixEm.exit.preheader.new
  %indvars.iv168 = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.preheader.new ], [ %indvars.iv.next169.7, %_ZNK2cv8MatShapeixEm.exit ] ; 9 uses
  %.050154 = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit.preheader.new ], [ %i.dl, %_ZNK2cv8MatShapeixEm.exit ]
  %niter = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.preheader.new ], [ %niter.next.7, %_ZNK2cv8MatShapeixEm.exit ]
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv168
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !75
  %i.cb = sext i32 %i.ca to i64
  %i.cc = mul i64 %.050154, %i.cb
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv168
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !75
  %i.cg = sext i32 %i.cf to i64
  %i.ch = mul i64 %i.cc, %i.cg
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv168
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !75
  %i.cl = sext i32 %i.ck to i64
  %i.cm = mul i64 %i.ch, %i.cl
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv168
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 12
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !75
  %i.cq = sext i32 %i.cp to i64
  %i.cr = mul i64 %i.cm, %i.cq
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv168
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !75
  %i.cv = sext i32 %i.cu to i64
  %i.cw = mul i64 %i.cr, %i.cv
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv168
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 20
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !75
  %i.da = sext i32 %i.cz to i64
  %i.db = mul i64 %i.cw, %i.da
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv168
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !75
  %i.df = sext i32 %i.de to i64
  %i.dg = mul i64 %i.db, %i.df
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv168
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 28
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !75
  %i.dk = sext i32 %i.dj to i64
  %i.dl = mul i64 %i.dg, %i.dk                    ; 3 uses
  %indvars.iv.next169.7 = add nuw nsw i64 %indvars.iv168, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.preheader.loopexit.unr-lcssa, label %_ZNK2cv8MatShapeixEm.exit, !llvm.loop !78

26:                                               ; preds = %.lr.ph157
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %10)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.25, i32 noundef 103) #20
          to label %27 unwind label %28

27:                                               ; preds = %26
  unreachable

28:                                               ; preds = %26
  %29 = landingpad { ptr, i32 }
          cleanup
  %30 = load ptr, ptr %9, align 8, !tbaa !28      ; 2 uses
  %31 = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %32 = icmp eq ptr %30, %31
  br i1 %32, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i95: ; preds = %28
  %33 = load i64, ptr %31, align 8, !tbaa !22
  %34 = add i64 %33, 1
  call void @_ZdlPvm(ptr noundef %30, i64 noundef %34) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i96

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, %bb.bg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i123, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i96
  %common.resume.op = phi { ptr, i32 } [ %29, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i96 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.gv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i117 ], [ %i.hh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i123 ], [ %.pn79, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ], [ %.pn75.pn.pn, %bb.bg ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i96: ; preds = %28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit103:                     ; preds = %_ZNK2cv8MatShapeixEm.exit103, %_ZNK2cv8MatShapeixEm.exit103.lr.ph.new
  %indvars.iv173 = phi i64 [ %i.bv, %_ZNK2cv8MatShapeixEm.exit103.lr.ph.new ], [ %indvars.iv.next174.7, %_ZNK2cv8MatShapeixEm.exit103 ] ; 9 uses
  %.049159 = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit103.lr.ph.new ], [ %i.ey, %_ZNK2cv8MatShapeixEm.exit103 ]
  %niter229 = phi i32 [ 0, %_ZNK2cv8MatShapeixEm.exit103.lr.ph.new ], [ %niter229.next.7, %_ZNK2cv8MatShapeixEm.exit103 ]
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv173
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !75
  %i.do = sext i32 %i.dn to i64
  %i.dp = mul i64 %.049159, %i.do
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv173
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !75
  %i.dt = sext i32 %i.ds to i64
  %i.du = mul i64 %i.dp, %i.dt
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv173
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !75
  %i.dy = sext i32 %i.dx to i64
  %i.dz = mul i64 %i.du, %i.dy
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv173
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 12
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !75
  %i.ed = sext i32 %i.ec to i64
  %i.ee = mul i64 %i.dz, %i.ed
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv173
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !75
  %i.ei = sext i32 %i.eh to i64
  %i.ej = mul i64 %i.ee, %i.ei
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv173
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 20
  %i.em = load i32, ptr %i.el, align 4, !tbaa !75
  %i.en = sext i32 %i.em to i64
  %i.eo = mul i64 %i.ej, %i.en
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv173
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !75
  %i.es = sext i32 %i.er to i64
  %i.et = mul i64 %i.eo, %i.es
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv173
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 28
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !75
  %i.ex = sext i32 %i.ew to i64
  %i.ey = mul i64 %i.et, %i.ex                    ; 3 uses
  %indvars.iv.next174.7 = add nuw nsw i64 %indvars.iv173, 8 ; 2 uses
  %niter229.next.7 = add i32 %niter229, 8         ; 2 uses
  %niter229.ncmp.7.not = icmp eq i32 %niter229.next.7, %unroll_iter228
  br i1 %niter229.ncmp.7.not, label %._crit_edge161.unr-lcssa, label %_ZNK2cv8MatShapeixEm.exit103, !llvm.loop !79

._crit_edge161.unr-lcssa:                         ; preds = %_ZNK2cv8MatShapeixEm.exit103
  %lcmp.mod225.not = icmp eq i32 %xtraiter223, 0
  br i1 %lcmp.mod225.not, label %._crit_edge161, label %_ZNK2cv8MatShapeixEm.exit103.epil.preheader

_ZNK2cv8MatShapeixEm.exit103.epil.preheader:      ; preds = %._crit_edge161.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit103.lr.ph
  %indvars.iv173.epil.init = phi i64 [ %i.bv, %_ZNK2cv8MatShapeixEm.exit103.lr.ph ], [ %indvars.iv.next174.7, %._crit_edge161.unr-lcssa ]
  %.049159.epil.init = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit103.lr.ph ], [ %i.ey, %._crit_edge161.unr-lcssa ]
  %lcmp.mod227 = icmp ne i32 %xtraiter223, 0
  call void @llvm.assume(i1 %lcmp.mod227)
  br label %_ZNK2cv8MatShapeixEm.exit103.epil

_ZNK2cv8MatShapeixEm.exit103.epil:                ; preds = %_ZNK2cv8MatShapeixEm.exit103.epil, %_ZNK2cv8MatShapeixEm.exit103.epil.preheader
  %indvars.iv173.epil = phi i64 [ %indvars.iv173.epil.init, %_ZNK2cv8MatShapeixEm.exit103.epil.preheader ], [ %indvars.iv.next174.epil, %_ZNK2cv8MatShapeixEm.exit103.epil ] ; 2 uses
  %.049159.epil = phi i64 [ %.049159.epil.init, %_ZNK2cv8MatShapeixEm.exit103.epil.preheader ], [ %i.fc, %_ZNK2cv8MatShapeixEm.exit103.epil ]
  %epil.iter224 = phi i32 [ 0, %_ZNK2cv8MatShapeixEm.exit103.epil.preheader ], [ %epil.iter224.next, %_ZNK2cv8MatShapeixEm.exit103.epil ]
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv173.epil
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !75
  %i.fb = sext i32 %i.fa to i64
  %i.fc = mul i64 %.049159.epil, %i.fb            ; 2 uses
  %indvars.iv.next174.epil = add nuw nsw i64 %indvars.iv173.epil, 1
  %epil.iter224.next = add i32 %epil.iter224, 1   ; 2 uses
  %epil.iter224.cmp.not = icmp eq i32 %epil.iter224.next, %xtraiter223
  br i1 %epil.iter224.cmp.not, label %._crit_edge161, label %_ZNK2cv8MatShapeixEm.exit103.epil, !llvm.loop !80

._crit_edge161:                                   ; preds = %_ZNK2cv8MatShapeixEm.exit103.epil, %._crit_edge161.unr-lcssa
  %.lcssa = phi i64 [ %i.ey, %._crit_edge161.unr-lcssa ], [ %i.fc, %_ZNK2cv8MatShapeixEm.exit103.epil ] ; 2 uses
  %i.fd = icmp ult i64 %.lcssa, 2147483648
  br i1 %i.fd, label %._crit_edge161.thread, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge161
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str.21, ptr noundef nonnull align 1 dereferenceable(1) %19)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @__func__._ZNK2cv3dnn16FlattenLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_, ptr noundef nonnull @.str.15, i32 noundef 134) #20
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  unreachable

bb.ah:                                            ; preds = %bb.ae
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

bb.ai:                                            ; preds = %bb.af
  %i.ff = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fg = load ptr, ptr %18, align 8, !tbaa !28   ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.fi = icmp eq ptr %i.fg, %i.fh
  br i1 %i.fi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %bb.ai
  %i.fj = load i64, ptr %i.fh, align 8, !tbaa !22
  %i.fk = add i64 %i.fj, 1
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fk) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104, %bb.ah
  %.pn73 = phi { ptr, i32 } [ %i.fe, %bb.ah ], [ %i.ff, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104 ], [ %i.ff, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  br label %bb.bg

._crit_edge161.thread:                            ; preds = %.preheader, %._crit_edge161
  %.049.lcssa209 = phi i64 [ %.lcssa, %._crit_edge161 ], [ 1, %.preheader ]
  %i.fl = icmp ult i64 %.050.lcssa, 2147483647
  br i1 %i.fl, label %bb.ao, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge161.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(1) %21)
          to label %bb.ak unwind label %bb.am

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @__func__._ZNK2cv3dnn16FlattenLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_, ptr noundef nonnull @.str.15, i32 noundef 134) #20
          to label %bb.al unwind label %bb.an

bb.al:                                            ; preds = %bb.ak
  unreachable

bb.am:                                            ; preds = %bb.aj
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

bb.an:                                            ; preds = %bb.ak
  %i.fn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fo = load ptr, ptr %20, align 8, !tbaa !28   ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.fq = icmp eq ptr %i.fo, %i.fp
  br i1 %i.fq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %bb.an
  %i.fr = load i64, ptr %i.fp, align 8, !tbaa !22
  %i.fs = add i64 %i.fr, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fs) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107, %bb.am
  %.pn75 = phi { ptr, i32 } [ %i.fm, %bb.am ], [ %i.fn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107 ], [ %i.fn, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  br label %bb.bg

bb.ao:                                            ; preds = %._crit_edge161.thread
  %i.ft = trunc nuw nsw i64 %.050.lcssa to i32
  call void @_ZN2cv8MatShape9push_backEi(ptr noundef nonnull align 4 dereferenceable(52) %15, i32 noundef %i.ft)
  %i.fu = trunc nuw nsw i64 %.049.lcssa209 to i32
  call void @_ZN2cv8MatShape9push_backEi(ptr noundef nonnull align 4 dereferenceable(52) %15, i32 noundef %i.fu)
  br label %.loopexit

bb.ap:                                            ; preds = %bb.ac
  %.not69 = icmp slt i32 %i.an, %i.ag
  %.not70 = icmp sgt i32 %i.an, %narrow.i
  %or.cond = or i1 %.not69, %.not70
  br i1 %or.cond, label %bb.aq, label %bb.av

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @.str.23, ptr noundef nonnull align 1 dereferenceable(1) %23)
          to label %bb.ar unwind label %bb.at

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @__func__._ZNK2cv3dnn16FlattenLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_, ptr noundef nonnull @.str.15, i32 noundef 139) #20
          to label %bb.as unwind label %bb.au

bb.as:                                            ; preds = %bb.ar
  unreachable

bb.at:                                            ; preds = %bb.aq
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

bb.au:                                            ; preds = %bb.ar
  %i.fw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fx = load ptr, ptr %22, align 8, !tbaa !28   ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.fz = icmp eq ptr %i.fx, %i.fy
  br i1 %i.fz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110: ; preds = %bb.au
  %i.ga = load i64, ptr %i.fy, align 8, !tbaa !22
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.gb) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110, %bb.at
  %.pn71 = phi { ptr, i32 } [ %i.fv, %bb.at ], [ %i.fw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110 ], [ %i.fw, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  br label %bb.bg

bb.av:                                            ; preds = %bb.ap
  %i.gc = add nuw nsw i32 %i.an, 1                ; 3 uses
  %.not25.i.not = icmp sgt i32 %i.y, %i.an
  br i1 %.not25.i.not, label %_ZNK2cv8MatShapeixEm.exit.lr.ph.i, label %bb.aw

_ZNK2cv8MatShapeixEm.exit.lr.ph.i:                ; preds = %bb.av
  %i.gd = getelementptr inbounds nuw i8, ptr %i.x, i64 12 ; 2 uses
  %i.ge = zext nneg i32 %i.ag to i64              ; 5 uses
  %wide.trip.count.i = zext nneg i32 %i.gc to i64 ; 3 uses
  %i.gf = sub nsw i64 %wide.trip.count.i, %i.ge   ; 3 uses
  %min.iters.check = icmp ult i64 %i.gf, 8
  br i1 %min.iters.check, label %_ZNK2cv8MatShapeixEm.exit.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZNK2cv8MatShapeixEm.exit.lr.ph.i
  %n.vec = and i64 %i.gf, -8                      ; 3 uses
  %i.gg = add nsw i64 %n.vec, %i.ge
  %invariant.gep = getelementptr [4 x i8], ptr %i.gd, i64 %i.ge
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.gi, %vector.body ]
  %vec.phi215 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.gj, %vector.body ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !75
  %wide.load216 = load <4 x i32>, ptr %i.gh, align 4, !tbaa !75
  %i.gi = mul <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.gj = mul <4 x i32> %wide.load216, %vec.phi215 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gk = icmp eq i64 %index.next, %n.vec
  br i1 %i.gk, label %middle.block, label %vector.body, !llvm.loop !81

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.gj, %i.gi
  %i.gl = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.gf, %n.vec
  br i1 %cmp.n, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit, label %_ZNK2cv8MatShapeixEm.exit.i.preheader

_ZNK2cv8MatShapeixEm.exit.i.preheader:            ; preds = %_ZNK2cv8MatShapeixEm.exit.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.ge, %_ZNK2cv8MatShapeixEm.exit.lr.ph.i ], [ %i.gg, %middle.block ]
  %.02129.i.ph = phi i32 [ 1, %_ZNK2cv8MatShapeixEm.exit.lr.ph.i ], [ %i.gl, %middle.block ]
  br label %_ZNK2cv8MatShapeixEm.exit.i

bb.aw:                                            ; preds = %bb.av
  call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef range(i32 1, -2147483648) %i.gc, i32 noundef %narrow.i, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEiiE15__cv_check__167) #20
  unreachable

_ZNK2cv8MatShapeixEm.exit.i:                      ; preds = %_ZNK2cv8MatShapeixEm.exit.i.preheader, %_ZNK2cv8MatShapeixEm.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZNK2cv8MatShapeixEm.exit.i ], [ %indvars.iv.i.ph, %_ZNK2cv8MatShapeixEm.exit.i.preheader ] ; 2 uses
  %.02129.i = phi i32 [ %i.go, %_ZNK2cv8MatShapeixEm.exit.i ], [ %.02129.i.ph, %_ZNK2cv8MatShapeixEm.exit.i.preheader ]
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %indvars.iv.i
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !75
  %i.go = mul i32 %i.gn, %.02129.i                ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit, label %_ZNK2cv8MatShapeixEm.exit.i, !llvm.loop !84

_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit: ; preds = %_ZNK2cv8MatShapeixEm.exit.i, %middle.block
  %.lcssa214 = phi i32 [ %i.gl, %middle.block ], [ %i.go, %_ZNK2cv8MatShapeixEm.exit.i ]
  %.not212 = icmp eq i32 %i.ag, 0
  br i1 %.not212, label %._crit_edge150, label %.lr.ph149

._crit_edge150:                                   ; preds = %_ZNK2cv8MatShapeixEm.exit119, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit
  call void @_ZN2cv8MatShape9push_backEi(ptr noundef nonnull align 4 dereferenceable(52) %15, i32 noundef %.lcssa214)
  %i.gp = zext nneg i32 %narrow.i to i64
  %i.gq = icmp ult i32 %i.gc, %narrow.i
  br i1 %i.gq, label %.lr.ph153, label %.loopexit

.lr.ph149:                                        ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit, %_ZNK2cv8MatShapeixEm.exit119
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK2cv8MatShapeixEm.exit119 ], [ 0, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit ] ; 3 uses
  %i.gr = load ptr, ptr %1, align 8, !tbaa !72    ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !74
  %narrow.i114 = call i32 @llvm.smax.i32(i32 %i.gs, i32 1)
  %i.gt = zext nneg i32 %narrow.i114 to i64
  %i.gu = icmp samesign ult i64 %indvars.iv, %i.gt
  br i1 %i.gu, label %_ZNK2cv8MatShapeixEm.exit119, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph149
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %8)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.25, i32 noundef 103) #20
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %bb.ax
  unreachable

bb.az:                                            ; preds = %bb.ax
  %i.gv = landingpad { ptr, i32 }
          cleanup
  %i.gw = load ptr, ptr %7, align 8, !tbaa !28    ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.gy = icmp eq ptr %i.gw, %i.gx
  br i1 %i.gy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i116: ; preds = %bb.az
  %i.gz = load i64, ptr %i.gx, align 8, !tbaa !22
  %i.ha = add i64 %i.gz, 1
  call void @_ZdlPvm(ptr noundef %i.gw, i64 noundef %i.ha) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i117: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i116
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit119:                     ; preds = %.lr.ph149
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gr, i64 12
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %indvars.iv
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !75
  call void @_ZN2cv8MatShape9push_backEi(ptr noundef nonnull align 4 dereferenceable(52) %15, i32 noundef %i.hd)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ge
  br i1 %exitcond.not, label %._crit_edge150, label %.lr.ph149, !llvm.loop !85

.lr.ph153:                                        ; preds = %._crit_edge150, %_ZNK2cv8MatShapeixEm.exit125
  %.0151 = phi i64 [ %i.hq, %_ZNK2cv8MatShapeixEm.exit125 ], [ %wide.trip.count.i, %._crit_edge150 ] ; 3 uses
  %i.he = load ptr, ptr %1, align 8, !tbaa !72    ; 2 uses
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !74
  %narrow.i120 = call i32 @llvm.smax.i32(i32 %i.hf, i32 1)
  %spec.select.i121 = zext nneg i32 %narrow.i120 to i64
  %i.hg = icmp samesign ult i64 %.0151, %spec.select.i121
  br i1 %i.hg, label %_ZNK2cv8MatShapeixEm.exit125, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph153
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.25, i32 noundef 103) #20
          to label %bb.bb unwind label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  unreachable

bb.bc:                                            ; preds = %bb.ba
  %i.hh = landingpad { ptr, i32 }
          cleanup
  %i.hi = load ptr, ptr %5, align 8, !tbaa !28    ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.hk = icmp eq ptr %i.hi, %i.hj
  br i1 %i.hk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i123, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i122

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i122: ; preds = %bb.bc
  %i.hl = load i64, ptr %i.hj, align 8, !tbaa !22
  %i.hm = add i64 %i.hl, 1
  call void @_ZdlPvm(ptr noundef %i.hi, i64 noundef %i.hm) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i123

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i123: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i122
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit125:                     ; preds = %.lr.ph153
  %i.hn = getelementptr inbounds nuw i8, ptr %i.he, i64 12
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %.0151
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !75
  call void @_ZN2cv8MatShape9push_backEi(ptr noundef nonnull align 4 dereferenceable(52) %15, i32 noundef %i.hp)
  %i.hq = add nuw nsw i64 %.0151, 1               ; 2 uses
  %exitcond167.not = icmp eq i64 %i.hq, %i.gp
  br i1 %exitcond167.not, label %.loopexit, label %.lr.ph153, !llvm.loop !86

.loopexit:                                        ; preds = %_ZNK2cv8MatShapeixEm.exit125, %._crit_edge150, %bb.ao
  %i.hr = load ptr, ptr %i.a, align 8, !tbaa !69
  %i.hs = load ptr, ptr %1, align 8, !tbaa !72
  %i.ht = ptrtoint ptr %i.hr to i64
  %i.hu = ptrtoint ptr %i.hs to i64
  %i.hv = sub i64 %i.ht, %i.hu                    ; 2 uses
  %i.hw = sdiv exact i64 %i.hv, 52                ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !69 ; 3 uses
  %i.hz = load ptr, ptr %3, align 8, !tbaa !72    ; 2 uses
  %i.ia = ptrtoint ptr %i.hy to i64
  %i.ib = ptrtoint ptr %i.hz to i64
  %i.ic = sub i64 %i.ia, %i.ib
  %i.id = sdiv exact i64 %i.ic, 52                ; 3 uses
  %i.ie = icmp ugt i64 %i.hw, %i.id
  br i1 %i.ie, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.loopexit
  %i.if = sub nuw nsw i64 %i.hw, %i.id
  call void @_ZNSt6vectorIN2cv8MatShapeESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.hy, i64 noundef %i.if, ptr noundef nonnull align 4 dereferenceable(52) %15)
  br label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE6resizeEmRKS1_.exit

bb.be:                                            ; preds = %.loopexit
  %i.ig = icmp ult i64 %i.hw, %i.id
  br i1 %i.ig, label %bb.bf, label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE6resizeEmRKS1_.exit

bb.bf:                                            ; preds = %bb.be
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.hv ; 2 uses
  %.not.i.i = icmp eq ptr %i.hy, %i.ih
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE6resizeEmRKS1_.exit, label %_ZSt8_DestroyIPN2cv8MatShapeES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv8MatShapeES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.bf
  store ptr %i.ih, ptr %i.hx, align 8, !tbaa !69
  br label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE6resizeEmRKS1_.exit

_ZNSt6vectorIN2cv8MatShapeESaIS1_EE6resizeEmRKS1_.exit: ; preds = %bb.bd, %bb.be, %bb.bf, %_ZSt8_DestroyIPN2cv8MatShapeES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  ret i1 true

bb.bg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91
  %.pn75.pn.pn = phi { ptr, i32 } [ %.pn67, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91 ], [ %.pn71, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112 ], [ %.pn75, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109 ], [ %.pn73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
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
