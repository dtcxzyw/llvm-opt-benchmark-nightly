Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/reorg_layer?download=true
inline.NumInlined: 661
inline.NumDeleted: 317
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN2cv3dnn14ReorgLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_:bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(156) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.n unwind label %bb.aa

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.y = load ptr, ptr %6, align 8, !tbaa !68     ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !82  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.y, %i.aa
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.n, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.y, %bb.n ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i) #22
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, %i.aa
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !68
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.n
  %i.ac = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.y, %bb.n ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !83
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #21
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit:          ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.ai = load ptr, ptr %5, align 8, !tbaa !68    ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !82 ; 2 uses
  %.not4.i.i.i24 = icmp eq ptr %i.ai, %i.ak
  br i1 %.not4.i.i.i24, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i30, label %.lr.ph.i.i.i25

.lr.ph.i.i.i25:                                   ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, %.lr.ph.i.i.i25
  %.05.i.i.i26 = phi ptr [ %i.al, %.lr.ph.i.i.i25 ], [ %i.ai, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i26) #22
  %i.al = getelementptr inbounds nuw i8, ptr %.05.i.i.i26, i64 208 ; 2 uses
  %.not.i.i.i27 = icmp eq ptr %i.al, %i.ak
  br i1 %.not.i.i.i27, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i28, label %.lr.ph.i.i.i25, !llvm.loop !2

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i28: ; preds = %.lr.ph.i.i.i25
  %.pr.i29 = load ptr, ptr %5, align 8, !tbaa !68
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i30

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i30: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i28, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit
  %i.am = phi ptr [ %.pr.i29, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i28 ], [ %i.ai, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i31 = icmp eq ptr %i.am, null
  br i1 %.not.i.i1.i31, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit32, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i30
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !83
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = sub i64 %i.ap, %i.aq
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.ar) #21
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit32

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit32:        ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i30, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.q

bb.q:                                             ; preds = %bb.f, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit32
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.at = load i32, ptr %i.as, align 8, !tbaa !86
  %.not.i = icmp eq i32 %i.at, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %4)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #24
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void

bb.t:                                             ; preds = %bb.h, %bb.g
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.u:                                             ; preds = %bb.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %bb.j
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #22
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn = phi { ptr, i32 } [ %i.ay, %bb.v ], [ %i.ax, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.ab

bb.x:                                             ; preds = %bb.k
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %bb.l
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #22
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn16 = phi { ptr, i32 } [ %i.ba, %bb.y ], [ %i.az, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.ab

bb.aa:                                            ; preds = %bb.m
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.w, %bb.t
  %.pn18.pn.pn = phi { ptr, i32 } [ %i.bb, %bb.aa ], [ %.pn16, %bb.z ], [ %.pn, %bb.w ], [ %i.aw, %bb.t ]
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.c
  %.pn22 = phi { ptr, i32 } [ %i.d, %bb.c ], [ %.pn18.pn.pn, %bb.ab ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %.pn22
}

declare noundef i32 @_ZN2cv3dnn14dnn5_v202606055Layer16inputNameToIndexENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef align 8) unnamed_addr #3

declare noundef i32 @_ZN2cv3dnn14dnn5_v202606055Layer17outputNameToIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2cv3dnn14ReorgLayerImpl14supportBackendEi(ptr noundef nonnull align 8 dereferenceable(224) %0, i32 noundef %1) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 3
  %i.b = icmp eq i32 %1, 5
  %i.c = or i1 %i.a, %i.b
  ret i1 %i.c
}

declare void @_ZN2cv3dnn14dnn5_v202606055Layer10initNgraphERKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS6_EERKS3_INS4_INS1_11BackendNodeEEESaISC_EE() unnamed_addr

declare void @_ZN2cv3dnn14dnn5_v202606055Layer9initVkComERKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS6_EERS8_() unnamed_addr

declare void @_ZN2cv3dnn14dnn5_v202606055Layer9initWebnnERKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS6_EERKS3_INS4_INS1_11BackendNodeEEESaISC_EE() unnamed_addr

declare void @_ZN2cv3dnn14dnn5_v202606055Layer8initCUDAEPvRKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS7_EESB_() unnamed_addr

declare void @_ZN2cv3dnn14dnn5_v202606055Layer9initTimVXEPvRKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS7_EESB_b() unnamed_addr

declare void @_ZN2cv3dnn14dnn5_v202606055Layer8initCannERKSt6vectorINS_3PtrINS1_14BackendWrapperEEESaIS6_EESA_RKS3_INS4_INS1_11BackendNodeEEESaISC_EE() unnamed_addr

declare noundef zeroext i1 @_ZN2cv3dnn14dnn5_v202606055Layer13setActivationERKNS_3PtrINS1_15ActivationLayerEEE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 1) unnamed_addr #3

