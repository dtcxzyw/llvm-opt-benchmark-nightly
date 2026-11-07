Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/ImageViewer?download=true
inline.NumInlined: 16087
inline.NumDeleted: 8272
loop-unroll.NumCompletelyUnrolled: 54
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 98
begin_hunk_0_@_ZN3tev11ImageViewer14keyboard_eventEiiii:bb.a

bb.fe:                                            ; preds = %bb.fb
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.mo = load ptr, ptr %i.mn, align 16, !tbaa !248
  %i.mp = fneg float %.0
  %.sroa.0315.4.vec.insert = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.mp, i64 1
  tail call void @_ZN3tev11ImageCanvas9translateEN7nanogui5ArrayIfLm2EEE(ptr noundef nonnull align 8 dereferenceable(504) %i.mo, <2 x float> %.sroa.0315.4.vec.insert)
  br label %.critedge

bb.ff:                                            ; preds = %bb.fb
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.mr = load ptr, ptr %i.mq, align 16, !tbaa !248
  %.sroa.0.4.vec.insert = insertelement <2 x float> <float 0.000000e+00, float poison>, float %.0, i64 1
  tail call void @_ZN3tev11ImageCanvas9translateEN7nanogui5ArrayIfLm2EEE(ptr noundef nonnull align 8 dereferenceable(504) %i.mr, <2 x float> %.sroa.0.4.vec.insert)
  br label %.critedge

bb.fg:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit305, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit301, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit297, %bb.v, %bb.ei, %bb.eb, %bb.dv, %bb.ct, %bb.cf, %bb.bw, %bb.bn, %bb.at, %bb.ae
  %.merged = phi { ptr, i32 } [ %i.gr, %bb.ct ], [ %i.br, %bb.ae ], [ %i.ct, %bb.at ], [ %i.jr, %bb.dv ], [ %.pn, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit305 ], [ %i.jy, %bb.eb ], [ %.pn228, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit301 ], [ %i.kb, %bb.ei ], [ %i.dq, %bb.bn ], [ %i.ba, %bb.v ], [ %i.dz, %bb.bw ], [ %.pn230, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit297 ], [ %i.fg, %bb.cf ]
  resume { ptr, i32 } %.merged

.critedge:                                        ; preds = %bb.b, %bb.ai, %bb.aj, %bb.d, %bb.f, %bb.ag, %bb.ak, %bb.al, %bb.am, %_ZN3tev11ImageViewer12setUiVisibleEb.exit, %bb.bb, %bb.bd, %bb.bf, %bb.bh, %bb.bo, %bb.bp, %bb.bq, %bb.bs, %bb.dg, %bb.i, %bb.h, %bb.w, %bb.s, %bb.r, %bb.p, %bb.ap, %bb.as, %bb.au, %bb.bm, %bb.bj, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit300, %bb.ce, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, %bb.bv, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit304, %bb.cs, %bb.cr, %bb.dj, %bb.di, %bb.dl, %bb.dk, %bb.do, %bb.dp, %bb.dm, %bb.du, %bb.dr, %bb.ea, %bb.dy, %bb.eh, %bb.ef, %bb.ep, %bb.eo, %bb.en, %bb.el, %bb.ev, %bb.eu, %bb.et, %bb.er, %bb.fb, %bb.ff, %bb.fe, %bb.fd, %bb.fc, %bb.a
  ret i1 true

bb.fh:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit305, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit301, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit297
  %i.ms = landingpad { ptr, i32 }
          catch ptr null
  %i.mt = extractvalue { ptr, i32 } %i.ms, 0
  call void @__clang_call_terminate(ptr %i.mt) #50
  unreachable
}

declare noundef zeroext i1 @_ZN7nanogui6Screen14keyboard_eventEiiii(ptr noundef nonnull align 16 dereferenceable(520), i32 noundef, i32 noundef, i32 noundef, i32 noundef) unnamed_addr #5

declare void @_ZN3tev11ImageCanvas14resetTransformEv(ptr noundef nonnull align 8 dereferenceable(504)) local_unnamed_addr #5

declare void @_ZN7nanogui6Widget13request_focusEv(ptr noundef nonnull align 8 dereferenceable(148)) local_unnamed_addr #5

declare void @_ZN3tev11ImageCanvas16fitImageToScreenERKNS_5ImageE(ptr noundef nonnull align 8 dereferenceable(504), ptr noundef nonnull align 16 dereferenceable(516)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN3tev11ImageViewer15nthVisibleImageEm(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::__1::shared_ptr.35") align 8 captures(none) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(1408) %1, i64 noundef %2) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 872 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 880 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !505 ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !504  ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %bb.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1080
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %i.g = phi ptr [ %i.d, %.lr.ph ], [ %i.ag, %bb.h ] ; 2 uses
  %i.h = phi ptr [ %i.c, %.lr.ph ], [ %i.ah, %bb.h ]
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.ai, %bb.h ] ; 6 uses
  %.09 = phi i64 [ 0, %.lr.ph ], [ %i.ak, %bb.h ] ; 3 uses
  %.078 = phi i64 [ %2, %.lr.ph ], [ %.1, %bb.h ] ; 3 uses
  %i.j = phi ptr [ null, %.lr.ph ], [ %i.aj, %bb.h ]
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !416
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !396
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.09
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !397
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  %i.q = load i8, ptr %i.p, align 8, !tbaa !232, !range !330, !noundef !384
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.09 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !438  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !506  ; 4 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = atomicrmw add ptr %i.w, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i

_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i: ; preds = %bb.d, %bb.c
  %.not.i2.i = icmp eq ptr %i.i, null
  br i1 %.not.i2.i, label %_ZNSt3__110shared_ptrIN3tev5ImageEEaSB8ne180100ERKS3_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.z = atomicrmw add ptr %i.y, i64 -1 acq_rel, align 8
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.f, label %_ZNSt3__110shared_ptrIN3tev5ImageEEaSB8ne180100ERKS3_.exit

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %i.i, align 8, !tbaa !88
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(24) %i.i) #46, !inline_history !12
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.i) #46
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEEaSB8ne180100ERKS3_.exit

_ZNSt3__110shared_ptrIN3tev5ImageEEaSB8ne180100ERKS3_.exit: ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i, %bb.e, %bb.f
  %i.ae = icmp eq i64 %.078, 0
  br i1 %i.ae, label %.sink.split, label %bb.g

bb.g:                                             ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEEaSB8ne180100ERKS3_.exit
  %i.af = add i64 %.078, -1
  %.pre = load ptr, ptr %i.b, align 16, !tbaa !505
  %.pre16 = load ptr, ptr %i.a, align 8, !tbaa !504
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.g
  %i.ag = phi ptr [ %.pre16, %bb.g ], [ %i.g, %bb.b ] ; 2 uses
  %i.ah = phi ptr [ %.pre, %bb.g ], [ %i.h, %bb.b ] ; 2 uses
  %i.ai = phi ptr [ %i.v, %bb.g ], [ %i.i, %bb.b ] ; 2 uses
  %i.aj = phi ptr [ %i.t, %bb.g ], [ %i.j, %bb.b ] ; 2 uses
  %.1 = phi i64 [ %i.af, %bb.g ], [ %.078, %bb.b ]
  %i.ak = add nuw i64 %.09, 1                     ; 2 uses
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = ptrtoint ptr %i.ag to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = ashr exact i64 %i.an, 4
  %i.ap = icmp ult i64 %i.ak, %i.ao
  br i1 %i.ap, label %bb.b, label %.sink.split, !llvm.loop !20

.sink.split:                                      ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEEaSB8ne180100ERKS3_.exit, %bb.h
  %.lcssa.sink = phi ptr [ %i.ai, %bb.h ], [ %i.v, %_ZNSt3__110shared_ptrIN3tev5ImageEEaSB8ne180100ERKS3_.exit ]
  %.ph = phi ptr [ %i.aj, %bb.h ], [ %i.t, %_ZNSt3__110shared_ptrIN3tev5ImageEEaSB8ne180100ERKS3_.exit ]
  store ptr %.lcssa.sink, ptr %i.f, align 8
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.a
  %i.aq = phi ptr [ null, %bb.a ], [ %.ph, %.sink.split ]
  store ptr %i.aq, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3tev11ImageViewer11selectGroupENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE(ptr noundef nonnull align 16 dereferenceable(1408) %0, ptr nofree readonly captures(none) %1, i64 %2) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !438  ; 3 uses
  %.not14.i = icmp eq ptr %i.b, null
  br i1 %.not14.i, label %_ZNK3tev11ImageViewer7groupIdENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !507  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 424
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !508  ; 3 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.i
  %.not2.i.i.i.i = icmp eq ptr %i.f, %i.d
  br i1 %.not2.i.i.i.i, label %"_ZNKSt3__16ranges6__find4__fnclB8ne180100ITkNS0_11input_rangeERKNS_4spanIKN3tev12ChannelGroupELm18446744073709551615EEENS_17basic_string_viewIcNS_11char_traitsIcEEEEZNKS5_11ImageViewer7groupIdESE_E3$_0Q25indirect_binary_predicateINS0_8equal_toENS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENS_7_IfImplIX14borrowed_rangeISK_EEE7_SelectISM_NS0_8danglingEEEOSK_RSR_SN_.exit.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i
  %.03.i.i.i.i = phi ptr [ %i.w, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i ], [ %i.d, %bb.b ] ; 6 uses
  %i.k = load i8, ptr %.03.i.i.i.i, align 8       ; 2 uses
  %i.l = trunc i8 %i.k to i1                      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i, i64 8
  %i.n = load i64, ptr %i.m, align 8
  %i.o = lshr i8 %i.k, 1
  %i.p = zext nneg i8 %i.o to i64
  %i.q = select i1 %i.l, i64 %i.n, i64 %i.p
  %.not.i.i.i.i.i = icmp eq i64 %i.q, %2
  br i1 %.not.i.i.i.i.i, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i.i, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i, i64 1
  %i.u = select i1 %i.l, ptr %i.s, ptr %i.t
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %i.u, ptr readonly %1, i64 %2)
  %i.v = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.v, label %"_ZNKSt3__16ranges6__find4__fnclB8ne180100ITkNS0_11input_rangeERKNS_4spanIKN3tev12ChannelGroupELm18446744073709551615EEENS_17basic_string_viewIcNS_11char_traitsIcEEEEZNKS5_11ImageViewer7groupIdESE_E3$_0Q25indirect_binary_predicateINS0_8equal_toENS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENS_7_IfImplIX14borrowed_rangeISK_EEE7_SelectISM_NS0_8danglingEEEOSK_RSR_SN_.exit.loopexit.i", label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.w, %i.f
  br i1 %.not.i.i.i.i, label %"_ZNKSt3__16ranges6__find4__fnclB8ne180100ITkNS0_11input_rangeERKNS_4spanIKN3tev12ChannelGroupELm18446744073709551615EEENS_17basic_string_viewIcNS_11char_traitsIcEEEEZNKS5_11ImageViewer7groupIdESE_E3$_0Q25indirect_binary_predicateINS0_8equal_toENS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENS_7_IfImplIX14borrowed_rangeISK_EEE7_SelectISM_NS0_8danglingEEEOSK_RSR_SN_.exit.loopexit.i", label %.lr.ph.i.i.i.i, !llvm.loop !21

