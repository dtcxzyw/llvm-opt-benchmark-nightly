Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flatbuffers/original/java_generator?download=true
inline.NumInlined: 1849
inline.NumDeleted: 455
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_SD_NS0_5__ops15_Iter_comp_iterIPFbRKS8_SH_EEEEvT_SL_T0_SM_T1_T2_:bb.a
  br i1 %i.r, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %.sroa.034.0.ph, align 8, !tbaa !56
  store ptr null, ptr %.sroa.034.0.ph, align 8, !tbaa !56
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !56   ; 3 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !56
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit, label %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i: ; preds = %bb.f
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !38
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.u) #19, !inline_history !12
  br label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit

_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit: ; preds = %bb.f, %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i
  %i.y = icmp eq ptr %0, %.sroa.034.0.ph
  br i1 %i.y, label %bb.g, label %.outer, !llvm.loop !279

bb.g:                                             ; preds = %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %2 to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 3                 ; 2 uses
  %i.ae = icmp sgt i64 %i.ad, 0
  br i1 %i.ae, label %.lr.ph.i.i.i.i.i19, label %_ZSt13move_backwardIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit

.lr.ph.i.i.i.i.i19:                               ; preds = %bb.g, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i25
  %.010.i.i.i.i.i20 = phi i64 [ %i.am, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i25 ], [ %i.ad, %bb.g ] ; 2 uses
  %.069.i.i.i.i.i21 = phi ptr [ %i.ag, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i25 ], [ %i.s, %bb.g ]
  %.078.i.i.i.i.i22 = phi ptr [ %i.af, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i25 ], [ %i.z, %bb.g ]
  %i.af = getelementptr inbounds i8, ptr %.078.i.i.i.i.i22, i64 -8 ; 3 uses
  %i.ag = getelementptr inbounds i8, ptr %.069.i.i.i.i.i21, i64 -8 ; 3 uses
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !56
  store ptr null, ptr %i.af, align 8, !tbaa !56
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !56 ; 3 uses
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !56
  %.not.i.i.i.i.i.i.i.i.i23 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i.i.i.i.i23, label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i25, label %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i.i.i.i.i24

_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i.i.i.i.i24: ; preds = %.lr.ph.i.i.i.i.i19
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !38
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(8) %i.ai) #19, !inline_history !14
  br label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i25

_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i25: ; preds = %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i.i.i.i.i24, %.lr.ph.i.i.i.i.i19
  %i.am = add nsw i64 %.010.i.i.i.i.i20, -1
  %i.an = icmp sgt i64 %.010.i.i.i.i.i20, 1
  br i1 %i.an, label %.lr.ph.i.i.i.i.i19, label %_ZSt13move_backwardIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit, !llvm.loop !11

bb.h:                                             ; preds = %bb.e
  %i.ao = load ptr, ptr %.0, align 8, !tbaa !56
  store ptr null, ptr %.0, align 8, !tbaa !56
  %i.ap = load ptr, ptr %i.s, align 8, !tbaa !56  ; 3 uses
  store ptr %i.ao, ptr %i.s, align 8, !tbaa !56
  %.not.i.i.i.i27 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i27, label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit29, label %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i28

_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i28: ; preds = %bb.h
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !38
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.ap) #19, !inline_history !12
  br label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit29

_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit29: ; preds = %bb.h, %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i28
  %i.at = icmp eq ptr %2, %.0
  br i1 %i.at, label %_ZSt13move_backwardIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit29
  %i.au = getelementptr inbounds i8, ptr %.0, i64 -8
  br label %bb.e, !llvm.loop !279

