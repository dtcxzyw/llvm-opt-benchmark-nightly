begin_hunk_0_@_ZN2cv3dnn15ConcatLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_:bb.a
_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit111, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  ret void

.body:                                            ; preds = %bb.ag, %.body70.thread, %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.ac, %bb.u, %bb.s
  %.pn56.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ai, %bb.s ], [ %i.ak, %bb.u ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ay, %bb.ac ], [ %i.aj, %bb.t ], [ %.pn56128, %.body70.thread ], [ %i.ca, %bb.ag ]
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %bb.bi

bb.bi:                                            ; preds = %.body, %bb.c
  %.pn56.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn56.pn.pn.pn.pn, %.body ], [ %i.e, %bb.c ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  resume { ptr, i32 } %.pn56.pn.pn.pn.pn.pn
}

declare noundef i32 @_ZN2cv3dnn14dnn5_v202606055Layer16inputNameToIndexENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef align 8) unnamed_addr #3

declare noundef i32 @_ZN2cv3dnn14dnn5_v202606055Layer17outputNameToIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2cv3dnn15ConcatLayerImpl14supportBackendEi(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1) unnamed_addr #7 comdat align 2 {
bb.a:
  switch i32 %1, label %.fold.split [
    i32 5, label %bb.d
    i32 3, label %bb.d
    i32 6, label %bb.b
    i32 8, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load i8, ptr %i.a, align 8, !tbaa !47, !range !65, !noundef !66
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.fold.split, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.e = load i8, ptr %i.d, align 8, !tbaa !47, !range !65, !noundef !66
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = xor i1 %i.f, true
  br label %bb.d

.fold.split:                                      ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.a, %.fold.split, %bb.c, %bb.b
  %i.h = phi i1 [ true, %bb.b ], [ true, %bb.a ], [ true, %bb.a ], [ %i.g, %bb.c ], [ false, %.fold.split ]
  ret i1 %i.h
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
define linkonce_odr hidden noundef zeroext i1 @_ZNK2cv3dnn15ConcatLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %15 = alloca %"struct.cv::MatShape", align 4    ; 8 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89
  %i.c = load ptr, ptr %1, align 8, !tbaa !92     ; 5 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.27, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__func__._ZNK2cv3dnn15ConcatLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_, ptr noundef nonnull @.str.13, i32 noundef 88) #21
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.f = load ptr, ptr %13, align 8, !tbaa !28    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.i = load i64, ptr %i.g, align 8, !tbaa !22
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.e, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %common.resume

bb.g:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !89   ; 4 uses
  %i.m = load ptr, ptr %3, align 8, !tbaa !92     ; 3 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = sdiv exact i64 %i.p, 52                  ; 2 uses
  %i.r = icmp eq ptr %i.l, %i.m
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = sub nuw nsw i64 1, %i.q
  tail call void @_ZNSt6vectorIN2cv8MatShapeESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.l, i64 noundef %i.s, ptr noundef nonnull align 4 dereferenceable(52) %i.c)
  %.pre = load ptr, ptr %1, align 8, !tbaa !92
  br label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE6resizeEmRKS1_.exit

bb.i:                                             ; preds = %bb.g
  %i.t = icmp ugt i64 %i.q, 1
  br i1 %i.t, label %bb.j, label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE6resizeEmRKS1_.exit

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 52 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.u
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE6resizeEmRKS1_.exit, label %_ZSt8_DestroyIPN2cv8MatShapeES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv8MatShapeES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.j
  store ptr %i.u, ptr %i.k, align 8, !tbaa !89
  br label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE6resizeEmRKS1_.exit

