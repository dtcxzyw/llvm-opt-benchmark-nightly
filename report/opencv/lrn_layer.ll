Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/lrn_layer?download=true
inline.NumInlined: 371
inline.NumDeleted: 144
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN2cv3dnn12LRNLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_:bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !64
  %i.bi = icmp eq i32 %i.bh, 4
  br i1 %i.bi, label %bb.af, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.26, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZN2cv3dnn12LRNLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_, ptr noundef nonnull @.str.5, i32 noundef 181) #21
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  unreachable

bb.ad:                                            ; preds = %bb.aa
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

bb.ae:                                            ; preds = %bb.ab
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bl = load ptr, ptr %11, align 8, !tbaa !39   ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %bb.ae
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !38
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53, %bb.ad
  %.pn32 = phi { ptr, i32 } [ %i.bj, %bb.ad ], [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53 ], [ %i.bk, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %bb.as

bb.af:                                            ; preds = %bb.z
  %i.bq = load ptr, ptr %8, align 8, !tbaa !61
  %i.br = getelementptr inbounds nuw [208 x i8], ptr %i.bq, i64 %indvars.iv ; 2 uses
  %i.bs = load i32, ptr %i.ad, align 4, !tbaa !16
  switch i32 %i.bs, label %bb.aj [
    i32 0, label %bb.ag
    i32 1, label %bb.ai
  ]

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN2cv3dnn12LRNLayerImpl20channelNormalizationERNS_3MatES3_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(208) %i.bf, ptr noundef nonnull align 8 dereferenceable(208) %i.br)
          to label %bb.ao unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ai, %bb.ag
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ai:                                            ; preds = %bb.af
  invoke void @_ZN2cv3dnn12LRNLayerImpl20spatialNormalizationERNS_3MatES3_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(208) %i.bf, ptr noundef nonnull align 8 dereferenceable(208) %i.br)
          to label %bb.ao unwind label %bb.ah

bb.aj:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.27, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.ak unwind label %bb.am

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -213, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__func__._ZN2cv3dnn12LRNLayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_, ptr noundef nonnull @.str.5, i32 noundef 195) #21
          to label %bb.al unwind label %bb.an

bb.al:                                            ; preds = %bb.ak
  unreachable

bb.am:                                            ; preds = %bb.aj
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

bb.an:                                            ; preds = %bb.ak
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = load ptr, ptr %13, align 8, !tbaa !39   ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %bb.an
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !38
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56, %bb.am
  %.pn34 = phi { ptr, i32 } [ %i.bu, %bb.am ], [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56 ], [ %i.bv, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %bb.as

bb.ao:                                            ; preds = %bb.ai, %bb.ag
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cb = load ptr, ptr %i.q, align 8, !tbaa !60
  %i.cc = load ptr, ptr %7, align 8, !tbaa !61    ; 2 uses
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = sdiv exact i64 %i.cf, 208
  %i.ch = icmp ugt i64 %i.cg, %indvars.iv.next
  br i1 %i.ch, label %bb.z, label %._crit_edge.loopexit, !llvm.loop !71

bb.ap:                                            ; preds = %bb.n, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit52
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !72
  %.not.i = icmp eq i32 %i.cj, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %4)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ck = landingpad { ptr, i32 }
          catch ptr null
  %i.cl = extractvalue { ptr, i32 } %i.ck, 0
  call void @__clang_call_terminate(ptr %i.cl) #22
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret void

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, %bb.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, %bb.r
  %.pn34.pn.pn.pn = phi { ptr, i32 } [ %i.ae, %bb.r ], [ %.pn30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43 ], [ %.pn32, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ], [ %.pn34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58 ], [ %i.bt, %bb.ah ]
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c
  %.pn39 = phi { ptr, i32 } [ %i.d, %bb.c ], [ %.pn34.pn.pn.pn, %bb.as ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  resume { ptr, i32 } %.pn39
}

declare noundef i32 @_ZN2cv3dnn14dnn5_v202606055Layer16inputNameToIndexENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef align 8) unnamed_addr #3

declare noundef i32 @_ZN2cv3dnn14dnn5_v202606055Layer17outputNameToIndexERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2cv3dnn12LRNLayerImpl14supportBackendEi(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1) unnamed_addr #9 comdat align 2 {
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

declare noundef zeroext i1 @_ZN2cv3dnn14dnn5_v202606055Layer13setActivationERKNS_3PtrINS1_15ActivationLayerEEE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 1) unnamed_addr #3

declare noundef zeroext i1 @_ZN2cv3dnn14dnn5_v202606055Layer7tryFuseERNS_3PtrIS2_EE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