_ZSt13move_backwardIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit: ; preds = %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit29, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i25, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i, %bb.g, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterIPFbRKS8_SH_EEEEvT_SL_SL_T0_SM_T1_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr %5) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond86 = or i1 %i.a, %i.b
  br i1 %or.cond86, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEET_SF_SF_SF_.exit
  %.tr8192 = phi i64 [ %4, %.lr.ph ], [ %i.eu, %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEET_SF_SF_SF_.exit ] ; 4 uses
  %.tr8091 = phi i64 [ %3, %.lr.ph ], [ %i.et, %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEET_SF_SF_SF_.exit ] ; 4 uses
  %.tr7889 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEET_SF_SF_SF_.exit ] ; 19 uses
  %.tr87 = phi ptr [ %0, %.lr.ph ], [ %.sroa.015.1.i.i, %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEET_SF_SF_SF_.exit ] ; 8 uses
  %i.d = add nsw i64 %.tr8192, %.tr8091
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 %5(ptr noundef nonnull align 8 dereferenceable(8) %.tr7889, ptr noundef nonnull align 8 dereferenceable(8) %.tr87), !inline_history !9
  br i1 %i.f, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %.tr87, align 8, !tbaa !56
  %i.h = load ptr, ptr %.tr7889, align 8, !tbaa !56
  store ptr %i.h, ptr %.tr87, align 8, !tbaa !56
  store ptr %i.g, ptr %.tr7889, align 8, !tbaa !56
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.i = icmp sgt i64 %.tr8091, %.tr8192
  %i.j = ptrtoint ptr %.tr7889 to i64             ; 4 uses
  br i1 %i.i, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit55

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.k = sdiv i64 %.tr8091, 2                     ; 2 uses
  %i.l = getelementptr inbounds [8 x i8], ptr %.tr87, i64 %i.k ; 2 uses
  %i.m = sub i64 %i.c, %i.j
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp sgt i64 %i.n, 0
  br i1 %i.o, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Iter_comp_valIPFbRKS8_SH_EEEET_SL_SL_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.017.i = phi i64 [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %i.n, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.sroa.012.016.i = phi ptr [ %.sroa.012.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %.tr7889, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.p = lshr i64 %.017.i, 1                      ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.sroa.012.016.i, i64 %i.p ; 2 uses
  %i.r = tail call noundef zeroext i1 %5(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.l), !inline_history !15 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = xor i64 %i.p, -1
  %i.u = add nsw i64 %.017.i, %i.t
  %.sroa.012.1.i = select i1 %i.r, ptr %i.s, ptr %.sroa.012.016.i ; 3 uses
  %.1.i = select i1 %i.r, i64 %i.u, i64 %i.p      ; 2 uses
  %i.v = icmp sgt i64 %.1.i, 0
  br i1 %i.v, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Iter_comp_valIPFbRKS8_SH_EEEET_SL_SL_RKT0_T1_.exit.loopexit, !llvm.loop !16

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Iter_comp_valIPFbRKS8_SH_EEEET_SL_SL_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.sroa.012.1.i to i64
  br label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Iter_comp_valIPFbRKS8_SH_EEEET_SL_SL_RKT0_T1_.exit

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Iter_comp_valIPFbRKS8_SH_EEEET_SL_SL_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Iter_comp_valIPFbRKS8_SH_EEEET_SL_SL_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Iter_comp_valIPFbRKS8_SH_EEEET_SL_SL_RKT0_T1_.exit.loopexit ], [ %i.j, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.012.0.lcssa.i = phi ptr [ %.sroa.012.1.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Iter_comp_valIPFbRKS8_SH_EEEET_SL_SL_RKT0_T1_.exit.loopexit ], [ %.tr7889, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.w = sub i64 %.pre-phi, %i.j
  %i.x = ashr exact i64 %i.w, 3
  br label %bb.f

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit55: ; preds = %bb.e
  %i.y = sdiv i64 %.tr8192, 2                     ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %.tr7889, i64 %i.y ; 2 uses
  %i.aa = ptrtoint ptr %.tr87 to i64              ; 3 uses
  %i.ab = sub i64 %i.j, %i.aa
  %i.ac = ashr exact i64 %i.ab, 3                 ; 2 uses
  %i.ad = icmp sgt i64 %i.ac, 0
  br i1 %i.ad, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Val_comp_iterIPFbRKS8_SH_EEEET_SL_SL_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit55, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57
  %.017.i58 = phi i64 [ %.1.i63, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57 ], [ %i.ac, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit55 ] ; 2 uses
  %.sroa.012.016.i59 = phi ptr [ %.sroa.012.1.i62, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57 ], [ %.tr87, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit55 ] ; 2 uses
  %i.ae = lshr i64 %.017.i58, 1                   ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.sroa.012.016.i59, i64 %i.ae ; 2 uses
  %i.ag = tail call noundef zeroext i1 %5(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull align 8 dereferenceable(8) %i.af), !inline_history !17 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ai = xor i64 %i.ae, -1
  %i.aj = add nsw i64 %.017.i58, %i.ai
  %.sroa.012.1.i62 = select i1 %i.ag, ptr %.sroa.012.016.i59, ptr %i.ah ; 3 uses
  %.1.i63 = select i1 %i.ag, i64 %i.ae, i64 %i.aj ; 2 uses
  %i.ak = icmp sgt i64 %.1.i63, 0
  br i1 %i.ak, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Val_comp_iterIPFbRKS8_SH_EEEET_SL_SL_RKT0_T1_.exit.loopexit, !llvm.loop !18

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Val_comp_iterIPFbRKS8_SH_EEEET_SL_SL_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57
  %.pre96 = ptrtoint ptr %.sroa.012.1.i62 to i64
  br label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Val_comp_iterIPFbRKS8_SH_EEEET_SL_SL_RKT0_T1_.exit

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Val_comp_iterIPFbRKS8_SH_EEEET_SL_SL_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Val_comp_iterIPFbRKS8_SH_EEEET_SL_SL_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit55
  %.pre-phi97 = phi i64 [ %.pre96, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Val_comp_iterIPFbRKS8_SH_EEEET_SL_SL_RKT0_T1_.exit.loopexit ], [ %i.aa, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit55 ]
  %.sroa.012.0.lcssa.i56 = phi ptr [ %.sroa.012.1.i62, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Val_comp_iterIPFbRKS8_SH_EEEET_SL_SL_RKT0_T1_.exit.loopexit ], [ %.tr87, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit55 ]
  %i.al = sub i64 %.pre-phi97, %i.aa
  %i.am = ashr exact i64 %i.al, 3
  br label %bb.f

bb.f:                                             ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Val_comp_iterIPFbRKS8_SH_EEEET_SL_SL_RKT0_T1_.exit, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Iter_comp_valIPFbRKS8_SH_EEEET_SL_SL_RKT0_T1_.exit
  %.sroa.066.0 = phi ptr [ %i.l, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Iter_comp_valIPFbRKS8_SH_EEEET_SL_SL_RKT0_T1_.exit ], [ %.sroa.012.0.lcssa.i56, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Val_comp_iterIPFbRKS8_SH_EEEET_SL_SL_RKT0_T1_.exit ] ; 12 uses
  %.sroa.0.0 = phi ptr [ %.sroa.012.0.lcssa.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Iter_comp_valIPFbRKS8_SH_EEEET_SL_SL_RKT0_T1_.exit ], [ %i.z, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Val_comp_iterIPFbRKS8_SH_EEEET_SL_SL_RKT0_T1_.exit ] ; 4 uses
  %.049 = phi i64 [ %i.x, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Iter_comp_valIPFbRKS8_SH_EEEET_SL_SL_RKT0_T1_.exit ], [ %i.y, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Val_comp_iterIPFbRKS8_SH_EEEET_SL_SL_RKT0_T1_.exit ] ; 2 uses
  %.0 = phi i64 [ %i.k, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Iter_comp_valIPFbRKS8_SH_EEEET_SL_SL_RKT0_T1_.exit ], [ %i.am, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES8_NS0_5__ops14_Val_comp_iterIPFbRKS8_SH_EEEET_SL_SL_RKT0_T1_.exit ] ; 2 uses
  %i.an = icmp eq ptr %.sroa.066.0, %.tr7889
  br i1 %i.an, label %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEET_SF_SF_SF_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = icmp eq ptr %.sroa.0.0, %.tr7889
  br i1 %i.ao, label %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEET_SF_SF_SF_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = ptrtoint ptr %.sroa.0.0 to i64          ; 2 uses
  %i.aq = ptrtoint ptr %.sroa.066.0 to i64        ; 4 uses
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 3                 ; 2 uses
  %i.at = ptrtoint ptr %.tr7889 to i64            ; 4 uses
  %i.au = sub i64 %i.at, %i.aq
  %i.av = ashr exact i64 %i.au, 3                 ; 3 uses
  %i.aw = sub nsw i64 %i.as, %i.av
  %i.ax = icmp eq i64 %i.av, %i.aw
  br i1 %i.ax, label %.lr.ph.i.i.i.preheader, label %bb.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.h
  %i.ay = add i64 %i.at, -8
  %i.az = sub i64 %i.ay, %i.aq                    ; 2 uses
  %i.ba = lshr i64 %i.az, 3
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.az, 40
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader170, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %.sroa.066.0, i64 8
  %6 = add i64 %i.at, -8
  %7 = sub i64 %6, %i.aq
  %i.bc = and i64 %7, -8                          ; 2 uses
  %scevgep114 = getelementptr i8, ptr %scevgep, i64 %i.bc
  %scevgep115 = getelementptr i8, ptr %.tr7889, i64 8
  %scevgep116 = getelementptr i8, ptr %scevgep115, i64 %i.bc
  %bound0 = icmp ult ptr %.sroa.066.0, %scevgep116
  %bound1 = icmp ult ptr %.tr7889, %scevgep114
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader170, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bb, 4611686018427387900     ; 3 uses
  %i.bd = shl i64 %n.vec, 3                       ; 2 uses
  %i.be = getelementptr i8, ptr %.tr7889, i64 %i.bd
  %i.bf = getelementptr i8, ptr %.sroa.066.0, i64 %i.bd
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bg = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.tr7889, i64 %i.bg ; 3 uses
  %next.gep117 = getelementptr i8, ptr %.sroa.066.0, i64 %i.bg ; 3 uses
  %i.bh = getelementptr i8, ptr %next.gep117, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep117, align 8, !tbaa !56, !alias.scope !297, !noalias !298
  %wide.load118 = load <2 x ptr>, ptr %i.bh, align 8, !tbaa !56, !alias.scope !297, !noalias !298
  %i.bi = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load119 = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !56, !alias.scope !298
  %wide.load120 = load <2 x ptr>, ptr %i.bi, align 8, !tbaa !56, !alias.scope !298
  store <2 x ptr> %wide.load119, ptr %next.gep117, align 8, !tbaa !56, !alias.scope !297, !noalias !298
  store <2 x ptr> %wide.load120, ptr %i.bh, align 8, !tbaa !56, !alias.scope !297, !noalias !298
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !56, !alias.scope !298
  store <2 x ptr> %wide.load118, ptr %i.bi, align 8, !tbaa !56, !alias.scope !298
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !283

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bb, %n.vec
  br i1 %cmp.n, label %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEET_SF_SF_SF_.exit, label %.lr.ph.i.i.i.preheader170

.lr.ph.i.i.i.preheader170:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.sroa.0.08.i.i.i.ph = phi ptr [ %.tr7889, %vector.memcheck ], [ %.tr7889, %.lr.ph.i.i.i.preheader ], [ %i.be, %middle.block ]
  %.sroa.04.07.i.i.i.ph = phi ptr [ %.sroa.066.0, %vector.memcheck ], [ %.sroa.066.0, %.lr.ph.i.i.i.preheader ], [ %i.bf, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader170, %.lr.ph.i.i.i
  %.sroa.0.08.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i ], [ %.sroa.0.08.i.i.i.ph, %.lr.ph.i.i.i.preheader170 ] ; 3 uses
  %.sroa.04.07.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i ], [ %.sroa.04.07.i.i.i.ph, %.lr.ph.i.i.i.preheader170 ] ; 3 uses
  %i.bk = load ptr, ptr %.sroa.04.07.i.i.i, align 8, !tbaa !56
  %i.bl = load ptr, ptr %.sroa.0.08.i.i.i, align 8, !tbaa !56
  store ptr %i.bl, ptr %.sroa.04.07.i.i.i, align 8, !tbaa !56
  store ptr %i.bk, ptr %.sroa.0.08.i.i.i, align 8, !tbaa !56
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i, i64 8 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 8
  %.not.i.i.i = icmp eq ptr %i.bm, %.tr7889
  br i1 %.not.i.i.i, label %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEET_SF_SF_SF_.exit, label %.lr.ph.i.i.i, !llvm.loop !284

bb.i:                                             ; preds = %bb.h
  %i.bo = sub i64 %i.ap, %i.at
  %i.bp = getelementptr inbounds i8, ptr %.sroa.066.0, i64 %i.bo ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.backedge, %bb.i
  %.056.i.i = phi i64 [ %i.as, %bb.i ], [ %.056.i.i.be, %.backedge ] ; 9 uses
  %.0.i.i = phi i64 [ %i.av, %bb.i ], [ %.0.i.i.be, %.backedge ] ; 17 uses
  %.sroa.026.0.i.i = phi ptr [ %.sroa.066.0, %bb.i ], [ %.sroa.026.0.i.i.be, %.backedge ] ; 15 uses
  %i.bq = sub nsw i64 %.056.i.i, %.0.i.i          ; 9 uses
  %i.br = icmp slt i64 %.0.i.i, %i.bq
  br i1 %i.br, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bs = icmp sgt i64 %i.bq, 0
  br i1 %i.bs, label %.lr.ph66.preheader.i.i, label %._crit_edge67.i.i

.lr.ph66.preheader.i.i:                           ; preds = %bb.k
  %i.bt = getelementptr [8 x i8], ptr %.sroa.026.0.i.i, i64 %.0.i.i ; 5 uses
  %min.iters.check129 = icmp ult i64 %i.bq, 6
  br i1 %min.iters.check129, label %.lr.ph66.i.i.preheader, label %vector.memcheck122

vector.memcheck122:                               ; preds = %.lr.ph66.preheader.i.i
  %i.bu = shl i64 %.056.i.i, 3
  %i.bv = sub i64 %.056.i.i, %.0.i.i
  %i.bw = shl i64 %i.bv, 3
  %scevgep123 = getelementptr i8, ptr %.sroa.026.0.i.i, i64 %i.bw
  %scevgep124 = getelementptr i8, ptr %.sroa.026.0.i.i, i64 %i.bu
  %bound0125 = icmp ult ptr %.sroa.026.0.i.i, %scevgep124
  %bound1126 = icmp ult ptr %i.bt, %scevgep123
  %found.conflict127 = and i1 %bound0125, %bound1126
  br i1 %found.conflict127, label %.lr.ph66.i.i.preheader, label %vector.ph130

vector.ph130:                                     ; preds = %vector.memcheck122
  %n.vec131 = and i64 %i.bq, 9223372036854775804  ; 4 uses
  %i.bx = shl i64 %n.vec131, 3                    ; 2 uses
  %i.by = getelementptr i8, ptr %i.bt, i64 %i.bx
  %i.bz = getelementptr i8, ptr %.sroa.026.0.i.i, i64 %i.bx ; 2 uses
  br label %vector.body132

vector.body132:                                   ; preds = %vector.body132, %vector.ph130
  %index133 = phi i64 [ 0, %vector.ph130 ], [ %index.next140, %vector.body132 ] ; 2 uses
  %i.ca = shl i64 %index133, 3                    ; 2 uses
  %next.gep134 = getelementptr i8, ptr %i.bt, i64 %i.ca ; 3 uses
  %next.gep135 = getelementptr i8, ptr %.sroa.026.0.i.i, i64 %i.ca ; 3 uses
  %i.cb = getelementptr i8, ptr %next.gep135, i64 16 ; 2 uses
  %wide.load136 = load <2 x ptr>, ptr %next.gep135, align 8, !tbaa !56, !alias.scope !299, !noalias !300
  %wide.load137 = load <2 x ptr>, ptr %i.cb, align 8, !tbaa !56, !alias.scope !299, !noalias !300
  %i.cc = getelementptr i8, ptr %next.gep134, i64 16 ; 2 uses
  %wide.load138 = load <2 x ptr>, ptr %next.gep134, align 8, !tbaa !56, !alias.scope !300
  %wide.load139 = load <2 x ptr>, ptr %i.cc, align 8, !tbaa !56, !alias.scope !300
  store <2 x ptr> %wide.load138, ptr %next.gep135, align 8, !tbaa !56, !alias.scope !299, !noalias !300
  store <2 x ptr> %wide.load139, ptr %i.cb, align 8, !tbaa !56, !alias.scope !299, !noalias !300
  store <2 x ptr> %wide.load136, ptr %next.gep134, align 8, !tbaa !56, !alias.scope !300
  store <2 x ptr> %wide.load137, ptr %i.cc, align 8, !tbaa !56, !alias.scope !300
  %index.next140 = add nuw i64 %index133, 4       ; 2 uses
  %i.cd = icmp eq i64 %index.next140, %n.vec131
  br i1 %i.cd, label %middle.block141, label %vector.body132, !llvm.loop !288

middle.block141:                                  ; preds = %vector.body132
  %cmp.n142 = icmp eq i64 %i.bq, %n.vec131
  br i1 %cmp.n142, label %._crit_edge67.i.i, label %.lr.ph66.i.i.preheader

.lr.ph66.i.i.preheader:                           ; preds = %vector.memcheck122, %.lr.ph66.preheader.i.i, %middle.block141
  %.01964.i.i.ph = phi i64 [ 0, %vector.memcheck122 ], [ 0, %.lr.ph66.preheader.i.i ], [ %n.vec131, %middle.block141 ] ; 3 uses
  %.sroa.025.063.i.i.ph = phi ptr [ %i.bt, %vector.memcheck122 ], [ %i.bt, %.lr.ph66.preheader.i.i ], [ %i.by, %middle.block141 ] ; 2 uses
  %.sroa.026.162.i.i.ph = phi ptr [ %.sroa.026.0.i.i, %vector.memcheck122 ], [ %.sroa.026.0.i.i, %.lr.ph66.preheader.i.i ], [ %i.bz, %middle.block141 ] ; 2 uses
  %8 = sub i64 %.056.i.i, %.0.i.i
  %xtraiter174 = and i64 %8, 3                    ; 2 uses
  %lcmp.mod175.not = icmp eq i64 %xtraiter174, 0
  br i1 %lcmp.mod175.not, label %.lr.ph66.i.i.prol.loopexit, label %.lr.ph66.i.i.prol

.lr.ph66.i.i.prol:                                ; preds = %.lr.ph66.i.i.preheader, %.lr.ph66.i.i.prol
  %.01964.i.i.prol = phi i64 [ %i.ci, %.lr.ph66.i.i.prol ], [ %.01964.i.i.ph, %.lr.ph66.i.i.preheader ]
  %.sroa.025.063.i.i.prol = phi ptr [ %i.ch, %.lr.ph66.i.i.prol ], [ %.sroa.025.063.i.i.ph, %.lr.ph66.i.i.preheader ] ; 3 uses
  %.sroa.026.162.i.i.prol = phi ptr [ %i.cg, %.lr.ph66.i.i.prol ], [ %.sroa.026.162.i.i.ph, %.lr.ph66.i.i.preheader ] ; 3 uses
  %prol.iter176 = phi i64 [ %prol.iter176.next, %.lr.ph66.i.i.prol ], [ 0, %.lr.ph66.i.i.preheader ]
  %i.ce = load ptr, ptr %.sroa.026.162.i.i.prol, align 8, !tbaa !56
  %i.cf = load ptr, ptr %.sroa.025.063.i.i.prol, align 8, !tbaa !56
  store ptr %i.cf, ptr %.sroa.026.162.i.i.prol, align 8, !tbaa !56
  store ptr %i.ce, ptr %.sroa.025.063.i.i.prol, align 8, !tbaa !56
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.026.162.i.i.prol, i64 8 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.025.063.i.i.prol, i64 8 ; 2 uses
  %i.ci = add nuw nsw i64 %.01964.i.i.prol, 1     ; 2 uses
  %prol.iter176.next = add i64 %prol.iter176, 1   ; 2 uses
  %prol.iter176.cmp.not = icmp eq i64 %prol.iter176.next, %xtraiter174
  br i1 %prol.iter176.cmp.not, label %.lr.ph66.i.i.prol.loopexit, label %.lr.ph66.i.i.prol, !llvm.loop !289

.lr.ph66.i.i.prol.loopexit:                       ; preds = %.lr.ph66.i.i.prol, %.lr.ph66.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph66.i.i.preheader ], [ %i.cg, %.lr.ph66.i.i.prol ]
  %.01964.i.i.unr = phi i64 [ %.01964.i.i.ph, %.lr.ph66.i.i.preheader ], [ %i.ci, %.lr.ph66.i.i.prol ]
  %.sroa.025.063.i.i.unr = phi ptr [ %.sroa.025.063.i.i.ph, %.lr.ph66.i.i.preheader ], [ %i.ch, %.lr.ph66.i.i.prol ]
  %.sroa.026.162.i.i.unr = phi ptr [ %.sroa.026.162.i.i.ph, %.lr.ph66.i.i.preheader ], [ %i.cg, %.lr.ph66.i.i.prol ]
  %i.cj = sub i64 %.01964.i.i.ph, %.056.i.i
  %i.ck = add i64 %i.cj, %.0.i.i
  %i.cl = icmp ugt i64 %i.ck, -4
  br i1 %i.cl, label %._crit_edge67.i.i, label %.lr.ph66.i.i

._crit_edge67.i.i:                                ; preds = %.lr.ph66.i.i.prol.loopexit, %.lr.ph66.i.i, %middle.block141, %bb.k
  %.sroa.026.1.lcssa.i.i = phi ptr [ %.sroa.026.0.i.i, %bb.k ], [ %i.bz, %middle.block141 ], [ %.lcssa.unr, %.lr.ph66.i.i.prol.loopexit ], [ %i.db, %.lr.ph66.i.i ]
  %i.cm = srem i64 %.056.i.i, %.0.i.i             ; 2 uses
  %.not21.i.i = icmp eq i64 %i.cm, 0
  br i1 %.not21.i.i, label %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEET_SF_SF_SF_.exit, label %bb.l

.lr.ph66.i.i:                                     ; preds = %.lr.ph66.i.i.prol.loopexit, %.lr.ph66.i.i
  %.01964.i.i = phi i64 [ %i.dd, %.lr.ph66.i.i ], [ %.01964.i.i.unr, %.lr.ph66.i.i.prol.loopexit ]
  %.sroa.025.063.i.i = phi ptr [ %i.dc, %.lr.ph66.i.i ], [ %.sroa.025.063.i.i.unr, %.lr.ph66.i.i.prol.loopexit ] ; 6 uses
  %.sroa.026.162.i.i = phi ptr [ %i.db, %.lr.ph66.i.i ], [ %.sroa.026.162.i.i.unr, %.lr.ph66.i.i.prol.loopexit ] ; 6 uses
  %i.cn = load ptr, ptr %.sroa.026.162.i.i, align 8, !tbaa !56
  %i.co = load ptr, ptr %.sroa.025.063.i.i, align 8, !tbaa !56
  store ptr %i.co, ptr %.sroa.026.162.i.i, align 8, !tbaa !56
  store ptr %i.cn, ptr %.sroa.025.063.i.i, align 8, !tbaa !56
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.026.162.i.i, i64 8 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.025.063.i.i, i64 8 ; 2 uses
  %i.cr = load ptr, ptr %i.cp, align 8, !tbaa !56
  %i.cs = load ptr, ptr %i.cq, align 8, !tbaa !56
  store ptr %i.cs, ptr %i.cp, align 8, !tbaa !56
  store ptr %i.cr, ptr %i.cq, align 8, !tbaa !56
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.026.162.i.i, i64 16 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.025.063.i.i, i64 16 ; 2 uses
  %i.cv = load ptr, ptr %i.ct, align 8, !tbaa !56
  %i.cw = load ptr, ptr %i.cu, align 8, !tbaa !56
  store ptr %i.cw, ptr %i.ct, align 8, !tbaa !56
  store ptr %i.cv, ptr %i.cu, align 8, !tbaa !56
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.026.162.i.i, i64 24 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.025.063.i.i, i64 24 ; 2 uses
  %i.cz = load ptr, ptr %i.cx, align 8, !tbaa !56
  %i.da = load ptr, ptr %i.cy, align 8, !tbaa !56
  store ptr %i.da, ptr %i.cx, align 8, !tbaa !56
  store ptr %i.cz, ptr %i.cy, align 8, !tbaa !56
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.026.162.i.i, i64 32 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.025.063.i.i, i64 32
  %i.dd = add nuw nsw i64 %.01964.i.i, 4          ; 2 uses
  %exitcond71.not.i.i.3 = icmp eq i64 %i.dd, %i.bq
  br i1 %exitcond71.not.i.i.3, label %._crit_edge67.i.i, label %.lr.ph66.i.i, !llvm.loop !290

bb.l:                                             ; preds = %._crit_edge67.i.i
  %i.de = sub nsw i64 %.0.i.i, %i.cm
  br label %.backedge

bb.m:                                             ; preds = %bb.j
  %i.df = getelementptr [8 x i8], ptr %.sroa.026.0.i.i, i64 %.056.i.i ; 6 uses
  %i.dg = sub i64 0, %i.bq
  %i.dh = getelementptr [8 x i8], ptr %i.df, i64 %i.dg ; 6 uses
  %i.di = icmp sgt i64 %.0.i.i, 0
  br i1 %i.di, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.m
  %min.iters.check152 = icmp ult i64 %.0.i.i, 6
  br i1 %min.iters.check152, label %.lr.ph.i.i.preheader169, label %vector.memcheck146

vector.memcheck146:                               ; preds = %.lr.ph.i.i.preheader
  %i.dj = sub i64 %.056.i.i, %.0.i.i
  %i.dk = shl i64 %i.dj, 3
  %scevgep147 = getelementptr i8, ptr %.sroa.026.0.i.i, i64 %i.dk
  %bound0148 = icmp ult ptr %.sroa.026.0.i.i, %i.df
  %bound1149 = icmp ult ptr %scevgep147, %i.dh
  %found.conflict150 = and i1 %bound0148, %bound1149
  br i1 %found.conflict150, label %.lr.ph.i.i.preheader169, label %vector.ph153

vector.ph153:                                     ; preds = %vector.memcheck146
  %n.vec154 = and i64 %.0.i.i, 9223372036854775804 ; 4 uses
  %i.dl = mul i64 %n.vec154, -8                   ; 2 uses
  %i.dm = getelementptr i8, ptr %i.df, i64 %i.dl
  %i.dn = getelementptr i8, ptr %i.dh, i64 %i.dl
  br label %vector.body155

vector.body155:                                   ; preds = %vector.body155, %vector.ph153
  %index156 = phi i64 [ 0, %vector.ph153 ], [ %index.next163, %vector.body155 ] ; 2 uses
  %i.do = mul i64 %index156, -8                   ; 2 uses
  %next.gep157 = getelementptr i8, ptr %i.df, i64 %i.do ; 2 uses
  %next.gep158 = getelementptr i8, ptr %i.dh, i64 %i.do ; 2 uses
  %i.dp = getelementptr inbounds i8, ptr %next.gep158, i64 -16 ; 2 uses
  %i.dq = getelementptr inbounds i8, ptr %next.gep158, i64 -32 ; 2 uses
  %wide.load159 = load <2 x ptr>, ptr %i.dp, align 8, !tbaa !56, !alias.scope !301, !noalias !302
  %wide.load160 = load <2 x ptr>, ptr %i.dq, align 8, !tbaa !56, !alias.scope !301, !noalias !302
  %i.dr = getelementptr inbounds i8, ptr %next.gep157, i64 -16 ; 2 uses
  %i.ds = getelementptr inbounds i8, ptr %next.gep157, i64 -32 ; 2 uses
  %wide.load161 = load <2 x ptr>, ptr %i.dr, align 8, !tbaa !56, !alias.scope !302
  %wide.load162 = load <2 x ptr>, ptr %i.ds, align 8, !tbaa !56, !alias.scope !302
  store <2 x ptr> %wide.load161, ptr %i.dp, align 8, !tbaa !56, !alias.scope !301, !noalias !302
  store <2 x ptr> %wide.load162, ptr %i.dq, align 8, !tbaa !56, !alias.scope !301, !noalias !302
  store <2 x ptr> %wide.load159, ptr %i.dr, align 8, !tbaa !56, !alias.scope !302
  store <2 x ptr> %wide.load160, ptr %i.ds, align 8, !tbaa !56, !alias.scope !302
  %index.next163 = add nuw i64 %index156, 4       ; 2 uses
  %i.dt = icmp eq i64 %index.next163, %n.vec154
  br i1 %i.dt, label %middle.block164, label %vector.body155, !llvm.loop !294

middle.block164:                                  ; preds = %vector.body155
  %cmp.n165 = icmp eq i64 %.0.i.i, %n.vec154
  br i1 %cmp.n165, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader169

.lr.ph.i.i.preheader169:                          ; preds = %vector.memcheck146, %.lr.ph.i.i.preheader, %middle.block164
  %.01861.i.i.ph = phi i64 [ 0, %vector.memcheck146 ], [ 0, %.lr.ph.i.i.preheader ], [ %n.vec154, %middle.block164 ] ; 3 uses
  %.sroa.0.060.i.i.ph = phi ptr [ %i.df, %vector.memcheck146 ], [ %i.df, %.lr.ph.i.i.preheader ], [ %i.dm, %middle.block164 ] ; 2 uses
  %.sroa.026.259.i.i.ph = phi ptr [ %i.dh, %vector.memcheck146 ], [ %i.dh, %.lr.ph.i.i.preheader ], [ %i.dn, %middle.block164 ] ; 2 uses
  %xtraiter = and i64 %.0.i.i, 3                  ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader169, %.lr.ph.i.i.prol
  %.01861.i.i.prol = phi i64 [ %i.dy, %.lr.ph.i.i.prol ], [ %.01861.i.i.ph, %.lr.ph.i.i.preheader169 ]
  %.sroa.0.060.i.i.prol = phi ptr [ %i.dv, %.lr.ph.i.i.prol ], [ %.sroa.0.060.i.i.ph, %.lr.ph.i.i.preheader169 ]
  %.sroa.026.259.i.i.prol = phi ptr [ %i.du, %.lr.ph.i.i.prol ], [ %.sroa.026.259.i.i.ph, %.lr.ph.i.i.preheader169 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader169 ]
  %i.du = getelementptr inbounds i8, ptr %.sroa.026.259.i.i.prol, i64 -8 ; 4 uses
  %i.dv = getelementptr inbounds i8, ptr %.sroa.0.060.i.i.prol, i64 -8 ; 4 uses
  %i.dw = load ptr, ptr %i.du, align 8, !tbaa !56
  %i.dx = load ptr, ptr %i.dv, align 8, !tbaa !56
  store ptr %i.dx, ptr %i.du, align 8, !tbaa !56
  store ptr %i.dw, ptr %i.dv, align 8, !tbaa !56
  %i.dy = add nuw nsw i64 %.01861.i.i.prol, 1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !295

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader169
  %.01861.i.i.unr = phi i64 [ %.01861.i.i.ph, %.lr.ph.i.i.preheader169 ], [ %i.dy, %.lr.ph.i.i.prol ]
  %.sroa.0.060.i.i.unr = phi ptr [ %.sroa.0.060.i.i.ph, %.lr.ph.i.i.preheader169 ], [ %i.dv, %.lr.ph.i.i.prol ]
  %.sroa.026.259.i.i.unr = phi ptr [ %.sroa.026.259.i.i.ph, %.lr.ph.i.i.preheader169 ], [ %i.du, %.lr.ph.i.i.prol ]
  %i.dz = sub nsw i64 %.01861.i.i.ph, %.0.i.i
  %i.ea = icmp ugt i64 %i.dz, -4
  br i1 %i.ea, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block164, %bb.m
  %.sroa.026.2.lcssa.i.i = phi ptr [ %i.dh, %bb.m ], [ %.sroa.026.0.i.i, %middle.block164 ], [ %.sroa.026.0.i.i, %.lr.ph.i.i ], [ %.sroa.026.0.i.i, %.lr.ph.i.i.prol.loopexit ]
  %i.eb = srem i64 %.056.i.i, %i.bq               ; 2 uses
  %.not.i.i = icmp eq i64 %i.eb, 0
  br i1 %.not.i.i, label %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEET_SF_SF_SF_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge.i.i, %bb.l
  %.056.i.i.be = phi i64 [ %.0.i.i, %bb.l ], [ %i.bq, %._crit_edge.i.i ]
  %.0.i.i.be = phi i64 [ %i.de, %bb.l ], [ %i.eb, %._crit_edge.i.i ]
  %.sroa.026.0.i.i.be = phi ptr [ %.sroa.026.1.lcssa.i.i, %bb.l ], [ %.sroa.026.2.lcssa.i.i, %._crit_edge.i.i ]
  br label %bb.j, !llvm.loop !19

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.01861.i.i = phi i64 [ %i.es, %.lr.ph.i.i ], [ %.01861.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.0.060.i.i = phi ptr [ %i.ep, %.lr.ph.i.i ], [ %.sroa.0.060.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %.sroa.026.259.i.i = phi ptr [ %i.eo, %.lr.ph.i.i ], [ %.sroa.026.259.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %i.ec = getelementptr inbounds i8, ptr %.sroa.026.259.i.i, i64 -8 ; 2 uses
  %i.ed = getelementptr inbounds i8, ptr %.sroa.0.060.i.i, i64 -8 ; 2 uses
  %i.ee = load ptr, ptr %i.ec, align 8, !tbaa !56
  %i.ef = load ptr, ptr %i.ed, align 8, !tbaa !56
  store ptr %i.ef, ptr %i.ec, align 8, !tbaa !56
  store ptr %i.ee, ptr %i.ed, align 8, !tbaa !56
  %i.eg = getelementptr inbounds i8, ptr %.sroa.026.259.i.i, i64 -16 ; 2 uses
  %i.eh = getelementptr inbounds i8, ptr %.sroa.0.060.i.i, i64 -16 ; 2 uses
  %i.ei = load ptr, ptr %i.eg, align 8, !tbaa !56
  %i.ej = load ptr, ptr %i.eh, align 8, !tbaa !56
  store ptr %i.ej, ptr %i.eg, align 8, !tbaa !56
  store ptr %i.ei, ptr %i.eh, align 8, !tbaa !56
  %i.ek = getelementptr inbounds i8, ptr %.sroa.026.259.i.i, i64 -24 ; 2 uses
  %i.el = getelementptr inbounds i8, ptr %.sroa.0.060.i.i, i64 -24 ; 2 uses
  %i.em = load ptr, ptr %i.ek, align 8, !tbaa !56
  %i.en = load ptr, ptr %i.el, align 8, !tbaa !56
  store ptr %i.en, ptr %i.ek, align 8, !tbaa !56
  store ptr %i.em, ptr %i.el, align 8, !tbaa !56
  %i.eo = getelementptr inbounds i8, ptr %.sroa.026.259.i.i, i64 -32 ; 3 uses
  %i.ep = getelementptr inbounds i8, ptr %.sroa.0.060.i.i, i64 -32 ; 3 uses
  %i.eq = load ptr, ptr %i.eo, align 8, !tbaa !56
  %i.er = load ptr, ptr %i.ep, align 8, !tbaa !56
  store ptr %i.er, ptr %i.eo, align 8, !tbaa !56
  store ptr %i.eq, ptr %i.ep, align 8, !tbaa !56
  %i.es = add nuw nsw i64 %.01861.i.i, 4          ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.es, %.0.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !296

_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEET_SF_SF_SF_.exit: ; preds = %._crit_edge67.i.i, %._crit_edge.i.i, %.lr.ph.i.i.i, %middle.block, %bb.f, %bb.g
end_hunk_0
begin_hunk_1_@_ZSt17__rotate_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_lET_SE_SE_SE_T1_SF_T0_SF_:bb.a
  %i.q = sub i64 %i.c, %i.p
  %i.r = ashr exact i64 %i.q, 3                   ; 2 uses
  %i.s = icmp sgt i64 %i.r, 0
  br i1 %i.s, label %.lr.ph.i.i.i.i.i37, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit

.lr.ph.i.i.i.i.i37:                               ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i40
  %.010.i.i.i.i.i = phi i64 [ %i.aa, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i40 ], [ %i.r, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.u, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i40 ], [ %2, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit ]
  %.078.i.i.i.i.i = phi ptr [ %i.t, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i40 ], [ %1, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit ]
  %i.t = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8 ; 3 uses
  %i.u = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8 ; 3 uses
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !56
  store ptr null, ptr %i.t, align 8, !tbaa !56
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !56   ; 3 uses
  store ptr %i.v, ptr %i.u, align 8, !tbaa !56
  %.not.i.i.i.i.i.i.i.i.i38 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i.i.i.i.i38, label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i40, label %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i.i.i.i.i39

_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i.i.i.i.i39: ; preds = %.lr.ph.i.i.i.i.i37
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !38
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.w) #19, !inline_history !10
  br label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i40

_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i40: ; preds = %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i.i.i.i.i39, %.lr.ph.i.i.i.i.i37
  %i.aa = add nsw i64 %.010.i.i.i.i.i, -1
  %i.ab = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.ab, label %.lr.ph.i.i.i.i.i37, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit, !llvm.loop !11

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit: ; preds = %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i40, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit
  %i.ac = ptrtoint ptr %.08.lcssa.i.i.i.i.i to i64
  %i.ad = ptrtoint ptr %5 to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 3                 ; 2 uses
  %i.ag = icmp sgt i64 %i.af, 0
  br i1 %i.ag, label %.lr.ph.i.i.i.i.i42, label %_ZSt4moveIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit

.lr.ph.i.i.i.i.i42:                               ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i48
  %.012.i.i.i.i.i43 = phi i64 [ %i.ao, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i48 ], [ %i.af, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit ] ; 2 uses
  %.0811.i.i.i.i.i44 = phi ptr [ %i.an, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i48 ], [ %0, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit ] ; 3 uses
  %.0910.i.i.i.i.i45 = phi ptr [ %i.am, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i48 ], [ %5, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit ] ; 3 uses
  %i.ah = load ptr, ptr %.0910.i.i.i.i.i45, align 8, !tbaa !56
  store ptr null, ptr %.0910.i.i.i.i.i45, align 8, !tbaa !56
  %i.ai = load ptr, ptr %.0811.i.i.i.i.i44, align 8, !tbaa !56 ; 3 uses
  store ptr %i.ah, ptr %.0811.i.i.i.i.i44, align 8, !tbaa !56
  %.not.i.i.i.i.i.i.i.i.i46 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i.i.i.i.i46, label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i48, label %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i.i.i.i.i47

_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i.i.i.i.i47: ; preds = %.lr.ph.i.i.i.i.i42
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !38
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(8) %i.ai) #19, !inline_history !13
  br label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i48

_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i48: ; preds = %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i.i.i.i.i47, %.lr.ph.i.i.i.i.i42
  %i.am = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i45, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i44, i64 8 ; 2 uses
  %i.ao = add nsw i64 %.012.i.i.i.i.i43, -1
  %i.ap = icmp sgt i64 %.012.i.i.i.i.i43, 1
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i42, label %_ZSt4moveIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.loopexit, !llvm.loop !6

_ZSt4moveIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.loopexit: ; preds = %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i48
  %.pre84 = ptrtoint ptr %i.an to i64
  br label %_ZSt4moveIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit

_ZSt4moveIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit: ; preds = %_ZSt4moveIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.loopexit, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit
  %.pre-phi85 = phi i64 [ %.pre84, %_ZSt4moveIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.loopexit ], [ %i.p, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit ]
  %i.aq = sub i64 %.pre-phi85, %i.p
  %i.ar = getelementptr inbounds i8, ptr %0, i64 %i.aq
  br label %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEET_SF_SF_SF_.exit

bb.d:                                             ; preds = %bb.a
  %.not34 = icmp sgt i64 %3, %6
  br i1 %.not34, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not35 = icmp eq i64 %3, 0
  br i1 %.not35, label %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEET_SF_SF_SF_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.at = ptrtoint ptr %0 to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 3                 ; 2 uses
  %i.aw = icmp sgt i64 %i.av, 0
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i50, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit57

.lr.ph.i.i.i.i.i50:                               ; preds = %bb.f, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i56
  %.012.i.i.i.i.i51 = phi i64 [ %i.be, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i56 ], [ %i.av, %bb.f ] ; 2 uses
  %.0811.i.i.i.i.i52 = phi ptr [ %i.bd, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i56 ], [ %5, %bb.f ] ; 3 uses
  %.0910.i.i.i.i.i53 = phi ptr [ %i.bc, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i56 ], [ %0, %bb.f ] ; 3 uses
  %i.ax = load ptr, ptr %.0910.i.i.i.i.i53, align 8, !tbaa !56
  store ptr null, ptr %.0910.i.i.i.i.i53, align 8, !tbaa !56
  %i.ay = load ptr, ptr %.0811.i.i.i.i.i52, align 8, !tbaa !56 ; 3 uses
  store ptr %i.ax, ptr %.0811.i.i.i.i.i52, align 8, !tbaa !56
  %.not.i.i.i.i.i.i.i.i.i54 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i.i.i.i.i.i54, label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i56, label %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i.i.i.i.i55

_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i.i.i.i.i55: ; preds = %.lr.ph.i.i.i.i.i50
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !38
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  tail call void %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.ay) #19, !inline_history !8
  br label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i56

_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i56: ; preds = %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i.i.i.i.i55, %.lr.ph.i.i.i.i.i50
  %i.bc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i53, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i52, i64 8 ; 2 uses
  %i.be = add nsw i64 %.012.i.i.i.i.i51, -1
  %i.bf = icmp sgt i64 %.012.i.i.i.i.i51, 1
  br i1 %i.bf, label %.lr.ph.i.i.i.i.i50, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit57, !llvm.loop !6

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit57: ; preds = %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i56, %bb.f
  %.08.lcssa.i.i.i.i.i49 = phi ptr [ %5, %bb.f ], [ %i.bd, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i56 ] ; 2 uses
  %i.bg = ptrtoint ptr %2 to i64                  ; 3 uses
  %i.bh = sub i64 %i.bg, %i.as
  %i.bi = ashr exact i64 %i.bh, 3                 ; 2 uses
  %i.bj = icmp sgt i64 %i.bi, 0
  br i1 %i.bj, label %.lr.ph.i.i.i.i.i59, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit

.lr.ph.i.i.i.i.i59:                               ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit57, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i65
  %.012.i.i.i.i.i60 = phi i64 [ %i.br, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i65 ], [ %i.bi, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit57 ] ; 2 uses
  %.0811.i.i.i.i.i61 = phi ptr [ %i.bq, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i65 ], [ %0, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit57 ] ; 3 uses
  %.0910.i.i.i.i.i62 = phi ptr [ %i.bp, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i65 ], [ %1, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit57 ] ; 3 uses
  %i.bk = load ptr, ptr %.0910.i.i.i.i.i62, align 8, !tbaa !56
  store ptr null, ptr %.0910.i.i.i.i.i62, align 8, !tbaa !56
  %i.bl = load ptr, ptr %.0811.i.i.i.i.i61, align 8, !tbaa !56 ; 3 uses
  store ptr %i.bk, ptr %.0811.i.i.i.i.i61, align 8, !tbaa !56
  %.not.i.i.i.i.i.i.i.i.i63 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i.i.i.i.i.i63, label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i65, label %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i.i.i.i.i64

_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i.i.i.i.i64: ; preds = %.lr.ph.i.i.i.i.i59
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !38
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  tail call void %i.bo(ptr noundef nonnull align 8 dereferenceable(8) %i.bl) #19, !inline_history !303
  br label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i65

_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i65: ; preds = %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i.i.i.i.i64, %.lr.ph.i.i.i.i.i59
  %i.bp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i62, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i61, i64 8
  %i.br = add nsw i64 %.012.i.i.i.i.i60, -1
  %i.bs = icmp sgt i64 %.012.i.i.i.i.i60, 1
  br i1 %i.bs, label %.lr.ph.i.i.i.i.i59, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit, !llvm.loop !6

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit: ; preds = %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i65, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit57
  %i.bt = ptrtoint ptr %.08.lcssa.i.i.i.i.i49 to i64
  %i.bu = ptrtoint ptr %5 to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = ashr exact i64 %i.bv, 3                 ; 2 uses
  %i.bx = icmp sgt i64 %i.bw, 0
  br i1 %i.bx, label %.lr.ph.i.i.i.i.i67, label %_ZSt13move_backwardIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit

.lr.ph.i.i.i.i.i67:                               ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i73
  %.010.i.i.i.i.i68 = phi i64 [ %i.cf, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i73 ], [ %i.bw, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit ] ; 2 uses
  %.069.i.i.i.i.i69 = phi ptr [ %i.bz, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i73 ], [ %2, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit ]
  %.078.i.i.i.i.i70 = phi ptr [ %i.by, %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i73 ], [ %.08.lcssa.i.i.i.i.i49, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit ]
  %i.by = getelementptr inbounds i8, ptr %.078.i.i.i.i.i70, i64 -8 ; 3 uses
  %i.bz = getelementptr inbounds i8, ptr %.069.i.i.i.i.i69, i64 -8 ; 4 uses
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !56
  store ptr null, ptr %i.by, align 8, !tbaa !56
  %i.cb = load ptr, ptr %i.bz, align 8, !tbaa !56 ; 3 uses
  store ptr %i.ca, ptr %i.bz, align 8, !tbaa !56
  %.not.i.i.i.i.i.i.i.i.i71 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i.i.i.i.i.i71, label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i73, label %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i.i.i.i.i72

_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i.i.i.i.i72: ; preds = %.lr.ph.i.i.i.i.i67
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !38
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8
  tail call void %i.ce(ptr noundef nonnull align 8 dereferenceable(8) %i.cb) #19, !inline_history !14
  br label %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i73

_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i73: ; preds = %_ZNKSt14default_deleteIKN14grpc_generator6MethodEEclEPS2_.exit.i.i.i.i.i.i.i.i.i72, %.lr.ph.i.i.i.i.i67
  %i.cf = add nsw i64 %.010.i.i.i.i.i68, -1
  %i.cg = icmp sgt i64 %.010.i.i.i.i.i68, 1
  br i1 %i.cg, label %.lr.ph.i.i.i.i.i67, label %_ZSt13move_backwardIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.loopexit, !llvm.loop !11

_ZSt13move_backwardIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.loopexit: ; preds = %_ZNSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i73
  %.pre = ptrtoint ptr %i.bz to i64
  br label %_ZSt13move_backwardIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit

_ZSt13move_backwardIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit: ; preds = %_ZSt13move_backwardIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.loopexit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13move_backwardIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.loopexit ], [ %i.bg, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit ]
  %i.ch = sub i64 %.pre-phi, %i.bg
  %i.ci = getelementptr inbounds i8, ptr %2, i64 %i.ch
  br label %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEET_SF_SF_SF_.exit