"_ZNKSt3__16ranges6__find4__fnclB8ne180100ITkNS0_11input_rangeERKNS_4spanIKN3tev12ChannelGroupELm18446744073709551615EEENS_17basic_string_viewIcNS_11char_traitsIcEEEEZNKS5_11ImageViewer7groupIdESE_E3$_0Q25indirect_binary_predicateINS0_8equal_toENS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENS_7_IfImplIX14borrowed_rangeISK_EEE7_SelectISM_NS0_8danglingEEEOSK_RSR_SN_.exit.loopexit.i": ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i.i
  %.0.lcssa.i.i.i.ph.i = phi ptr [ %.03.i.i.i.i, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i.i ], [ %i.j, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i ]
  %.pre.i = ptrtoint ptr %.0.lcssa.i.i.i.ph.i to i64
  br label %"_ZNKSt3__16ranges6__find4__fnclB8ne180100ITkNS0_11input_rangeERKNS_4spanIKN3tev12ChannelGroupELm18446744073709551615EEENS_17basic_string_viewIcNS_11char_traitsIcEEEEZNKS5_11ImageViewer7groupIdESE_E3$_0Q25indirect_binary_predicateINS0_8equal_toENS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENS_7_IfImplIX14borrowed_rangeISK_EEE7_SelectISM_NS0_8danglingEEEOSK_RSR_SN_.exit.i"

"_ZNKSt3__16ranges6__find4__fnclB8ne180100ITkNS0_11input_rangeERKNS_4spanIKN3tev12ChannelGroupELm18446744073709551615EEENS_17basic_string_viewIcNS_11char_traitsIcEEEEZNKS5_11ImageViewer7groupIdESE_E3$_0Q25indirect_binary_predicateINS0_8equal_toENS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENS_7_IfImplIX14borrowed_rangeISK_EEE7_SelectISM_NS0_8danglingEEEOSK_RSR_SN_.exit.i": ; preds = %"_ZNKSt3__16ranges6__find4__fnclB8ne180100ITkNS0_11input_rangeERKNS_4spanIKN3tev12ChannelGroupELm18446744073709551615EEENS_17basic_string_viewIcNS_11char_traitsIcEEEEZNKS5_11ImageViewer7groupIdESE_E3$_0Q25indirect_binary_predicateINS0_8equal_toENS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENS_7_IfImplIX14borrowed_rangeISK_EEE7_SelectISM_NS0_8danglingEEEOSK_RSR_SN_.exit.loopexit.i", %bb.b
  %.pre-phi.i = phi i64 [ %.pre.i, %"_ZNKSt3__16ranges6__find4__fnclB8ne180100ITkNS0_11input_rangeERKNS_4spanIKN3tev12ChannelGroupELm18446744073709551615EEENS_17basic_string_viewIcNS_11char_traitsIcEEEEZNKS5_11ImageViewer7groupIdESE_E3$_0Q25indirect_binary_predicateINS0_8equal_toENS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENS_7_IfImplIX14borrowed_rangeISK_EEE7_SelectISM_NS0_8danglingEEEOSK_RSR_SN_.exit.loopexit.i" ], [ %i.h, %bb.b ]
  %i.x = sub i64 %.pre-phi.i, %i.h                ; 2 uses
  %.not.i = icmp ult i64 %i.x, %i.i
  br i1 %.not.i, label %bb.c, label %_ZNK3tev11ImageViewer7groupIdENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit

bb.c:                                             ; preds = %"_ZNKSt3__16ranges6__find4__fnclB8ne180100ITkNS0_11input_rangeERKNS_4spanIKN3tev12ChannelGroupELm18446744073709551615EEENS_17basic_string_viewIcNS_11char_traitsIcEEEEZNKS5_11ImageViewer7groupIdESE_E3$_0Q25indirect_binary_predicateINS0_8equal_toENS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENS_7_IfImplIX14borrowed_rangeISK_EEE7_SelectISM_NS0_8danglingEEEOSK_RSR_SN_.exit.i"
  %i.y = sdiv exact i64 %i.x, 48
  br label %_ZNK3tev11ImageViewer7groupIdENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit

_ZNK3tev11ImageViewer7groupIdENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit: ; preds = %bb.a, %"_ZNKSt3__16ranges6__find4__fnclB8ne180100ITkNS0_11input_rangeERKNS_4spanIKN3tev12ChannelGroupELm18446744073709551615EEENS_17basic_string_viewIcNS_11char_traitsIcEEEEZNKS5_11ImageViewer7groupIdESE_E3$_0Q25indirect_binary_predicateINS0_8equal_toENS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENS_7_IfImplIX14borrowed_rangeISK_EEE7_SelectISM_NS0_8danglingEEEOSK_RSR_SN_.exit.i", %bb.c
  %.sroa.4.sroa.3.1.i = phi i64 [ 0, %bb.a ], [ %i.y, %bb.c ], [ 0, %"_ZNKSt3__16ranges6__find4__fnclB8ne180100ITkNS0_11input_rangeERKNS_4spanIKN3tev12ChannelGroupELm18446744073709551615EEENS_17basic_string_viewIcNS_11char_traitsIcEEEEZNKS5_11ImageViewer7groupIdESE_E3$_0Q25indirect_binary_predicateINS0_8equal_toENS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENS_7_IfImplIX14borrowed_rangeISK_EEE7_SelectISM_NS0_8danglingEEEOSK_RSR_SN_.exit.i" ] ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !418 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 88
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !395 ; 2 uses
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !396 ; 7 uses
  %.not47 = icmp eq ptr %i.ad, %i.ae
  br i1 %.not47, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNK3tev11ImageViewer7groupIdENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 3                 ; 3 uses
  %xtraiter = and i64 %i.ai, 3                    ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 4
  br i1 %i.aj, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.ai, -4
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.02440.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.cm, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod67 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod67)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.02440.epil = phi i64 [ %i.ap, %.lr.ph.epil ], [ %.02440.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.02440.epil
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !397, !nonnull !384, !noundef !384
  %i.am = icmp eq i64 %.02440.epil, %.sroa.4.sroa.3.1.i
  %i.an = zext i1 %i.am to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 240
  store i8 %i.an, ptr %i.ao, align 16, !tbaa !440
  %i.ap = add nuw i64 %.02440.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !1194

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %_ZNK3tev11ImageViewer7groupIdENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit
  %i.aq = tail call { ptr, i64 } @_ZN3tev11ImageViewer9groupNameEm(ptr noundef nonnull align 16 dereferenceable(1408) %0, i64 noundef %.sroa.4.sroa.3.1.i) ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 2 uses
  %i.as = extractvalue { ptr, i64 } %i.aq, 1
  %i.at = extractvalue { ptr, i64 } %i.aq, 0
  %i.au = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef %i.at, i64 noundef %i.as) ; 0 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.aw = load ptr, ptr %i.av, align 16, !tbaa !248
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 280
  %i.ay = load i8, ptr %i.ar, align 16            ; 2 uses
  %i.az = trunc i8 %i.ay to i1                    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = lshr i8 %i.ay, 1
  %i.bd = zext nneg i8 %i.bc to i64
  %i.be = select i1 %i.az, i64 %i.bb, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.bg = load ptr, ptr %i.bf, align 16
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1121
  %i.bi = select i1 %i.az, ptr %i.bg, ptr %i.bh
  %i.bj = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef %i.bi, i64 noundef %i.be) ; 0 uses
  %i.bk = load ptr, ptr %i.z, align 8, !tbaa !418 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 80
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !396 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 88
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !395 ; 2 uses
  %.not3841 = icmp eq ptr %i.bm, %i.bo
  br i1 %.not3841, label %._crit_edge44.thread, label %.lr.ph43

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.02440 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.cm, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.02440
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !397, !nonnull !384, !noundef !384
  %i.br = icmp eq i64 %.02440, %.sroa.4.sroa.3.1.i
  %i.bs = zext i1 %i.br to i8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 240
  store i8 %i.bs, ptr %i.bt, align 16, !tbaa !440
  %i.bu = or disjoint i64 %.02440, 1              ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.bu
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !397, !nonnull !384, !noundef !384
  %i.bx = icmp eq i64 %i.bu, %.sroa.4.sroa.3.1.i
  %i.by = zext i1 %i.bx to i8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 240
  store i8 %i.by, ptr %i.bz, align 16, !tbaa !440
  %i.ca = or disjoint i64 %.02440, 2              ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ca
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !397, !nonnull !384, !noundef !384
  %i.cd = icmp eq i64 %i.ca, %.sroa.4.sroa.3.1.i
  %i.ce = zext i1 %i.cd to i8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 240
  store i8 %i.ce, ptr %i.cf, align 16, !tbaa !440
  %i.cg = or disjoint i64 %.02440, 3              ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !397, !nonnull !384, !noundef !384
  %i.cj = icmp eq i64 %i.cg, %.sroa.4.sroa.3.1.i
  %i.ck = zext i1 %i.cj to i8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 240
  store i8 %i.ck, ptr %i.cl, align 16, !tbaa !440
  %i.cm = add nuw i64 %.02440, 4                  ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !1195