declare noundef zeroext i1 @_ZN2cv3dnn14dnn5_v202606055Layer7tryFuseERNS_3PtrIS2_EE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

declare void @_ZNK2cv3dnn14dnn5_v202606055Layer13getScaleShiftERNS_3MatES4_(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #3

declare void @_ZNK2cv3dnn14dnn5_v202606055Layer17getScaleZeropointERfRi(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #3

declare void @_ZN2cv3dnn14dnn5_v202606055Layer13unsetAttachedEv(ptr noundef nonnull align 8 dereferenceable(156)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2cv3dnn14ReorgLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %i.a = alloca [4 x i32], align 16               ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %19 = alloca %"class.std::vector.34", align 16  ; 7 uses
  %20 = alloca %"struct.cv::MatShape", align 4    ; 5 uses
  %21 = alloca %"class.std::allocator.36", align 1 ; 3 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %23 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %25 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !89   ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !90     ; 7 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 52
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %18)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @__func__._ZNK2cv3dnn14ReorgLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_, ptr noundef nonnull @.str.2, i32 noundef 87) #23
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
  %i.k = load ptr, ptr %17, align 8, !tbaa !32    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.n = load i64, ptr %i.l, align 8, !tbaa !26
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.j, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %common.resume

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  %i.p = load i32, ptr %i.d, align 4, !tbaa !80   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !66
  %i.s = icmp sgt i32 %i.p, 1
  br i1 %i.s, label %_ZNK2cv8MatShapeixEm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %16)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.12, i32 noundef 103) #23
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %15, align 8, !tbaa !32    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  %i.x = load i64, ptr %i.v, align 8, !tbaa !26
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i58, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i36, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i30 ], [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i36 ], [ %i.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i47 ], [ %i.ce, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i52 ], [ %i.co, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i58 ], [ %.pn22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75 ], [ %.pn20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit:                        ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !66
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !58 ; 4 uses
  %i.ad = mul nsw i32 %i.ac, %i.aa
  %i.ae = mul nsw i32 %i.ad, %i.ac                ; 3 uses
  %.not77 = icmp eq i32 %i.p, 2
  br i1 %.not77, label %bb.k, label %_ZNK2cv8MatShapeixEm.exit32

bb.k:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %14)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.12, i32 noundef 103) #23
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = load ptr, ptr %13, align 8, !tbaa !32   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29: ; preds = %bb.m
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !26
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i30: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit32:                      ; preds = %_ZNK2cv8MatShapeixEm.exit
  %i.al = icmp samesign ugt i32 %i.p, 3
  br i1 %i.al, label %_ZNK2cv8MatShapeixEm.exit38, label %bb.n

bb.n:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %12)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.12, i32 noundef 103) #23
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %11, align 8, !tbaa !32   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35: ; preds = %bb.p
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !26
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i36: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit38:                      ; preds = %_ZNK2cv8MatShapeixEm.exit32
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %26 = load i32, ptr %i.as, align 4, !tbaa !66
  %27 = sdiv i32 %26, %i.ac                       ; 2 uses
  %28 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %29 = load i32, ptr %28, align 4, !tbaa !66
  %30 = sdiv i32 %29, %i.ac                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22, !noalias !139
  store i32 %i.r, ptr %i.a, align 16, !tbaa !66, !noalias !139
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i32 %i.ae, ptr %i.at, align 4, !tbaa !66, !noalias !139
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i32 %27, ptr %i.au, align 8, !tbaa !66, !noalias !139
  %31 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %30, ptr %31, align 4, !tbaa !66, !noalias !139
  %i.av = or i32 %27, %i.ae                       ; 2 uses
  %i.aw = icmp sgt i32 %i.av, -1
  %i.ax = zext i1 %i.aw to i64
  %i.ay = or i32 %30, %i.av
  call void @_ZN2cv8MatShapeC1Ev(ptr noundef nonnull align 4 dereferenceable(52) %20)
  %i.az = icmp slt i32 %i.ae, 0
  %.sroa.sel.i = select i1 %i.az, ptr %i.at, ptr %i.au
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.sroa.sel.i, i64 %i.ax
  %i.bb = icmp slt i32 %i.ay, 0
  %.sroa.sel15.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.bb, i64 0, i64 4
  %.sroa.sel15.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.sroa.sel15.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx
  call void @_ZN2cv8MatShape6assignEPKiS2_(ptr noundef nonnull align 4 dereferenceable(52) %20, ptr noundef nonnull %i.a, ptr noundef nonnull %.sroa.sel15.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22, !noalias !139
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  call void @_ZNSt6vectorIN2cv8MatShapeESaIS1_EEC2EmRKS1_RKS2_(ptr noundef nonnull align 8 dereferenceable(24) %19, i64 noundef %i.h, ptr noundef nonnull align 4 dereferenceable(52) %20, ptr noundef nonnull align 1 dereferenceable(1) %21)
  %i.bc = load ptr, ptr %3, align 8, !tbaa !90    ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !91
  %i.bf = load <2 x ptr>, ptr %19, align 16, !tbaa !140
  store <2 x ptr> %i.bf, ptr %3, align 8, !tbaa !140
  %i.bg = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 16, !tbaa !91
  store ptr %i.bh, ptr %i.bd, align 8, !tbaa !91
  %.not.i.i.i.i.i = icmp eq ptr %i.bc, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EED2Ev.exit, label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EEaSEOS3_.exit

_ZNSt6vectorIN2cv8MatShapeESaIS1_EEaSEOS3_.exit:  ; preds = %_ZNK2cv8MatShapeixEm.exit38
  %i.bi = ptrtoint ptr %i.be to i64
  %i.bj = ptrtoint ptr %i.bc to i64
  %i.bk = sub i64 %i.bi, %i.bj
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bk) #21
  %.pr = load ptr, ptr %19, align 16, !tbaa !90   ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN2cv8MatShapeESaIS1_EEaSEOS3_.exit
  %i.bl = load ptr, ptr %i.bg, align 16, !tbaa !91
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %.pr to i64
  %i.bo = sub i64 %i.bm, %i.bn
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.bo) #21
  br label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EED2Ev.exit