bb.g:                                             ; preds = %bb.d
  %i.cj = icmp eq ptr %0, %1
  br i1 %i.cj, label %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEET_SF_SF_SF_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ck = icmp eq ptr %2, %1
  br i1 %i.ck, label %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEET_SF_SF_SF_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cl = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.cm = ptrtoint ptr %0 to i64                  ; 4 uses
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = ashr exact i64 %i.cn, 3                 ; 2 uses
  %i.cp = ptrtoint ptr %1 to i64                  ; 4 uses
  %i.cq = sub i64 %i.cp, %i.cm
  %i.cr = ashr exact i64 %i.cq, 3                 ; 3 uses
  %i.cs = sub nsw i64 %i.co, %i.cr
  %i.ct = icmp eq i64 %i.cr, %i.cs
  br i1 %i.ct, label %.lr.ph.i.i.i.preheader, label %bb.j

.lr.ph.i.i.i.preheader:                           ; preds = %bb.i
  %i.cu = add i64 %i.cp, -8
  %i.cv = sub i64 %i.cu, %i.cm                    ; 2 uses
  %i.cw = lshr i64 %i.cv, 3
  %i.cx = add nuw nsw i64 %i.cw, 1                ; 2 uses
  %min.iters.check153 = icmp ult i64 %i.cv, 104
  br i1 %min.iters.check153, label %.lr.ph.i.i.i.preheader169, label %vector.memcheck146