declare void @_ZNK2cv3dnn14dnn5_v202606055Layer13getScaleShiftERNS_3MatES4_(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #3

declare void @_ZNK2cv3dnn14dnn5_v202606055Layer17getScaleZeropointERfRi(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #3

declare void @_ZN2cv3dnn14dnn5_v202606055Layer13unsetAttachedEv(ptr noundef nonnull align 8 dereferenceable(156)) unnamed_addr #3

declare noundef zeroext i1 @_ZNK2cv3dnn14dnn5_v202606055Layer15getMemoryShapesERKSt6vectorINS_8MatShapeESaIS4_EEiRS6_S9_(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

declare void @_ZNK2cv3dnn14dnn5_v202606055Layer8getTypesERKSt6vectorIiSaIiEEiiRS5_S8_(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

declare noundef i32 @_ZNK2cv3dnn14dnn5_v202606055Layer10getLayoutsERKSt6vectorINS_10DataLayoutESaIS4_EERS6_iS9_(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 1, ptr noundef nonnull align 1, i32 noundef, ptr noundef nonnull align 1) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZNK2cv3dnn12LRNLayerImpl8getFLOPSERKSt6vectorINS_8MatShapeESaIS3_EES7_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !76     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 52                  ; 2 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %bb.c, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.i = load i32, ptr %i.h, align 4, !tbaa !16
  %i.j = icmp eq i32 %i.i, 0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.l = load i32, ptr %i.k, align 8              ; 5 uses
  %i.m = shl nsw i32 %i.l, 1
  %i.n = mul nsw i32 %i.m, %i.l
  %i.o = add nsw i32 %i.n, 2
  %i.p = sext i32 %i.o to i64                     ; 2 uses
  br i1 %i.j, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %9 = add nsw i32 %i.l, -1
  %10 = sdiv i32 %9, 2                            ; 2 uses
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.b
  %indvars.iv108 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next109, %bb.b ] ; 2 uses
  %.02294.us = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %.2.us, %bb.b ]
  %i.q = getelementptr inbounds nuw [52 x i8], ptr %i.c, i64 %indvars.iv108 ; 3 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !77   ; 5 uses
  %i.s = icmp sgt i32 %i.r, 1
  br i1 %i.s, label %_ZNK2cv8MatShapeixEm.exit.us, label %.split.us

_ZNK2cv8MatShapeixEm.exit.us:                     ; preds = %.lr.ph.split.us
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 12 ; 28 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.v = load i32, ptr %i.u, align 4, !tbaa !78   ; 4 uses
  %i.w = load i32, ptr %i.t, align 4, !tbaa !78
  %i.x = sext i32 %i.w to i64
  %.sroa.speculated.us = tail call i32 @llvm.smin.i32(i32 %i.v, i32 %10)
  %i.y = shl nsw i32 %.sroa.speculated.us, 1
  %i.z = sext i32 %i.y to i64                     ; 2 uses
  %.not86.us = icmp eq i32 %i.r, 2                ; 2 uses
  br i1 %.not86.us, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit47.us, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %_ZNK2cv8MatShapeixEm.exit.us
  %umax103 = zext nneg i32 %i.r to i64            ; 2 uses
  %i.aa = add nsw i64 %umax103, -2                ; 4 uses
  %i.ab = add nsw i64 %umax103, -3                ; 2 uses
  %xtraiter137 = and i64 %i.aa, 7                 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 7
  br i1 %i.ac, label %_ZNK2cv8MatShapeixEm.exit.i.us.epil.preheader, label %.lr.ph.i.us.new

.lr.ph.i.us.new:                                  ; preds = %.lr.ph.i.us
  %unroll_iter142 = and i64 %i.aa, -8
  br label %_ZNK2cv8MatShapeixEm.exit.i.us

_ZNK2cv8MatShapeixEm.exit.i.us:                   ; preds = %_ZNK2cv8MatShapeixEm.exit.i.us, %.lr.ph.i.us.new
  %indvars.iv.i.us = phi i64 [ 2, %.lr.ph.i.us.new ], [ %indvars.iv.next.i.us.7, %_ZNK2cv8MatShapeixEm.exit.i.us ] ; 9 uses
  %.02128.i.us = phi i64 [ 1, %.lr.ph.i.us.new ], [ %i.bp, %_ZNK2cv8MatShapeixEm.exit.i.us ]
  %niter143 = phi i64 [ 0, %.lr.ph.i.us.new ], [ %niter143.next.7, %_ZNK2cv8MatShapeixEm.exit.i.us ]
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i.us
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !78
  %i.af = sext i32 %i.ae to i64
  %i.ag = mul i64 %.02128.i.us, %i.af
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i.us
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !78
  %i.ak = sext i32 %i.aj to i64
  %i.al = mul i64 %i.ag, %i.ak
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i.us
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !78
  %i.ap = sext i32 %i.ao to i64
  %i.aq = mul i64 %i.al, %i.ap
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i.us
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %i.at = load i32, ptr %i.as, align 4, !tbaa !78
  %i.au = sext i32 %i.at to i64
  %i.av = mul i64 %i.aq, %i.au
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i.us
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !78
  %i.az = sext i32 %i.ay to i64
  %i.ba = mul i64 %i.av, %i.az
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i.us
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 20
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !78
  %i.be = sext i32 %i.bd to i64
  %i.bf = mul i64 %i.ba, %i.be
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i.us
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !78
  %i.bj = sext i32 %i.bi to i64
  %i.bk = mul i64 %i.bf, %i.bj
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i.us
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 28
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !78
  %i.bo = sext i32 %i.bn to i64
  %i.bp = mul i64 %i.bk, %i.bo                    ; 3 uses
  %indvars.iv.next.i.us.7 = add nuw nsw i64 %indvars.iv.i.us, 8 ; 2 uses
  %niter143.next.7 = add i64 %niter143, 8         ; 2 uses
  %niter143.ncmp.7 = icmp eq i64 %niter143.next.7, %unroll_iter142
  br i1 %niter143.ncmp.7, label %_ZNK2cv8MatShapeixEm.exit.i43.us.preheader.unr-lcssa, label %_ZNK2cv8MatShapeixEm.exit.i.us, !llvm.loop !79

_ZNK2cv8MatShapeixEm.exit.i43.us.preheader.unr-lcssa: ; preds = %_ZNK2cv8MatShapeixEm.exit.i.us
  %lcmp.mod139.not = icmp eq i64 %xtraiter137, 0
  br i1 %lcmp.mod139.not, label %_ZNK2cv8MatShapeixEm.exit.i43.us.preheader, label %_ZNK2cv8MatShapeixEm.exit.i.us.epil.preheader

_ZNK2cv8MatShapeixEm.exit.i.us.epil.preheader:    ; preds = %_ZNK2cv8MatShapeixEm.exit.i43.us.preheader.unr-lcssa, %.lr.ph.i.us
  %indvars.iv.i.us.epil.init = phi i64 [ 2, %.lr.ph.i.us ], [ %indvars.iv.next.i.us.7, %_ZNK2cv8MatShapeixEm.exit.i43.us.preheader.unr-lcssa ]
  %.02128.i.us.epil.init = phi i64 [ 1, %.lr.ph.i.us ], [ %i.bp, %_ZNK2cv8MatShapeixEm.exit.i43.us.preheader.unr-lcssa ]
  %lcmp.mod141 = icmp ne i64 %xtraiter137, 0
  tail call void @llvm.assume(i1 %lcmp.mod141)
  br label %_ZNK2cv8MatShapeixEm.exit.i.us.epil

_ZNK2cv8MatShapeixEm.exit.i.us.epil:              ; preds = %_ZNK2cv8MatShapeixEm.exit.i.us.epil, %_ZNK2cv8MatShapeixEm.exit.i.us.epil.preheader
  %indvars.iv.i.us.epil = phi i64 [ %indvars.iv.next.i.us.epil, %_ZNK2cv8MatShapeixEm.exit.i.us.epil ], [ %indvars.iv.i.us.epil.init, %_ZNK2cv8MatShapeixEm.exit.i.us.epil.preheader ] ; 2 uses
  %.02128.i.us.epil = phi i64 [ %i.bt, %_ZNK2cv8MatShapeixEm.exit.i.us.epil ], [ %.02128.i.us.epil.init, %_ZNK2cv8MatShapeixEm.exit.i.us.epil.preheader ]
  %epil.iter138 = phi i64 [ %epil.iter138.next, %_ZNK2cv8MatShapeixEm.exit.i.us.epil ], [ 0, %_ZNK2cv8MatShapeixEm.exit.i.us.epil.preheader ]
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i.us.epil
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !78
  %i.bs = sext i32 %i.br to i64
  %i.bt = mul i64 %.02128.i.us.epil, %i.bs        ; 2 uses
  %indvars.iv.next.i.us.epil = add nuw nsw i64 %indvars.iv.i.us.epil, 1
  %epil.iter138.next = add i64 %epil.iter138, 1   ; 2 uses
  %epil.iter138.cmp.not = icmp eq i64 %epil.iter138.next, %xtraiter137
  br i1 %epil.iter138.cmp.not, label %_ZNK2cv8MatShapeixEm.exit.i43.us.preheader, label %_ZNK2cv8MatShapeixEm.exit.i.us.epil, !llvm.loop !80

_ZNK2cv8MatShapeixEm.exit.i43.us.preheader:       ; preds = %_ZNK2cv8MatShapeixEm.exit.i.us.epil, %_ZNK2cv8MatShapeixEm.exit.i43.us.preheader.unr-lcssa
  %.lcssa = phi i64 [ %i.bp, %_ZNK2cv8MatShapeixEm.exit.i43.us.preheader.unr-lcssa ], [ %i.bt, %_ZNK2cv8MatShapeixEm.exit.i.us.epil ]
  %xtraiter144 = and i64 %i.aa, 7                 ; 3 uses
  %i.bu = icmp ult i64 %i.ab, 7
  br i1 %i.bu, label %_ZNK2cv8MatShapeixEm.exit.i43.us.epil.preheader, label %_ZNK2cv8MatShapeixEm.exit.i43.us.preheader.new

_ZNK2cv8MatShapeixEm.exit.i43.us.preheader.new:   ; preds = %_ZNK2cv8MatShapeixEm.exit.i43.us.preheader
  %unroll_iter149 = and i64 %i.aa, -8
  br label %_ZNK2cv8MatShapeixEm.exit.i43.us

_ZNK2cv8MatShapeixEm.exit.i43.us:                 ; preds = %_ZNK2cv8MatShapeixEm.exit.i43.us, %_ZNK2cv8MatShapeixEm.exit.i43.us.preheader.new
  %indvars.iv.i44.us = phi i64 [ 2, %_ZNK2cv8MatShapeixEm.exit.i43.us.preheader.new ], [ %indvars.iv.next.i46.us.7, %_ZNK2cv8MatShapeixEm.exit.i43.us ] ; 9 uses
  %.02128.i45.us = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit.i43.us.preheader.new ], [ %i.dh, %_ZNK2cv8MatShapeixEm.exit.i43.us ]
  %niter150 = phi i64 [ 0, %_ZNK2cv8MatShapeixEm.exit.i43.us.preheader.new ], [ %niter150.next.7, %_ZNK2cv8MatShapeixEm.exit.i43.us ]
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i44.us
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !78
  %i.bx = sext i32 %i.bw to i64
  %i.by = mul i64 %.02128.i45.us, %i.bx
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i44.us
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !78
  %i.cc = sext i32 %i.cb to i64
  %i.cd = mul i64 %i.by, %i.cc
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i44.us
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !78
  %i.ch = sext i32 %i.cg to i64
  %i.ci = mul i64 %i.cd, %i.ch
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i44.us
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !78
  %i.cm = sext i32 %i.cl to i64
  %i.cn = mul i64 %i.ci, %i.cm
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i44.us
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !78
  %i.cr = sext i32 %i.cq to i64
  %i.cs = mul i64 %i.cn, %i.cr
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i44.us
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 20
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !78
  %i.cw = sext i32 %i.cv to i64
  %i.cx = mul i64 %i.cs, %i.cw
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i44.us
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !78
  %i.db = sext i32 %i.da to i64
  %i.dc = mul i64 %i.cx, %i.db
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i44.us
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 28
  %i.df = load i32, ptr %i.de, align 4, !tbaa !78
  %i.dg = sext i32 %i.df to i64
  %i.dh = mul i64 %i.dc, %i.dg                    ; 3 uses
  %indvars.iv.next.i46.us.7 = add nuw nsw i64 %indvars.iv.i44.us, 8 ; 2 uses
  %niter150.next.7 = add i64 %niter150, 8         ; 2 uses
  %niter150.ncmp.7 = icmp eq i64 %niter150.next.7, %unroll_iter149
  br i1 %niter150.ncmp.7, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit47.us.loopexit.unr-lcssa, label %_ZNK2cv8MatShapeixEm.exit.i43.us, !llvm.loop !79

_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit47.us.loopexit.unr-lcssa: ; preds = %_ZNK2cv8MatShapeixEm.exit.i43.us
  %lcmp.mod146.not = icmp eq i64 %xtraiter144, 0
  br i1 %lcmp.mod146.not, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit47.us.loopexit, label %_ZNK2cv8MatShapeixEm.exit.i43.us.epil.preheader

_ZNK2cv8MatShapeixEm.exit.i43.us.epil.preheader:  ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit47.us.loopexit.unr-lcssa, %_ZNK2cv8MatShapeixEm.exit.i43.us.preheader
  %indvars.iv.i44.us.epil.init = phi i64 [ 2, %_ZNK2cv8MatShapeixEm.exit.i43.us.preheader ], [ %indvars.iv.next.i46.us.7, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit47.us.loopexit.unr-lcssa ]
  %.02128.i45.us.epil.init = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit.i43.us.preheader ], [ %i.dh, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit47.us.loopexit.unr-lcssa ]
  %lcmp.mod148 = icmp ne i64 %xtraiter144, 0
  tail call void @llvm.assume(i1 %lcmp.mod148)
  br label %_ZNK2cv8MatShapeixEm.exit.i43.us.epil