bb.d:                                             ; preds = %.lr.ph43
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.030.042, i64 8 ; 2 uses
  %.not38 = icmp eq ptr %i.cn, %i.bo
  br i1 %.not38, label %._crit_edge44.thread, label %.lr.ph43

.lr.ph43:                                         ; preds = %._crit_edge, %bb.d
  %.sroa.030.042 = phi ptr [ %i.cn, %bb.d ], [ %i.bm, %._crit_edge ] ; 2 uses
  %i.co = load ptr, ptr %.sroa.030.042, align 8, !tbaa !397, !nonnull !384, !noundef !384 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 240
  %i.cq = load i8, ptr %i.cp, align 16, !tbaa !440, !range !330, !noundef !384
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %._crit_edge44, label %bb.d

._crit_edge44:                                    ; preds = %.lr.ph43
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bk, i64 40 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !226 ; 2 uses
  %i.cv = sub i32 0, %i.cu                        ; 2 uses
  %i.cw = load i32, ptr %i.cs, align 8, !tbaa !226 ; 2 uses
  %i.cx = icmp slt i32 %i.cw, %i.cv
  br i1 %i.cx, label %.cont, label %.else

.else:                                            ; preds = %._crit_edge44
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cz = load i32, ptr %i.cy, align 16, !tbaa !226
  %i.da = getelementptr inbounds nuw i8, ptr %i.co, i64 48
  %i.db = load i32, ptr %i.da, align 4, !tbaa !226
  %i.dc = add i32 %i.cu, %i.db
  %i.dd = sub i32 %i.cz, %i.dc
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.dd, i32 %i.cw)
  br label %.cont

.cont:                                            ; preds = %.else, %._crit_edge44
  %i.de = phi i32 [ %i.cv, %._crit_edge44 ], [ %spec.select, %.else ]
  %.sroa.0.0.insert.ext = zext i32 %i.de to i64
  store i64 %.sroa.0.0.insert.ext, ptr %i.cs, align 8, !tbaa !219
  br label %._crit_edge44.thread

._crit_edge44.thread:                             ; preds = %bb.d, %._crit_edge, %.cont
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local { ptr, i64 } @_ZN3tev11ImageViewer15nthVisibleGroupEm(ptr noundef nonnull align 16 dereferenceable(1408) %0, i64 noundef %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !418  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !395
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !396  ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 3                   ; 2 uses
  %i.k = trunc i64 %i.j to i32                    ; 5 uses
  %i.l = add i64 %1, 1                            ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.n = load i8, ptr %i.m, align 16              ; 2 uses
  %i.o = trunc i8 %i.n to i1                      ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.q = load ptr, ptr %i.p, align 16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1121
  %i.s = select i1 %i.o, ptr %i.q, ptr %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.u = load i64, ptr %i.t, align 8
  %i.v = lshr i8 %i.n, 1
  %i.w = zext nneg i8 %i.v to i64
  %i.x = select i1 %i.o, i64 %i.u, i64 %i.w
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.s, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %i.x, 1 ; 2 uses
  %i.y = icmp eq i32 %i.k, 0
  br i1 %i.y, label %"_ZNSt3__16ranges9take_viewINS0_14transform_viewB10llvm18_nuaINS0_11filter_viewB10llvm18_nuaINS0_9iota_viewIiiEEZN3tev11ImageViewer15nthVisibleGroupEmE3$_0EEZNS7_15nthVisibleGroupEmE3$_1EEE5beginB8ne180100EvQnt13__simple_viewIT_E.exit", label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.a
  %zext = and i64 %i.j, 4294967295
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %bb.b
  %indvars.iv.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i, %bb.b ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i.i.i.i.i.i.i
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !397, !noalias !1202
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 104
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !232, !range !330, !noalias !1202, !noundef !384
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %._crit_edge.loopexit.split.loop.exit.i.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %indvars.iv.next.i.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i, 1 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN3tev11ImageViewer11removeImageENSt3__110shared_ptrINS_5ImageEEE:bb.a
bb.as:                                            ; preds = %bb.aj, %bb.ai
  %.pn = phi { ptr, i32 } [ %i.ey, %bb.ai ], [ %i.ez, %bb.aj ]
  call void @_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3tev11ImageViewer9nextImageERKNSt3__110shared_ptrINS_5ImageEEENS_10EDirectionE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::__1::shared_ptr.35") align 8 captures(none) %0, ptr noundef nonnull align 16 dereferenceable(1408) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, i32 noundef %3) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 872 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !504  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 880
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !505 ; 4 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %.lr.ph.i.i.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.f = icmp eq i32 %3, 0
  %i.g = select i1 %i.f, i32 1, i32 -1
  %i.h = load ptr, ptr %2, align 8, !tbaa !438
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i.i ], [ %i.k, %bb.d ] ; 3 uses
  %i.i = load ptr, ptr %.08.i.i.i.i, align 8, !tbaa !438
  %i.j = icmp eq ptr %i.i, %i.h
  br i1 %i.j, label %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.d
  br i1 %.not.i.i.i.i, label %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit, label %bb.c, !llvm.loop !11

_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit: ; preds = %bb.c, %bb.d
  %.0.lcssa.i.i.i.i.ph = phi ptr [ %i.d, %bb.d ], [ %.08.i.i.i.i, %bb.c ]
  %i.l = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.m = ptrtoint ptr %.0.lcssa.i.i.i.i.ph to i64
  %i.n = sub i64 %i.m, %i.l                       ; 2 uses
  %i.o = lshr exact i64 %i.n, 4
  %i.p = ptrtoint ptr %i.d to i64
  %i.q = sub i64 %i.p, %i.l                       ; 2 uses
  %.not.i = icmp ult i64 %i.n, %i.q
  %i.r = trunc i64 %i.o to i32
  %i.s = select i1 %.not.i, i32 %i.r, i32 0       ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 1080
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !416  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !395
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !396  ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = lshr exact i64 %i.ab, 3
  %i.ad = trunc i64 %i.ac to i32                  ; 2 uses
  %invariant.op = add i32 %i.g, %i.ad
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit
  %.0 = phi i32 [ %i.s, %_ZNK3tev11ImageViewer7imageIdERKNSt3__110shared_ptrINS_5ImageEEE.exit ], [ %i.ae, %bb.e ]
  %.reass = add i32 %.0, %invariant.op
  %i.ae = srem i32 %.reass, %i.ad                 ; 3 uses
  %i.af = sext i32 %i.ae to i64                   ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !397
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 104
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !232, !range !330, !noundef !384
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = icmp eq i32 %i.ae, %i.s
  %.not9 = or i1 %i.al, %i.ak
  br i1 %.not9, label %bb.f, label %bb.e, !llvm.loop !26

bb.f:                                             ; preds = %bb.e
  %i.am = ashr exact i64 %i.q, 4
  %.not.i10 = icmp ugt i64 %i.am, %i.af
  br i1 %.not.i10, label %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE2atEm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNKSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE20__throw_out_of_rangeB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #49
  unreachable

_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE2atEm.exit: ; preds = %bb.f
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.af ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !506 ; 2 uses
  %i.aq = load <2 x ptr>, ptr %i.an, align 8, !tbaa !215
  store <2 x ptr> %i.aq, ptr %0, align 8, !tbaa !215
  %.not.i11 = icmp eq ptr %i.ap, null
  br i1 %.not.i11, label %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE2atEm.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.as = atomicrmw add ptr %i.ar, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit

_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit: ; preds = %bb.h, %_ZNSt3__16vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS4_EEE2atEm.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local { ptr, i64 } @_ZN3tev11ImageViewer9nextGroupENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEENS_10EDirectionE(ptr noundef nonnull align 16 dereferenceable(1408) %0, ptr nofree readonly captures(none) %1, i64 %2, i32 noundef %3) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !418  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !395
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !396  ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 3
  %i.k = trunc i64 %i.j to i32                    ; 3 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.n = load i8, ptr %i.m, align 16              ; 2 uses
  %i.o = trunc i8 %i.n to i1                      ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.q = load ptr, ptr %i.p, align 16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1121
  %i.s = select i1 %i.o, ptr %i.q, ptr %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.u = load i64, ptr %i.t, align 8
  %i.v = lshr i8 %i.n, 1
  %i.w = zext nneg i8 %i.v to i64
  %i.x = select i1 %i.o, i64 %i.u, i64 %i.w
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.s, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %i.x, 1
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.y = icmp eq i32 %3, 0
  %i.z = select i1 %i.y, i32 1, i32 -1
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !438 ; 3 uses
  %.not14.i = icmp eq ptr %i.ab, null
  br i1 %.not14.i, label %_ZNK3tev11ImageViewer7groupIdENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 416
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !507 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 424
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !508 ; 3 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64               ; 3 uses
  %i.ai = sub i64 %i.ag, %i.ah                    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ai
  %.not2.i.i.i.i = icmp eq ptr %i.af, %i.ad
  br i1 %.not2.i.i.i.i, label %"_ZNKSt3__16ranges6__find4__fnclB8ne180100ITkNS0_11input_rangeERKNS_4spanIKN3tev12ChannelGroupELm18446744073709551615EEENS_17basic_string_viewIcNS_11char_traitsIcEEEEZNKS5_11ImageViewer7groupIdESE_E3$_0Q25indirect_binary_predicateINS0_8equal_toENS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENS_7_IfImplIX14borrowed_rangeISK_EEE7_SelectISM_NS0_8danglingEEEOSK_RSR_SN_.exit.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i
  %.03.i.i.i.i = phi ptr [ %i.aw, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i ], [ %i.ad, %bb.d ] ; 6 uses
  %i.ak = load i8, ptr %.03.i.i.i.i, align 8      ; 2 uses
  %i.al = trunc i8 %i.ak to i1                    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i, i64 8
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = lshr i8 %i.ak, 1
  %i.ap = zext nneg i8 %i.ao to i64
  %i.aq = select i1 %i.al, i64 %i.an, i64 %i.ap
  %.not.i.i.i.i.i = icmp eq i64 %i.aq, %2
  br i1 %.not.i.i.i.i.i, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i.i, label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i, i64 1
  %i.au = select i1 %i.al, ptr %i.as, ptr %i.at
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %i.au, ptr readonly %1, i64 %2)
  %i.av = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.av, label %"_ZNKSt3__16ranges6__find4__fnclB8ne180100ITkNS0_11input_rangeERKNS_4spanIKN3tev12ChannelGroupELm18446744073709551615EEENS_17basic_string_viewIcNS_11char_traitsIcEEEEZNKS5_11ImageViewer7groupIdESE_E3$_0Q25indirect_binary_predicateINS0_8equal_toENS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENS_7_IfImplIX14borrowed_rangeISK_EEE7_SelectISM_NS0_8danglingEEEOSK_RSR_SN_.exit.loopexit.i", label %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i

_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i: ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aw, %i.af
  br i1 %.not.i.i.i.i, label %"_ZNKSt3__16ranges6__find4__fnclB8ne180100ITkNS0_11input_rangeERKNS_4spanIKN3tev12ChannelGroupELm18446744073709551615EEENS_17basic_string_viewIcNS_11char_traitsIcEEEEZNKS5_11ImageViewer7groupIdESE_E3$_0Q25indirect_binary_predicateINS0_8equal_toENS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENS_7_IfImplIX14borrowed_rangeISK_EEE7_SelectISM_NS0_8danglingEEEOSK_RSR_SN_.exit.loopexit.i", label %.lr.ph.i.i.i.i, !llvm.loop !21

"_ZNKSt3__16ranges6__find4__fnclB8ne180100ITkNS0_11input_rangeERKNS_4spanIKN3tev12ChannelGroupELm18446744073709551615EEENS_17basic_string_viewIcNS_11char_traitsIcEEEEZNKS5_11ImageViewer7groupIdESE_E3$_0Q25indirect_binary_predicateINS0_8equal_toENS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENS_7_IfImplIX14borrowed_rangeISK_EEE7_SelectISM_NS0_8danglingEEEOSK_RSR_SN_.exit.loopexit.i": ; preds = %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i.i
  %.0.lcssa.i.i.i.ph.i = phi ptr [ %.03.i.i.i.i, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.i.i.i.i ], [ %i.aj, %_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE.exit.thread.i.i.i.i ]
  %.pre.i = ptrtoint ptr %.0.lcssa.i.i.i.ph.i to i64
  br label %"_ZNKSt3__16ranges6__find4__fnclB8ne180100ITkNS0_11input_rangeERKNS_4spanIKN3tev12ChannelGroupELm18446744073709551615EEENS_17basic_string_viewIcNS_11char_traitsIcEEEEZNKS5_11ImageViewer7groupIdESE_E3$_0Q25indirect_binary_predicateINS0_8equal_toENS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENS_7_IfImplIX14borrowed_rangeISK_EEE7_SelectISM_NS0_8danglingEEEOSK_RSR_SN_.exit.i"

"_ZNKSt3__16ranges6__find4__fnclB8ne180100ITkNS0_11input_rangeERKNS_4spanIKN3tev12ChannelGroupELm18446744073709551615EEENS_17basic_string_viewIcNS_11char_traitsIcEEEEZNKS5_11ImageViewer7groupIdESE_E3$_0Q25indirect_binary_predicateINS0_8equal_toENS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENS_7_IfImplIX14borrowed_rangeISK_EEE7_SelectISM_NS0_8danglingEEEOSK_RSR_SN_.exit.i": ; preds = %"_ZNKSt3__16ranges6__find4__fnclB8ne180100ITkNS0_11input_rangeERKNS_4spanIKN3tev12ChannelGroupELm18446744073709551615EEENS_17basic_string_viewIcNS_11char_traitsIcEEEEZNKS5_11ImageViewer7groupIdESE_E3$_0Q25indirect_binary_predicateINS0_8equal_toENS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENS_7_IfImplIX14borrowed_rangeISK_EEE7_SelectISM_NS0_8danglingEEEOSK_RSR_SN_.exit.loopexit.i", %bb.d
  %.pre-phi.i = phi i64 [ %.pre.i, %"_ZNKSt3__16ranges6__find4__fnclB8ne180100ITkNS0_11input_rangeERKNS_4spanIKN3tev12ChannelGroupELm18446744073709551615EEENS_17basic_string_viewIcNS_11char_traitsIcEEEEZNKS5_11ImageViewer7groupIdESE_E3$_0Q25indirect_binary_predicateINS0_8equal_toENS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENS_7_IfImplIX14borrowed_rangeISK_EEE7_SelectISM_NS0_8danglingEEEOSK_RSR_SN_.exit.loopexit.i" ], [ %i.ah, %bb.d ]
  %i.ax = sub i64 %.pre-phi.i, %i.ah              ; 2 uses
  %.not.i = icmp ult i64 %i.ax, %i.ai
  br i1 %.not.i, label %bb.e, label %_ZNK3tev11ImageViewer7groupIdENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit

bb.e:                                             ; preds = %"_ZNKSt3__16ranges6__find4__fnclB8ne180100ITkNS0_11input_rangeERKNS_4spanIKN3tev12ChannelGroupELm18446744073709551615EEENS_17basic_string_viewIcNS_11char_traitsIcEEEEZNKS5_11ImageViewer7groupIdESE_E3$_0Q25indirect_binary_predicateINS0_8equal_toENS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENS_7_IfImplIX14borrowed_rangeISK_EEE7_SelectISM_NS0_8danglingEEEOSK_RSR_SN_.exit.i"
  %i.ay = sdiv exact i64 %i.ax, 48
  %i.az = trunc i64 %i.ay to i32
  br label %_ZNK3tev11ImageViewer7groupIdENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit

_ZNK3tev11ImageViewer7groupIdENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit: ; preds = %bb.c, %"_ZNKSt3__16ranges6__find4__fnclB8ne180100ITkNS0_11input_rangeERKNS_4spanIKN3tev12ChannelGroupELm18446744073709551615EEENS_17basic_string_viewIcNS_11char_traitsIcEEEEZNKS5_11ImageViewer7groupIdESE_E3$_0Q25indirect_binary_predicateINS0_8equal_toENS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENS_7_IfImplIX14borrowed_rangeISK_EEE7_SelectISM_NS0_8danglingEEEOSK_RSR_SN_.exit.i", %bb.e
  %.sroa.4.sroa.3.1.i = phi i32 [ 0, %bb.c ], [ %i.az, %bb.e ], [ 0, %"_ZNKSt3__16ranges6__find4__fnclB8ne180100ITkNS0_11input_rangeERKNS_4spanIKN3tev12ChannelGroupELm18446744073709551615EEENS_17basic_string_viewIcNS_11char_traitsIcEEEEZNKS5_11ImageViewer7groupIdESE_E3$_0Q25indirect_binary_predicateINS0_8equal_toENS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENS_7_IfImplIX14borrowed_rangeISK_EEE7_SelectISM_NS0_8danglingEEEOSK_RSR_SN_.exit.i" ] ; 2 uses
  %i.ba = add i32 %i.z, %i.k
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZNK3tev11ImageViewer7groupIdENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit
  %.0 = phi i32 [ %.sroa.4.sroa.3.1.i, %_ZNK3tev11ImageViewer7groupIdENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEE.exit ], [ %i.bc, %bb.f ]
  %i.bb = add i32 %i.ba, %.0
  %i.bc = srem i32 %i.bb, %i.k                    ; 3 uses
  %i.bd = sext i32 %i.bc to i64                   ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.bd
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !397
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 104
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !232, !range !330, !noundef !384
  %i.bi = trunc nuw i8 %i.bh to i1
  %i.bj = icmp eq i32 %i.bc, %.sroa.4.sroa.3.1.i
  %.not13 = or i1 %i.bj, %i.bi
  br i1 %.not13, label %bb.g, label %bb.f, !llvm.loop !1304