_ZNSt6vectorIN2cv8MatShapeESaIS1_EED2Ev.exit:     ; preds = %_ZNK2cv8MatShapeixEm.exit38, %_ZNSt6vectorIN2cv8MatShapeESaIS1_EEaSEOS3_.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  %i.bp = load ptr, ptr %3, align 8, !tbaa !90    ; 5 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !80 ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 12 ; 10 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !66
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %bb.r, label %bb.ad

bb.r:                                             ; preds = %_ZNSt6vectorIN2cv8MatShapeESaIS1_EED2Ev.exit
  %i.bu = icmp sgt i32 %i.bq, 1
  br i1 %i.bu, label %_ZN2cv8MatShapeixEm.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %10)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.12, i32 noundef 97) #23
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.bv = landingpad { ptr, i32 }
          cleanup
  %i.bw = load ptr, ptr %9, align 8, !tbaa !32    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46: ; preds = %bb.u
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !26
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i47: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %common.resume

_ZN2cv8MatShapeixEm.exit:                         ; preds = %bb.r
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !66
  %i.cd = icmp sgt i32 %i.cc, 0
  br i1 %i.cd, label %bb.v, label %bb.ad

bb.v:                                             ; preds = %_ZN2cv8MatShapeixEm.exit
  %.not78 = icmp eq i32 %i.bq, 2
  br i1 %.not78, label %bb.w, label %_ZN2cv8MatShapeixEm.exit54

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %8)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.12, i32 noundef 97) #23
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.ce = landingpad { ptr, i32 }
          cleanup
  %i.cf = load ptr, ptr %7, align 8, !tbaa !32    ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i51: ; preds = %bb.y
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !26
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cj) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i52: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %common.resume

_ZN2cv8MatShapeixEm.exit54:                       ; preds = %bb.v
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bp, i64 20
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !66
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %_ZN2cv8MatShapeixEm.exit54
  %i.cn = icmp samesign ugt i32 %i.bq, 3
  br i1 %i.cn, label %_ZN2cv8MatShapeixEm.exit60, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.12, i32 noundef 97) #23
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.co = landingpad { ptr, i32 }
          cleanup
  %i.cp = load ptr, ptr %5, align 8, !tbaa !32    ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i57: ; preds = %bb.ac
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !26
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.ct) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i58: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %common.resume

_ZN2cv8MatShapeixEm.exit60:                       ; preds = %bb.z
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !66
  %i.cw = icmp sgt i32 %i.cv, 0
  br i1 %i.cw, label %_ZNK2cv8MatShapeixEm.exit.lr.ph.i, label %bb.ad

bb.ad:                                            ; preds = %_ZN2cv8MatShapeixEm.exit60, %_ZN2cv8MatShapeixEm.exit54, %_ZN2cv8MatShapeixEm.exit, %_ZNSt6vectorIN2cv8MatShapeESaIS1_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %23)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @__func__._ZNK2cv3dnn14ReorgLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_, ptr noundef nonnull @.str.2, i32 noundef 94) #23
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %bb.ae
  unreachable

bb.ag:                                            ; preds = %bb.ad
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

bb.ah:                                            ; preds = %bb.ae
  %i.cy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cz = load ptr, ptr %22, align 8, !tbaa !32   ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %bb.ah
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !26
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dd) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

end_hunk_0