_ZNK2cv8MatShapeixEm.exit.i43.us.epil:            ; preds = %_ZNK2cv8MatShapeixEm.exit.i43.us.epil, %_ZNK2cv8MatShapeixEm.exit.i43.us.epil.preheader
  %indvars.iv.i44.us.epil = phi i64 [ %indvars.iv.next.i46.us.epil, %_ZNK2cv8MatShapeixEm.exit.i43.us.epil ], [ %indvars.iv.i44.us.epil.init, %_ZNK2cv8MatShapeixEm.exit.i43.us.epil.preheader ] ; 2 uses
  %.02128.i45.us.epil = phi i64 [ %i.dl, %_ZNK2cv8MatShapeixEm.exit.i43.us.epil ], [ %.02128.i45.us.epil.init, %_ZNK2cv8MatShapeixEm.exit.i43.us.epil.preheader ]
  %epil.iter145 = phi i64 [ %epil.iter145.next, %_ZNK2cv8MatShapeixEm.exit.i43.us.epil ], [ 0, %_ZNK2cv8MatShapeixEm.exit.i43.us.epil.preheader ]
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i44.us.epil
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !78
  %i.dk = sext i32 %i.dj to i64
  %i.dl = mul i64 %.02128.i45.us.epil, %i.dk      ; 2 uses
  %indvars.iv.next.i46.us.epil = add nuw nsw i64 %indvars.iv.i44.us.epil, 1
  %epil.iter145.next = add i64 %epil.iter145, 1   ; 2 uses
  %epil.iter145.cmp.not = icmp eq i64 %epil.iter145.next, %xtraiter144
  br i1 %epil.iter145.cmp.not, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit47.us.loopexit, label %_ZNK2cv8MatShapeixEm.exit.i43.us.epil, !llvm.loop !82

