Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/randpattern?download=true
inline.NumInlined: 1039
inline.NumDeleted: 409
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN2cv11randpattern25RandomPatternCornerFinder20getObjectImagePointsERKNS_3MatES4_:bb.a

bb.ac:                                            ; preds = %bb.aa
  invoke void @_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %i.dn, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EE9push_backEOS2_.exit unwind label %bb.ad

_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb.l, !llvm.loop !148

bb.ad:                                            ; preds = %bb.ac
  %i.dv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.an

bb.ae:                                            ; preds = %.noexc38, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.dw = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 0, ptr %i.dx, align 8
  store i32 33619968, ptr %10, align 8, !tbaa !75
  store ptr %4, ptr %i.dw, align 8, !tbaa !77
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef %i.d, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.af unwind label %bb.ak

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !44 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !64
  %.not.i43 = icmp eq ptr %i.dz, %i.eb
  br i1 %.not.i43, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.dz, ptr noundef nonnull align 8 dereferenceable(208) %4)
          to label %.noexc44 unwind label %bb.am

.noexc44:                                         ; preds = %bb.ag
  %i.ec = load ptr, ptr %i.dy, align 8, !tbaa !44
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 208
  store ptr %i.ed, ptr %i.dy, align 8, !tbaa !44
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit46

bb.ah:                                            ; preds = %bb.af
  invoke void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.dz, ptr noundef nonnull align 8 dereferenceable(208) %4)
          to label %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit46 unwind label %bb.am

_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit46: ; preds = %.noexc44, %bb.ah
  %i.ee = load ptr, ptr %7, align 8, !tbaa !122   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit46
  %i.ef = load ptr, ptr %i.ae, align 8, !tbaa !131
  %i.eg = ptrtoint ptr %i.ef to i64
  %i.eh = ptrtoint ptr %i.ee to i64
  %i.ei = sub i64 %i.eg, %i.eh
  call void @_ZdlPvm(ptr noundef nonnull %i.ee, i64 noundef %i.ei) #18
  br label %_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EED2Ev.exit:   ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE9push_backERKS1_.exit46, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret void