bb.g:                                             ; preds = %bb.f
  %i.bk = tail call { ptr, i64 } @_ZN3tev11ImageViewer9groupNameEm(ptr noundef nonnull align 16 dereferenceable(1408) %0, i64 noundef %i.bd)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %.pn = phi { ptr, i64 } [ %.fca.1.insert.i, %bb.b ], [ %i.bk, %bb.g ]
  ret { ptr, i64 } %.pn
}

declare void @glfwFocusWindow(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3tev11ImageViewer13draw_contentsEv(ptr noundef nonnull align 16 dereferenceable(1408) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %2 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %3 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %4 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 12 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %5 = alloca %"class.std::__1::shared_ptr.35", align 8 ; 14 uses
  %6 = alloca %"class.std::__1::basic_string", align 8 ; 9 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %7 = alloca %"class.std::__1::basic_string_view", align 8 ; 5 uses
  %8 = alloca %"class.std::__1::basic_string_view", align 8 ; 5 uses
  %9 = alloca %"class.std::__1::basic_string_view", align 8 ; 5 uses
  %10 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 12 uses
  %11 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 14 uses
  %12 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 18 uses
  %13 = alloca %"struct.fmt::v12::detail::format_arg_store.1635", align 16 ; 9 uses
  %14 = alloca %"class.std::__1::basic_ostringstream", align 8 ; 21 uses
  %15 = alloca %"class.std::__1::basic_string", align 8 ; 20 uses
  %16 = alloca %"class.std::__1::basic_string_view", align 8 ; 5 uses
  %17 = alloca %"class.std::__1::basic_string_view", align 8 ; 5 uses
  %18 = alloca %"class.std::__1::basic_string_view", align 8 ; 5 uses
  %19 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 12 uses
  %20 = alloca %"struct.fmt::v12::detail::format_arg_store.2612", align 16 ; 8 uses
  %21 = alloca %"struct.fmt::v12::detail::format_arg_store.2600", align 16 ; 6 uses
  %22 = alloca %"struct.fmt::v12::detail::format_arg_store.1635", align 16 ; 5 uses
  %23 = alloca %"class.std::__1::basic_string", align 8 ; 16 uses
  %24 = alloca %"class.std::__1::basic_string", align 8 ; 16 uses
  %25 = alloca %"class.std::__1::basic_string", align 8 ; 12 uses
  %26 = alloca %"class.std::__1::shared_ptr.35", align 16 ; 7 uses
  %27 = alloca %"class.std::__1::shared_ptr.35", align 16 ; 7 uses
  %28 = alloca %"class.std::__1::optional.437", align 8 ; 20 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %29 = alloca %"class.std::__1::shared_ptr.35", align 8 ; 6 uses
  %30 = alloca %"class.std::__1::shared_ptr.35", align 16 ; 5 uses
  %31 = alloca %"class.std::__1::shared_ptr.35", align 8 ; 4 uses
  %32 = alloca %"class.std::__1::optional.454", align 16 ; 11 uses
  %33 = alloca %"class.std::__1::shared_ptr.469", align 8 ; 7 uses
  %34 = alloca %"class.std::__1::shared_ptr.469", align 8 ; 8 uses
  %35 = alloca %"class.std::__1::shared_ptr.475", align 8 ; 9 uses
  %36 = alloca %"class.std::__1::basic_string", align 8 ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.e = load i8, ptr %i.d, align 16, !tbaa !221, !range !330, !noundef !384
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.gv

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3tev11ImageViewer23updateColorCapabilitiesEv(ptr noundef nonnull align 16 dereferenceable(1408) %0)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !350
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 496
  %i.j = load i32, ptr %i.i, align 16, !tbaa !446
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !337
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !225
  %i.p = tail call float @glfwGetWindowSdrWhiteLevel(ptr noundef %i.o)
  tail call void @_ZN7nanogui8FloatBoxIfE9set_valueEf(ptr noundef nonnull align 16 dereferenceable(488) %i.m, float noundef %i.p)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @_ZN3tev11ImageViewer24updateCurrentMonitorSizeEv(ptr noundef nonnull align 16 dereferenceable(1408) %0)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1360 ; 3 uses
  %i.r = load i32, ptr %i.q, align 16, !tbaa !420 ; 2 uses
  %i.s = icmp slt i32 %i.r, 3
  br i1 %i.s, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1394
  %i.u = load i8, ptr %i.t, align 2, !tbaa !223, !range !330, !noundef !384
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %_ZN3tev11ImageViewer11isMaximizedEv.exit.thread, label %_ZN3tev11ImageViewer11isMaximizedEv.exit

_ZN3tev11ImageViewer11isMaximizedEv.exit:         ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !225
  %i.y = tail call i32 @glfwGetWindowAttrib(ptr noundef %i.x, i32 noundef 131080)
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %_ZN3tev11ImageViewer11isMaximizedEv.exit._ZN3tev11ImageViewer11isMaximizedEv.exit.thread_crit_edge, label %bb.l

_ZN3tev11ImageViewer11isMaximizedEv.exit._ZN3tev11ImageViewer11isMaximizedEv.exit.thread_crit_edge: ; preds = %_ZN3tev11ImageViewer11isMaximizedEv.exit
  %.pre = load i32, ptr %i.q, align 16, !tbaa !420
  br label %_ZN3tev11ImageViewer11isMaximizedEv.exit.thread

_ZN3tev11ImageViewer11isMaximizedEv.exit.thread:  ; preds = %_ZN3tev11ImageViewer11isMaximizedEv.exit._ZN3tev11ImageViewer11isMaximizedEv.exit.thread_crit_edge, %bb.e
  %i.z = phi i32 [ %.pre, %_ZN3tev11ImageViewer11isMaximizedEv.exit._ZN3tev11ImageViewer11isMaximizedEv.exit.thread_crit_edge ], [ %i.r, %bb.e ]
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.q, align 16, !tbaa !420
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 984
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !411
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 192
  %i.ae = load i8, ptr %i.ad, align 16, !tbaa !385, !range !330, !noundef !384
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.f, label %bb.l

bb.f:                                             ; preds = %_ZN3tev11ImageViewer11isMaximizedEv.exit.thread
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ah = load <2 x i32>, ptr %i.ag, align 16, !tbaa !226
  %i.ai = sitofp <2 x i32> %i.ah to <2 x float>   ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !504 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.am = load ptr, ptr %i.al, align 16, !tbaa !505 ; 2 uses
  %.not12.i = icmp eq ptr %i.ak, %i.am
  br i1 %.not12.i, label %_ZN3tev11ImageViewer18sizeToFitAllImagesEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ao = load <1 x float>, ptr %i.an, align 16
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.aq = load ptr, ptr %i.ap, align 16           ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 104
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 104
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 60
  %i.ax = shufflevector <1 x float> %i.ao, <1 x float> poison, <2 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %_ZN3tev11ImageViewer14sizeToFitImageERKNSt3__110shared_ptrINS_5ImageEEE.exit.i, %.lr.ph.i
  %.sroa.05.014.i = phi ptr [ %i.ak, %.lr.ph.i ], [ %i.bu, %_ZN3tev11ImageViewer14sizeToFitImageERKNSt3__110shared_ptrINS_5ImageEEE.exit.i ] ; 2 uses
  %.sroa.08.013.i = phi <2 x float> [ %i.ai, %.lr.ph.i ], [ %i.bt, %_ZN3tev11ImageViewer14sizeToFitImageERKNSt3__110shared_ptrINS_5ImageEEE.exit.i ] ; 2 uses
  %i.ay = load ptr, ptr %.sroa.05.014.i, align 8, !tbaa !438 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i, label %_ZN3tev11ImageViewer14sizeToFitImageERKNSt3__110shared_ptrINS_5ImageEEE.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 376
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 384
  %i.bb = load <2 x i32>, ptr %i.ba, align 4, !tbaa !226
  %i.bc = load <2 x i32>, ptr %i.az, align 4, !tbaa !226
  %i.bd = sub nsw <2 x i32> %i.bb, %i.bc
  %i.be = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.bd, <2 x i32> zeroinitializer)
  %i.bf = uitofp nneg <2 x i32> %i.be to <2 x float>
  %i.bg = fdiv <2 x float> %i.bf, %i.ax           ; 3 uses
  %i.bh = load i8, ptr %i.ar, align 8, !tbaa !232, !range !330, !noundef !384
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bj = load i32, ptr %i.as, align 8, !tbaa !226
  %i.bk = sitofp i32 %i.bj to float
  %i.bl = extractelement <2 x float> %i.bg, i64 0
  %i.bm = fadd float %i.bl, %i.bk
  %.sroa.07.0.vec.insert10.i.i = insertelement <2 x float> %i.bg, float %i.bm, i64 0
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.07.0.i.i = phi <2 x float> [ %.sroa.07.0.vec.insert10.i.i, %bb.i ], [ %i.bg, %bb.h ] ; 3 uses
  %i.bn = load i8, ptr %i.av, align 8, !tbaa !232, !range !330, !noundef !384
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.k, label %_ZN3tev11ImageViewer14sizeToFitImageERKNSt3__110shared_ptrINS_5ImageEEE.exit.i

bb.k:                                             ; preds = %bb.j
  %i.bp = load i32, ptr %i.aw, align 4, !tbaa !226
  %i.bq = sitofp i32 %i.bp to float
  %.sroa.07.4.vec.extract.i.i = extractelement <2 x float> %.sroa.07.0.i.i, i64 1
  %i.br = fadd float %.sroa.07.4.vec.extract.i.i, %i.bq
  %.sroa.07.4.vec.insert13.i.i = insertelement <2 x float> %.sroa.07.0.i.i, float %i.br, i64 1
  br label %_ZN3tev11ImageViewer14sizeToFitImageERKNSt3__110shared_ptrINS_5ImageEEE.exit.i

_ZN3tev11ImageViewer14sizeToFitImageERKNSt3__110shared_ptrINS_5ImageEEE.exit.i: ; preds = %bb.k, %bb.j, %bb.g
  %.sroa.07.1.i.i = phi <2 x float> [ %.sroa.07.4.vec.insert13.i.i, %bb.k ], [ %.sroa.07.0.i.i, %bb.j ], [ %i.ai, %bb.g ] ; 2 uses
  %i.bs = fcmp olt <2 x float> %.sroa.08.013.i, %.sroa.07.1.i.i
  %i.bt = select <2 x i1> %i.bs, <2 x float> %.sroa.07.1.i.i, <2 x float> %.sroa.08.013.i ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN3tev11ImageViewer13draw_contentsEv:bb.a
_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit148.peel: ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit148.peel.sink.split, %bb.du, %bb.dt, %bb.dn, %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit146.peel
  %i.yg = getelementptr inbounds nuw i8, ptr %i.wk, i64 16 ; 2 uses
  %.not287.peel = icmp eq ptr %i.yg, %i.wl
  br i1 %.not287.peel, label %.loopexit289, label %.lr.ph334

.lr.ph334:                                        ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit148.peel, %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit148
  %.sroa.0243.0332 = phi ptr [ %i.aaa, %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit148 ], [ %i.yg, %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit148.peel ] ; 5 uses
  %i.yh = load ptr, ptr %i.vd, align 8, !tbaa !438 ; 2 uses
  %.not288.a = icmp eq ptr %i.yh, null
  br i1 %.not288.a, label %bb.ec, label %bb.dv

bb.dv:                                            ; preds = %.lr.ph334
  store ptr %i.yh, ptr %29, align 8, !tbaa !438
  %i.yi = load ptr, ptr %i.vf, align 8, !tbaa !506 ; 3 uses
  store ptr %i.yi, ptr %i.ve, align 8, !tbaa !506
  %.not.i142 = icmp eq ptr %i.yi, null
  br i1 %.not.i142, label %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 8
  %i.yk = atomicrmw add ptr %i.yj, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit

_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit: ; preds = %bb.dv, %bb.dw
  %i.yl = getelementptr inbounds nuw i8, ptr %.sroa.0243.0332, i64 8
  %i.ym = load ptr, ptr %i.yl, align 8, !tbaa !506 ; 6 uses
  %i.yn = load <2 x ptr>, ptr %.sroa.0243.0332, align 8, !tbaa !215
  store <2 x ptr> %i.yn, ptr %30, align 16, !tbaa !215
  %.not.i143 = icmp eq ptr %i.ym, null            ; 2 uses
  br i1 %.not.i143, label %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit144, label %bb.dx

bb.dx:                                            ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit
  %i.yo = getelementptr inbounds nuw i8, ptr %i.ym, i64 8
  %i.yp = atomicrmw add ptr %i.yo, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit144

_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit144: ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit, %bb.dx
  invoke void @_ZN3tev11ImageViewer12replaceImageENSt3__110shared_ptrINS_5ImageEEES4_b(ptr noundef nonnull align 16 dereferenceable(1408) %0, ptr nofree noundef nonnull align 8 dereferenceable(16) %29, ptr nofree noundef nonnull align 8 dereferenceable(16) %30, i1 noundef zeroext false)
          to label %bb.dy unwind label %.loopexit.split-lp362.loopexit.split-lp.loopexit.split-lp

bb.dy:                                            ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit144
  br i1 %.not.i143, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit146, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.yq = getelementptr inbounds nuw i8, ptr %i.ym, i64 8
  %i.yr = atomicrmw add ptr %i.yq, i64 -1 acq_rel, align 8
  %i.ys = icmp eq i64 %i.yr, 0
  br i1 %i.ys, label %bb.ea, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit146

bb.ea:                                            ; preds = %bb.dz
  %i.yt = load ptr, ptr %i.ym, align 8, !tbaa !88
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 16
  %i.yv = load ptr, ptr %i.yu, align 8
  call void %i.yv(ptr noundef nonnull align 8 dereferenceable(24) %i.ym) #46, !inline_history !13
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ym) #46
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit146