_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit47.us.loopexit: ; preds = %_ZNK2cv8MatShapeixEm.exit.i43.us.epil, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit47.us.loopexit.unr-lcssa
  %.lcssa130 = phi i64 [ %i.dh, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit47.us.loopexit.unr-lcssa ], [ %i.dl, %_ZNK2cv8MatShapeixEm.exit.i43.us.epil ]
  %i.dm = mul i64 %.lcssa, %i.z
  br label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit47.us

_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit47.us: ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit47.us.loopexit, %_ZNK2cv8MatShapeixEm.exit.us
  %i.dn = phi i64 [ %i.z, %_ZNK2cv8MatShapeixEm.exit.us ], [ %i.dm, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit47.us.loopexit ]
  %.021.lcssa.i36.us = phi i64 [ 1, %_ZNK2cv8MatShapeixEm.exit.us ], [ %.lcssa130, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit47.us.loopexit ]
  %.in.us = shl nsw i32 %i.v, 2
  %i.do = sext i32 %.in.us to i64
  %i.dp = mul i64 %.021.lcssa.i36.us, %i.do
  %i.dq = add i64 %i.dp, %i.dn
  %i.dr = mul i64 %i.dq, %i.x
  %i.ds = add i64 %i.dr, %.02294.us               ; 2 uses
  %i.dt = icmp slt i32 %10, %i.v
  br i1 %i.dt, label %.preheader.i50.us, label %bb.b

