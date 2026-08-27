Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/3DSLoader?download=true
inline.NumInlined: 2736
inline.NumDeleted: 1010
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZSt17__merge_sort_loopIPN6Assimp4D3DS10aiFloatKeyEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEElNS4_5__ops15_Iter_less_iterEEvT_SC_T0_T1_T2_:bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_SD_T1_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #2 comdat {
bb.a:
  %5 = alloca %"struct.Assimp::D3DS::aiFloatKey", align 8 ; 4 uses
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond78 = or i1 %i.a, %i.b
  br i1 %or.cond78, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr7583 = phi i64 [ %4, %.lr.ph ], [ %i.at, %tailrecurse ] ; 4 uses
  %.tr7482 = phi i64 [ %3, %.lr.ph ], [ %i.as, %tailrecurse ] ; 4 uses
  %.tr7280 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %tailrecurse ] ; 8 uses
  %.tr79 = phi ptr [ %0, %.lr.ph ], [ %i.ar, %tailrecurse ] ; 8 uses
  %i.d = add nsw i64 %.tr7583, %.tr7482
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = load double, ptr %.tr7280, align 8
  %i.g = load double, ptr %.tr79, align 8
  %i.h = fcmp olt double %i.f, %i.g
  br i1 %i.h, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %.tr79, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.tr79, ptr noundef nonnull align 8 dereferenceable(16) %.tr7280, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.tr7280, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.i = icmp sgt i64 %.tr7482, %.tr7583
  %i.j = ptrtoint ptr %.tr7280 to i64             ; 4 uses
  br i1 %i.i, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit49

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.k = sdiv i64 %.tr7482, 2                     ; 2 uses
  %i.l = getelementptr inbounds [16 x i8], ptr %.tr79, i64 %i.k ; 2 uses
  %i.m = sub i64 %i.c, %i.j
  %i.n = ashr exact i64 %i.m, 4                   ; 2 uses
  %i.o = icmp sgt i64 %i.n, 0
  br i1 %i.o, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_less_valEET_SC_SC_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.p = load double, ptr %i.l, align 8
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.016.i = phi i64 [ %i.n, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %.sroa.011.015.i = phi ptr [ %.tr7280, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.sroa.011.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %i.q = lshr i64 %.016.i, 1                      ; 3 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %.sroa.011.015.i, i64 %i.q ; 2 uses
  %i.s = load double, ptr %i.r, align 8
  %i.t = fcmp olt double %i.s, %i.p               ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.v = xor i64 %i.q, -1
  %i.w = add nsw i64 %.016.i, %i.v
  %.sroa.011.1.i = select i1 %i.t, ptr %i.u, ptr %.sroa.011.015.i ; 3 uses
  %.1.i = select i1 %i.t, i64 %i.w, i64 %i.q      ; 2 uses
  %i.x = icmp sgt i64 %.1.i, 0
  br i1 %i.x, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_less_valEET_SC_SC_RKT0_T1_.exit.loopexit, !llvm.loop !213

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_less_valEET_SC_SC_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.sroa.011.1.i to i64
  br label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_less_valEET_SC_SC_RKT0_T1_.exit

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_less_valEET_SC_SC_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_less_valEET_SC_SC_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_less_valEET_SC_SC_RKT0_T1_.exit.loopexit ], [ %i.j, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.011.0.lcssa.i = phi ptr [ %.sroa.011.1.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_less_valEET_SC_SC_RKT0_T1_.exit.loopexit ], [ %.tr7280, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.y = sub i64 %.pre-phi, %i.j
  %i.z = ashr exact i64 %i.y, 4
  br label %tailrecurse

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit49: ; preds = %bb.e
  %i.aa = sdiv i64 %.tr7583, 2                    ; 2 uses
  %i.ab = getelementptr inbounds [16 x i8], ptr %.tr7280, i64 %i.aa ; 2 uses
  %i.ac = ptrtoint ptr %.tr79 to i64              ; 3 uses
  %i.ad = sub i64 %i.j, %i.ac
  %i.ae = ashr exact i64 %i.ad, 4                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i51, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_less_iterEET_SC_SC_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i51: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit49
  %i.ag = load double, ptr %i.ab, align 8
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i52

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i52: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i52, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i51
  %.016.i53 = phi i64 [ %i.ae, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i51 ], [ %.1.i58, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i52 ] ; 2 uses
  %.sroa.011.015.i54 = phi ptr [ %.tr79, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i51 ], [ %.sroa.011.1.i57, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i52 ] ; 2 uses
  %i.ah = lshr i64 %.016.i53, 1                   ; 3 uses
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %.sroa.011.015.i54, i64 %i.ah ; 2 uses
  %i.aj = load double, ptr %i.ai, align 8
  %i.ak = fcmp olt double %i.ag, %i.aj            ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.am = xor i64 %i.ah, -1
  %i.an = add nsw i64 %.016.i53, %i.am
  %.sroa.011.1.i57 = select i1 %i.ak, ptr %.sroa.011.015.i54, ptr %i.al ; 3 uses
  %.1.i58 = select i1 %i.ak, i64 %i.ah, i64 %i.an ; 2 uses
  %i.ao = icmp sgt i64 %.1.i58, 0
  br i1 %i.ao, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i52, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_less_iterEET_SC_SC_RKT0_T1_.exit.loopexit, !llvm.loop !214

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_less_iterEET_SC_SC_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i52
  %.pre86 = ptrtoint ptr %.sroa.011.1.i57 to i64
  br label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_less_iterEET_SC_SC_RKT0_T1_.exit

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_less_iterEET_SC_SC_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_less_iterEET_SC_SC_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit49
  %.pre-phi87 = phi i64 [ %.pre86, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_less_iterEET_SC_SC_RKT0_T1_.exit.loopexit ], [ %i.ac, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit49 ]
  %.sroa.011.0.lcssa.i50 = phi ptr [ %.sroa.011.1.i57, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_less_iterEET_SC_SC_RKT0_T1_.exit.loopexit ], [ %.tr79, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit49 ]
  %i.ap = sub i64 %.pre-phi87, %i.ac
  %i.aq = ashr exact i64 %i.ap, 4
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_less_iterEET_SC_SC_RKT0_T1_.exit, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_less_valEET_SC_SC_RKT0_T1_.exit
  %.sroa.061.0 = phi ptr [ %i.l, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_less_valEET_SC_SC_RKT0_T1_.exit ], [ %.sroa.011.0.lcssa.i50, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_less_iterEET_SC_SC_RKT0_T1_.exit ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.011.0.lcssa.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_less_valEET_SC_SC_RKT0_T1_.exit ], [ %i.ab, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_less_iterEET_SC_SC_RKT0_T1_.exit ] ; 2 uses
  %.043 = phi i64 [ %i.z, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_less_valEET_SC_SC_RKT0_T1_.exit ], [ %i.aa, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_less_iterEET_SC_SC_RKT0_T1_.exit ] ; 2 uses
  %.0 = phi i64 [ %i.k, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_less_valEET_SC_SC_RKT0_T1_.exit ], [ %i.aq, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_less_iterEET_SC_SC_RKT0_T1_.exit ] ; 2 uses
  %i.ar = tail call ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS5_SaIS5_EEEEEET_SB_SB_SB_St26random_access_iterator_tag(ptr %.sroa.061.0, ptr %.tr7280, ptr %.sroa.0.0) ; 2 uses
  tail call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_SD_T1_(ptr %.tr79, ptr %.sroa.061.0, ptr %i.ar, i64 noundef %.0, i64 noundef %.043)
  %i.as = sub nsw i64 %.tr7482, %.0               ; 2 uses
  %i.at = sub nsw i64 %.tr7583, %.043             ; 2 uses
  %i.au = icmp eq i64 %i.as, 0
  %i.av = icmp eq i64 %i.at, 0
  %or.cond = or i1 %i.au, %i.av
  br i1 %or.cond, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS5_SaIS5_EEEEEET_SB_SB_SB_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat {
bb.a:
  %3 = alloca %"struct.Assimp::D3DS::aiFloatKey", align 8 ; 12 uses
  %4 = alloca %"struct.Assimp::D3DS::aiFloatKey", align 8 ; 12 uses
  %5 = alloca %"struct.Assimp::D3DS::aiFloatKey", align 8 ; 4 uses
  %6 = alloca %"struct.Assimp::D3DS::aiFloatKey", align 8 ; 4 uses
  %7 = alloca %"struct.Assimp::D3DS::aiFloatKey", align 8 ; 4 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 4                   ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = ashr exact i64 %i.h, 4                   ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i, label %bb.d

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.sroa.0.08.i = phi ptr [ %i.m, %.lr.ph.i ], [ %1, %bb.c ] ; 3 uses
  %.sroa.04.07.i = phi ptr [ %i.l, %.lr.ph.i ], [ %0, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.07.i, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.07.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.08.i, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.08.i, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 16
  %.not.i = icmp eq ptr %i.l, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit, label %.lr.ph.i, !llvm.loop !215

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 %i.c, %i.g
  %i.o = getelementptr inbounds i8, ptr %0, i64 %i.n ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.sroa.040.0 = phi ptr [ %0, %bb.d ], [ %.sroa.040.0.be, %.backedge ] ; 15 uses
  %.083 = phi i64 [ %i.i, %bb.d ], [ %.083.be, %.backedge ] ; 13 uses
  %.0 = phi i64 [ %i.f, %bb.d ], [ %.0.be, %.backedge ] ; 8 uses
  %i.p = sub nsw i64 %.0, %.083                   ; 9 uses
  %i.q = icmp slt i64 %.083, %i.p
  br i1 %i.q, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.r = icmp eq i64 %.083, 1
  br i1 %i.r, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit, label %bb.g

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.040.0, i64 16, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.040.0, i64 16
  %.idx85 = shl nuw nsw i64 %.0, 4                ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.040.0, i64 %.idx85
  %gepdiff = add nsw i64 %.idx85, -16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.sroa.040.0, ptr nonnull align 8 %i.s, i64 %gepdiff, i1 false)
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

bb.g:                                             ; preds = %bb.f
  %i.v = icmp sgt i64 %i.p, 0
  br i1 %i.v, label %.lr.ph98.preheader, label %._crit_edge99

.lr.ph98.preheader:                               ; preds = %bb.g
  %i.w = getelementptr inbounds [16 x i8], ptr %.sroa.040.0, i64 %.083 ; 2 uses
  %.neg = add i64 %.083, 1
  %xtraiter132 = and i64 %i.p, 1
  %i.x = icmp eq i64 %.0, %.neg
  br i1 %i.x, label %.lr.ph98.epil.preheader, label %.lr.ph98.preheader.new

.lr.ph98.preheader.new:                           ; preds = %.lr.ph98.preheader
  %unroll_iter136 = and i64 %i.p, 9223372036854775806
  br label %.lr.ph98

._crit_edge99.loopexit.unr-lcssa:                 ; preds = %.lr.ph98
  %lcmp.mod133.not = icmp eq i64 %xtraiter132, 0
  br i1 %lcmp.mod133.not, label %._crit_edge99, label %.lr.ph98.epil.preheader

.lr.ph98.epil.preheader:                          ; preds = %._crit_edge99.loopexit.unr-lcssa, %.lr.ph98.preheader
  %.sroa.037.095.epil.init = phi ptr [ %i.w, %.lr.ph98.preheader ], [ %i.ad, %._crit_edge99.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.040.194.epil.init = phi ptr [ %.sroa.040.0, %.lr.ph98.preheader ], [ %i.ac, %._crit_edge99.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod135 = trunc i64 %i.p to i1
  tail call void @llvm.assume(i1 %lcmp.mod135)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.040.194.epil.init, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.040.194.epil.init, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.037.095.epil.init, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.037.095.epil.init, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.040.194.epil.init, i64 16
  br label %._crit_edge99

._crit_edge99:                                    ; preds = %.lr.ph98.epil.preheader, %._crit_edge99.loopexit.unr-lcssa, %bb.g
  %.sroa.040.1.lcssa = phi ptr [ %.sroa.040.0, %bb.g ], [ %i.ac, %._crit_edge99.loopexit.unr-lcssa ], [ %i.y, %.lr.ph98.epil.preheader ]
  %i.z = srem i64 %.0, %.083                      ; 2 uses
  %.not30 = icmp eq i64 %i.z, 0
  br i1 %.not30, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit, label %bb.h

.lr.ph98:                                         ; preds = %.lr.ph98, %.lr.ph98.preheader.new
  %.sroa.037.095 = phi ptr [ %i.w, %.lr.ph98.preheader.new ], [ %i.ad, %.lr.ph98 ] ; 4 uses
  %.sroa.040.194 = phi ptr [ %.sroa.040.0, %.lr.ph98.preheader.new ], [ %i.ac, %.lr.ph98 ] ; 4 uses
  %niter137 = phi i64 [ 0, %.lr.ph98.preheader.new ], [ %niter137.next.1, %.lr.ph98 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.040.194, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.040.194, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.037.095, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.037.095, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.040.194, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.037.095, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.040.194, i64 32 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.037.095, i64 32 ; 2 uses
  %niter137.next.1 = add i64 %niter137, 2         ; 2 uses
  %niter137.ncmp.1 = icmp eq i64 %niter137.next.1, %unroll_iter136
  br i1 %niter137.ncmp.1, label %._crit_edge99.loopexit.unr-lcssa, label %.lr.ph98, !llvm.loop !216

bb.h:                                             ; preds = %._crit_edge99
  %i.ae = sub nsw i64 %.083, %i.z
  br label %.backedge

bb.i:                                             ; preds = %bb.e
  %i.af = icmp eq i64 %i.p, 1
  br i1 %i.af, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.ag = getelementptr inbounds [16 x i8], ptr %.sroa.040.0, i64 %.0 ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false)
  %.idx = shl nuw nsw i64 %.0, 4
  %i.ai = add nsw i64 %.idx, -16                  ; 3 uses
  %i.aj = ashr exact i64 %i.ai, 4                 ; 2 uses
  %i.ak = icmp sgt i64 %i.aj, 1
  br i1 %i.ak, label %bb.k, label %bb.l, !prof !149

bb.k:                                             ; preds = %bb.j
  %i.al = sub nsw i64 0, %i.aj
  %i.am = getelementptr inbounds [16 x i8], ptr %i.ag, i64 %i.al
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.am, ptr nonnull align 8 %.sroa.040.0, i64 %i.ai, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.j
  %i.an = icmp eq i64 %i.ai, 16
  br i1 %i.an, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.040.0, i64 16, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit: ; preds = %bb.k, %bb.l, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.040.0, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

bb.n:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds [16 x i8], ptr %.sroa.040.0, i64 %.0 ; 3 uses
  %i.ap = sub i64 0, %i.p
  %i.aq = getelementptr inbounds [16 x i8], ptr %i.ao, i64 %i.ap ; 3 uses
  %i.ar = icmp sgt i64 %.083, 0
  br i1 %i.ar, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.n
  %xtraiter = and i64 %.083, 1
  %i.as = icmp eq i64 %.083, 1
  br i1 %i.as, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %.083, 9223372036854775806
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.0.092.epil.init = phi ptr [ %i.ao, %.lr.ph.preheader ], [ %i.az, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.040.291.epil.init = phi ptr [ %i.aq, %.lr.ph.preheader ], [ %i.ay, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod131 = trunc i64 %.083 to i1
  tail call void @llvm.assume(i1 %lcmp.mod131)
  %i.at = getelementptr inbounds i8, ptr %.sroa.040.291.epil.init, i64 -16 ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %.sroa.0.092.epil.init, i64 -16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.au, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.n
  %.sroa.040.2.lcssa = phi ptr [ %i.aq, %bb.n ], [ %.sroa.040.0, %._crit_edge.loopexit.unr-lcssa ], [ %.sroa.040.0, %.lr.ph.epil.preheader ]
  %i.av = srem i64 %.0, %i.p                      ; 2 uses
  %.not = icmp eq i64 %i.av, 0
  br i1 %.not, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.h
  %.sroa.040.0.be = phi ptr [ %.sroa.040.1.lcssa, %bb.h ], [ %.sroa.040.2.lcssa, %._crit_edge ]
  %.083.be = phi i64 [ %i.ae, %bb.h ], [ %i.av, %._crit_edge ]
  %.0.be = phi i64 [ %.083, %bb.h ], [ %i.p, %._crit_edge ]
  br label %bb.e, !llvm.loop !217

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.sroa.0.092 = phi ptr [ %i.ao, %.lr.ph.preheader.new ], [ %i.az, %.lr.ph ] ; 2 uses
  %.sroa.040.291 = phi ptr [ %i.aq, %.lr.ph.preheader.new ], [ %i.ay, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.aw = getelementptr inbounds i8, ptr %.sroa.040.291, i64 -16 ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %.sroa.0.092, i64 -16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ay = getelementptr inbounds i8, ptr %.sroa.040.291, i64 -32 ; 4 uses
  %i.az = getelementptr inbounds i8, ptr %.sroa.0.092, i64 -32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %i.az, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !218

_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit: ; preds = %._crit_edge, %._crit_edge99, %.lr.ph.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit, %bb.b, %bb.a
  %.sroa.023.1 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %i.o, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit ], [ %i.o, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit ], [ %1, %.lr.ph.i ], [ %i.o, %._crit_edge99 ], [ %i.o, %._crit_edge ]
  ret ptr %.sroa.023.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_SD_T1_SD_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #2 comdat {
bb.a:
  %.not89 = icmp sgt i64 %3, %6
  %.not5690 = icmp sgt i64 %4, %6
  %or.cond91 = and i1 %.not89, %.not5690
  br i1 %or.cond91, label %.lr.ph, label %tailrecurse._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.a = ptrtoint ptr %2 to i64
  br label %bb.b

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr.lcssa = phi ptr [ %0, %bb.a ], [ %i.al, %tailrecurse ]
  %.tr83.lcssa = phi ptr [ %1, %bb.a ], [ %.sroa.0.0, %tailrecurse ]
  %.tr85.lcssa = phi i64 [ %3, %bb.a ], [ %i.ak, %tailrecurse ]
  %.tr86.lcssa = phi i64 [ %4, %bb.a ], [ %i.am, %tailrecurse ]
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_SD_T1_T2_(ptr %.tr.lcssa, ptr %.tr83.lcssa, ptr %2, i64 noundef %.tr85.lcssa, i64 noundef %.tr86.lcssa, ptr noundef %5)
  ret void

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr8695 = phi i64 [ %4, %.lr.ph ], [ %i.am, %tailrecurse ] ; 3 uses
  %.tr8594 = phi i64 [ %3, %.lr.ph ], [ %i.ak, %tailrecurse ] ; 3 uses
  %.tr8393 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %tailrecurse ] ; 5 uses
  %.tr92 = phi ptr [ %0, %.lr.ph ], [ %i.al, %tailrecurse ] ; 5 uses
  %i.b = icmp sgt i64 %.tr8594, %.tr8695
  %i.c = ptrtoint ptr %.tr8393 to i64             ; 4 uses
  br i1 %i.b, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit60

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.b
  %i.d = sdiv i64 %.tr8594, 2                     ; 2 uses
  %i.e = getelementptr inbounds [16 x i8], ptr %.tr92, i64 %i.d ; 2 uses
  %i.f = sub i64 %i.a, %i.c
  %i.g = ashr exact i64 %i.f, 4                   ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_less_valEET_SC_SC_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.i = load double, ptr %i.e, align 8
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.016.i = phi i64 [ %i.g, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %.sroa.011.015.i = phi ptr [ %.tr8393, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.sroa.011.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %i.j = lshr i64 %.016.i, 1                      ; 3 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %.sroa.011.015.i, i64 %i.j ; 2 uses
  %i.l = load double, ptr %i.k, align 8
  %i.m = fcmp olt double %i.l, %i.i               ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.o = xor i64 %i.j, -1
  %i.p = add nsw i64 %.016.i, %i.o
  %.sroa.011.1.i = select i1 %i.m, ptr %i.n, ptr %.sroa.011.015.i ; 3 uses
  %.1.i = select i1 %i.m, i64 %i.p, i64 %i.j      ; 2 uses
  %i.q = icmp sgt i64 %.1.i, 0
  br i1 %i.q, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_less_valEET_SC_SC_RKT0_T1_.exit.loopexit, !llvm.loop !213

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_less_valEET_SC_SC_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.sroa.011.1.i to i64
  br label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_less_valEET_SC_SC_RKT0_T1_.exit

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_less_valEET_SC_SC_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_less_valEET_SC_SC_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_less_valEET_SC_SC_RKT0_T1_.exit.loopexit ], [ %i.c, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.011.0.lcssa.i = phi ptr [ %.sroa.011.1.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_less_valEET_SC_SC_RKT0_T1_.exit.loopexit ], [ %.tr8393, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.r = sub i64 %.pre-phi, %i.c
  %i.s = ashr exact i64 %i.r, 4
  br label %tailrecurse

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit60: ; preds = %bb.b
  %i.t = sdiv i64 %.tr8695, 2                     ; 2 uses
  %i.u = getelementptr inbounds [16 x i8], ptr %.tr8393, i64 %i.t ; 2 uses
  %i.v = ptrtoint ptr %.tr92 to i64               ; 3 uses
  %i.w = sub i64 %i.c, %i.v
  %i.x = ashr exact i64 %i.w, 4                   ; 2 uses
  %i.y = icmp sgt i64 %i.x, 0
  br i1 %i.y, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_less_iterEET_SC_SC_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit60
  %i.z = load double, ptr %i.u, align 8
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i63

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i63: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i63, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62
  %.016.i64 = phi i64 [ %i.x, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62 ], [ %.1.i69, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i63 ] ; 2 uses
  %.sroa.011.015.i65 = phi ptr [ %.tr92, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62 ], [ %.sroa.011.1.i68, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i63 ] ; 2 uses
  %i.aa = lshr i64 %.016.i64, 1                   ; 3 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %.sroa.011.015.i65, i64 %i.aa ; 2 uses
  %i.ac = load double, ptr %i.ab, align 8
  %i.ad = fcmp olt double %i.z, %i.ac             ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.af = xor i64 %i.aa, -1
  %i.ag = add nsw i64 %.016.i64, %i.af
  %.sroa.011.1.i68 = select i1 %i.ad, ptr %.sroa.011.015.i65, ptr %i.ae ; 3 uses
  %.1.i69 = select i1 %i.ad, i64 %i.aa, i64 %i.ag ; 2 uses
  %i.ah = icmp sgt i64 %.1.i69, 0
  br i1 %i.ah, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i63, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_less_iterEET_SC_SC_RKT0_T1_.exit.loopexit, !llvm.loop !214

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_less_iterEET_SC_SC_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i63
  %.pre101 = ptrtoint ptr %.sroa.011.1.i68 to i64
  br label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_less_iterEET_SC_SC_RKT0_T1_.exit

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_less_iterEET_SC_SC_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_less_iterEET_SC_SC_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit60
  %.pre-phi102 = phi i64 [ %.pre101, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_less_iterEET_SC_SC_RKT0_T1_.exit.loopexit ], [ %i.v, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit60 ]
  %.sroa.011.0.lcssa.i61 = phi ptr [ %.sroa.011.1.i68, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_less_iterEET_SC_SC_RKT0_T1_.exit.loopexit ], [ %.tr92, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6Assimp4D3DS10aiFloatKeyESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit60 ]
  %i.ai = sub i64 %.pre-phi102, %i.v
end_hunk_0
begin_hunk_1_@_ZSt17__rotate_adaptiveIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS2_SaIS2_EEEES3_lET_S8_S8_S8_T1_S9_T0_S9_:bb.a

._crit_edge.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.sroa.0.060.i.i.epil.init = phi ptr [ %i.bi, %.lr.ph.i.i.preheader ], [ %i.bt, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %.sroa.026.259.i.i.epil.init = phi ptr [ %i.bk, %.lr.ph.i.i.preheader ], [ %i.bs, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %lcmp.mod59 = trunc i64 %.0.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod59)
  %i.bn = getelementptr inbounds i8, ptr %.sroa.026.259.i.i.epil.init, i64 -32 ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %.sroa.0.060.i.i.epil.init, i64 -32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.bn, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bn, ptr noundef nonnull align 8 dereferenceable(28) %i.bo, i64 28, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bo, ptr noundef nonnull align 8 dereferenceable(28) %7, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.epil.preheader, %._crit_edge.i.i.loopexit.unr-lcssa, %bb.af
  %.sroa.026.2.lcssa.i.i = phi ptr [ %i.bk, %bb.af ], [ %.sroa.026.0.i.i, %._crit_edge.i.i.loopexit.unr-lcssa ], [ %.sroa.026.0.i.i, %.lr.ph.i.i.epil.preheader ]
  %i.bp = srem i64 %.056.i.i, %i.aw               ; 2 uses
  %.not.i.i = icmp eq i64 %i.bp, 0
  br i1 %.not.i.i, label %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS3_SaIS3_EEEEEET_S9_S9_S9_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge.i.i, %bb.ae
  %.056.i.i.be = phi i64 [ %.0.i.i, %bb.ae ], [ %i.aw, %._crit_edge.i.i ]
  %.0.i.i.be = phi i64 [ %i.bh, %bb.ae ], [ %i.bp, %._crit_edge.i.i ]
  %.sroa.026.0.i.i.be = phi ptr [ %.sroa.026.1.lcssa.i.i, %bb.ae ], [ %.sroa.026.2.lcssa.i.i, %._crit_edge.i.i ]
  br label %bb.ac, !llvm.loop !236

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.sroa.0.060.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.preheader.new ], [ %i.bt, %.lr.ph.i.i ] ; 2 uses
  %.sroa.026.259.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.preheader.new ], [ %i.bs, %.lr.ph.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.bq = getelementptr inbounds i8, ptr %.sroa.026.259.i.i, i64 -32 ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %.sroa.0.060.i.i, i64 -32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.bq, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bq, ptr noundef nonnull align 8 dereferenceable(28) %i.br, i64 28, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.br, ptr noundef nonnull align 8 dereferenceable(28) %7, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.bs = getelementptr inbounds i8, ptr %.sroa.026.259.i.i, i64 -64 ; 4 uses
  %i.bt = getelementptr inbounds i8, ptr %.sroa.0.060.i.i, i64 -64 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.bs, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bs, ptr noundef nonnull align 8 dereferenceable(28) %i.bt, i64 28, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bt, ptr noundef nonnull align 8 dereferenceable(28) %7, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !237

_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIP9aiQuatKeySt6vectorIS3_SaIS3_EEEEEET_S9_S9_S9_.exit: ; preds = %._crit_edge.i.i, %._crit_edge67.i.i, %.lr.ph.i.i.i, %bb.z, %bb.y, %bb.n, %bb.b, %_ZSt13move_backwardIP9aiQuatKeyN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEEET0_T_S9_S8_.exit, %_ZSt4moveIP9aiQuatKeyN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEEET0_T_S9_S8_.exit
  %.sroa.032.0 = phi ptr [ %i.p, %_ZSt4moveIP9aiQuatKeyN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEEET0_T_S9_S8_.exit ], [ %2, %bb.n ], [ %i.ag, %_ZSt13move_backwardIP9aiQuatKeyN9__gnu_cxx17__normal_iteratorIS1_St6vectorIS0_SaIS0_EEEEET0_T_S9_S8_.exit ], [ %0, %bb.b ], [ %0, %bb.z ], [ %2, %bb.y ], [ %1, %.lr.ph.i.i.i ], [ %i.av, %._crit_edge67.i.i ], [ %i.av, %._crit_edge.i.i ]
  ret ptr %.sroa.032.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJERPKcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 13 uses
  %i.a = load ptr, ptr %3, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %2, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %i.h = or i32 %i.g, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.e, i32 noundef %i.h)
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #28
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull %i.a, i64 noundef %i.i) ; 0 uses
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit: ; preds = %bb.b, %bb.c
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !238)
  call void @llvm.experimental.noalias.scope.decl(metadata !241)
  call void @llvm.experimental.noalias.scope.decl(metadata !244)
  call void @llvm.experimental.noalias.scope.decl(metadata !247)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.k, ptr %0, align 8, !alias.scope !250
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.l, align 8, !alias.scope !250
  store i8 0, ptr %i.k, align 8, !alias.scope !250
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !noalias !250 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.n, null
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !noalias !250 ; 2 uses
  %i.q = icmp ugt ptr %i.n, %i.p
  %.08.i.i.i.i.i = select i1 %i.q, ptr %i.n, ptr %i.p ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  %.not.i.i.i.i = select i1 %.not.i.not.i.i.i.i, i1 true, i1 %.not5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !noalias !250 ; 2 uses
  %i.t = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.s, i64 noundef %i.v)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %0, align 8, !alias.scope !250 ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.k
  br i1 %i.z, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.e
  %i.aa = load i64, ptr %i.k, align 8, !alias.scope !250
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #29
  br label %.body

bb.f:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.e

_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.f, %bb.d
  %i.ad = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ad, ptr %4, align 8
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.af = getelementptr i8, ptr %i.ad, i64 -24
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = getelementptr inbounds i8, ptr %4, i64 %i.ag
  store ptr %i.ae, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #29
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ai, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ap) #28
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.aq) #28
  ret void

.body:                                            ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #28
  resume { ptr, i32 } %i.x
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 13 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %3, align 4                ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !149

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nuw nsw i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.d, ptr nonnull align 4 %i.o, i64 %.idx.neg, i1 false)
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i32, ptr %i.o, align 4
  store i32 %i.s, ptr %i.d, align 4
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = load ptr, ptr %i.c, align 8
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 2                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !149

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.z, ptr align 4 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 4
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.ac = load i32, ptr %1, align 4
  store i32 %i.ac, ptr %i.ab, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 2                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -4                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check125 = icmp ult i64 %i.ae, 28
  br i1 %min.iters.check125, label %.lr.ph.i.i.i.preheader, label %vector.ph126

vector.ph126:                                     ; preds = %bb.k
  %n.vec127 = and i64 %i.ag, 9223372036854775800  ; 3 uses
  %i.ah = shl i64 %n.vec127, 2
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert128 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat129 = shufflevector <4 x i32> %broadcast.splatinsert128, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body130

vector.body130:                                   ; preds = %vector.body130, %vector.ph126
  %index131 = phi i64 [ 0, %vector.ph126 ], [ %index.next133, %vector.body130 ] ; 2 uses
  %i.aj = shl i64 %index131, 2
  %next.gep132 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep132, i64 16
  store <4 x i32> %broadcast.splat129, ptr %next.gep132, align 4
  store <4 x i32> %broadcast.splat129, ptr %i.ak, align 4
  %index.next133 = add nuw i64 %index131, 8       ; 2 uses
  %i.al = icmp eq i64 %index.next133, %n.vec127
  br i1 %i.al, label %middle.block134, label %vector.body130, !llvm.loop !251

middle.block134:                                  ; preds = %vector.body130
  %cmp.n135 = icmp eq i64 %i.ag, %n.vec127
  br i1 %cmp.n135, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block134
  %.06.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block134 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !254

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 2
  %i.ar = add i64 %i.aq, -4
  %i.as = sub i64 %i.ar, %i.k                     ; 2 uses
  %i.at = lshr i64 %i.as, 2
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.au, 9223372036854775800     ; 3 uses
  %i.av = shl i64 %n.vec, 2
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.av
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4
  store <4 x i32> %broadcast.splat, ptr %i.ay, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !255

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i.i.i.i.i, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !256

_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8
  %i.bb = icmp sgt i64 %i.k, 4
  br i1 %i.bb, label %bb.n, label %bb.o, !prof !149

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.i.i.i.i.i, ptr align 4 %1, i64 %i.k, i1 false)
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit
  %i.bc = icmp eq i64 %i.k, 4
  br i1 %i.bc, label %bb.p, label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bd = load i32, ptr %1, align 4
  store i32 %i.bd, ptr %.0.i.i.i.i.i, align 4
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.be = load ptr, ptr %i.c, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.k
  store ptr %i.bf, ptr %i.c, align 8
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69
  %i.bg = add i64 %i.f, -4
  %i.bh = sub i64 %i.bg, %i.j                     ; 2 uses
  %i.bi = lshr i64 %i.bh, 2
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check112 = icmp ult i64 %i.bh, 28
  br i1 %min.iters.check112, label %.lr.ph.i.i.i71.preheader150, label %vector.ph113

vector.ph113:                                     ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec114 = and i64 %i.bj, 9223372036854775800  ; 3 uses
  %i.bk = shl i64 %n.vec114, 2
  %i.bl = getelementptr i8, ptr %1, i64 %i.bk
  %broadcast.splatinsert115 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat116 = shufflevector <4 x i32> %broadcast.splatinsert115, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body117

vector.body117:                                   ; preds = %vector.body117, %vector.ph113
  %index118 = phi i64 [ 0, %vector.ph113 ], [ %index.next120, %vector.body117 ] ; 2 uses
  %i.bm = shl i64 %index118, 2
  %next.gep119 = getelementptr i8, ptr %1, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep119, i64 16
  store <4 x i32> %broadcast.splat116, ptr %next.gep119, align 4
  store <4 x i32> %broadcast.splat116, ptr %i.bn, align 4
  %index.next120 = add nuw i64 %index118, 8       ; 2 uses
  %i.bo = icmp eq i64 %index.next120, %n.vec114
  br i1 %i.bo, label %middle.block121, label %vector.body117, !llvm.loop !257

middle.block121:                                  ; preds = %vector.body117
  %cmp.n122 = icmp eq i64 %i.bj, %n.vec114
  br i1 %cmp.n122, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader150

.lr.ph.i.i.i71.preheader150:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block121
  %.06.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bl, %middle.block121 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader150, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.bp, %.lr.ph.i.i.i71 ], [ %.06.i.i.i72.ph, %.lr.ph.i.i.i71.preheader150 ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i72, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 4 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bp, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !258

bb.q:                                             ; preds = %bb.b
  %i.bq = load ptr, ptr %0, align 8               ; 5 uses
end_hunk_1