_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit146: ; preds = %bb.dy, %bb.dz, %bb.ea
  %i.yw = load ptr, ptr %i.ve, align 8, !tbaa !506 ; 3 uses
  %.not.i147 = icmp eq ptr %i.yw, null
  br i1 %.not.i147, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit148, label %bb.eb

bb.eb:                                            ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit146
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 8
  %i.yy = atomicrmw add ptr %i.yx, i64 -1 acq_rel, align 8
  %i.yz = icmp eq i64 %i.yy, 0
  br i1 %i.yz, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit148.sink.split, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit148

.loopexit.split-lp362.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit144, %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit144.peel
  %lpad.loopexit.split-lp500 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %30) #46
  call void @_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %29) #46
  br label %bb.ej

bb.ec:                                            ; preds = %.lr.ph334
  %i.za = load ptr, ptr %.sroa.0243.0332, align 8, !tbaa !438 ; 3 uses
  store ptr %i.za, ptr %31, align 8, !tbaa !438
  %i.zb = getelementptr inbounds nuw i8, ptr %.sroa.0243.0332, i64 8
  %i.zc = load ptr, ptr %i.zb, align 8, !tbaa !506 ; 4 uses
  store ptr %i.zc, ptr %i.vg, align 8, !tbaa !506
  %.not.i149 = icmp eq ptr %i.zc, null
  br i1 %.not.i149, label %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit150.thread, label %bb.ed

_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit150.thread: ; preds = %bb.ec
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.za, ptr %5, align 8, !tbaa !438
  store ptr null, ptr %i.vh, align 8, !tbaa !506
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i

bb.ed:                                            ; preds = %bb.ec
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 8 ; 2 uses
  %i.ze = atomicrmw add ptr %i.zd, i64 1 monotonic, align 8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.za, ptr %5, align 8, !tbaa !438
  store ptr %i.zc, ptr %i.vh, align 8, !tbaa !506
  %i.zf = atomicrmw add ptr %i.zd, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i

_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i: ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit150.thread, %bb.ed
  %i.zg = load ptr, ptr %i.vj, align 16, !tbaa !505
  %i.zh = load ptr, ptr %i.vi, align 8, !tbaa !504
  %i.zi = ptrtoint ptr %i.zg to i64
  %i.zj = ptrtoint ptr %i.zh to i64
  %i.zk = sub i64 %i.zi, %i.zj
  %i.zl = ashr exact i64 %i.zk, 4
  invoke void @_ZN3tev11ImageViewer11insertImageENSt3__110shared_ptrINS_5ImageEEEmb(ptr noundef nonnull align 16 dereferenceable(1408) %0, ptr nofree noundef nonnull align 8 dereferenceable(16) %5, i64 noundef %i.zl, i1 noundef zeroext false)
          to label %bb.ee unwind label %.body152.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ee:                                            ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i
  %i.zm = load ptr, ptr %i.vh, align 8, !tbaa !506 ; 5 uses
  %.not.i3.i = icmp eq ptr %i.zm, null
  br i1 %.not.i3.i, label %bb.eh, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zm, i64 8
  %i.zo = atomicrmw add ptr %i.zn, i64 -1 acq_rel, align 8
  %i.zp = icmp eq i64 %i.zo, 0
  br i1 %i.zp, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.zq = load ptr, ptr %i.zm, align 8, !tbaa !88
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 16
  %i.zs = load ptr, ptr %i.zr, align 8
  call void %i.zs(ptr noundef nonnull align 8 dereferenceable(24) %i.zm) #46, !inline_history !25
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.zm) #46
  br label %bb.eh

.body152.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i, %_ZNSt3__110shared_ptrIN3tev5ImageEEC2B8ne180100ERKS3_.exit.i.peel
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #46
  call void @_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %31) #46
  br label %bb.ej

bb.eh:                                            ; preds = %bb.eg, %bb.ef, %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.zt = load ptr, ptr %i.vg, align 8, !tbaa !506 ; 3 uses
  %.not.i154 = icmp eq ptr %i.zt, null
  br i1 %.not.i154, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit148, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 8
  %i.zv = atomicrmw add ptr %i.zu, i64 -1 acq_rel, align 8
  %i.zw = icmp eq i64 %i.zv, 0
  br i1 %i.zw, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit148.sink.split, label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit148