.preheader.i50.us:                                ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit47.us
  %i.du = sub nsw i32 %i.v, %i.l
  %i.dv = shl nsw i32 %i.du, 1
  %i.dw = add nsw i32 %i.dv, %i.l
  %i.dx = sext i32 %i.dw to i64                   ; 2 uses
  br i1 %.not86.us, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit62.us, label %.lr.ph.i52.us

.lr.ph.i52.us:                                    ; preds = %.preheader.i50.us
  %umax106 = zext nneg i32 %i.r to i64
  %i.dy = add nsw i64 %umax106, -2                ; 2 uses
  %xtraiter151 = and i64 %i.dy, 7                 ; 3 uses
  %i.dz = add nsw i32 %i.r, -3
  %i.ea = icmp ult i32 %i.dz, 7
  br i1 %i.ea, label %_ZNK2cv8MatShapeixEm.exit.i58.us.epil.preheader, label %.lr.ph.i52.us.new

.lr.ph.i52.us.new:                                ; preds = %.lr.ph.i52.us
  %unroll_iter156 = and i64 %i.dy, -8
  br label %_ZNK2cv8MatShapeixEm.exit.i58.us

_ZNK2cv8MatShapeixEm.exit.i58.us:                 ; preds = %_ZNK2cv8MatShapeixEm.exit.i58.us, %.lr.ph.i52.us.new
  %indvars.iv.i59.us = phi i64 [ 2, %.lr.ph.i52.us.new ], [ %indvars.iv.next.i61.us.7, %_ZNK2cv8MatShapeixEm.exit.i58.us ] ; 9 uses
  %.02128.i60.us = phi i64 [ 1, %.lr.ph.i52.us.new ], [ %i.fn, %_ZNK2cv8MatShapeixEm.exit.i58.us ]
  %niter157 = phi i64 [ 0, %.lr.ph.i52.us.new ], [ %niter157.next.7, %_ZNK2cv8MatShapeixEm.exit.i58.us ]
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i59.us
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !78
  %i.ed = sext i32 %i.ec to i64
  %i.ee = mul i64 %.02128.i60.us, %i.ed
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i59.us
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !78
  %i.ei = sext i32 %i.eh to i64
  %i.ej = mul i64 %i.ee, %i.ei
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i59.us
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load i32, ptr %i.el, align 4, !tbaa !78
  %i.en = sext i32 %i.em to i64
  %i.eo = mul i64 %i.ej, %i.en
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i59.us
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 12
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !78
  %i.es = sext i32 %i.er to i64
  %i.et = mul i64 %i.eo, %i.es
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i59.us
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !78
  %i.ex = sext i32 %i.ew to i64
  %i.ey = mul i64 %i.et, %i.ex
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i59.us
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 20
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !78
  %i.fc = sext i32 %i.fb to i64
  %i.fd = mul i64 %i.ey, %i.fc
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i59.us
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !78
  %i.fh = sext i32 %i.fg to i64
  %i.fi = mul i64 %i.fd, %i.fh
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i59.us
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 28
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !78
  %i.fm = sext i32 %i.fl to i64
  %i.fn = mul i64 %i.fi, %i.fm                    ; 3 uses
  %indvars.iv.next.i61.us.7 = add nuw nsw i64 %indvars.iv.i59.us, 8 ; 2 uses
  %niter157.next.7 = add i64 %niter157, 8         ; 2 uses
  %niter157.ncmp.7 = icmp eq i64 %niter157.next.7, %unroll_iter156
  br i1 %niter157.ncmp.7, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit62.us.loopexit.unr-lcssa, label %_ZNK2cv8MatShapeixEm.exit.i58.us, !llvm.loop !79

_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit62.us.loopexit.unr-lcssa: ; preds = %_ZNK2cv8MatShapeixEm.exit.i58.us
  %lcmp.mod153.not = icmp eq i64 %xtraiter151, 0
  br i1 %lcmp.mod153.not, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit62.us.loopexit, label %_ZNK2cv8MatShapeixEm.exit.i58.us.epil.preheader

_ZNK2cv8MatShapeixEm.exit.i58.us.epil.preheader:  ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit62.us.loopexit.unr-lcssa, %.lr.ph.i52.us
  %indvars.iv.i59.us.epil.init = phi i64 [ 2, %.lr.ph.i52.us ], [ %indvars.iv.next.i61.us.7, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit62.us.loopexit.unr-lcssa ]
  %.02128.i60.us.epil.init = phi i64 [ 1, %.lr.ph.i52.us ], [ %i.fn, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit62.us.loopexit.unr-lcssa ]
  %lcmp.mod155 = icmp ne i64 %xtraiter151, 0
  tail call void @llvm.assume(i1 %lcmp.mod155)
  br label %_ZNK2cv8MatShapeixEm.exit.i58.us.epil