_ZNSt6vectorIN2cv8MatShapeESaIS1_EE6resizeEmRKS1_.exit: ; preds = %bb.h, %bb.i, %bb.j, %_ZSt8_DestroyIPN2cv8MatShapeES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.v = phi ptr [ %.pre, %bb.h ], [ %i.c, %bb.i ], [ %i.c, %bb.j ], [ %i.c, %_ZSt8_DestroyIPN2cv8MatShapeES1_EvT_S3_RSaIT0_E.exit.i.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.x = load i32, ptr %i.w, align 4, !tbaa !32   ; 8 uses
  %.val = load i32, ptr %i.v, align 4, !tbaa !81
  %narrow.i.i = tail call i32 @llvm.smax.i32(i32 %.val, i32 0) ; 5 uses
  %i.y = sub nsw i32 0, %narrow.i.i
  %.not.i.i58 = icmp slt i32 %i.x, %i.y
  %.not20.i.i = icmp sgt i32 %i.x, %narrow.i.i
  %or.cond.i.i = or i1 %.not.i.i58, %.not20.i.i
  br i1 %or.cond.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE6resizeEmRKS1_.exit
  tail call void @_ZN2cv6detail17check_failed_autoEiRKNS0_12CheckContextE(i32 noundef %i.x, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv3dnn14dnn5_v20260605L14normalize_axisEiiE15__cv_check__250) #21
  unreachable

bb.l:                                             ; preds = %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE6resizeEmRKS1_.exit
  %i.z = icmp ult i32 %i.x, %narrow.i.i
  br i1 %i.z, label %_ZN2cv3dnn14dnn5_v20260605L14normalize_axisEiRKNS_8MatShapeE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = icmp slt i32 %i.x, 0
  br i1 %i.aa, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ab = add nsw i32 %narrow.i.i, %i.x
  br label %_ZN2cv3dnn14dnn5_v20260605L14normalize_axisEiRKNS_8MatShapeE.exit

bb.o:                                             ; preds = %bb.m
  %i.ac = sub nsw i32 %i.x, %narrow.i.i
  br label %_ZN2cv3dnn14dnn5_v20260605L14normalize_axisEiRKNS_8MatShapeE.exit

_ZN2cv3dnn14dnn5_v20260605L14normalize_axisEiRKNS_8MatShapeE.exit: ; preds = %bb.l, %bb.n, %bb.o
  %i.ad = phi i32 [ %i.ac, %bb.o ], [ %i.ab, %bb.n ], [ %i.x, %bb.l ] ; 6 uses
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !89
  %.not126 = icmp eq ptr %i.ae, %i.v
  br i1 %.not126, label %_ZN2cv3dnn14dnn5_v20260605L14normalize_axisEiRKNS_8MatShapeE.exit.._crit_edge_crit_edge, label %.lr.ph125

_ZN2cv3dnn14dnn5_v20260605L14normalize_axisEiRKNS_8MatShapeE.exit.._crit_edge_crit_edge: ; preds = %_ZN2cv3dnn14dnn5_v20260605L14normalize_axisEiRKNS_8MatShapeE.exit
  %.pre132 = load ptr, ptr %3, align 8, !tbaa !92
  br label %._crit_edge

.lr.ph125:                                        ; preds = %_ZN2cv3dnn14dnn5_v20260605L14normalize_axisEiRKNS_8MatShapeE.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ag = getelementptr inbounds nuw i8, ptr %15, i64 12 ; 3 uses
  %i.ah = sext i32 %i.ad to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = zext i32 %i.ad to i64
  br label %bb.s

._crit_edge:                                      ; preds = %bb.aq, %_ZN2cv3dnn14dnn5_v20260605L14normalize_axisEiRKNS_8MatShapeE.exit.._crit_edge_crit_edge
  %i.ak = phi ptr [ %.pre132, %_ZN2cv3dnn14dnn5_v20260605L14normalize_axisEiRKNS_8MatShapeE.exit.._crit_edge_crit_edge ], [ %i.da, %bb.aq ] ; 3 uses
  %.038.lcssa = phi i32 [ 0, %_ZN2cv3dnn14dnn5_v20260605L14normalize_axisEiRKNS_8MatShapeE.exit.._crit_edge_crit_edge ], [ %i.dl, %bb.aq ]
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !82
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.al, i32 1) ; 2 uses
  store i32 %.sroa.speculated, ptr %i.ak, align 4, !tbaa !81
  %i.am = icmp ult i32 %i.ad, %.sroa.speculated
  br i1 %i.am, label %_ZN2cv8MatShapeixEm.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %12)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.26, i32 noundef 97) #21
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = load ptr, ptr %11, align 8, !tbaa !28   ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.r
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !22
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i107, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i98, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i70, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i70 ], [ %.pn53.pn, %bb.ar ], [ %i.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i98 ], [ %i.dd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i107 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %common.resume

_ZN2cv8MatShapeixEm.exit:                         ; preds = %._crit_edge
  %i.at = zext nneg i32 %i.ad to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.at
  store i32 %.038.lcssa, ptr %i.av, align 4, !tbaa !82
  ret i1 false

bb.s:                                             ; preds = %.lr.ph125, %bb.aq
  %i.aw = phi ptr [ %i.v, %.lr.ph125 ], [ %i.do, %bb.aq ]
  %.037124 = phi i64 [ 0, %.lr.ph125 ], [ %i.dm, %bb.aq ] ; 2 uses
  %.038123 = phi i32 [ 0, %.lr.ph125 ], [ %i.dl, %bb.aq ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  %i.ax = getelementptr inbounds nuw [52 x i8], ptr %i.aw, i64 %.037124
  call void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %15, ptr noundef nonnull align 4 dereferenceable(52) %i.ax)
  %i.ay = load i8, ptr %i.af, align 8, !tbaa !47, !range !65, !noundef !66
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %.preheader, label %bb.w

.preheader:                                       ; preds = %bb.s
  %i.ba = load ptr, ptr %3, align 8, !tbaa !92    ; 4 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !81 ; 2 uses
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %_ZN2cv8MatShapeixEm.exit66.lr.ph, label %.loopexit

_ZN2cv8MatShapeixEm.exit66.lr.ph:                 ; preds = %.preheader
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.be = zext nneg i32 %i.bb to i64
  br label %_ZN2cv8MatShapeixEm.exit66

_ZN2cv8MatShapeixEm.exit66:                       ; preds = %_ZN2cv8MatShapeixEm.exit66.lr.ph, %_ZN2cv8MatShapeixEm.exit79
  %indvars.iv129 = phi i64 [ 0, %_ZN2cv8MatShapeixEm.exit66.lr.ph ], [ %indvars.iv.next130, %_ZN2cv8MatShapeixEm.exit79 ] ; 4 uses
  %i.bf = load i32, ptr %15, align 4, !tbaa !81
  %narrow.i67 = call i32 @llvm.smax.i32(i32 %i.bf, i32 1)
  %i.bg = zext nneg i32 %narrow.i67 to i64
  %i.bh = icmp samesign ult i64 %indvars.iv129, %i.bg
  br i1 %i.bh, label %_ZN2cv8MatShapeixEm.exit79, label %bb.t

bb.t:                                             ; preds = %_ZN2cv8MatShapeixEm.exit66
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %10)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.26, i32 noundef 97) #21
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load ptr, ptr %9, align 8, !tbaa !28    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i69: ; preds = %bb.v
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !22
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i70: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %common.resume