_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit148.sink.split: ; preds = %bb.ei, %bb.eb
  %.sink474 = phi ptr [ %i.yw, %bb.eb ], [ %i.zt, %bb.ei ] ; 3 uses
  %i.zx = load ptr, ptr %.sink474, align 8, !tbaa !88
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zx, i64 16
  %i.zz = load ptr, ptr %i.zy, align 8
  call void %i.zz(ptr noundef nonnull align 8 dereferenceable(24) %.sink474) #46
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %.sink474) #46
  br label %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit148

_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit148: ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit148.sink.split, %bb.ei, %bb.eh, %bb.eb, %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit146
  %i.aaa = getelementptr inbounds nuw i8, ptr %.sroa.0243.0332, i64 16 ; 2 uses
  %.not287.a = icmp eq ptr %i.aaa, %i.wl
  br i1 %.not287.a, label %.loopexit289, label %.lr.ph334, !llvm.loop !1356

.loopexit289:                                     ; preds = %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit148, %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit148.peel, %bb.dg, %bb.de
  %.163 = phi i1 [ %.062335, %bb.de ], [ true, %bb.dg ], [ true, %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit148.peel ], [ true, %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit148 ] ; 3 uses
  %.161 = phi i8 [ %.060336, %bb.de ], [ %i.wj, %bb.dg ], [ %i.wj, %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit148.peel ], [ %i.wj, %_ZNSt3__110shared_ptrIN3tev5ImageEED2B8ne180100Ev.exit148 ] ; 2 uses
  call void @_ZNSt3__124__optional_destruct_baseIN3tev13ImageAdditionELb0EED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(57) dereferenceable(57) %28) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #46
  %i.aab = load ptr, ptr %i.bv, align 16, !tbaa !523
  call void @_ZN3tev22BackgroundImagesLoader6tryPopEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::optional.437") align 8 %28, ptr noundef nonnull align 8 dereferenceable(300) %i.aab)
  %i.aac = load i8, ptr %i.uu, align 8, !tbaa !572, !range !330, !noundef !384
  %i.aad = trunc nuw i8 %i.aac to i1
  br i1 %i.aad, label %bb.cw, label %._crit_edge

bb.ej:                                            ; preds = %.loopexit.split-lp362.loopexit.split-lp.loopexit.split-lp, %.body152.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body139
  %.pn79.pn = phi { ptr, i32 } [ %eh.lpad-body140, %.body139 ], [ %lpad.loopexit.split-lp500, %.loopexit.split-lp362.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.body152.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt3__124__optional_destruct_baseIN3tev13ImageAdditionELb0EED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(57) dereferenceable(57) %28) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #46
  br label %common.resume

._crit_edge:                                      ; preds = %.loopexit289
  %i.aae = trunc nuw i8 %.161 to i1
  call void @_ZNSt3__124__optional_destruct_baseIN3tev13ImageAdditionELb0EED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(57) dereferenceable(57) %28) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #46
  br i1 %i.aae, label %.split, label %bb.ek

.split:                                           ; preds = %._crit_edge
  %i.aaf = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.aag = load ptr, ptr %i.aaf, align 8, !tbaa !225
  call void @glfwFocusWindow(ptr noundef %i.aag)
  br i1 %.163, label %bb.el, label %bb.em

bb.ek:                                            ; preds = %._crit_edge
  br i1 %.163, label %bb.el, label %bb.em

bb.el:                                            ; preds = %.split, %bb.ek
  call void @_ZN7nanogui6Screen6redrawEv(ptr noundef nonnull align 16 dereferenceable(520) %0)
  br label %bb.em

bb.em:                                            ; preds = %.split, %.thread, %bb.el, %bb.ek
  %i.aah = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %37 = getelementptr inbounds nuw i8, ptr %32, i64 48 ; 4 uses
  %38 = getelementptr inbounds nuw i8, ptr %32, i64 32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #46
  call void @_ZN3tev11SharedQueueINSt3__18functionIFvvEEEE6tryPopEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::optional.454") align 16 %32, ptr noundef nonnull align 8 dereferenceable(136) %i.aah)
  %i.aai = load i8, ptr %37, align 16, !tbaa !574, !range !330, !noundef !384
  %i.aaj = trunc nuw i8 %i.aai to i1
  br i1 %i.aaj, label %.lr.ph495, label %._crit_edge496

.lr.ph495:                                        ; preds = %bb.em, %_ZNSt3__124__optional_destruct_baseINS_8functionIFvvEEELb0EED2B8ne180100Ev.exit
  %i.aak = load ptr, ptr %38, align 16, !tbaa !323 ; 3 uses
  %i.aal = icmp eq ptr %i.aak, null
  br i1 %i.aal, label %bb.en, label %_ZNKSt3__110__function12__value_funcIFvvEEclB8ne180100Ev.exit.i

bb.en:                                            ; preds = %.lr.ph495
  invoke void @_ZNSt3__125__throw_bad_function_callB8ne180100Ev() #49
          to label %.noexc156 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc156:                                        ; preds = %bb.en
  unreachable

_ZNKSt3__110__function12__value_funcIFvvEEclB8ne180100Ev.exit.i: ; preds = %.lr.ph495
  %i.aam = load ptr, ptr %i.aak, align 8, !tbaa !88
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aam, i64 48
  %i.aao = load ptr, ptr %i.aan, align 8
  invoke void %i.aao(ptr noundef nonnull align 8 dereferenceable(8) %i.aak)
          to label %_ZNKSt3__18functionIFvvEEclEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !1357

_ZNKSt3__18functionIFvvEEclEv.exit:               ; preds = %_ZNKSt3__110__function12__value_funcIFvvEEclB8ne180100Ev.exit.i
  %.pre369 = load i8, ptr %37, align 16, !tbaa !574, !range !330
  %i.aap = trunc nuw i8 %.pre369 to i1
  br i1 %i.aap, label %bb.eo, label %_ZNSt3__124__optional_destruct_baseINS_8functionIFvvEEELb0EED2B8ne180100Ev.exit

bb.eo:                                            ; preds = %_ZNKSt3__18functionIFvvEEclEv.exit
  %i.aaq = load ptr, ptr %38, align 16, !tbaa !323 ; 4 uses
  %i.aar = icmp eq ptr %i.aaq, %32
  br i1 %i.aar, label %.sink.split.i.i.i, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %.not.i.i.i158 = icmp eq ptr %i.aaq, null
  br i1 %.not.i.i.i158, label %_ZNSt3__124__optional_destruct_baseINS_8functionIFvvEEELb0EED2B8ne180100Ev.exit, label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.ep, %bb.eo
  %.sink2.i.i.i = phi i64 [ 32, %bb.eo ], [ 40, %bb.ep ]
  %i.aas = load ptr, ptr %i.aaq, align 8, !tbaa !88
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aas, i64 %.sink2.i.i.i
  %i.aau = load ptr, ptr %i.aat, align 8
  call void %i.aau(ptr noundef nonnull align 8 dereferenceable(8) %i.aaq) #46, !inline_history !1358
  br label %_ZNSt3__124__optional_destruct_baseINS_8functionIFvvEEELb0EED2B8ne180100Ev.exit

_ZNSt3__124__optional_destruct_baseINS_8functionIFvvEEELb0EED2B8ne180100Ev.exit: ; preds = %_ZNKSt3__18functionIFvvEEclEv.exit, %bb.ep, %.sink.split.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #46
  call void @_ZN3tev11SharedQueueINSt3__18functionIFvvEEEE6tryPopEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::optional.454") align 16 %32, ptr noundef nonnull align 8 dereferenceable(136) %i.aah)
  %i.aav = load i8, ptr %37, align 16, !tbaa !574, !range !330, !noundef !384
  %i.aaw = trunc nuw i8 %i.aav to i1
  br i1 %i.aaw, label %.lr.ph495, label %._crit_edge496

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt3__110__function12__value_funcIFvvEEclB8ne180100Ev.exit.i, %bb.en
  %lpad.loopexit.split-lp497 = landingpad { ptr, i32 }
          cleanup
  %i.aax = load i8, ptr %37, align 16, !tbaa !574, !range !330, !noundef !384
  %i.aay = trunc nuw i8 %i.aax to i1
  br i1 %i.aay, label %bb.eq, label %_ZNSt3__124__optional_destruct_baseINS_8functionIFvvEEELb0EED2B8ne180100Ev.exit162

bb.eq:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.aaz = load ptr, ptr %38, align 16, !tbaa !323 ; 4 uses
  %i.aba = icmp eq ptr %i.aaz, %32
  br i1 %i.aba, label %.sink.split.i.i.i160, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %.not.i.i.i159 = icmp eq ptr %i.aaz, null
  br i1 %.not.i.i.i159, label %_ZNSt3__124__optional_destruct_baseINS_8functionIFvvEEELb0EED2B8ne180100Ev.exit162, label %.sink.split.i.i.i160

.sink.split.i.i.i160:                             ; preds = %bb.er, %bb.eq
  %.sink2.i.i.i161 = phi i64 [ 32, %bb.eq ], [ 40, %bb.er ]
  %i.abb = load ptr, ptr %i.aaz, align 8, !tbaa !88
  %i.abc = getelementptr inbounds nuw i8, ptr %i.abb, i64 %.sink2.i.i.i161
  %i.abd = load ptr, ptr %i.abc, align 8
  call void %i.abd(ptr noundef nonnull align 8 dereferenceable(8) %i.aaz) #46, !inline_history !1358
  br label %_ZNSt3__124__optional_destruct_baseINS_8functionIFvvEEELb0EED2B8ne180100Ev.exit162