_ZNK2cv8MatShapeixEm.exit.i58.us.epil:            ; preds = %_ZNK2cv8MatShapeixEm.exit.i58.us.epil, %_ZNK2cv8MatShapeixEm.exit.i58.us.epil.preheader
  %indvars.iv.i59.us.epil = phi i64 [ %indvars.iv.next.i61.us.epil, %_ZNK2cv8MatShapeixEm.exit.i58.us.epil ], [ %indvars.iv.i59.us.epil.init, %_ZNK2cv8MatShapeixEm.exit.i58.us.epil.preheader ] ; 2 uses
  %.02128.i60.us.epil = phi i64 [ %i.fr, %_ZNK2cv8MatShapeixEm.exit.i58.us.epil ], [ %.02128.i60.us.epil.init, %_ZNK2cv8MatShapeixEm.exit.i58.us.epil.preheader ]
  %epil.iter152 = phi i64 [ %epil.iter152.next, %_ZNK2cv8MatShapeixEm.exit.i58.us.epil ], [ 0, %_ZNK2cv8MatShapeixEm.exit.i58.us.epil.preheader ]
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i59.us.epil
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !78
  %i.fq = sext i32 %i.fp to i64
  %i.fr = mul i64 %.02128.i60.us.epil, %i.fq      ; 2 uses
  %indvars.iv.next.i61.us.epil = add nuw nsw i64 %indvars.iv.i59.us.epil, 1
  %epil.iter152.next = add i64 %epil.iter152, 1   ; 2 uses
  %epil.iter152.cmp.not = icmp eq i64 %epil.iter152.next, %xtraiter151
  br i1 %epil.iter152.cmp.not, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit62.us.loopexit, label %_ZNK2cv8MatShapeixEm.exit.i58.us.epil, !llvm.loop !83

_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit62.us.loopexit: ; preds = %_ZNK2cv8MatShapeixEm.exit.i58.us.epil, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit62.us.loopexit.unr-lcssa
  %.lcssa131 = phi i64 [ %i.fn, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit62.us.loopexit.unr-lcssa ], [ %i.fr, %_ZNK2cv8MatShapeixEm.exit.i58.us.epil ]
  %i.fs = mul i64 %.lcssa131, %i.dx
  br label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit62.us

_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit62.us: ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit62.us.loopexit, %.preheader.i50.us
  %.021.lcssa.i51.us = phi i64 [ %i.dx, %.preheader.i50.us ], [ %i.fs, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit62.us.loopexit ]
  %i.ft = add i64 %.021.lcssa.i51.us, %i.ds
  br label %bb.b

bb.b:                                             ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit62.us, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit47.us
  %.2.us = phi i64 [ %i.ds, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit47.us ], [ %i.ft, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit62.us ] ; 2 uses
  %indvars.iv.next109 = add nuw i64 %indvars.iv108, 1 ; 2 uses
  %exitcond112.not = icmp eq i64 %indvars.iv.next109, %i.g
  br i1 %exitcond112.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !84

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.32, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZNK2cv3dnn12LRNLayerImpl8getFLOPSERKSt6vectorINS_8MatShapeESaIS3_EES7_, ptr noundef nonnull @.str.5, i32 noundef 421) #21
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.d
  %i.fv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fw = load ptr, ptr %7, align 8, !tbaa !39    ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.fy = icmp eq ptr %i.fw, %i.fx
  br i1 %i.fy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.fz = load i64, ptr %i.fx, align 8, !tbaa !38
  %i.ga = add i64 %i.fz, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.ga) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i70, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %17, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i70 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.fu, %bb.f ], [ %i.fv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.fv, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %common.resume

._crit_edge:                                      ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit77, %bb.b
  %.022.lcssa = phi i64 [ %.2.us, %bb.b ], [ %i.id, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit77 ]
  ret i64 %.022.lcssa

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit77
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit77 ], [ 0, %.lr.ph ] ; 2 uses
  %.02294 = phi i64 [ %i.id, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit77 ], [ 0, %.lr.ph ]
  %i.gb = getelementptr inbounds nuw [52 x i8], ptr %i.c, i64 %indvars.iv ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !77 ; 4 uses
  %narrow.i.i63 = tail call i32 @llvm.smax.i32(i32 %i.gc, i32 0) ; 2 uses
  %i.gd = icmp sgt i32 %i.gc, 0
  br i1 %i.gd, label %.lr.ph.i67, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit77

.split.us:                                        ; preds = %.lr.ph.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.28, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.29, i32 noundef 103) #21
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %.split.us
  unreachable

bb.i:                                             ; preds = %.split.us
  %i.ge = landingpad { ptr, i32 }
          cleanup
  %i.gf = load ptr, ptr %5, align 8, !tbaa !39    ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.gh = icmp eq ptr %i.gf, %i.gg
  br i1 %i.gh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.i
  %i.gi = load i64, ptr %i.gg, align 8, !tbaa !38
  %i.gj = add i64 %i.gi, 1
  call void @_ZdlPvm(ptr noundef %i.gf, i64 noundef %i.gj) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %common.resume

.lr.ph.i67:                                       ; preds = %.lr.ph.split
  %11 = getelementptr inbounds nuw i8, ptr %i.gb, i64 12 ; 9 uses
  %12 = add nsw i32 %narrow.i.i63, -1
  %.not33.not.i68 = icmp ugt i32 %i.gc, %12
  br i1 %.not33.not.i68, label %.lr.ph.i67.a, label %14