vector.memcheck146:                               ; preds = %.lr.ph.i.i.i.preheader
  %7 = add i64 %i.cp, -8
  %8 = sub i64 %7, %i.cm
  %i.cy = and i64 %8, -8
  %9 = add i64 %i.cy, 8                           ; 2 uses
  %scevgep147 = getelementptr i8, ptr %0, i64 %9
  %scevgep148 = getelementptr i8, ptr %1, i64 %9
  %bound0149 = icmp ult ptr %0, %scevgep148
  %bound1150 = icmp ult ptr %1, %scevgep147
  %found.conflict151 = and i1 %bound0149, %bound1150
  br i1 %found.conflict151, label %.lr.ph.i.i.i.preheader169, label %vector.ph154

vector.ph154:                                     ; preds = %vector.memcheck146
  %n.vec155 = and i64 %i.cx, 4611686018427387900  ; 3 uses
  %i.cz = shl i64 %n.vec155, 3                    ; 2 uses
  %i.da = getelementptr i8, ptr %1, i64 %i.cz
  %i.db = getelementptr i8, ptr %0, i64 %i.cz
  br label %vector.body156

vector.body156:                                   ; preds = %vector.body156, %vector.ph154
  %index157 = phi i64 [ 0, %vector.ph154 ], [ %index.next164, %vector.body156 ] ; 2 uses
  %i.dc = shl i64 %index157, 3                    ; 2 uses
  %next.gep158 = getelementptr i8, ptr %1, i64 %i.dc ; 3 uses
  %next.gep159 = getelementptr i8, ptr %0, i64 %i.dc ; 3 uses
  %i.dd = getelementptr i8, ptr %next.gep159, i64 16 ; 2 uses
  %wide.load160 = load <2 x ptr>, ptr %next.gep159, align 8, !tbaa !56, !alias.scope !321, !noalias !322
  %wide.load161 = load <2 x ptr>, ptr %i.dd, align 8, !tbaa !56, !alias.scope !321, !noalias !322
  %i.de = getelementptr i8, ptr %next.gep158, i64 16 ; 2 uses
  %wide.load162 = load <2 x ptr>, ptr %next.gep158, align 8, !tbaa !56, !alias.scope !322
  %wide.load163 = load <2 x ptr>, ptr %i.de, align 8, !tbaa !56, !alias.scope !322
  store <2 x ptr> %wide.load162, ptr %next.gep159, align 8, !tbaa !56, !alias.scope !321, !noalias !322
  store <2 x ptr> %wide.load163, ptr %i.dd, align 8, !tbaa !56, !alias.scope !321, !noalias !322
  store <2 x ptr> %wide.load160, ptr %next.gep158, align 8, !tbaa !56, !alias.scope !322
  store <2 x ptr> %wide.load161, ptr %i.de, align 8, !tbaa !56, !alias.scope !322
  %index.next164 = add nuw i64 %index157, 4       ; 2 uses
  %i.df = icmp eq i64 %index.next164, %n.vec155
  br i1 %i.df, label %middle.block165, label %vector.body156, !llvm.loop !307