_ZN2cv8MatShapeixEm.exit79:                       ; preds = %_ZN2cv8MatShapeixEm.exit66
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv129 ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv129
  %i.bq = load i32, ptr %i.bo, align 4, !tbaa !82
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !82
  %i.bs = call i32 @llvm.smax.i32(i32 %i.bq, i32 %i.br)
  store i32 %i.bs, ptr %i.bo, align 4, !tbaa !82
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1 ; 2 uses
  %i.bt = icmp samesign ult i64 %indvars.iv.next130, %i.be
  br i1 %i.bt, label %_ZN2cv8MatShapeixEm.exit66, label %.loopexit, !llvm.loop !93

bb.w:                                             ; preds = %bb.s
  %i.bu = load i32, ptr %15, align 4, !tbaa !81   ; 2 uses
  %narrow.i80 = call i32 @llvm.smax.i32(i32 %i.bu, i32 0)
  %i.bv = load ptr, ptr %3, align 8, !tbaa !92    ; 4 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !81 ; 3 uses
  %narrow.i82 = call i32 @llvm.smax.i32(i32 %i.bw, i32 0)
  %i.bx = icmp eq i32 %narrow.i80, %narrow.i82
  br i1 %i.bx, label %.preheader113, label %bb.x

.preheader113:                                    ; preds = %bb.w
  %i.by = icmp sgt i32 %i.bw, 0
  br i1 %i.by, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader113
  %narrow.i95 = call i32 @llvm.smax.i32(i32 %i.bu, i32 1)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  %i.ca = zext nneg i32 %narrow.i95 to i64
  %wide.trip.count = zext nneg i32 %i.bw to i64
  br label %bb.ac

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.28, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @__func__._ZNK2cv3dnn15ConcatLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_, ptr noundef nonnull @.str.13, i32 noundef 106) #21
          to label %bb.z unwind label %bb.ab

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %bb.x
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

bb.ab:                                            ; preds = %bb.y
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cd = load ptr, ptr %16, align 8, !tbaa !28   ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %bb.ab
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !22
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84, %bb.aa
  %.pn49 = phi { ptr, i32 } [ %i.cb, %bb.aa ], [ %i.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84 ], [ %i.cc, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br label %bb.ar

bb.ac:                                            ; preds = %.lr.ph, %bb.al
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.al ] ; 5 uses
  %.not51 = icmp eq i64 %indvars.iv, %i.aj
  br i1 %.not51, label %bb.al, label %_ZN2cv8MatShapeixEm.exit94

_ZN2cv8MatShapeixEm.exit94:                       ; preds = %bb.ac
end_hunk_0