.lr.ph.i67.a:                                     ; preds = %.lr.ph.i67
  %i.gk = zext nneg i32 %narrow.i.i63 to i64      ; 2 uses
  %xtraiter = and i64 %i.gk, 7                    ; 3 uses
  %13 = icmp slt i32 %i.gc, 8
  br i1 %13, label %_ZNK2cv8MatShapeixEm.exit.i73.epil.preheader, label %.lr.ph.i67.new

.lr.ph.i67.new:                                   ; preds = %.lr.ph.i67.a
  %unroll_iter = and i64 %i.gk, 2147483640
  br label %_ZNK2cv8MatShapeixEm.exit.i73

_ZNK2cv8MatShapeixEm.exit.i73:                    ; preds = %_ZNK2cv8MatShapeixEm.exit.i73, %.lr.ph.i67.new
  %indvars.iv.i74 = phi i64 [ 0, %.lr.ph.i67.new ], [ %indvars.iv.next.i76.7, %_ZNK2cv8MatShapeixEm.exit.i73 ] ; 9 uses
  %.02128.i75 = phi i64 [ 1, %.lr.ph.i67.new ], [ %i.hx, %_ZNK2cv8MatShapeixEm.exit.i73 ]
  %niter = phi i64 [ 0, %.lr.ph.i67.new ], [ %niter.next.7, %_ZNK2cv8MatShapeixEm.exit.i73 ]
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv.i74
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !78
  %i.gn = sext i32 %i.gm to i64
  %i.go = mul i64 %.02128.i75, %i.gn
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv.i74
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !78
  %i.gs = sext i32 %i.gr to i64
  %i.gt = mul i64 %i.go, %i.gs
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv.i74
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !78
  %i.gx = sext i32 %i.gw to i64
  %i.gy = mul i64 %i.gt, %i.gx
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv.i74
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 12
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !78
  %i.hc = sext i32 %i.hb to i64
  %i.hd = mul i64 %i.gy, %i.hc
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv.i74
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !78
  %i.hh = sext i32 %i.hg to i64
  %i.hi = mul i64 %i.hd, %i.hh
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv.i74
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 20
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !78
  %i.hm = sext i32 %i.hl to i64
  %i.hn = mul i64 %i.hi, %i.hm
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv.i74
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 24
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !78
  %i.hr = sext i32 %i.hq to i64
  %i.hs = mul i64 %i.hn, %i.hr
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv.i74
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 28
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !78
  %i.hw = sext i32 %i.hv to i64
  %i.hx = mul i64 %i.hs, %i.hw                    ; 3 uses
  %indvars.iv.next.i76.7 = add nuw nsw i64 %indvars.iv.i74, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit77.loopexit.unr-lcssa, label %_ZNK2cv8MatShapeixEm.exit.i73, !llvm.loop !79

14:                                               ; preds = %.lr.ph.i67
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.28, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.29, i32 noundef 103) #21
          to label %15 unwind label %16

15:                                               ; preds = %14
  unreachable

16:                                               ; preds = %14
  %17 = landingpad { ptr, i32 }
          cleanup
  %18 = load ptr, ptr %3, align 8, !tbaa !39      ; 2 uses
  %19 = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %20 = icmp eq ptr %18, %19
  br i1 %20, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i69: ; preds = %16
  %21 = load i64, ptr %19, align 8, !tbaa !38
  %22 = add i64 %21, 1
  call void @_ZdlPvm(ptr noundef %18, i64 noundef %22) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i70: ; preds = %16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %common.resume

_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit77.loopexit.unr-lcssa: ; preds = %_ZNK2cv8MatShapeixEm.exit.i73
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit77.loopexit, label %_ZNK2cv8MatShapeixEm.exit.i73.epil.preheader

_ZNK2cv8MatShapeixEm.exit.i73.epil.preheader:     ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit77.loopexit.unr-lcssa, %.lr.ph.i67.a
  %indvars.iv.i74.epil.init = phi i64 [ 0, %.lr.ph.i67.a ], [ %indvars.iv.next.i76.7, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit77.loopexit.unr-lcssa ]
  %.02128.i75.epil.init = phi i64 [ 1, %.lr.ph.i67.a ], [ %i.hx, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit77.loopexit.unr-lcssa ]
  %lcmp.mod136 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod136)
  br label %_ZNK2cv8MatShapeixEm.exit.i73.epil

_ZNK2cv8MatShapeixEm.exit.i73.epil:               ; preds = %_ZNK2cv8MatShapeixEm.exit.i73.epil, %_ZNK2cv8MatShapeixEm.exit.i73.epil.preheader
  %indvars.iv.i74.epil = phi i64 [ %indvars.iv.next.i76.epil, %_ZNK2cv8MatShapeixEm.exit.i73.epil ], [ %indvars.iv.i74.epil.init, %_ZNK2cv8MatShapeixEm.exit.i73.epil.preheader ] ; 2 uses
  %.02128.i75.epil = phi i64 [ %i.ib, %_ZNK2cv8MatShapeixEm.exit.i73.epil ], [ %.02128.i75.epil.init, %_ZNK2cv8MatShapeixEm.exit.i73.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNK2cv8MatShapeixEm.exit.i73.epil ], [ 0, %_ZNK2cv8MatShapeixEm.exit.i73.epil.preheader ]
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv.i74.epil
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !78
  %i.ia = sext i32 %i.hz to i64
  %i.ib = mul i64 %.02128.i75.epil, %i.ia         ; 2 uses
  %indvars.iv.next.i76.epil = add nuw nsw i64 %indvars.iv.i74.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit77.loopexit, label %_ZNK2cv8MatShapeixEm.exit.i73.epil, !llvm.loop !85

