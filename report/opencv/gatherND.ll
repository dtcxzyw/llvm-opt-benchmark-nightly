Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/gatherND?download=true
inline.NumInlined: 1185
inline.NumDeleted: 409
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_ZN2cv3dnn17GatherNDLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_:bb.a
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #21
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit76, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret void

bb.ar:                                            ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, %bb.g
  %.pn57.pn.pn = phi { ptr, i32 } [ %i.l, %bb.g ], [ %.pn57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67 ], [ %.pn55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.m, %bb.h ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64 ]
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.c
  %.pn57.pn.pn.pn = phi { ptr, i32 } [ %.pn57.pn.pn, %bb.ar ], [ %i.d, %bb.c ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %.pn57.pn.pn.pn
}

declare noundef i32 @_ZN2cv3dnn14dnn5_v202606055Layer16inputNameToIndexENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef align 8) unnamed_addr #3

declare noundef i32 @_ZN2cv3dnn14dnn5_v202606055Layer17outputNameToIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

declare noundef zeroext i1 @_ZN2cv3dnn14dnn5_v202606055Layer14supportBackendEi(ptr noundef nonnull align 8 dereferenceable(156), i32 noundef) unnamed_addr #3

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
define linkonce_odr hidden noundef zeroext i1 @_ZNK2cv3dnn17GatherNDLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %11 = alloca %"struct.cv::MatShape", align 4    ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.c = load ptr, ptr %1, align 8, !tbaa !66     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 104
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 52
  tail call void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef %i.h, i64 noundef 2, ptr noundef nonnull align 8 dereferenceable(48) @_ZZNK2cv3dnn17GatherNDLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_E14__cv_check__52) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 52 ; 2 uses
  %i.j = load i32, ptr %i.c, align 4, !tbaa !67   ; 2 uses
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.j, i32 0) ; 6 uses
  %i.k = load i32, ptr %i.i, align 4, !tbaa !67   ; 4 uses
  %narrow.i28 = tail call i32 @llvm.smax.i32(i32 %i.k, i32 0) ; 4 uses
  %spec.select.i29 = zext nneg i32 %narrow.i28 to i64
  %i.l = shl nuw nsw i64 %spec.select.i29, 32
  %sext = add nsw i64 %i.l, -4294967296
  %i.m = ashr exact i64 %sext, 32                 ; 2 uses
  %narrow.i30 = tail call i32 @llvm.smax.i32(i32 %i.k, i32 1)
  %spec.select.i31 = zext nneg i32 %narrow.i30 to i64
  %i.n = icmp ult i64 %i.m, %spec.select.i31
  br i1 %i.n, label %_ZNK2cv8MatShapeixEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %10)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.16, i32 noundef 103) #20
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %9, align 8, !tbaa !28     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.s = load i64, ptr %i.q, align 8, !tbaa !22
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i42, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i36, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i36 ], [ %i.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i42 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit:                        ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.m
  %i.w = load i32, ptr %i.v, align 4, !tbaa !68   ; 7 uses
  %.not66 = icmp slt i32 %i.j, 1
  br i1 %.not66, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit
  tail call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef %narrow.i, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(48) @_ZZNK2cv3dnn17GatherNDLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_E14__cv_check__60) #20
  unreachable