bb.aj:                                            ; preds = %bb.n
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ak:                                            ; preds = %bb.ae
  %i.ek = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #17
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pn30.pn = phi { ptr, i32 } [ %i.ek, %bb.ak ], [ %i.ej, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.an

bb.am:                                            ; preds = %bb.ah, %bb.ag
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.an:                                            ; preds = %bb.p, %bb.ad, %bb.am, %bb.al
  %.pn33.pn = phi { ptr, i32 } [ %.pn30.pn, %bb.al ], [ %i.el, %bb.am ], [ %i.dv, %bb.ad ], [ %i.bi, %bb.p ]
  %i.em = load ptr, ptr %7, align 8, !tbaa !122   ; 3 uses
  %.not.i.i.i47 = icmp eq ptr %i.em, null
  br i1 %.not.i.i.i47, label %_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EED2Ev.exit48, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.en = load ptr, ptr %i.ae, align 8, !tbaa !131
  %i.eo = ptrtoint ptr %i.en to i64
  %i.ep = ptrtoint ptr %i.em to i64
  %i.eq = sub i64 %i.eo, %i.ep
  call void @_ZdlPvm(ptr noundef nonnull %i.em, i64 noundef %i.eq) #18
  br label %_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EED2Ev.exit48

_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EED2Ev.exit48: ; preds = %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EED2Ev.exit48, %bb.j, %bb.i, %bb.h
  %.pn33.pn.pn = phi { ptr, i32 } [ %.pn33.pn, %_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EED2Ev.exit48 ], [ %i.t, %bb.j ], [ %i.s, %bb.i ], [ %i.r, %bb.h ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  resume { ptr, i32 } %.pn33.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv11randpattern25RandomPatternCornerFinder18crossCheckMatchingERNS_3PtrINS_17DescriptorMatcherEEERKNS_3MatES8_RSt6vectorINS_6DMatchESaISA_EEi(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(208) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %4, i32 noundef %5) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::vector.29", align 8    ; 12 uses
  %7 = alloca %"class.std::vector.29", align 8    ; 11 uses
  %8 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %9 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %10 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %11 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %i.a = load ptr, ptr %4, align 8, !tbaa !81     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !78
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %bb.b, label %_ZSt8_DestroyIPN2cv6DMatchES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv6DMatchES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.a
  store ptr %i.a, ptr %i.b, align 8, !tbaa !78
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt8_DestroyIPN2cv6DMatchES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.d = load ptr, ptr %1, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 0, ptr %i.e, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 0, ptr %i.f, align 4, !tbaa !10
  store i32 16842752, ptr %8, align 8, !tbaa !75
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %2, ptr %i.g, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 0, ptr %i.h, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i32 0, ptr %i.i, align 4, !tbaa !10
  store i32 16842752, ptr %9, align 8, !tbaa !75
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %3, ptr %i.j, align 8, !tbaa !77
  %i.k = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNK2cv17DescriptorMatcher8knnMatchERKNS_11_InputArrayES3_RSt6vectorIS4_INS_6DMatchESaIS5_EESaIS7_EEiS3_b(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i1 noundef zeroext false)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %i.l = load ptr, ptr %1, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 0, ptr %i.m, align 8, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 20
  store i32 0, ptr %i.n, align 4, !tbaa !10
  store i32 16842752, ptr %10, align 8, !tbaa !75
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %3, ptr %i.o, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 0, ptr %i.p, align 8, !tbaa !8
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i32 0, ptr %i.q, align 4, !tbaa !10
  store i32 16842752, ptr %11, align 8, !tbaa !75
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %2, ptr %i.r, align 8, !tbaa !77
  %i.s = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK2cv17DescriptorMatcher8knnMatchERKNS_11_InputArrayES3_RSt6vectorIS4_INS_6DMatchESaIS5_EESaIS7_EEiS3_b(ptr noundef nonnull align 8 dereferenceable(56) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %7, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i1 noundef zeroext false)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !149
  %i.v = load ptr, ptr %6, align 8, !tbaa !152    ; 2 uses
  %.not78 = icmp eq ptr %i.u, %i.v
  br i1 %.not78, label %._crit_edge77, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit
  %i.x = phi ptr [ %i.v, %.preheader.lr.ph ], [ %12, %.loopexit ] ; 4 uses
  %.02976 = phi i64 [ 0, %.preheader.lr.ph ], [ %13, %.loopexit ] ; 2 uses
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %.02976 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !78  ; 2 uses
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !81  ; 3 uses
  %.not79 = icmp eq ptr %i.aa, %i.ab
  br i1 %.not79, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 4
  %i.ag = load ptr, ptr %7, align 8, !tbaa !152
  br label %bb.m

._crit_edge77:                                    ; preds = %.loopexit, %bb.f
  %i.ah = load ptr, ptr %7, align 8, !tbaa !152   ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !149 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ah, %i.aj
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN2cv6DMatchESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge77, %_ZSt8_DestroyISt6vectorIN2cv6DMatchESaIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.aq, %_ZSt8_DestroyISt6vectorIN2cv6DMatchESaIS2_EEEvPT_.exit.i.i.i ], [ %i.ah, %._crit_edge77 ] ; 3 uses
  %i.ak = load ptr, ptr %.05.i.i.i, align 8, !tbaa !81 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN2cv6DMatchESaIS2_EEEvPT_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !83
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ap) #18
  br label %_ZSt8_DestroyISt6vectorIN2cv6DMatchESaIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIN2cv6DMatchESaIS2_EEEvPT_.exit.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, %i.aj
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN2cv6DMatchESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !153

_ZSt8_DestroyIPSt6vectorIN2cv6DMatchESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIN2cv6DMatchESaIS2_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %7, align 8, !tbaa !152
  br label %_ZSt8_DestroyIPSt6vectorIN2cv6DMatchESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIN2cv6DMatchESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv6DMatchESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %._crit_edge77
  %i.ar = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIN2cv6DMatchESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.ah, %._crit_edge77 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IN2cv6DMatchESaIS1_EESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv6DMatchESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !154
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.aw) #18
  br label %_ZNSt6vectorIS_IN2cv6DMatchESaIS1_EESaIS3_EED2Ev.exit

_ZNSt6vectorIS_IN2cv6DMatchESaIS1_EESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv6DMatchESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.ax = load ptr, ptr %6, align 8, !tbaa !152   ; 3 uses
  %i.ay = load ptr, ptr %i.t, align 8, !tbaa !149 ; 2 uses
  %.not4.i.i.i46 = icmp eq ptr %i.ax, %i.ay
  br i1 %.not4.i.i.i46, label %_ZSt8_DestroyIPSt6vectorIN2cv6DMatchESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i54, label %.lr.ph.i.i.i47