_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit77.loopexit: ; preds = %_ZNK2cv8MatShapeixEm.exit.i73.epil, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit77.loopexit.unr-lcssa
  %.lcssa133 = phi i64 [ %i.hx, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit77.loopexit.unr-lcssa ], [ %i.ib, %_ZNK2cv8MatShapeixEm.exit.i73.epil ]
  %i.ic = mul i64 %.lcssa133, %i.p
  br label %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit77

_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit77: ; preds = %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit77.loopexit, %.lr.ph.split
  %.021.lcssa.i66 = phi i64 [ %i.p, %.lr.ph.split ], [ %i.ic, %_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii.exit77.loopexit ]
  %i.id = add i64 %.021.lcssa.i66, %.02294        ; 2 uses
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 2 uses
  %exitcond102.not = icmp eq i64 %indvars.iv.next, %i.g
  br i1 %exitcond102.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !84
}

declare noundef zeroext i1 @_ZN2cv3dnn14dnn5_v202606055Layer18updateMemoryShapesERKSt6vectorINS_8MatShapeESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

declare noundef zeroext i1 @_ZNK2cv3dnn14dnn5_v202606055Layer20alwaysSupportInplaceEv(ptr noundef nonnull align 8 dereferenceable(156)) unnamed_addr #3

declare noundef zeroext i1 @_ZNK2cv3dnn14dnn5_v202606055Layer19dynamicOutputShapesEv(ptr noundef nonnull align 8 dereferenceable(156)) unnamed_addr #3

declare noundef zeroext i1 @_ZNK2cv3dnn14dnn5_v202606055Layer15isDataShufflingEv(ptr noundef nonnull align 8 dereferenceable(156)) unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK2cv3dnn14dnn5_v202606055Layer9dumpAttrsERSoi(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK2cv3dnn14dnn5_v202606055Layer4dumpERSoib(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i1 noundef zeroext) unnamed_addr #3

declare void @_ZN2cv3dnn14dnn5_v202606055LayerC2Ev(ptr noundef nonnull align 8 dereferenceable(156)) unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv3dnn14dnn5_v202606059DictValue3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_i(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %i.b = load i32, ptr %1, align 8, !tbaa !86
  %i.c = icmp eq i32 %i.b, 3
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.12, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZNK2cv3dnn14dnn5_v202606059DictValue3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_i, ptr noundef nonnull @.str.13, i32 noundef 190) #21
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
  %i.f = load ptr, ptr %3, align 8, !tbaa !39     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.i = load i64, ptr %i.g, align 8, !tbaa !38
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.e, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.r

bb.g:                                             ; preds = %bb.a
  %i.k = icmp eq i32 %2, -1
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !38   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !89
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.o, label %.thread

bb.i:                                             ; preds = %bb.g
  %i.q = icmp sgt i32 %2, -1
  br i1 %i.q, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !38   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !89
  %i.v = trunc i64 %i.u to i32
  %i.w = icmp slt i32 %2, %i.v
  br i1 %i.w, label %bb.o, label %.thread

.thread:                                          ; preds = %bb.h, %bb.j, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %.thread
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv3dnn14dnn5_v202606059DictValue3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_i, ptr noundef nonnull @.str.13, i32 noundef 191) #21
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %.thread
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

bb.n:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %5, align 8, !tbaa !39     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.n
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !38
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15, %bb.m
  %.pn12 = phi { ptr, i32 } [ %i.x, %bb.m ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15 ], [ %i.y, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.r

bb.o:                                             ; preds = %bb.j, %bb.h
  %i.ae = phi ptr [ %i.s, %bb.j ], [ %i.m, %bb.h ]
  %i.af = phi i32 [ %2, %bb.j ], [ 0, %bb.h ]
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !92
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %i.ag ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.aj, ptr %0, align 8, !tbaa !36
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !39 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !37 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.am, ptr %i.a, align 8, !tbaa !53
  %i.an = icmp ugt i64 %i.am, 15
  br i1 %i.an, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.o
  %i.ao = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ao, ptr %0, align 8, !tbaa !39
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !53
  store i64 %i.ap, ptr %i.aj, align 8, !tbaa !38
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.o
  %i.aq = phi ptr [ %i.ao, %.noexc.i ], [ %i.aj, %bb.o ] ; 2 uses
  switch i64 %i.am, label %bb.q [
    i64 1, label %bb.p
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.p:                                             ; preds = %._crit_edge.i.i
  %i.ar = load i8, ptr %i.ak, align 1, !tbaa !38
  store i8 %i.ar, ptr %i.aq, align 1, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.q:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aq, ptr align 1 %i.ak, i64 %i.am, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.p, %bb.q
  %i.as = load i64, ptr %i.a, align 8, !tbaa !53  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.as, ptr %i.at, align 8, !tbaa !37
  %i.au = load ptr, ptr %0, align 8, !tbaa !39
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.as
  store i8 0, ptr %i.av, align 1, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn12.pn = phi { ptr, i32 } [ %.pn12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn12.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #20 ; 0 uses
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11
end_hunk_0