middle.block165:                                  ; preds = %vector.body156
  %cmp.n166 = icmp eq i64 %i.cx, %n.vec155
  br i1 %cmp.n166, label %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEET_SF_SF_SF_.exit, label %.lr.ph.i.i.i.preheader169

.lr.ph.i.i.i.preheader169:                        ; preds = %vector.memcheck146, %.lr.ph.i.i.i.preheader, %middle.block165
  %.sroa.0.08.i.i.i.ph = phi ptr [ %1, %vector.memcheck146 ], [ %1, %.lr.ph.i.i.i.preheader ], [ %i.da, %middle.block165 ]
  %.sroa.04.07.i.i.i.ph = phi ptr [ %0, %vector.memcheck146 ], [ %0, %.lr.ph.i.i.i.preheader ], [ %i.db, %middle.block165 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader169, %.lr.ph.i.i.i
  %.sroa.0.08.i.i.i = phi ptr [ %i.dj, %.lr.ph.i.i.i ], [ %.sroa.0.08.i.i.i.ph, %.lr.ph.i.i.i.preheader169 ] ; 3 uses
  %.sroa.04.07.i.i.i = phi ptr [ %i.di, %.lr.ph.i.i.i ], [ %.sroa.04.07.i.i.i.ph, %.lr.ph.i.i.i.preheader169 ] ; 3 uses
  %i.dg = load ptr, ptr %.sroa.04.07.i.i.i, align 8, !tbaa !56
  %i.dh = load ptr, ptr %.sroa.0.08.i.i.i, align 8, !tbaa !56
  store ptr %i.dh, ptr %.sroa.04.07.i.i.i, align 8, !tbaa !56
  store ptr %i.dg, ptr %.sroa.0.08.i.i.i, align 8, !tbaa !56
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i, i64 8 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i, i64 8
  %.not.i.i.i = icmp eq ptr %i.di, %1
  br i1 %.not.i.i.i, label %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEET_SF_SF_SF_.exit, label %.lr.ph.i.i.i, !llvm.loop !308

bb.j:                                             ; preds = %bb.i
  %i.dk = sub i64 %i.cl, %i.cp
  %i.dl = getelementptr inbounds i8, ptr %0, i64 %i.dk ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.backedge, %bb.j
  %.056.i.i = phi i64 [ %i.co, %bb.j ], [ %.056.i.i.be, %.backedge ] ; 9 uses
  %.0.i.i = phi i64 [ %i.cr, %bb.j ], [ %.0.i.i.be, %.backedge ] ; 17 uses
  %.sroa.026.0.i.i = phi ptr [ %0, %bb.j ], [ %.sroa.026.0.i.i.be, %.backedge ] ; 15 uses
  %i.dm = sub nsw i64 %.056.i.i, %.0.i.i          ; 9 uses
  %i.dn = icmp slt i64 %.0.i.i, %i.dm
  br i1 %i.dn, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.do = icmp sgt i64 %i.dm, 0
  br i1 %i.do, label %.lr.ph66.preheader.i.i, label %._crit_edge67.i.i

.lr.ph66.preheader.i.i:                           ; preds = %bb.l
  %i.dp = getelementptr [8 x i8], ptr %.sroa.026.0.i.i, i64 %.0.i.i ; 5 uses
  %min.iters.check = icmp ult i64 %i.dm, 6
  br i1 %min.iters.check, label %.lr.ph66.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph66.preheader.i.i
  %i.dq = shl i64 %.056.i.i, 3
  %i.dr = sub i64 %.056.i.i, %.0.i.i
  %i.ds = shl i64 %i.dr, 3
  %scevgep = getelementptr i8, ptr %.sroa.026.0.i.i, i64 %i.ds
  %scevgep116 = getelementptr i8, ptr %.sroa.026.0.i.i, i64 %i.dq
  %bound0 = icmp ult ptr %.sroa.026.0.i.i, %scevgep116
  %bound1 = icmp ult ptr %i.dp, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph66.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dm, 9223372036854775804     ; 4 uses
  %i.dt = shl i64 %n.vec, 3                       ; 2 uses
  %i.du = getelementptr i8, ptr %i.dp, i64 %i.dt
  %i.dv = getelementptr i8, ptr %.sroa.026.0.i.i, i64 %i.dt ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dw = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dp, i64 %i.dw ; 3 uses
  %next.gep117 = getelementptr i8, ptr %.sroa.026.0.i.i, i64 %i.dw ; 3 uses
  %i.dx = getelementptr i8, ptr %next.gep117, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep117, align 8, !tbaa !56, !alias.scope !323, !noalias !324
  %wide.load118 = load <2 x ptr>, ptr %i.dx, align 8, !tbaa !56, !alias.scope !323, !noalias !324
  %i.dy = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load119 = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !56, !alias.scope !324
  %wide.load120 = load <2 x ptr>, ptr %i.dy, align 8, !tbaa !56, !alias.scope !324
  store <2 x ptr> %wide.load119, ptr %next.gep117, align 8, !tbaa !56, !alias.scope !323, !noalias !324
  store <2 x ptr> %wide.load120, ptr %i.dx, align 8, !tbaa !56, !alias.scope !323, !noalias !324
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !56, !alias.scope !324
  store <2 x ptr> %wide.load118, ptr %i.dy, align 8, !tbaa !56, !alias.scope !324
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dz = icmp eq i64 %index.next, %n.vec
  br i1 %i.dz, label %middle.block, label %vector.body, !llvm.loop !312

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dm, %n.vec
  br i1 %cmp.n, label %._crit_edge67.i.i, label %.lr.ph66.i.i.preheader

.lr.ph66.i.i.preheader:                           ; preds = %vector.memcheck, %.lr.ph66.preheader.i.i, %middle.block
  %.01964.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph66.preheader.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %.sroa.025.063.i.i.ph = phi ptr [ %i.dp, %vector.memcheck ], [ %i.dp, %.lr.ph66.preheader.i.i ], [ %i.du, %middle.block ] ; 2 uses
  %.sroa.026.162.i.i.ph = phi ptr [ %.sroa.026.0.i.i, %vector.memcheck ], [ %.sroa.026.0.i.i, %.lr.ph66.preheader.i.i ], [ %i.dv, %middle.block ] ; 2 uses
  %10 = sub i64 %.056.i.i, %.0.i.i
  %xtraiter176 = and i64 %10, 3                   ; 2 uses
  %lcmp.mod177.not = icmp eq i64 %xtraiter176, 0
  br i1 %lcmp.mod177.not, label %.lr.ph66.i.i.prol.loopexit, label %.lr.ph66.i.i.prol

.lr.ph66.i.i.prol:                                ; preds = %.lr.ph66.i.i.preheader, %.lr.ph66.i.i.prol
  %.01964.i.i.prol = phi i64 [ %i.ee, %.lr.ph66.i.i.prol ], [ %.01964.i.i.ph, %.lr.ph66.i.i.preheader ]
  %.sroa.025.063.i.i.prol = phi ptr [ %i.ed, %.lr.ph66.i.i.prol ], [ %.sroa.025.063.i.i.ph, %.lr.ph66.i.i.preheader ] ; 3 uses
  %.sroa.026.162.i.i.prol = phi ptr [ %i.ec, %.lr.ph66.i.i.prol ], [ %.sroa.026.162.i.i.ph, %.lr.ph66.i.i.preheader ] ; 3 uses
  %prol.iter178 = phi i64 [ %prol.iter178.next, %.lr.ph66.i.i.prol ], [ 0, %.lr.ph66.i.i.preheader ]
  %i.ea = load ptr, ptr %.sroa.026.162.i.i.prol, align 8, !tbaa !56
  %i.eb = load ptr, ptr %.sroa.025.063.i.i.prol, align 8, !tbaa !56
  store ptr %i.eb, ptr %.sroa.026.162.i.i.prol, align 8, !tbaa !56
  store ptr %i.ea, ptr %.sroa.025.063.i.i.prol, align 8, !tbaa !56
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.026.162.i.i.prol, i64 8 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.025.063.i.i.prol, i64 8 ; 2 uses
  %i.ee = add nuw nsw i64 %.01964.i.i.prol, 1     ; 2 uses
  %prol.iter178.next = add i64 %prol.iter178, 1   ; 2 uses
  %prol.iter178.cmp.not = icmp eq i64 %prol.iter178.next, %xtraiter176
  br i1 %prol.iter178.cmp.not, label %.lr.ph66.i.i.prol.loopexit, label %.lr.ph66.i.i.prol, !llvm.loop !313

.lr.ph66.i.i.prol.loopexit:                       ; preds = %.lr.ph66.i.i.prol, %.lr.ph66.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph66.i.i.preheader ], [ %i.ec, %.lr.ph66.i.i.prol ]
  %.01964.i.i.unr = phi i64 [ %.01964.i.i.ph, %.lr.ph66.i.i.preheader ], [ %i.ee, %.lr.ph66.i.i.prol ]
  %.sroa.025.063.i.i.unr = phi ptr [ %.sroa.025.063.i.i.ph, %.lr.ph66.i.i.preheader ], [ %i.ed, %.lr.ph66.i.i.prol ]
  %.sroa.026.162.i.i.unr = phi ptr [ %.sroa.026.162.i.i.ph, %.lr.ph66.i.i.preheader ], [ %i.ec, %.lr.ph66.i.i.prol ]
  %i.ef = sub i64 %.01964.i.i.ph, %.056.i.i
  %i.eg = add i64 %i.ef, %.0.i.i
  %i.eh = icmp ugt i64 %i.eg, -4
  br i1 %i.eh, label %._crit_edge67.i.i, label %.lr.ph66.i.i