.lr.ph.i.i.i47:                                   ; preds = %_ZNSt6vectorIS_IN2cv6DMatchESaIS1_EESaIS3_EED2Ev.exit, %_ZSt8_DestroyISt6vectorIN2cv6DMatchESaIS2_EEEvPT_.exit.i.i.i50
  %.05.i.i.i48 = phi ptr [ %i.bf, %_ZSt8_DestroyISt6vectorIN2cv6DMatchESaIS2_EEEvPT_.exit.i.i.i50 ], [ %i.ax, %_ZNSt6vectorIS_IN2cv6DMatchESaIS1_EESaIS3_EED2Ev.exit ] ; 3 uses
  %i.az = load ptr, ptr %.05.i.i.i48, align 8, !tbaa !81 ; 3 uses
  %.not.i.i.i.i.i.i.i49 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i.i.i49, label %_ZSt8_DestroyISt6vectorIN2cv6DMatchESaIS2_EEEvPT_.exit.i.i.i50, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i47
  %i.ba = getelementptr inbounds nuw i8, ptr %.05.i.i.i48, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !83
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.az to i64
  %i.be = sub i64 %i.bc, %i.bd
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.be) #18
  br label %_ZSt8_DestroyISt6vectorIN2cv6DMatchESaIS2_EEEvPT_.exit.i.i.i50

_ZSt8_DestroyISt6vectorIN2cv6DMatchESaIS2_EEEvPT_.exit.i.i.i50: ; preds = %bb.i, %.lr.ph.i.i.i47
  %i.bf = getelementptr inbounds nuw i8, ptr %.05.i.i.i48, i64 24 ; 2 uses
  %.not.i.i.i51 = icmp eq ptr %i.bf, %i.ay
  br i1 %.not.i.i.i51, label %_ZSt8_DestroyIPSt6vectorIN2cv6DMatchESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i52, label %.lr.ph.i.i.i47, !llvm.loop !153

_ZSt8_DestroyIPSt6vectorIN2cv6DMatchESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i52: ; preds = %_ZSt8_DestroyISt6vectorIN2cv6DMatchESaIS2_EEEvPT_.exit.i.i.i50
  %.pr.i53 = load ptr, ptr %6, align 8, !tbaa !152
  br label %_ZSt8_DestroyIPSt6vectorIN2cv6DMatchESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i54

_ZSt8_DestroyIPSt6vectorIN2cv6DMatchESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i54: ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv6DMatchESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i52, %_ZNSt6vectorIS_IN2cv6DMatchESaIS1_EESaIS3_EED2Ev.exit
  %i.bg = phi ptr [ %.pr.i53, %_ZSt8_DestroyIPSt6vectorIN2cv6DMatchESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i52 ], [ %i.ax, %_ZNSt6vectorIS_IN2cv6DMatchESaIS1_EESaIS3_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i55 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i1.i55, label %_ZNSt6vectorIS_IN2cv6DMatchESaIS1_EESaIS3_EED2Ev.exit56, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv6DMatchESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i54
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !154
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %i.bj, %i.bk
  call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.bl) #18
  br label %_ZNSt6vectorIS_IN2cv6DMatchESaIS1_EESaIS3_EED2Ev.exit56

_ZNSt6vectorIS_IN2cv6DMatchESaIS1_EESaIS3_EED2Ev.exit56: ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv6DMatchESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i54, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  ret void

bb.k:                                             ; preds = %bb.c, %bb.b
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.t

bb.l:                                             ; preds = %bb.e, %bb.d
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %bb.t