bb.h:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit
  %.not67 = icmp slt i32 %i.k, 1
  br i1 %.not67, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef %narrow.i28, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(48) @_ZZNK2cv3dnn17GatherNDLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_E14__cv_check__61) #20
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 3 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !32   ; 3 uses
  %.sroa.speculated51 = tail call i32 @llvm.umin.i32(i32 %narrow.i, i32 %narrow.i28) ; 2 uses
  %.not = icmp sgt i32 %i.y, %.sroa.speculated51
  br i1 %.not, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef %i.y, i32 noundef %.sroa.speculated51, ptr noundef nonnull align 8 dereferenceable(48) @_ZZNK2cv3dnn17GatherNDLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_E14__cv_check__62) #20
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.z = icmp sgt i32 %i.w, 0
  br i1 %i.z, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef %i.w, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(48) @_ZZNK2cv3dnn17GatherNDLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_E14__cv_check__63) #20
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.aa = sub nsw i32 %narrow.i, %i.y             ; 2 uses
  %.not27 = icmp sgt i32 %i.w, %i.aa
  br i1 %.not27, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef %i.w, i32 noundef %i.aa, ptr noundef nonnull align 8 dereferenceable(48) @_ZZNK2cv3dnn17GatherNDLayerImpl15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS3_EEiRS5_S8_E14__cv_check__64) #20
  unreachable

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @_ZN2cv8MatShapeC1Ev(ptr noundef nonnull align 4 dereferenceable(52) %11)
  %i.ab = add nsw i32 %narrow.i28, -1             ; 2 uses
  %i.ac = load i32, ptr %i.x, align 4, !tbaa !32
  %.neg69 = add i32 %i.ab, %narrow.i
  %i.ad = add i32 %i.w, %i.ac
  %i.ae = sub i32 %.neg69, %i.ad
  %i.af = sext i32 %i.ae to i64
  call void @_ZN2cv8MatShape7reserveEm(ptr noundef nonnull align 4 dereferenceable(52) %11, i64 noundef %i.af)
  %.not75 = icmp eq i32 %i.k, 1
  br i1 %.not75, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.p
  %smax = call i32 @llvm.smax.i32(i32 %i.ab, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNK2cv8MatShapeixEm.exit38, %bb.p
  %i.ag = load i32, ptr %i.x, align 4, !tbaa !32  ; 2 uses
  %i.ah = add nsw i32 %i.ag, %i.w
  %i.ai = icmp slt i32 %i.ah, %narrow.i
  br i1 %i.ai, label %.lr.ph73, label %._crit_edge74

.lr.ph73:                                         ; preds = %._crit_edge
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.ak = zext nneg i32 %i.w to i64
  %i.al = sext i32 %i.ag to i64
  %i.am = add nsw i64 %i.ak, %i.al
  br label %bb.t

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNK2cv8MatShapeixEm.exit38
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZNK2cv8MatShapeixEm.exit38 ] ; 3 uses
  %i.an = load i32, ptr %i.i, align 4, !tbaa !67
  %narrow.i33 = call i32 @llvm.smax.i32(i32 %i.an, i32 1)
  %i.ao = zext nneg i32 %narrow.i33 to i64
  %i.ap = icmp samesign ult i64 %indvars.iv, %i.ao
  br i1 %i.ap, label %_ZNK2cv8MatShapeixEm.exit38, label %bb.q

bb.q:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %8)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.16, i32 noundef 103) #20
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.aq = landingpad { ptr, i32 }
          cleanup
  %i.ar = load ptr, ptr %7, align 8, !tbaa !28    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35: ; preds = %bb.s
  %i.au = load i64, ptr %i.as, align 8, !tbaa !22
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i36: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit38:                      ; preds = %.lr.ph
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !68
  call void @_ZN2cv8MatShape9push_backEi(ptr noundef nonnull align 4 dereferenceable(52) %11, i32 noundef %i.ax)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !69

._crit_edge74:                                    ; preds = %_ZNK2cv8MatShapeixEm.exit44, %._crit_edge
  call void @_ZNSt6vectorIN2cv8MatShapeESaIS1_EE14_M_fill_assignEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 1, ptr noundef nonnull align 4 dereferenceable(52) %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  ret i1 false