._crit_edge67.i.i:                                ; preds = %.lr.ph66.i.i.prol.loopexit, %.lr.ph66.i.i, %middle.block, %bb.l
  %.sroa.026.1.lcssa.i.i = phi ptr [ %.sroa.026.0.i.i, %bb.l ], [ %i.dv, %middle.block ], [ %.lcssa.unr, %.lr.ph66.i.i.prol.loopexit ], [ %i.ex, %.lr.ph66.i.i ]
  %i.ei = srem i64 %.056.i.i, %.0.i.i             ; 2 uses
  %.not21.i.i = icmp eq i64 %i.ei, 0
  br i1 %.not21.i.i, label %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEET_SF_SF_SF_.exit, label %bb.m

.lr.ph66.i.i:                                     ; preds = %.lr.ph66.i.i.prol.loopexit, %.lr.ph66.i.i
  %.01964.i.i = phi i64 [ %i.ez, %.lr.ph66.i.i ], [ %.01964.i.i.unr, %.lr.ph66.i.i.prol.loopexit ]
  %.sroa.025.063.i.i = phi ptr [ %i.ey, %.lr.ph66.i.i ], [ %.sroa.025.063.i.i.unr, %.lr.ph66.i.i.prol.loopexit ] ; 6 uses
  %.sroa.026.162.i.i = phi ptr [ %i.ex, %.lr.ph66.i.i ], [ %.sroa.026.162.i.i.unr, %.lr.ph66.i.i.prol.loopexit ] ; 6 uses
  %i.ej = load ptr, ptr %.sroa.026.162.i.i, align 8, !tbaa !56
  %i.ek = load ptr, ptr %.sroa.025.063.i.i, align 8, !tbaa !56
  store ptr %i.ek, ptr %.sroa.026.162.i.i, align 8, !tbaa !56
  store ptr %i.ej, ptr %.sroa.025.063.i.i, align 8, !tbaa !56
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.026.162.i.i, i64 8 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.025.063.i.i, i64 8 ; 2 uses
  %i.en = load ptr, ptr %i.el, align 8, !tbaa !56
  %i.eo = load ptr, ptr %i.em, align 8, !tbaa !56
  store ptr %i.eo, ptr %i.el, align 8, !tbaa !56
  store ptr %i.en, ptr %i.em, align 8, !tbaa !56
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.026.162.i.i, i64 16 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.025.063.i.i, i64 16 ; 2 uses
  %i.er = load ptr, ptr %i.ep, align 8, !tbaa !56
  %i.es = load ptr, ptr %i.eq, align 8, !tbaa !56
  store ptr %i.es, ptr %i.ep, align 8, !tbaa !56
  store ptr %i.er, ptr %i.eq, align 8, !tbaa !56
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.026.162.i.i, i64 24 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.025.063.i.i, i64 24 ; 2 uses
  %i.ev = load ptr, ptr %i.et, align 8, !tbaa !56
  %i.ew = load ptr, ptr %i.eu, align 8, !tbaa !56
  store ptr %i.ew, ptr %i.et, align 8, !tbaa !56
  store ptr %i.ev, ptr %i.eu, align 8, !tbaa !56
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.026.162.i.i, i64 32 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.025.063.i.i, i64 32
  %i.ez = add nuw nsw i64 %.01964.i.i, 4          ; 2 uses
  %exitcond71.not.i.i.3 = icmp eq i64 %i.ez, %i.dm
  br i1 %exitcond71.not.i.i.3, label %._crit_edge67.i.i, label %.lr.ph66.i.i, !llvm.loop !314