bb.m:                                             ; preds = %.lr.ph, %._crit_edge
  %.02575 = phi i64 [ 0, %.lr.ph ], [ %i.cz, %._crit_edge ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %.02575 ; 3 uses
  %.sroa.0.0.copyload = load i32, ptr %i.bo, align 4, !tbaa !52 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !52 ; 3 uses
  %i.bp = sext i32 %.sroa.7.0.copyload to i64
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.bp ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !78 ; 2 uses
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !81 ; 3 uses
  %.not80 = icmp eq ptr %i.bs, %i.bt
  br i1 %.not80, label %._crit_edge, label %_ZNSt6vectorIN2cv6DMatchESaIS1_EE9push_backERKS1_.exit.preheader

_ZNSt6vectorIN2cv6DMatchESaIS1_EE9push_backERKS1_.exit.preheader: ; preds = %bb.m
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = ashr exact i64 %i.bw, 4
  br label %_ZNSt6vectorIN2cv6DMatchESaIS1_EE9push_backERKS1_.exit

bb.n:                                             ; preds = %_ZNSt6vectorIN2cv6DMatchESaIS1_EE9push_backERKS1_.exit
  %i.by = add nuw i64 %.074, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.by, %i.bx
  br i1 %exitcond.not, label %._crit_edge, label %_ZNSt6vectorIN2cv6DMatchESaIS1_EE9push_backERKS1_.exit, !llvm.loop !155

_ZNSt6vectorIN2cv6DMatchESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIN2cv6DMatchESaIS1_EE9push_backERKS1_.exit.preheader, %bb.n
  %.074 = phi i64 [ %i.by, %bb.n ], [ 0, %_ZNSt6vectorIN2cv6DMatchESaIS1_EE9push_backERKS1_.exit.preheader ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.bt, i64 %.074
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !52
  %.not = icmp eq i32 %.sroa.4.0.copyload, %.sroa.0.0.copyload
  br i1 %.not, label %bb.o, label %bb.n

bb.o:                                             ; preds = %_ZNSt6vectorIN2cv6DMatchESaIS1_EE9push_backERKS1_.exit
  %.sroa.9.0..sroa_idx.le = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.ca = load i64, ptr %.sroa.9.0..sroa_idx.le, align 4 ; 2 uses
  %i.cb = load ptr, ptr %i.b, align 8, !tbaa !78  ; 7 uses
  %i.cc = load ptr, ptr %i.w, align 8, !tbaa !83
  %.not.i = icmp eq ptr %i.cb, %i.cc
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 %.sroa.0.0.copyload, ptr %i.cb, align 4, !tbaa !52
  %.sroa.7.0..sroa_idx61 = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  store i32 %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx61, align 4, !tbaa !52
  %.sroa.9.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i64 %i.ca, ptr %.sroa.9.0..sroa_idx66, align 4
  %i.cd = load ptr, ptr %i.b, align 8, !tbaa !78
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store ptr %i.ce, ptr %i.b, align 8, !tbaa !78
  br label %.loopexit

bb.q:                                             ; preds = %bb.o
  %i.cf = load ptr, ptr %4, align 8, !tbaa !81    ; 5 uses
  %i.cg = ptrtoint ptr %i.cb to i64
  %i.ch = ptrtoint ptr %i.cf to i64               ; 2 uses
  %i.ci = sub i64 %i.cg, %i.ch                    ; 3 uses
  %i.cj = icmp eq i64 %i.ci, 9223372036854775792
  br i1 %i.cj, label %bb.r, label %_ZNKSt6vectorIN2cv6DMatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #19
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.r
  unreachable

_ZNKSt6vectorIN2cv6DMatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.q
  %i.ck = ashr exact i64 %i.ci, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ck, i64 1)
  %i.cl = add nsw i64 %.sroa.speculated.i.i.i, %i.ck ; 2 uses
  %i.cm = icmp ult i64 %i.cl, %i.ck
  %i.cn = call i64 @llvm.umin.i64(i64 %i.cl, i64 576460752303423487)
  %i.co = select i1 %i.cm, i64 576460752303423487, i64 %i.cn ; 3 uses
  %.not.i.i.i57 = icmp ne i64 %i.co, 0
  call void @llvm.assume(i1 %.not.i.i.i57)
  %i.cp = shl nuw nsw i64 %i.co, 4
  %i.cq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cp) #20
          to label %.noexc58 unwind label %.loopexit70 ; 5 uses