_ZNSt3__124__optional_destruct_baseINS_8functionIFvvEEELb0EED2B8ne180100Ev.exit162: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.er, %.sink.split.i.i.i160
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #46
  br label %common.resume

._crit_edge496:                                   ; preds = %_ZNSt3__124__optional_destruct_baseINS_8functionIFvvEEELb0EED2B8ne180100Ev.exit, %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #46
  %i.abe = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.abf = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.abg = load ptr, ptr %i.abf, align 8, !tbaa !518 ; 2 uses
  %.not282339 = icmp eq ptr %i.abg, null
  br i1 %.not282339, label %._crit_edge343, label %.lr.ph342.a

.lr.ph342.a:                                      ; preds = %._crit_edge496
  %i.abh = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.abi = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.abj = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.abk = getelementptr inbounds nuw i8, ptr %33, i64 8
  br label %bb.es

._crit_edge343:                                   ; preds = %bb.fb, %._crit_edge496
  %i.abl = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  %i.abm = load i8, ptr %i.abl, align 16, !tbaa !212, !range !330, !noundef !384
  %i.abn = trunc nuw i8 %i.abm to i1
  br i1 %i.abn, label %bb.fc, label %bb.fd

bb.es:                                            ; preds = %.lr.ph342.a, %bb.fb
  %.sroa.0238.0340 = phi ptr [ %i.abg, %.lr.ph342.a ], [ %.sroa.0238.1, %bb.fb ] ; 4 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %.sroa.0238.0340, i64 16 ; 2 uses
  %i.abp = load ptr, ptr %i.abo, align 8, !tbaa !438 ; 3 uses
  %i.abq = load ptr, ptr %i.abh, align 8, !tbaa !438
  %i.abr = icmp eq ptr %i.abp, %i.abq
  br i1 %i.abr, label %.thread279, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.abs = load ptr, ptr %i.abi, align 8, !tbaa !438
  %i.abt = icmp eq ptr %i.abp, %i.abs
  br i1 %i.abt, label %.thread279, label %.critedge.thread

.thread279:                                       ; preds = %bb.es, %bb.et
  %i.abu = call i64 @_ZNSt3__16chrono12steady_clock3nowEv() #46
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #46
  %i.abv = load ptr, ptr %i.abj, align 16, !tbaa !248
  call void @_ZN3tev11ImageCanvas16canvasStatisticsEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::shared_ptr.469") align 8 %33, ptr noundef nonnull align 8 dereferenceable(504) %i.abv)
  %i.abw = load ptr, ptr %33, align 8, !tbaa !1409 ; 2 uses
  %i.abx = invoke noundef zeroext i1 @_ZNK3tev4LazyINSt3__110shared_ptrINS_16CanvasStatisticsEEEE7isReadyEv(ptr noundef nonnull align 16 dereferenceable(104) %i.abw)
          to label %.noexc163 unwind label %bb.ez

.noexc163:                                        ; preds = %.thread279
  br i1 %i.abx, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %.noexc163
  %i.aby = call i64 @_ZNSt3__16chrono12steady_clock3nowEv() #46
  br label %bb.ew

bb.ev:                                            ; preds = %.noexc163
  %i.abz = getelementptr inbounds nuw i8, ptr %i.abw, i64 96
  %.sroa.0.0.copyload.i = load i64, ptr %i.abz, align 16, !tbaa !373
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload.i, %bb.ev ], [ %i.aby, %bb.eu ]
  %i.aca = sub nsw i64 %i.abu, %.sroa.0.0.i
  %i.acb = icmp sgt i64 %i.aca, 200000000
  %i.acc = load ptr, ptr %i.abk, align 8, !tbaa !577 ; 5 uses
  %.not.i166 = icmp eq ptr %i.acc, null
  br i1 %.not.i166, label %.critedge, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.acd = getelementptr inbounds nuw i8, ptr %i.acc, i64 8
  %i.ace = atomicrmw add ptr %i.acd, i64 -1 acq_rel, align 8
  %i.acf = icmp eq i64 %i.ace, 0
  br i1 %i.acf, label %bb.ey, label %.critedge

bb.ey:                                            ; preds = %bb.ex
  %i.acg = load ptr, ptr %i.acc, align 8, !tbaa !88
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acg, i64 16
  %i.aci = load ptr, ptr %i.ach, align 8
  call void %i.aci(ptr noundef nonnull align 8 dereferenceable(24) %i.acc) #46, !inline_history !1359
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.acc) #46
  br label %.critedge

.critedge:                                        ; preds = %bb.ey, %bb.ex, %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #46
  br i1 %i.acb, label %.critedge..critedge.thread_crit_edge, label %bb.fa

.critedge..critedge.thread_crit_edge:             ; preds = %.critedge
  %.pre370 = load ptr, ptr %i.abo, align 8, !tbaa !438
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %.critedge..critedge.thread_crit_edge, %bb.et
  %i.acj = phi ptr [ %.pre370, %.critedge..critedge.thread_crit_edge ], [ %i.abp, %bb.et ] ; 2 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acj, i64 512 ; 2 uses
  %i.acl = load i32, ptr %i.ack, align 16, !tbaa !578
  %i.acm = atomicrmw add ptr @_ZN3tev5Image3sIdE, i32 1 seq_cst, align 4
  store i32 %i.acm, ptr %i.ack, align 16, !tbaa !578
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acj, i64 496
  %i.aco = load ptr, ptr %i.acn, align 16, !tbaa !353 ; 3 uses
  %.not.i167 = icmp eq ptr %i.aco, null
  br i1 %.not.i167, label %_ZN3tev5Image6bumpIdEv.exit, label %_ZNKSt3__18functionIFviEEclEi.exit.i

_ZNKSt3__18functionIFviEEclEi.exit.i:             ; preds = %.critedge.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.acl, ptr %i.a, align 4, !tbaa !226
  %i.acp = load ptr, ptr %i.aco, align 8, !tbaa !88
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acp, i64 48
  %i.acr = load ptr, ptr %i.acq, align 8
  call void %i.acr(ptr noundef nonnull align 8 dereferenceable(8) %i.aco, ptr noundef nonnull align 4 dereferenceable(4) %i.a), !inline_history !1360
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN3tev5Image6bumpIdEv.exit

_ZN3tev5Image6bumpIdEv.exit:                      ; preds = %.critedge.thread, %_ZNKSt3__18functionIFviEEclEi.exit.i
  %i.acs = load ptr, ptr %.sroa.0238.0340, align 8, !tbaa !518
  %i.act = call ptr @_ZNSt3__112__hash_tableINS_10shared_ptrIN3tev5ImageEEENS_4hashIS4_EENS_8equal_toIS4_EENS_9allocatorIS4_EEE5eraseENS_21__hash_const_iteratorIPNS_11__hash_nodeIS4_PvEEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.abe, ptr nonnull %.sroa.0238.0340) ; 0 uses
  br label %bb.fb

bb.ez:                                            ; preds = %.thread279
  %i.acu = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__110shared_ptrIN3tev4LazyINS0_INS1_16CanvasStatisticsEEEEEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %33) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #46
  br label %common.resume

bb.fa:                                            ; preds = %.critedge
  %i.acv = load ptr, ptr %.sroa.0238.0340, align 8, !tbaa !518
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %_ZN3tev5Image6bumpIdEv.exit
  %.sroa.0238.1 = phi ptr [ %i.acs, %_ZN3tev5Image6bumpIdEv.exit ], [ %i.acv, %bb.fa ] ; 2 uses
  %.not282 = icmp eq ptr %.sroa.0238.1, null
  br i1 %.not282, label %._crit_edge343, label %bb.es, !llvm.loop !1361

bb.fc:                                            ; preds = %._crit_edge343
  call void @_ZN3tev11ImageViewer12updateFilterEv(ptr noundef nonnull align 16 dereferenceable(1408) %0)
  store i8 0, ptr %i.abl, align 16, !tbaa !212
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %._crit_edge343
  %i.acw = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.acx = load ptr, ptr %i.acw, align 8, !tbaa !438
  %.not283 = icmp eq ptr %i.acx, null
  br i1 %.not283, label %bb.fe, label %"_ZNKSt3__16ranges8__any_of4__fnclB8ne180100ITkNS0_11input_rangeERKNS_6vectorIPN7nanogui6WidgetENS_9allocatorIS7_EEEENS_8identityETkNS_24indirect_unary_predicateINS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET0_E6__typeEEEZN3tev11ImageViewer13draw_contentsEvE3$_1EEbOSH_T1_SK_.exit"

bb.fe:                                            ; preds = %bb.fd
  %i.acy = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.acz = load ptr, ptr %i.acy, align 8, !tbaa !438
  %.not284 = icmp eq ptr %i.acz, null
  br i1 %.not284, label %bb.ff, label %"_ZNKSt3__16ranges8__any_of4__fnclB8ne180100ITkNS0_11input_rangeERKNS_6vectorIPN7nanogui6WidgetENS_9allocatorIS7_EEEENS_8identityETkNS_24indirect_unary_predicateINS_16__projected_implIDTclL_ZNS0_5__cpo5beginEEclsr3stdE7declvalIRT_EEEET0_E6__typeEEEZN3tev11ImageViewer13draw_contentsEvE3$_1EEbOSH_T1_SK_.exit"

end_hunk_2