bb.t:                                             ; preds = %.lr.ph73, %_ZNK2cv8MatShapeixEm.exit44
  %indvars.iv77 = phi i64 [ %i.am, %.lr.ph73 ], [ %indvars.iv.next78, %_ZNK2cv8MatShapeixEm.exit44 ] ; 3 uses
  %i.ay = load i32, ptr %i.c, align 4, !tbaa !67
  %narrow.i39 = call i32 @llvm.smax.i32(i32 %i.ay, i32 1)
  %i.az = trunc nsw i64 %indvars.iv77 to i32
  %i.ba = icmp ugt i32 %narrow.i39, %i.az
  br i1 %i.ba, label %_ZNK2cv8MatShapeixEm.exit44, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.16, i32 noundef 103) #20
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.bb = landingpad { ptr, i32 }
          cleanup
  %i.bc = load ptr, ptr %5, align 8, !tbaa !28    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i41: ; preds = %bb.w
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !22
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i42: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit44:                      ; preds = %bb.t
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv77
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !68
  call void @_ZN2cv8MatShape9push_backEi(ptr noundef nonnull align 4 dereferenceable(52) %11, i32 noundef %i.bi)
  %indvars.iv.next78 = add nsw i64 %indvars.iv77, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next78 to i32
  %exitcond80.not = icmp eq i32 %narrow.i, %lftr.wideiv
  br i1 %exitcond80.not, label %._crit_edge74, label %bb.t, !llvm.loop !70
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv3dnn17GatherNDLayerImpl8getTypesERKSt6vectorIiSaIiEEiiRS4_S7_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !71
  %i.d = load ptr, ptr %1, align 8, !tbaa !74     ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp eq i64 %i.g, 8
  br i1 %i.h, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.33, ptr noundef nonnull align 1 dereferenceable(1) %7)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZNK2cv3dnn17GatherNDLayerImpl8getTypesERKSt6vectorIiSaIiEEiiRS4_S7_, ptr noundef nonnull @.str.8, i32 noundef 21) #20
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %6, align 8, !tbaa !28     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.m = load i64, ptr %i.k, align 8, !tbaa !22
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  resume { ptr, i32 } %i.i

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.o = load i32, ptr %i.d, align 4, !tbaa !68   ; 5 uses
  store i32 %i.o, ptr %i.a, align 4, !tbaa !68
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !68   ; 2 uses
  switch i32 %i.q, label %bb.f [
    i32 11, label %bb.g
    i32 4, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2cv6detail20check_failed_MatTypeEiRKNS0_12CheckContextE(i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(48) @_ZZNK2cv3dnn17GatherNDLayerImpl8getTypesERKSt6vectorIiSaIiEEiiRS4_S7_E14__cv_check__28) #20
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.s = load i32, ptr %i.r, align 8, !tbaa !75
  %i.t = icmp eq i32 %i.s, 2
  br i1 %i.t, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  switch i32 %i.o, label %bb.i [
    i32 11, label %bb.l
    i32 7, label %bb.l
    i32 4, label %bb.l
    i32 1, label %bb.l
    i32 0, label %bb.l
  ]

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN2cv6detail20check_failed_MatTypeEiRKNS0_12CheckContextE(i32 noundef %i.o, ptr noundef nonnull align 8 dereferenceable(48) @_ZZNK2cv3dnn17GatherNDLayerImpl8getTypesERKSt6vectorIiSaIiEEiiRS4_S7_E14__cv_check__34) #20
  unreachable

bb.j:                                             ; preds = %bb.g
  switch i32 %i.o, label %bb.k [
    i32 11, label %bb.l
    i32 5, label %bb.l
    i32 4, label %bb.l
    i32 1, label %bb.l
    i32 0, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN2cv6detail20check_failed_MatTypeEiRKNS0_12CheckContextE(i32 noundef %i.o, ptr noundef nonnull align 8 dereferenceable(48) @_ZZNK2cv3dnn17GatherNDLayerImpl8getTypesERKSt6vectorIiSaIiEEiiRS4_S7_E14__cv_check__40) #20
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !71   ; 4 uses
  %i.w = load ptr, ptr %4, align 8, !tbaa !74     ; 3 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 2                  ; 2 uses
  %i.ab = icmp eq ptr %i.v, %i.w
  br i1 %i.ab, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ac = sub nuw nsw i64 1, %i.aa
  call void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.v, i64 noundef %i.ac, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit

bb.n:                                             ; preds = %bb.l
  %i.ad = icmp ugt i64 %i.aa, 1
  br i1 %i.ad, label %bb.o, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit

bb.o:                                             ; preds = %bb.n
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, %i.ae
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.o
  store ptr %i.ae, ptr %i.u, align 8, !tbaa !71
  br label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit

_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit:            ; preds = %bb.m, %bb.n, %bb.o, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.af = load ptr, ptr %5, align 8, !tbaa !74    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !71
  %.not.i.i32 = icmp eq ptr %i.ah, %i.af
  br i1 %.not.i.i32, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i33

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i33:      ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !71
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

declare noundef i32 @_ZNK2cv3dnn14dnn5_v202606055Layer10getLayoutsERKSt6vectorINS_10DataLayoutESaIS4_EERS6_iS9_(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 1, ptr noundef nonnull align 1, i32 noundef, ptr noundef nonnull align 1) unnamed_addr #3

declare noundef i64 @_ZNK2cv3dnn14dnn5_v202606055Layer8getFLOPSERKSt6vectorINS_8MatShapeESaIS4_EES8_(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

declare noundef zeroext i1 @_ZN2cv3dnn14dnn5_v202606055Layer18updateMemoryShapesERKSt6vectorINS_8MatShapeESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

declare noundef zeroext i1 @_ZNK2cv3dnn14dnn5_v202606055Layer20alwaysSupportInplaceEv(ptr noundef nonnull align 8 dereferenceable(156)) unnamed_addr #3

declare noundef zeroext i1 @_ZNK2cv3dnn14dnn5_v202606055Layer19dynamicOutputShapesEv(ptr noundef nonnull align 8 dereferenceable(156)) unnamed_addr #3

declare noundef zeroext i1 @_ZNK2cv3dnn14dnn5_v202606055Layer15isDataShufflingEv(ptr noundef nonnull align 8 dereferenceable(156)) unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK2cv3dnn14dnn5_v202606055Layer9dumpAttrsERSoi(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK2cv3dnn14dnn5_v202606055Layer4dumpERSoib(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i1 noundef zeroext) unnamed_addr #3

declare void @_ZN2cv3dnn14dnn5_v202606055LayerC2Ev(ptr noundef nonnull align 8 dereferenceable(156)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

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
  %i.b = load i32, ptr %0, align 8, !tbaa !76     ; 3 uses
  switch i32 %i.b, label %bb.c [
    i32 0, label %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit
    i32 3, label %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit
    i32 2, label %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void (ptr, ptr, ...) @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull @.str.5, i32 noundef %i.b)
end_hunk_0