.noexc58:                                         ; preds = %_ZNKSt6vectorIN2cv6DMatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.ci ; 3 uses
  store i32 %.sroa.0.0.copyload, ptr %i.cr, align 4, !tbaa !52
  %.sroa.7.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  store i32 %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx63, align 4, !tbaa !52
  %.sroa.9.0..sroa_idx67 = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i64 %i.ca, ptr %.sroa.9.0..sroa_idx67, align 4
  %.not10.i.i.i.i.i = icmp eq ptr %i.cf, %i.cb
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN2cv6DMatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc58, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ct, %.lr.ph.i.i.i.i.i ], [ %i.cq, %.noexc58 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.cs, %.lr.ph.i.i.i.i.i ], [ %i.cf, %.noexc58 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !84, !alias.scope !156
  %i.cs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cs, %i.cb
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN2cv6DMatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !160

_ZNSt6vectorIN2cv6DMatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc58
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.cq, %.noexc58 ], [ %i.ct, %.lr.ph.i.i.i.i.i ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i23.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN2cv6DMatchESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN2cv6DMatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.cv = load ptr, ptr %i.w, align 8, !tbaa !83
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = sub i64 %i.cw, %i.ch
  call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef %i.cx) #18
  br label %_ZNSt6vectorIN2cv6DMatchESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN2cv6DMatchESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.s, %_ZNSt6vectorIN2cv6DMatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.cq, ptr %4, align 8, !tbaa !81
  store ptr %i.cu, ptr %i.b, align 8, !tbaa !78
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %i.cq, i64 %i.co
  store ptr %i.cy, ptr %i.w, align 8, !tbaa !83
  %.pre86.pre = load ptr, ptr %6, align 8, !tbaa !152
  br label %.loopexit

.loopexit70:                                      ; preds = %_ZNKSt6vectorIN2cv6DMatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.loopexit.split-lp:                               ; preds = %bb.r
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

._crit_edge:                                      ; preds = %bb.n, %bb.m
  %i.cz = add nuw i64 %.02575, 1                  ; 2 uses
  %exitcond84.not = icmp eq i64 %i.cz, %i.af
  br i1 %exitcond84.not, label %.loopexit, label %bb.m, !llvm.loop !161

.loopexit:                                        ; preds = %._crit_edge, %.preheader, %_ZNSt6vectorIN2cv6DMatchESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.p
  %12 = phi ptr [ %i.x, %bb.p ], [ %i.x, %.preheader ], [ %.pre86.pre, %_ZNSt6vectorIN2cv6DMatchESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.x, %._crit_edge ] ; 2 uses
  %13 = add nuw i64 %.02976, 1                    ; 2 uses
  %14 = load ptr, ptr %i.t, align 8, !tbaa !149
  %i.da = ptrtoint ptr %14 to i64
  %i.db = ptrtoint ptr %12 to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = sdiv exact i64 %i.dc, 24
  %i.de = icmp ult i64 %13, %i.dd
  br i1 %i.de, label %.preheader, label %._crit_edge77, !llvm.loop !162

bb.t:                                             ; preds = %.loopexit70, %.loopexit.split-lp, %bb.l, %bb.k
  %.pn44 = phi { ptr, i32 } [ %i.bm, %bb.k ], [ %i.bn, %bb.l ], [ %lpad.loopexit, %.loopexit70 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6vectorIS_IN2cv6DMatchESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @_ZNSt6vectorIS_IN2cv6DMatchESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  resume { ptr, i32 } %.pn44
}