bb.m:                                             ; preds = %._crit_edge67.i.i
  %i.fa = sub nsw i64 %.0.i.i, %i.ei
  br label %.backedge

bb.n:                                             ; preds = %bb.k
  %i.fb = getelementptr [8 x i8], ptr %.sroa.026.0.i.i, i64 %.056.i.i ; 6 uses
  %i.fc = sub i64 0, %i.dm
  %i.fd = getelementptr [8 x i8], ptr %i.fb, i64 %i.fc ; 6 uses
  %i.fe = icmp sgt i64 %.0.i.i, 0
  br i1 %i.fe, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.n
  %min.iters.check129 = icmp ult i64 %.0.i.i, 6
  br i1 %min.iters.check129, label %.lr.ph.i.i.preheader170, label %vector.memcheck123

vector.memcheck123:                               ; preds = %.lr.ph.i.i.preheader
  %i.ff = sub i64 %.056.i.i, %.0.i.i
  %i.fg = shl i64 %i.ff, 3
  %scevgep124 = getelementptr i8, ptr %.sroa.026.0.i.i, i64 %i.fg
  %bound0125 = icmp ult ptr %.sroa.026.0.i.i, %i.fb
  %bound1126 = icmp ult ptr %scevgep124, %i.fd
  %found.conflict127 = and i1 %bound0125, %bound1126
  br i1 %found.conflict127, label %.lr.ph.i.i.preheader170, label %vector.ph130