declare void @_ZNK2cv17DescriptorMatcher8knnMatchERKNS_11_InputArrayES3_RSt6vectorIS4_INS_6DMatchESaIS5_EESaIS7_EEiS3_b(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv() local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIS_IN2cv6DMatchESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !152    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !149  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIN2cv6DMatchESaIS2_EES4_EvT_S6_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIN2cv6DMatchESaIS2_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorIN2cv6DMatchESaIS2_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !81 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN2cv6DMatchESaIS2_EEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !83
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #18
  br label %_ZSt8_DestroyISt6vectorIN2cv6DMatchESaIS2_EEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIN2cv6DMatchESaIS2_EEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIN2cv6DMatchESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !153

_ZSt8_DestroyIPSt6vectorIN2cv6DMatchESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIN2cv6DMatchESaIS2_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !152
  br label %_ZSt8_DestroyIPSt6vectorIN2cv6DMatchESaIS2_EES4_EvT_S6_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIN2cv6DMatchESaIS2_EES4_EvT_S6_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv6DMatchESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIN2cv6DMatchESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIN2cv6DMatchESaIS2_EESaIS4_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv6DMatchESaIS2_EES4_EvT_S6_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !154
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #18
  br label %_ZNSt12_Vector_baseISt6vectorIN2cv6DMatchESaIS2_EESaIS4_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIN2cv6DMatchESaIS2_EESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv6DMatchESaIS2_EES4_EvT_S6_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv11randpattern25RandomPatternCornerFinder18drawCorrespondenceERKNS_3MatESt6vectorINS_8KeyPointESaIS6_EES4_S8_S5_INS_6DMatchESaIS9_EES4_S4_i(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef align 8 %2, ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef align 8 %4, ptr noundef align 8 %5, ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(208) %7, i32 noundef %8) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %10 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %11 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %12 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %13 = alloca %"class.cv::Scalar_", align 16     ; 6 uses
  %14 = alloca %"class.cv::Scalar_", align 16     ; 6 uses
  %15 = alloca %"class.std::vector.41", align 8   ; 9 uses
  %16 = alloca %"class.std::vector.12", align 8   ; 11 uses
  %17 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %18 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %19 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %20 = alloca %"class.cv::Scalar_", align 16     ; 6 uses
  %21 = alloca %"class.cv::Scalar_", align 16     ; 6 uses
  %22 = alloca %"class.std::vector.41", align 8   ; 9 uses
  %23 = alloca %"class.std::vector.12", align 8   ; 11 uses
  %24 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %25 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %26 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %27 = alloca %"class.cv::Scalar_", align 16     ; 6 uses
  %28 = alloca %"class.cv::Scalar_", align 16     ; 6 uses
  %29 = alloca %"class.std::vector.41", align 8   ; 9 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %31 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %9) #17
  switch i32 %8, label %._crit_edge.i.i [
    i32 1, label %bb.b
    i32 2, label %bb.g
    i32 3, label %bb.af
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 0, ptr %i.a, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 20
  store i32 0, ptr %i.b, align 4, !tbaa !10
  store i32 16842752, ptr %10, align 8, !tbaa !75
  %i.c = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %1, ptr %i.c, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  %i.d = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 0, ptr %i.d, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i32 0, ptr %i.e, align 4, !tbaa !10
  store i32 16842752, ptr %11, align 8, !tbaa !75
  %i.f = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %3, ptr %i.f, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  %i.g = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i64 0, ptr %i.h, align 8
  store i32 50397184, ptr %12, align 8, !tbaa !75
  store ptr %9, ptr %i.g, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  store <2 x double> splat (double -1.000000e+00), ptr %13, align 16, !tbaa !129, !alias.scope !163
  %i.i = getelementptr inbounds nuw i8, ptr %13, i64 16
  store <2 x double> splat (double -1.000000e+00), ptr %i.i, align 16, !tbaa !129, !alias.scope !163
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  store <2 x double> splat (double -1.000000e+00), ptr %14, align 16, !tbaa !129, !alias.scope !166
  %i.j = getelementptr inbounds nuw i8, ptr %14, i64 16
  store <2 x double> splat (double -1.000000e+00), ptr %i.j, align 16, !tbaa !129, !alias.scope !166
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  invoke void @_ZN2cv11drawMatchesERKNS_11_InputArrayERKSt6vectorINS_8KeyPointESaIS4_EES2_S8_RKS3_INS_6DMatchESaIS9_EERKNS_17_InputOutputArrayERKNS_7Scalar_IdEESK_RKS3_IcSaIcEENS_16DrawMatchesFlagsE(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(24) %15, i32 noundef 0)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %15, align 8, !tbaa !169   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !171
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #18
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %._crit_edge.i.i

bb.e:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %15, align 8, !tbaa !169   ; 3 uses
  %.not.i.i.i78 = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i78, label %_ZNSt6vectorIcSaIcEED2Ev.exit79, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !171
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #18
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit79

_ZNSt6vectorIcSaIcEED2Ev.exit79:                  ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %bb.bq

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 128 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN2cv6DMatchESaIS1_EE9push_backERKS1_.exit, %bb.g
  %i.ae = phi ptr [ %i.ci, %_ZNSt6vectorIN2cv6DMatchESaIS1_EE9push_backERKS1_.exit ], [ null, %bb.g ] ; 7 uses
  %indvars.iv131 = phi i64 [ %indvars.iv.next132, %_ZNSt6vectorIN2cv6DMatchESaIS1_EE9push_backERKS1_.exit ], [ 0, %bb.g ] ; 7 uses
  %i.af = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %6)
end_hunk_0