vector.ph130:                                     ; preds = %vector.memcheck123
  %n.vec131 = and i64 %.0.i.i, 9223372036854775804 ; 4 uses
  %i.fh = mul i64 %n.vec131, -8                   ; 2 uses
  %i.fi = getelementptr i8, ptr %i.fb, i64 %i.fh
  %i.fj = getelementptr i8, ptr %i.fd, i64 %i.fh
  br label %vector.body132

vector.body132:                                   ; preds = %vector.body132, %vector.ph130
  %index133 = phi i64 [ 0, %vector.ph130 ], [ %index.next140, %vector.body132 ] ; 2 uses
  %i.fk = mul i64 %index133, -8                   ; 2 uses
  %next.gep134 = getelementptr i8, ptr %i.fb, i64 %i.fk ; 2 uses
  %next.gep135 = getelementptr i8, ptr %i.fd, i64 %i.fk ; 2 uses
  %i.fl = getelementptr inbounds i8, ptr %next.gep135, i64 -16 ; 2 uses
  %i.fm = getelementptr inbounds i8, ptr %next.gep135, i64 -32 ; 2 uses
  %wide.load136 = load <2 x ptr>, ptr %i.fl, align 8, !tbaa !56, !alias.scope !325, !noalias !326
  %wide.load137 = load <2 x ptr>, ptr %i.fm, align 8, !tbaa !56, !alias.scope !325, !noalias !326
  %i.fn = getelementptr inbounds i8, ptr %next.gep134, i64 -16 ; 2 uses
  %i.fo = getelementptr inbounds i8, ptr %next.gep134, i64 -32 ; 2 uses
  %wide.load138 = load <2 x ptr>, ptr %i.fn, align 8, !tbaa !56, !alias.scope !326
  %wide.load139 = load <2 x ptr>, ptr %i.fo, align 8, !tbaa !56, !alias.scope !326
  store <2 x ptr> %wide.load138, ptr %i.fl, align 8, !tbaa !56, !alias.scope !325, !noalias !326
  store <2 x ptr> %wide.load139, ptr %i.fm, align 8, !tbaa !56, !alias.scope !325, !noalias !326
  store <2 x ptr> %wide.load136, ptr %i.fn, align 8, !tbaa !56, !alias.scope !326
  store <2 x ptr> %wide.load137, ptr %i.fo, align 8, !tbaa !56, !alias.scope !326
  %index.next140 = add nuw i64 %index133, 4       ; 2 uses
  %i.fp = icmp eq i64 %index.next140, %n.vec131
  br i1 %i.fp, label %middle.block141, label %vector.body132, !llvm.loop !318

middle.block141:                                  ; preds = %vector.body132
  %cmp.n142 = icmp eq i64 %.0.i.i, %n.vec131
  br i1 %cmp.n142, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader170

.lr.ph.i.i.preheader170:                          ; preds = %vector.memcheck123, %.lr.ph.i.i.preheader, %middle.block141
  %.01861.i.i.ph = phi i64 [ 0, %vector.memcheck123 ], [ 0, %.lr.ph.i.i.preheader ], [ %n.vec131, %middle.block141 ] ; 3 uses
  %.sroa.0.060.i.i.ph = phi ptr [ %i.fb, %vector.memcheck123 ], [ %i.fb, %.lr.ph.i.i.preheader ], [ %i.fi, %middle.block141 ] ; 2 uses
  %.sroa.026.259.i.i.ph = phi ptr [ %i.fd, %vector.memcheck123 ], [ %i.fd, %.lr.ph.i.i.preheader ], [ %i.fj, %middle.block141 ] ; 2 uses
  %xtraiter = and i64 %.0.i.i, 3                  ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader170, %.lr.ph.i.i.prol
  %.01861.i.i.prol = phi i64 [ %i.fu, %.lr.ph.i.i.prol ], [ %.01861.i.i.ph, %.lr.ph.i.i.preheader170 ]
  %.sroa.0.060.i.i.prol = phi ptr [ %i.fr, %.lr.ph.i.i.prol ], [ %.sroa.0.060.i.i.ph, %.lr.ph.i.i.preheader170 ]
  %.sroa.026.259.i.i.prol = phi ptr [ %i.fq, %.lr.ph.i.i.prol ], [ %.sroa.026.259.i.i.ph, %.lr.ph.i.i.preheader170 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader170 ]
  %i.fq = getelementptr inbounds i8, ptr %.sroa.026.259.i.i.prol, i64 -8 ; 4 uses
  %i.fr = getelementptr inbounds i8, ptr %.sroa.0.060.i.i.prol, i64 -8 ; 4 uses
  %i.fs = load ptr, ptr %i.fq, align 8, !tbaa !56
  %i.ft = load ptr, ptr %i.fr, align 8, !tbaa !56
  store ptr %i.ft, ptr %i.fq, align 8, !tbaa !56
  store ptr %i.fs, ptr %i.fr, align 8, !tbaa !56
  %i.fu = add nuw nsw i64 %.01861.i.i.prol, 1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !319

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader170
  %.01861.i.i.unr = phi i64 [ %.01861.i.i.ph, %.lr.ph.i.i.preheader170 ], [ %i.fu, %.lr.ph.i.i.prol ]
  %.sroa.0.060.i.i.unr = phi ptr [ %.sroa.0.060.i.i.ph, %.lr.ph.i.i.preheader170 ], [ %i.fr, %.lr.ph.i.i.prol ]
  %.sroa.026.259.i.i.unr = phi ptr [ %.sroa.026.259.i.i.ph, %.lr.ph.i.i.preheader170 ], [ %i.fq, %.lr.ph.i.i.prol ]
  %i.fv = sub nsw i64 %.01861.i.i.ph, %.0.i.i
  %i.fw = icmp ugt i64 %i.fv, -4
  br i1 %i.fw, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block141, %bb.n
  %.sroa.026.2.lcssa.i.i = phi ptr [ %i.fd, %bb.n ], [ %.sroa.026.0.i.i, %middle.block141 ], [ %.sroa.026.0.i.i, %.lr.ph.i.i ], [ %.sroa.026.0.i.i, %.lr.ph.i.i.prol.loopexit ]
  %i.fx = srem i64 %.056.i.i, %i.dm               ; 2 uses
  %.not.i.i = icmp eq i64 %i.fx, 0
  br i1 %.not.i.i, label %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEET_SF_SF_SF_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge.i.i, %bb.m
  %.056.i.i.be = phi i64 [ %.0.i.i, %bb.m ], [ %i.dm, %._crit_edge.i.i ]
  %.0.i.i.be = phi i64 [ %i.fa, %bb.m ], [ %i.fx, %._crit_edge.i.i ]
  %.sroa.026.0.i.i.be = phi ptr [ %.sroa.026.1.lcssa.i.i, %bb.m ], [ %.sroa.026.2.lcssa.i.i, %._crit_edge.i.i ]
  br label %bb.k, !llvm.loop !19

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.01861.i.i = phi i64 [ %i.go, %.lr.ph.i.i ], [ %.01861.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.0.060.i.i = phi ptr [ %i.gl, %.lr.ph.i.i ], [ %.sroa.0.060.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %.sroa.026.259.i.i = phi ptr [ %i.gk, %.lr.ph.i.i ], [ %.sroa.026.259.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %i.fy = getelementptr inbounds i8, ptr %.sroa.026.259.i.i, i64 -8 ; 2 uses
  %i.fz = getelementptr inbounds i8, ptr %.sroa.0.060.i.i, i64 -8 ; 2 uses
  %i.ga = load ptr, ptr %i.fy, align 8, !tbaa !56
  %i.gb = load ptr, ptr %i.fz, align 8, !tbaa !56
  store ptr %i.gb, ptr %i.fy, align 8, !tbaa !56
  store ptr %i.ga, ptr %i.fz, align 8, !tbaa !56
  %i.gc = getelementptr inbounds i8, ptr %.sroa.026.259.i.i, i64 -16 ; 2 uses
  %i.gd = getelementptr inbounds i8, ptr %.sroa.0.060.i.i, i64 -16 ; 2 uses
  %i.ge = load ptr, ptr %i.gc, align 8, !tbaa !56
  %i.gf = load ptr, ptr %i.gd, align 8, !tbaa !56
  store ptr %i.gf, ptr %i.gc, align 8, !tbaa !56
  store ptr %i.ge, ptr %i.gd, align 8, !tbaa !56
  %i.gg = getelementptr inbounds i8, ptr %.sroa.026.259.i.i, i64 -24 ; 2 uses
  %i.gh = getelementptr inbounds i8, ptr %.sroa.0.060.i.i, i64 -24 ; 2 uses
  %i.gi = load ptr, ptr %i.gg, align 8, !tbaa !56
  %i.gj = load ptr, ptr %i.gh, align 8, !tbaa !56
  store ptr %i.gj, ptr %i.gg, align 8, !tbaa !56
  store ptr %i.gi, ptr %i.gh, align 8, !tbaa !56
  %i.gk = getelementptr inbounds i8, ptr %.sroa.026.259.i.i, i64 -32 ; 3 uses
  %i.gl = getelementptr inbounds i8, ptr %.sroa.0.060.i.i, i64 -32 ; 3 uses
  %i.gm = load ptr, ptr %i.gk, align 8, !tbaa !56
  %i.gn = load ptr, ptr %i.gl, align 8, !tbaa !56
  store ptr %i.gn, ptr %i.gk, align 8, !tbaa !56
  store ptr %i.gm, ptr %i.gl, align 8, !tbaa !56
  %i.go = add nuw nsw i64 %.01861.i.i, 4          ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.go, %.0.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !320

_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEET_SF_SF_SF_.exit: ; preds = %._crit_edge.i.i, %._crit_edge67.i.i, %.lr.ph.i.i.i, %middle.block165, %bb.h, %bb.g, %bb.e, %bb.b, %_ZSt13move_backwardIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit, %_ZSt4moveIPSt10unique_ptrIKN14grpc_generator6MethodESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit
end_hunk_1
