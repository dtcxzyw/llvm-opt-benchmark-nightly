Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/vivify?download=true
inline.NumInlined: 1487
inline.NumDeleted: 539
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_default_appendEm:bb.a
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !189
  br label %_ZSt27__uninitialized_default_n_aIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE13_M_deallocateEPS2_m.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #21
  br label %_ZNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE13_M_deallocateEPS2_m.exit36

_ZNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE13_M_deallocateEPS2_m.exit36: ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !206
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !205
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ae, ptr %i.h, align 8, !tbaa !207
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE13_M_deallocateEPS2_m.exit36, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS2_20vivify_flush_smallerEEEEvT_SE_T0_(ptr %0, ptr %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 3                   ; 2 uses
  %i.f = add nsw i64 %i.e, 1
  %i.g = sdiv i64 %i.f, 2                         ; 4 uses
  %i.h = icmp sgt i64 %i.e, 0
  br i1 %i.h, label %.lr.ph.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %select.unfold.i.i
  %.010.i.i = phi i64 [ %i.m, %select.unfold.i.i ], [ %i.g, %bb.b ] ; 4 uses
  %i.i = shl nuw nsw i64 %.010.i.i, 3
  %i.j = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #23 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %select.unfold.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit

select.unfold.i.i:                                ; preds = %.lr.ph.i.i
  %i.k = icmp eq i64 %.010.i.i, 1
  %i.l = add nuw nsw i64 %.010.i.i, 1
  %i.m = lshr i64 %i.l, 1
  br i1 %i.k, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit, label %.lr.ph.i.i, !llvm.loop !2

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit: ; preds = %.lr.ph.i.i, %select.unfold.i.i, %bb.b
  %.sroa.5.0 = phi i64 [ 0, %bb.b ], [ %.010.i.i, %.lr.ph.i.i ], [ 0, %select.unfold.i.i ] ; 2 uses
  %.sroa.10.0 = phi ptr [ null, %bb.b ], [ %i.j, %.lr.ph.i.i ], [ null, %select.unfold.i.i ] ; 7 uses
  %i.n = icmp eq i64 %i.g, %.sroa.5.0
  br i1 %i.n, label %bb.c, label %bb.e, !prof !209

bb.c:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit
  %i.o = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g ; 4 uses
  invoke void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterINS2_20vivify_flush_smallerEEEEvT_SE_T0_T1_(ptr %0, ptr %i.o, ptr noundef %.sroa.10.0)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  invoke void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterINS2_20vivify_flush_smallerEEEEvT_SE_T0_T1_(ptr %i.o, ptr %1, ptr noundef %.sroa.10.0)
          to label %.noexc14 unwind label %bb.d

.noexc14:                                         ; preds = %.noexc
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.b, %i.p
  %i.r = ashr exact i64 %i.q, 3
  invoke void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElS5_NS0_5__ops15_Iter_comp_iterINS2_20vivify_flush_smallerEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %i.o, ptr %1, i64 noundef %i.g, i64 noundef %i.r, ptr noundef %.sroa.10.0)
          to label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterINS2_20vivify_flush_smallerEEEEvT_SE_SE_T0_T1_.exit unwind label %bb.d

bb.d:                                             ; preds = %.noexc14, %.noexc, %bb.c, %bb.g, %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %.sroa.10.0) #22
  resume { ptr, i32 } %i.s

bb.e:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES4_EC2ES9_l.exit
  %i.t = icmp eq ptr %.sroa.10.0, null
  br i1 %i.t, label %bb.f, label %bb.g, !prof !208

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS2_20vivify_flush_smallerEEEEvT_SE_T0_(ptr %0, ptr %1)
          to label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterINS2_20vivify_flush_smallerEEEEvT_SE_SE_T0_T1_.exit unwind label %bb.d

bb.g:                                             ; preds = %bb.e
  invoke void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_comp_iterINS2_20vivify_flush_smallerEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef nonnull %.sroa.10.0, i64 noundef %.sroa.5.0)
          to label %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterINS2_20vivify_flush_smallerEEEEvT_SE_SE_T0_T1_.exit unwind label %bb.d

_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterINS2_20vivify_flush_smallerEEEEvT_SE_SE_T0_T1_.exit: ; preds = %.noexc14, %bb.f, %bb.g
  tail call void @_ZdlPv(ptr noundef %.sroa.10.0) #22
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterINS2_20vivify_flush_smallerEEEEvT_SE_SE_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS2_20vivify_flush_smallerEEEEvT_SE_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp slt i64 %i.d, 15
  br i1 %i.e, label %common.ret, label %bb.b

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS2_20vivify_flush_smallerEEEEvT_SE_T0_(ptr %0, ptr %1)
  br label %common.ret25

common.ret25:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  %i.f = lshr i64 %i.d, 1                         ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.f ; 4 uses
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS2_20vivify_flush_smallerEEEEvT_SE_T0_(ptr %0, ptr %i.g)
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS2_20vivify_flush_smallerEEEEvT_SE_T0_(ptr %i.g, ptr %1)
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = sub i64 %i.a, %i.h
  %i.j = ashr exact i64 %i.i, 3
  tail call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterINS2_20vivify_flush_smallerEEEEvT_SE_SE_T0_SF_T1_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.j)
  br label %common.ret25
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_comp_iterINS2_20vivify_flush_smallerEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3
  %i.e = add nsw i64 %i.d, 1
  %i.f = sdiv i64 %i.e, 2                         ; 4 uses
  %i.g = getelementptr inbounds [8 x i8], ptr %0, i64 %i.f ; 7 uses
  %i.h = icmp sgt i64 %i.f, %3
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.a, %i.i
  %i.k = ashr exact i64 %i.j, 3                   ; 2 uses
  br i1 %i.h, label %bb.b, label %common.ret

common.ret33:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_comp_iterINS2_20vivify_flush_smallerEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %i.g, ptr noundef %2, i64 noundef %3)
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_comp_iterINS2_20vivify_flush_smallerEEEEvT_SE_T0_T1_T2_(ptr %i.g, ptr %1, ptr noundef %2, i64 noundef %3)
  tail call void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElS5_NS0_5__ops15_Iter_comp_iterINS2_20vivify_flush_smallerEEEEvT_SE_SE_T0_SF_T1_SF_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3)
  br label %common.ret33

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterINS2_20vivify_flush_smallerEEEEvT_SE_T0_T1_(ptr %0, ptr %i.g, ptr noundef %2)
  tail call void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterINS2_20vivify_flush_smallerEEEEvT_SE_T0_T1_(ptr %i.g, ptr %1, ptr noundef %2)
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElS5_NS0_5__ops15_Iter_comp_iterINS2_20vivify_flush_smallerEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2)
  br label %common.ret33
}

; Function Attrs: nobuiltin nounwind allocsize(0)
declare noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterINS2_20vivify_flush_smallerEEEEvT_SE_T0_T1_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.c
  %.not13.i = icmp slt i64 %i.d, 7
  br i1 %.not13.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterINS2_20vivify_flush_smallerEEEEvT_SE_T0_T1_.exit.thread, label %.lr.ph.i.preheader

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterINS2_20vivify_flush_smallerEEEEvT_SE_T0_T1_.exit.thread: ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS2_20vivify_flush_smallerEEEEvT_SE_T0_(ptr %0, ptr %1)
  br label %._crit_edge

.lr.ph.i.preheader:                               ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS2_20vivify_flush_smallerEEEEvT_SE_T0_.exit
  %indvars.iv = phi ptr [ %scevgep, %.lr.ph.i.preheader ], [ %scevgep49, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS2_20vivify_flush_smallerEEEEvT_SE_T0_.exit ] ; 2 uses
  %.sroa.010.014.i = phi ptr [ %0, %.lr.ph.i.preheader ], [ %i.aw, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS2_20vivify_flush_smallerEEEEvT_SE_T0_.exit ] ; 7 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i, %.lr.ph.i
  %.sroa.0.030.i.idx = phi i64 [ 8, %.lr.ph.i ], [ %.sroa.0.030.i.add, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i ] ; 4 uses
  %.pn29.i = phi ptr [ %.sroa.010.014.i, %.lr.ph.i ], [ %.sroa.0.030.i.ptr, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i ]
  %.sroa.0.030.i.ptr = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i, i64 %.sroa.0.030.i.idx ; 4 uses
  %i.f = load ptr, ptr %.sroa.0.030.i.ptr, align 8, !tbaa !189 ; 3 uses
  %i.g = load ptr, ptr %.sroa.010.014.i, align 8, !tbaa !189 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !171
  %.fr18.i.i = freeze i32 %i.j                    ; 2 uses
  %i.k = sext i32 %.fr18.i.i to i64
  %.idx.i.i.i = shl nsw i64 %i.k, 2
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 %.idx.i.i.i ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !171  ; 2 uses
  %i.p = sext i32 %i.o to i64
  %.idx30.i.i.i = shl nsw i64 %i.p, 2
  %i.q = getelementptr inbounds i8, ptr %i.m, i64 %.idx30.i.i.i ; 2 uses
  %i.r = icmp ne i32 %.fr18.i.i, 0                ; 3 uses
  %i.s = icmp ne i32 %i.o, 0
  %i.t = select i1 %i.r, i1 %i.s, i1 false
  br i1 %i.t, label %.lr.ph.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL20vivify_flush_smallerEEclINS_17__normal_iteratorIPPNS2_6ClauseESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %.028.i.i.i = phi ptr [ %i.y, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %.01927.i.i.i = phi ptr [ %i.x, %bb.c ], [ %i.h, %bb.b ] ; 2 uses
  %i.u = load i32, ptr %.01927.i.i.i, align 4, !tbaa !171 ; 2 uses
  %i.v = load i32, ptr %.028.i.i.i, align 4, !tbaa !171 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.u, %i.v
  br i1 %.not.i.i.i, label %bb.c, label %.split.i

.split.i:                                         ; preds = %.lr.ph.i.i.i
  %i.w = icmp slt i32 %i.u, %i.v
  br i1 %i.w, label %bb.d, label %bb.g

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.01927.i.i.i, i64 4 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.028.i.i.i, i64 4 ; 3 uses
  %i.z = icmp ne ptr %i.x, %i.l                   ; 2 uses
  %i.aa = icmp ne ptr %i.y, %i.q
  %i.ab = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %i.ab, label %.lr.ph.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL20vivify_flush_smallerEEclINS_17__normal_iteratorIPPNS2_6ClauseESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i, !llvm.loop !3

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL20vivify_flush_smallerEEclINS_17__normal_iteratorIPPNS2_6ClauseESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i: ; preds = %bb.c, %bb.b
  %.0.lcssa.i.i.i = phi ptr [ %i.m, %bb.b ], [ %i.y, %bb.c ]
  %.lcssa.i.i.i = phi i1 [ %i.r, %bb.b ], [ %i.z, %bb.c ]
  %i.ac = icmp eq ptr %.0.lcssa.i.i.i, %i.q
  %i.ad = and i1 %.lcssa.i.i.i, %i.ac
  br i1 %i.ad, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL20vivify_flush_smallerEEclINS_17__normal_iteratorIPPNS2_6ClauseESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i, %.split.i
  %i.ae = icmp samesign ugt i64 %.sroa.0.030.i.idx, 8
  br i1 %i.ae, label %bb.e, label %bb.f, !prof !209

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %indvars.iv, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.010.014.i, i64 %.sroa.0.030.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %.pn29.i, i64 8
  store ptr %i.g, ptr %i.af, align 8, !tbaa !189
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL20vivify_flush_smallerEEclINS_17__normal_iteratorIPPNS2_6ClauseESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i, %.split.i
  br i1 %i.r, label %.split12.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

.split12.i.i:                                     ; preds = %bb.g, %bb.i
  %.sroa.04.0.i.i = phi ptr [ %.sroa.0.0.i.i, %bb.i ], [ %.sroa.0.030.i.ptr, %bb.g ] ; 4 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.04.0.i.i, i64 -8 ; 2 uses
  %i.ag = load ptr, ptr %.sroa.0.0.i.i, align 8, !tbaa !189 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !171 ; 2 uses
  %i.ak = sext i32 %i.aj to i64
  %.idx30.i.i.i.i = shl nsw i64 %i.ak, 2
  %i.al = getelementptr inbounds i8, ptr %i.ah, i64 %.idx30.i.i.i.i ; 2 uses
  %.not19.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not19.i.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL20vivify_flush_smallerEEclIPNS2_6ClauseENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split12.i.i, %bb.h
  %.028.i.i.i.i = phi ptr [ %i.aq, %bb.h ], [ %i.ah, %.split12.i.i ] ; 2 uses
  %.01927.i.i.i.i = phi ptr [ %i.ap, %bb.h ], [ %i.h, %.split12.i.i ] ; 2 uses
  %i.am = load i32, ptr %.01927.i.i.i.i, align 4, !tbaa !171 ; 2 uses
  %i.an = load i32, ptr %.028.i.i.i.i, align 4, !tbaa !171 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.am, %i.an
  br i1 %.not.i.i.i.i, label %bb.h, label %.split.i.i

.split.i.i:                                       ; preds = %.lr.ph.i.i.i.i
  %i.ao = icmp slt i32 %i.am, %i.an
  br i1 %i.ao, label %bb.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.01927.i.i.i.i, i64 4 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.028.i.i.i.i, i64 4 ; 3 uses
  %i.ar = icmp ne ptr %i.ap, %i.l                 ; 2 uses
  %i.as = icmp ne ptr %i.aq, %i.al
  %i.at = select i1 %i.ar, i1 %i.as, i1 false
  br i1 %i.at, label %.lr.ph.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL20vivify_flush_smallerEEclIPNS2_6ClauseENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.i.i, !llvm.loop !3

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL20vivify_flush_smallerEEclIPNS2_6ClauseENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.i.i: ; preds = %bb.h, %.split12.i.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ah, %.split12.i.i ], [ %i.aq, %bb.h ]
  %.lcssa.i.i.i.i = phi i1 [ true, %.split12.i.i ], [ %i.ar, %bb.h ]
  %i.au = icmp eq ptr %.0.lcssa.i.i.i.i, %i.al
  %i.av = and i1 %.lcssa.i.i.i.i, %i.au
  br i1 %i.av, label %bb.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

bb.i:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL20vivify_flush_smallerEEclIPNS2_6ClauseENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.i.i, %.split.i.i
  store ptr %i.ag, ptr %.sroa.04.0.i.i, align 8, !tbaa !189
  br label %.split12.i.i, !llvm.loop !4

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL20vivify_flush_smallerEEclIPNS2_6ClauseENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.i.i, %.split.i.i, %bb.g, %bb.f, %bb.e
  %.sink.i = phi ptr [ %.sroa.010.014.i, %bb.f ], [ %.sroa.010.014.i, %bb.e ], [ %.sroa.0.030.i.ptr, %bb.g ], [ %.sroa.04.0.i.i, %.split.i.i ], [ %.sroa.04.0.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL20vivify_flush_smallerEEclIPNS2_6ClauseENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.i.i ]
  store ptr %i.f, ptr %.sink.i, align 8, !tbaa !189
  %.sroa.0.030.i.add = add nuw nsw i64 %.sroa.0.030.i.idx, 8 ; 2 uses
  %.not.i22 = icmp eq i64 %.sroa.0.030.i.add, 56
  br i1 %.not.i22, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS2_20vivify_flush_smallerEEEEvT_SE_T0_.exit, label %bb.b, !llvm.loop !5

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS2_20vivify_flush_smallerEEEEvT_SE_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i, i64 56 ; 3 uses
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.a, %i.ax
  %.not.i = icmp slt i64 %i.ay, 56
  %scevgep49 = getelementptr i8, ptr %indvars.iv, i64 56
  br i1 %.not.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterINS2_20vivify_flush_smallerEEEEvT_SE_T0_T1_.exit, label %.lr.ph.i, !llvm.loop !332

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterINS2_20vivify_flush_smallerEEEEvT_SE_T0_T1_.exit: ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS2_20vivify_flush_smallerEEEEvT_SE_T0_.exit
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterINS2_20vivify_flush_smallerEEEEvT_SE_T0_(ptr nonnull %i.aw, ptr %1)
  %.not = icmp eq i64 %i.c, 56
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterINS2_20vivify_flush_smallerEEEEvT_SE_T0_T1_.exit, %.lr.ph
  %.036 = phi i64 [ %i.ba, %.lr.ph ], [ 7, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterINS2_20vivify_flush_smallerEEEEvT_SE_T0_T1_.exit ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_comp_iterINS2_20vivify_flush_smallerEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %.036)
  %i.az = shl nuw nsw i64 %.036, 1
  tail call void @_ZSt17__merge_sort_loopIPPN7CaDiCaL6ClauseEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEElNS4_5__ops15_Iter_comp_iterINS0_20vivify_flush_smallerEEEEvT_SE_T0_T1_T2_(ptr noundef %2, ptr noundef %i.e, ptr %0, i64 noundef %i.az)
  %i.ba = shl nsw i64 %.036, 2                    ; 2 uses
  %i.bb = icmp slt i64 %i.ba, %i.d
  br i1 %i.bb, label %.lr.ph, label %._crit_edge, !llvm.loop !333

._crit_edge:                                      ; preds = %.lr.ph, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterINS2_20vivify_flush_smallerEEEEvT_SE_T0_T1_.exit.thread, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterINS2_20vivify_flush_smallerEEEEvT_SE_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElS5_NS0_5__ops15_Iter_comp_iterINS2_20vivify_flush_smallerEEEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #0 comdat {
bb.a:
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 4 uses
  %i.d = icmp sgt i64 %i.c, 8
  br i1 %i.d, label %bb.c, label %bb.d, !prof !209

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %5, ptr align 8 %0, i64 %i.c, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit

bb.d:                                             ; preds = %bb.b
  %i.e = icmp eq i64 %i.c, 8
  br i1 %i.e, label %bb.e, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit

bb.e:                                             ; preds = %bb.d
  %i.f = load ptr, ptr %0, align 8, !tbaa !189
  store ptr %i.f, ptr %5, align 8, !tbaa !189
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.g = getelementptr inbounds i8, ptr %5, i64 %i.c ; 2 uses
  %.not27.i = icmp eq ptr %1, %0
  br i1 %.not27.i, label %_ZSt21__move_merge_adaptiveIPPN7CaDiCaL6ClauseEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterINS0_20vivify_flush_smallerEEEEvT_SE_T0_SF_T1_T2_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit, %bb.j
  %.031.i = phi ptr [ %.1.i, %bb.j ], [ %5, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit ] ; 6 uses
  %.sroa.0.029.i = phi ptr [ %i.ai, %bb.j ], [ %0, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit ] ; 5 uses
  %.sroa.016.028.i = phi ptr [ %.sroa.016.1.i, %bb.j ], [ %1, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit ] ; 4 uses
  %.not19.i = icmp eq ptr %.sroa.016.028.i, %2
  br i1 %.not19.i, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.h = load ptr, ptr %.sroa.016.028.i, align 8, !tbaa !189 ; 3 uses
  %i.i = load ptr, ptr %.031.i, align 8, !tbaa !189 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !171  ; 2 uses
  %i.m = sext i32 %i.l to i64
  %.idx.i.i.i = shl nsw i64 %i.m, 2
  %i.n = getelementptr inbounds i8, ptr %i.j, i64 %.idx.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.q = load i32, ptr %i.p, align 8, !tbaa !171  ; 2 uses
  %i.r = sext i32 %i.q to i64
  %.idx30.i.i.i = shl nsw i64 %i.r, 2
  %i.s = getelementptr inbounds i8, ptr %i.o, i64 %.idx30.i.i.i ; 2 uses
  %i.t = icmp ne i32 %i.l, 0                      ; 2 uses
  %i.u = icmp ne i32 %i.q, 0
  %i.v = select i1 %i.t, i1 %i.u, i1 false
  br i1 %i.v, label %.lr.ph.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL20vivify_flush_smallerEEclINS_17__normal_iteratorIPPNS2_6ClauseESt6vectorIS8_SaIS8_EEEES9_EEbT_T0_.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %bb.g
  %.028.i.i.i = phi ptr [ %i.aa, %bb.g ], [ %i.o, %bb.f ] ; 2 uses
  %.01927.i.i.i = phi ptr [ %i.z, %bb.g ], [ %i.j, %bb.f ] ; 2 uses
  %i.w = load i32, ptr %.01927.i.i.i, align 4, !tbaa !171 ; 2 uses
  %i.x = load i32, ptr %.028.i.i.i, align 4, !tbaa !171 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.w, %i.x
  br i1 %.not.i.i.i, label %bb.g, label %.split.i

.split.i:                                         ; preds = %.lr.ph.i.i.i
  %i.y = icmp slt i32 %i.w, %i.x
  br i1 %i.y, label %bb.h, label %bb.i

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.01927.i.i.i, i64 4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.028.i.i.i, i64 4 ; 3 uses
  %i.ab = icmp ne ptr %i.z, %i.n                  ; 2 uses
  %i.ac = icmp ne ptr %i.aa, %i.s
  %i.ad = select i1 %i.ab, i1 %i.ac, i1 false
  br i1 %i.ad, label %.lr.ph.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL20vivify_flush_smallerEEclINS_17__normal_iteratorIPPNS2_6ClauseESt6vectorIS8_SaIS8_EEEES9_EEbT_T0_.exit.i, !llvm.loop !3

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL20vivify_flush_smallerEEclINS_17__normal_iteratorIPPNS2_6ClauseESt6vectorIS8_SaIS8_EEEES9_EEbT_T0_.exit.i: ; preds = %bb.g, %bb.f
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %bb.f ], [ %i.aa, %bb.g ]
  %.lcssa.i.i.i = phi i1 [ %i.t, %bb.f ], [ %i.ab, %bb.g ]
  %i.ae = icmp eq ptr %.0.lcssa.i.i.i, %i.s
  %i.af = and i1 %.lcssa.i.i.i, %i.ae
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL20vivify_flush_smallerEEclINS_17__normal_iteratorIPPNS2_6ClauseESt6vectorIS8_SaIS8_EEEES9_EEbT_T0_.exit.i, %.split.i
  store ptr %i.h, ptr %.sroa.0.029.i, align 8, !tbaa !189
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.016.028.i, i64 8
  br label %bb.j

bb.i:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL20vivify_flush_smallerEEclINS_17__normal_iteratorIPPNS2_6ClauseESt6vectorIS8_SaIS8_EEEES9_EEbT_T0_.exit.i, %.split.i
  store ptr %i.i, ptr %.sroa.0.029.i, align 8, !tbaa !189
  %i.ah = getelementptr inbounds nuw i8, ptr %.031.i, i64 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.016.1.i = phi ptr [ %i.ag, %bb.h ], [ %.sroa.016.028.i, %bb.i ]
  %.1.i = phi ptr [ %.031.i, %bb.h ], [ %i.ah, %bb.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i, i64 8
  %.not.i = icmp eq ptr %.1.i, %i.g
  br i1 %.not.i, label %_ZSt21__move_merge_adaptiveIPPN7CaDiCaL6ClauseEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterINS0_20vivify_flush_smallerEEEEvT_SE_T0_SF_T1_T2_.exit, label %.lr.ph.i, !llvm.loop !334

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.aj = ptrtoint ptr %i.g to i64
  %i.ak = ptrtoint ptr %.031.i to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 3 uses
  %i.am = icmp sgt i64 %i.al, 8
  br i1 %i.am, label %bb.k, label %bb.l, !prof !209

bb.k:                                             ; preds = %.critedge.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.sroa.0.029.i, ptr align 8 %.031.i, i64 %i.al, i1 false)
  br label %_ZSt21__move_merge_adaptiveIPPN7CaDiCaL6ClauseEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterINS0_20vivify_flush_smallerEEEEvT_SE_T0_SF_T1_T2_.exit

bb.l:                                             ; preds = %.critedge.i
  %i.an = icmp eq i64 %i.al, 8
  br i1 %i.an, label %bb.m, label %_ZSt21__move_merge_adaptiveIPPN7CaDiCaL6ClauseEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterINS0_20vivify_flush_smallerEEEEvT_SE_T0_SF_T1_T2_.exit

bb.m:                                             ; preds = %bb.l
  %i.ao = load ptr, ptr %.031.i, align 8, !tbaa !189
  store ptr %i.ao, ptr %.sroa.0.029.i, align 8, !tbaa !189
  br label %_ZSt21__move_merge_adaptiveIPPN7CaDiCaL6ClauseEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterINS0_20vivify_flush_smallerEEEEvT_SE_T0_SF_T1_T2_.exit

bb.n:                                             ; preds = %bb.a
  %i.ap = ptrtoint ptr %2 to i64
  %i.aq = ptrtoint ptr %1 to i64
  %i.ar = sub i64 %i.ap, %i.aq                    ; 7 uses
  %i.as = icmp sgt i64 %i.ar, 8
  br i1 %i.as, label %bb.o, label %bb.p, !prof !209

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %5, ptr align 8 %1, i64 %i.ar, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit23

bb.p:                                             ; preds = %bb.n
  %i.at = icmp eq i64 %i.ar, 8
  br i1 %i.at, label %bb.q, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit23

bb.q:                                             ; preds = %bb.p
  %i.au = load ptr, ptr %1, align 8, !tbaa !189
  store ptr %i.au, ptr %5, align 8, !tbaa !189
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit23

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit23: ; preds = %bb.o, %bb.p, %bb.q
  %i.av = getelementptr inbounds i8, ptr %5, i64 %i.ar
  %i.aw = icmp eq ptr %0, %1
  br i1 %i.aw, label %bb.r, label %bb.v

bb.r:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit23
  %i.ax = ashr exact i64 %i.ar, 3                 ; 2 uses
  %i.ay = icmp sgt i64 %i.ax, 1
  br i1 %i.ay, label %bb.s, label %bb.t, !prof !209

bb.s:                                             ; preds = %bb.r
  %i.az = sub nsw i64 0, %i.ax
  %i.ba = getelementptr inbounds [8 x i8], ptr %2, i64 %i.az
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ba, ptr align 8 %5, i64 %i.ar, i1 false)
  br label %_ZSt21__move_merge_adaptiveIPPN7CaDiCaL6ClauseEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterINS0_20vivify_flush_smallerEEEEvT_SE_T0_SF_T1_T2_.exit

bb.t:                                             ; preds = %bb.r
  %i.bb = icmp eq i64 %i.ar, 8
  br i1 %i.bb, label %bb.u, label %_ZSt21__move_merge_adaptiveIPPN7CaDiCaL6ClauseEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterINS0_20vivify_flush_smallerEEEEvT_SE_T0_SF_T1_T2_.exit

bb.u:                                             ; preds = %bb.t
  %i.bc = getelementptr inbounds i8, ptr %2, i64 -8
  %i.bd = load ptr, ptr %5, align 8, !tbaa !189
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !189
  br label %_ZSt21__move_merge_adaptiveIPPN7CaDiCaL6ClauseEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterINS0_20vivify_flush_smallerEEEEvT_SE_T0_SF_T1_T2_.exit

bb.v:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit23
end_hunk_0
begin_hunk_1_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEEEvT_SC_T0_T1_:bb.a

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 712 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 472
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph46

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEEET_SC_SC_T0_.exit
  %i.j = icmp eq i64 %i.cn, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph46, !llvm.loop !367

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa42 = phi i64 [ %i.d, %.lr.ph ], [ %i.cq, %bb.b ] ; 2 uses
  %storemerge23.lcssa = phi ptr [ %1, %.lr.ph ], [ %.us-phi.i.i, %bb.b ]
  %i.k = add nsw i64 %.lcssa42, -2
  %i.l = lshr i64 %i.k, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.09.i.i.i = phi i64 [ %i.l, %._crit_edge ], [ %i.o, %bb.c ] ; 4 uses
  %i.m = getelementptr inbounds [4 x i8], ptr %0, i64 %.09.i.i.i
  %i.n = load i32, ptr %i.m, align 4, !tbaa !171
  tail call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEEEvT_T0_SD_T1_T2_(ptr %0, i64 noundef %.09.i.i.i, i64 noundef %.lcssa42, i32 noundef %i.n, ptr %3)
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.o = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i9.i, label %bb.c, !llvm.loop !368

.lr.ph.i9.i:                                      ; preds = %bb.c, %.lr.ph.i9.i
  %.sroa.0.05.i.i = phi ptr [ %i.p, %.lr.ph.i9.i ], [ %storemerge23.lcssa, %bb.c ]
  %i.p = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -4 ; 4 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !171
  %i.r = load i32, ptr %0, align 4, !tbaa !171
  store i32 %i.r, ptr %i.p, align 4, !tbaa !171
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = sub i64 %i.s, %i.a                       ; 2 uses
  %i.u = ashr exact i64 %i.t, 2
  tail call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEEEvT_T0_SD_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.u, i32 noundef %i.q, ptr %3)
  %i.v = icmp sgt i64 %i.t, 4
  br i1 %i.v, label %.lr.ph.i9.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEEEvT_SC_SC_T0_.exit, !llvm.loop !369

.lr.ph46:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2345 = phi ptr [ %.us-phi.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02444 = phi i64 [ %i.cn, %bb.b ], [ %2, %.lr.ph ]
  %i.w = phi i64 [ %i.cq, %bb.b ], [ %i.d, %.lr.ph ]
  %i.x = lshr i64 %i.w, 1
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.x
  %i.z = getelementptr inbounds i8, ptr %storemerge2345, i64 -4
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEEEvT_SC_SC_SC_T0_(ptr %0, ptr nonnull %i.f, ptr %i.y, ptr nonnull %i.z, ptr %3)
  %i.aa = load ptr, ptr %i.h, align 8, !tbaa !179 ; 5 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.lr.ph46
  %.sroa.013.0.i.i = phi ptr [ %storemerge2345, %.lr.ph46 ], [ %.sroa.013.1.i.i, %bb.f ]
  %.sroa.016.0.i.i = phi ptr [ %i.f, %.lr.ph46 ], [ %i.cm, %bb.f ] ; 4 uses
  %i.ab = load i32, ptr %0, align 4, !tbaa !171   ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds i8, ptr %i.aa, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !180
  %.fr78.i.i = freeze i8 %i.ae                    ; 2 uses
  %i.af = icmp slt i8 %.fr78.i.i, 0               ; 2 uses
  %i.ag = icmp sgt i8 %.fr78.i.i, -1
  %i.ah = tail call i32 @llvm.abs.i32(i32 %i.ab, i1 true)
  %i.ai = zext nneg i32 %i.ah to i64              ; 3 uses
  br i1 %i.af, label %.split.split.i.i, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %bb.d
  %i.aj = load i32, ptr %.sroa.016.0.i.i, align 4, !tbaa !171 ; 3 uses
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %i.aa, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !180
  %i.an = icmp slt i8 %i.am, 0
  br i1 %i.an, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.thread20.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.us.preheader.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.us.preheader.i.i: ; preds = %.split.us.i.i
  %i.ao = load ptr, ptr %i.g, align 8, !tbaa !174 ; 2 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.ai
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !177
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.us.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.thread.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.us.preheader.i.i
  %i.as = phi i32 [ %i.ba, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.thread.us.i.i ], [ %i.aj, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.us.preheader.i.i ] ; 2 uses
  %.sroa.016.1.us52.i.i = phi ptr [ %i.az, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.thread.us.i.i ], [ %.sroa.016.0.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.us.preheader.i.i ] ; 2 uses
  %i.at = tail call noundef i32 @llvm.abs.i32(i32 %i.as, i1 true)
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !177
  %i.ay = icmp sgt i32 %i.ax, %i.ar
  br i1 %i.ay, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.thread.us.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.thread20.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.thread.us.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.us.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.016.1.us52.i.i, i64 4 ; 3 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !171 ; 3 uses
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds i8, ptr %i.aa, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !180
  %i.be = icmp slt i8 %i.bd, 0
  br i1 %i.be, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.thread20.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.us.i.i, !llvm.loop !370

.split.split.i.i:                                 ; preds = %bb.d, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.thread.i.i
  %.sroa.016.1.i.i = phi ptr [ %i.bu, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.thread.i.i ], [ %.sroa.016.0.i.i, %bb.d ] ; 3 uses
  %i.bf = load i32, ptr %.sroa.016.1.i.i, align 4, !tbaa !171 ; 3 uses
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds i8, ptr %i.aa, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !180
  %i.bj = icmp sgt i8 %i.bi, -1
  br i1 %i.bj, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.thread.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.i.i: ; preds = %.split.split.i.i
  %i.bk = tail call noundef i32 @llvm.abs.i32(i32 %i.bf, i1 true)
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = load ptr, ptr %i.g, align 8, !tbaa !174 ; 2 uses
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %i.bl
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !177
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %i.ai
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !177
  %i.bt = icmp sgt i32 %i.bp, %i.bs
  br i1 %i.bt, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.thread.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.thread20.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.thread.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.i.i, %.split.split.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.016.1.i.i, i64 4
  br label %.split.split.i.i, !llvm.loop !370

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.thread20.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.thread.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.us.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.i.i, %.split.us.i.i
  %.us-phi.i.i = phi ptr [ %.sroa.016.0.i.i, %.split.us.i.i ], [ %.sroa.016.1.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.i.i ], [ %.sroa.016.1.us52.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.us.i.i ], [ %i.az, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.thread.us.i.i ] ; 7 uses
  %.us-phi30.i.i = phi i32 [ %i.aj, %.split.us.i.i ], [ %i.bf, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.i.i ], [ %i.as, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.us.i.i ], [ %i.ba, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.thread.us.i.i ]
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit11.thread.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit11.thread.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit11.thread.i.i.backedge, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.thread20.i.i
  %.sroa.013.0.pn.i.i = phi ptr [ %.sroa.013.0.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.thread20.i.i ], [ %.sroa.013.1.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit11.thread.i.i.backedge ]
  %.sroa.013.1.i.i = getelementptr inbounds i8, ptr %.sroa.013.0.pn.i.i, i64 -4 ; 5 uses
  %i.bv = load i32, ptr %.sroa.013.1.i.i, align 4, !tbaa !171 ; 3 uses
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds i8, ptr %i.aa, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !180 ; 2 uses
  %i.bz = icmp slt i8 %i.by, 0
  %or.cond.i.i8.i.i = and i1 %i.ag, %i.bz
  br i1 %or.cond.i.i8.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit11.thread.i.i.backedge, label %bb.e

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit11.thread.i.i
  %i.ca = icmp sgt i8 %i.by, -1
  %or.cond5.i.i9.i.i = and i1 %i.af, %i.ca
  br i1 %or.cond5.i.i9.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit11.thread23.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit11.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit11.i.i: ; preds = %bb.e
  %i.cb = load ptr, ptr %i.g, align 8, !tbaa !174 ; 2 uses
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.cb, i64 %i.ai
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !177
  %i.cf = tail call noundef i32 @llvm.abs.i32(i32 %i.bv, i1 true)
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %i.cb, i64 %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !177
  %i.ck = icmp sgt i32 %i.ce, %i.cj
  br i1 %i.ck, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit11.thread.i.i.backedge, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit11.thread23.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit11.thread.i.i.backedge: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit11.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit11.thread.i.i
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit11.thread.i.i, !llvm.loop !371

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit11.thread23.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit11.i.i, %bb.e
  %i.cl = icmp ult ptr %.us-phi.i.i, %.sroa.013.1.i.i
  br i1 %i.cl, label %bb.f, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEEET_SC_SC_T0_.exit

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit11.thread23.i.i
  store i32 %i.bv, ptr %.us-phi.i.i, align 4, !tbaa !171
  store i32 %.us-phi30.i.i, ptr %.sroa.013.1.i.i, align 4, !tbaa !171
  %i.cm = getelementptr inbounds nuw i8, ptr %.us-phi.i.i, i64 4
  br label %bb.d, !llvm.loop !372

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEEET_SC_SC_T0_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit11.thread23.i.i
  %i.cn = add nsw i64 %.02444, -1                 ; 3 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEEEvT_SC_T0_T1_(ptr %.us-phi.i.i, ptr %storemerge2345, i64 noundef %i.cn, ptr %3)
  %i.co = ptrtoint ptr %.us-phi.i.i to i64
  %i.cp = sub i64 %i.co, %i.a
  %i.cq = ashr exact i64 %i.cp, 2                 ; 3 uses
  %i.cr = icmp sgt i64 %i.cq, 16
  br i1 %i.cr, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEEEvT_SC_SC_T0_.exit, !llvm.loop !367

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEEEvT_SC_SC_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEEET_SC_SC_T0_.exit, %.lr.ph.i9.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEEEvT_SC_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.i, label %bb.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 472 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 712 ; 3 uses
  %scevgep = getelementptr i8, ptr %0, i64 4
  %.pre48 = load ptr, ptr %i.e, align 8, !tbaa !179 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i, %.lr.ph.i
  %3 = phi ptr [ %.pre48, %.lr.ph.i ], [ %4, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ] ; 3 uses
  %i.g = phi ptr [ %.pre48, %.lr.ph.i ], [ %i.ay, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ] ; 6 uses
  %.sroa.0.024.i.idx = phi i64 [ 4, %.lr.ph.i ], [ %.sroa.0.024.i.add, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ] ; 4 uses
  %.pn23.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.024.i.ptr, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ]
  %.sroa.0.024.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.024.i.idx ; 3 uses
  %i.h = load i32, ptr %.sroa.0.024.i.ptr, align 4, !tbaa !171 ; 3 uses
  %i.i = load i32, ptr %0, align 4, !tbaa !171    ; 3 uses
  %i.j = sext i32 %i.h to i64
  %i.k = getelementptr inbounds i8, ptr %i.g, i64 %i.j ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !180   ; 3 uses
  %i.m = sext i32 %i.i to i64
  %i.n = getelementptr inbounds i8, ptr %i.g, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !180   ; 2 uses
  %i.p = icmp sgt i8 %i.l, -1
  %i.q = icmp slt i8 %i.o, 0
  %or.cond.i.i.i = and i1 %i.p, %i.q
  br i1 %or.cond.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = icmp slt i8 %i.l, 0
  %i.s = icmp sgt i8 %i.o, -1
  %or.cond5.i.i.i = and i1 %i.r, %i.s
  %.pre25.i = tail call i32 @llvm.abs.i32(i32 %i.h, i1 true)
  %.pre26.i = zext nneg i32 %.pre25.i to i64      ; 2 uses
  br i1 %or.cond5.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.thread19.i.preheader, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.thread19.i.preheader: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.i, %bb.c
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.thread19.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.i: ; preds = %bb.c
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !174  ; 2 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %.pre26.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !177
  %i.x = tail call noundef i32 @llvm.abs.i32(i32 %i.i, i1 true)
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !177
  %i.ac = icmp sgt i32 %i.w, %i.ab
  br i1 %i.ac, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.thread.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.thread19.i.preheader

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.thread.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.i, %bb.b
  %i.ad = icmp samesign ugt i64 %.sroa.0.024.i.idx, 4
  br i1 %i.ad, label %bb.d, label %bb.e, !prof !209

bb.d:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.thread.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.0.024.i.idx, i1 false)
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !179 ; 2 uses
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.thread.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.pn23.i, i64 4
  store i32 %i.i, ptr %i.ae, align 4, !tbaa !171
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.thread19.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.thread19.i.preheader, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL19vivify_better_watchEEclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.thread.i.i
  %i.af = phi i8 [ %.pre.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL19vivify_better_watchEEclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.thread.i.i ], [ %i.l, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.thread19.i.preheader ] ; 2 uses
  %.sroa.05.0.i.i = phi ptr [ %.sroa.0.0.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL19vivify_better_watchEEclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.thread.i.i ], [ %.sroa.0.024.i.ptr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.thread19.i.preheader ] ; 4 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.05.0.i.i, i64 -4 ; 2 uses
  %i.ag = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !171 ; 3 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds i8, ptr %i.g, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !180 ; 2 uses
  %i.ak = icmp sgt i8 %i.af, -1
  %i.al = icmp slt i8 %i.aj, 0
  %or.cond.i.i.i.i = and i1 %i.ak, %i.al
  br i1 %or.cond.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL19vivify_better_watchEEclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.thread.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.thread19.i
  %i.am = icmp slt i8 %i.af, 0
  %i.an = icmp sgt i8 %i.aj, -1
  %or.cond5.i.i.i.i = and i1 %i.am, %i.an
  br i1 %or.cond5.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL19vivify_better_watchEEclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL19vivify_better_watchEEclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.i.i: ; preds = %bb.f
  %i.ao = load ptr, ptr %i.f, align 8, !tbaa !174 ; 2 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %.pre26.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !177
  %i.as = tail call noundef i32 @llvm.abs.i32(i32 %i.ag, i1 true)
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !177
  %i.ax = icmp sgt i32 %i.ar, %i.aw
  br i1 %i.ax, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL19vivify_better_watchEEclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.thread.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL19vivify_better_watchEEclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.thread.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL19vivify_better_watchEEclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.thread19.i
  store i32 %i.ag, ptr %.sroa.05.0.i.i, align 4, !tbaa !171
  %.pre.i = load i8, ptr %i.k, align 1, !tbaa !180
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.thread19.i, !llvm.loop !373

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL19vivify_better_watchEEclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.i.i, %bb.f, %bb.e, %bb.d
  %4 = phi ptr [ %3, %bb.e ], [ %.pre, %bb.d ], [ %3, %bb.f ], [ %3, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL19vivify_better_watchEEclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.i.i ] ; 3 uses
  %i.ay = phi ptr [ %i.g, %bb.e ], [ %.pre, %bb.d ], [ %i.g, %bb.f ], [ %i.g, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL19vivify_better_watchEEclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.i.i ]
  %.sink.i = phi ptr [ %0, %bb.e ], [ %0, %bb.d ], [ %.sroa.05.0.i.i, %bb.f ], [ %.sroa.05.0.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL19vivify_better_watchEEclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.i.i ]
  store i32 %i.h, ptr %.sink.i, align 4, !tbaa !171
  %.sroa.0.024.i.add = add nuw nsw i64 %.sroa.0.024.i.idx, 4 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.024.i.add, 64
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEEEvT_SC_T0_.exit, label %bb.b, !llvm.loop !374

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEEEvT_SC_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not7.i = icmp eq ptr %i.az, %1
  br i1 %.not7.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEEEvT_SC_T0_.exit, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEEEvT_SC_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIN7CaDiCaL19vivify_better_watchEEEEvT_T0_.exit.i
  %.sroa.0.08.i = phi ptr [ %i.by, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIN7CaDiCaL19vivify_better_watchEEEEvT_T0_.exit.i ], [ %i.az, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEEEvT_SC_T0_.exit ] ; 3 uses
  %i.ba = load i32, ptr %.sroa.0.08.i, align 4, !tbaa !171 ; 3 uses
  %i.bb = tail call i32 @llvm.abs.i32(i32 %i.ba, i1 true)
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = sext i32 %i.ba to i64
  %i.be = getelementptr inbounds i8, ptr %4, i64 %i.bd
  br label %bb.g

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL19vivify_better_watchEEclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.thread.i.i17, %.lr.ph.i10
  %.sroa.05.0.i.i11 = phi ptr [ %.sroa.0.08.i, %.lr.ph.i10 ], [ %.sroa.0.0.i.i12, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL19vivify_better_watchEEclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.thread.i.i17 ] ; 3 uses
  %.sroa.0.0.i.i12 = getelementptr inbounds i8, ptr %.sroa.05.0.i.i11, i64 -4 ; 2 uses
  %i.bf = load i32, ptr %.sroa.0.0.i.i12, align 4, !tbaa !171 ; 3 uses
  %i.bg = load i8, ptr %i.be, align 1, !tbaa !180 ; 2 uses
  %i.bh = sext i32 %i.bf to i64
  %i.bi = getelementptr inbounds i8, ptr %4, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !180 ; 2 uses
  %i.bk = icmp sgt i8 %i.bg, -1
  %i.bl = icmp slt i8 %i.bj, 0
  %or.cond.i.i.i.i13 = and i1 %i.bk, %i.bl
  br i1 %or.cond.i.i.i.i13, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL19vivify_better_watchEEclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.thread.i.i17, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bm = icmp slt i8 %i.bg, 0
  %i.bn = icmp sgt i8 %i.bj, -1
  %or.cond5.i.i.i.i14 = and i1 %i.bm, %i.bn
  br i1 %or.cond5.i.i.i.i14, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIN7CaDiCaL19vivify_better_watchEEEEvT_T0_.exit.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL19vivify_better_watchEEclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.i.i15

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL19vivify_better_watchEEclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.i.i15: ; preds = %bb.h
  %i.bo = load ptr, ptr %i.f, align 8, !tbaa !174 ; 2 uses
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %i.bc
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !177
  %i.bs = tail call noundef i32 @llvm.abs.i32(i32 %i.bf, i1 true)
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !177
  %i.bx = icmp sgt i32 %i.br, %i.bw
  br i1 %i.bx, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL19vivify_better_watchEEclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.thread.i.i17, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIN7CaDiCaL19vivify_better_watchEEEEvT_T0_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL19vivify_better_watchEEclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.thread.i.i17: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL19vivify_better_watchEEclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.i.i15, %bb.g
  store i32 %i.bf, ptr %.sroa.05.0.i.i11, align 4, !tbaa !171
  br label %bb.g, !llvm.loop !373

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIN7CaDiCaL19vivify_better_watchEEEEvT_T0_.exit.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL19vivify_better_watchEEclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.i.i15, %bb.h
  store i32 %i.ba, ptr %.sroa.05.0.i.i11, align 4, !tbaa !171
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 4 ; 2 uses
  %.not.i16 = icmp eq ptr %i.by, %1
  br i1 %.not.i16, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEEEvT_SC_T0_.exit, label %.lr.ph.i10, !llvm.loop !375

bb.i:                                             ; preds = %bb.a
  %i.bz = icmp eq ptr %0, %1
  br i1 %i.bz, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEEEvT_SC_T0_.exit, label %.preheader.i18

.preheader.i18:                                   ; preds = %bb.i
  %.sroa.0.021.i19 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not22.i20 = icmp eq ptr %.sroa.0.021.i19, %1
  br i1 %.not22.i20, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEEEvT_SC_T0_.exit, label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %.preheader.i18
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 472
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 712 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35, %.lr.ph.i21
  %.sroa.0.024.i22 = phi ptr [ %.sroa.0.021.i19, %.lr.ph.i21 ], [ %.sroa.0.0.i37, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35 ] ; 5 uses
  %.pn23.i23 = phi ptr [ %0, %.lr.ph.i21 ], [ %.sroa.0.024.i22, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35 ] ; 2 uses
  %i.cc = load i32, ptr %.sroa.0.024.i22, align 4, !tbaa !171 ; 3 uses
  %i.cd = load i32, ptr %0, align 4, !tbaa !171   ; 3 uses
  %i.ce = load ptr, ptr %i.ca, align 8, !tbaa !179 ; 3 uses
  %i.cf = sext i32 %i.cc to i64
  %i.cg = getelementptr inbounds i8, ptr %i.ce, i64 %i.cf ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !180 ; 3 uses
  %i.ci = sext i32 %i.cd to i64
  %i.cj = getelementptr inbounds i8, ptr %i.ce, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !180 ; 2 uses
  %i.cl = icmp sgt i8 %i.ch, -1
  %i.cm = icmp slt i8 %i.ck, 0
  %or.cond.i.i.i24 = and i1 %i.cl, %i.cm
  br i1 %or.cond.i.i.i24, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.thread.i41, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cn = icmp slt i8 %i.ch, 0
  %i.co = icmp sgt i8 %i.ck, -1
  %or.cond5.i.i.i25 = and i1 %i.cn, %i.co
  %.pre25.i26 = tail call i32 @llvm.abs.i32(i32 %i.cc, i1 true)
  %.pre26.i27 = zext nneg i32 %.pre25.i26 to i64  ; 2 uses
  br i1 %or.cond5.i.i.i25, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.thread19.i29.preheader, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.i28

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.thread19.i29.preheader: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.i28, %bb.k
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.thread19.i29

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.i28: ; preds = %bb.k
  %i.cp = load ptr, ptr %i.cb, align 8, !tbaa !174 ; 2 uses
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %i.cp, i64 %.pre26.i27
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !177
  %i.ct = tail call noundef i32 @llvm.abs.i32(i32 %i.cd, i1 true)
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.cp, i64 %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !177
  %i.cy = icmp sgt i32 %i.cs, %i.cx
  br i1 %i.cy, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.thread.i41, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.thread19.i29.preheader

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.thread.i41: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.i28, %bb.j
  %i.cz = ptrtoint ptr %.sroa.0.024.i22 to i64
  %i.da = sub i64 %i.cz, %i.b                     ; 3 uses
  %i.db = ashr exact i64 %i.da, 2                 ; 2 uses
  %i.dc = icmp sgt i64 %i.db, 1
  br i1 %i.dc, label %bb.l, label %bb.m, !prof !209

bb.l:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.thread.i41
  %i.dd = getelementptr inbounds nuw i8, ptr %.pn23.i23, i64 8
  %i.de = sub nsw i64 0, %i.db
  %i.df = getelementptr inbounds [4 x i8], ptr %i.dd, i64 %i.de
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.df, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.da, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35

bb.m:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.thread.i41
  %i.dg = icmp eq i64 %i.da, 4
  br i1 %i.dg, label %bb.n, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35

bb.n:                                             ; preds = %bb.m
  %i.dh = getelementptr inbounds nuw i8, ptr %.pn23.i23, i64 4
  store i32 %i.cd, ptr %i.dh, align 4, !tbaa !171
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.thread19.i29: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.thread19.i29.preheader, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL19vivify_better_watchEEclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.thread.i.i39
  %i.di = phi i8 [ %.pre.i40, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL19vivify_better_watchEEclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.thread.i.i39 ], [ %i.ch, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.thread19.i29.preheader ] ; 2 uses
  %.sroa.05.0.i.i30 = phi ptr [ %.sroa.0.0.i.i31, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL19vivify_better_watchEEclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.thread.i.i39 ], [ %.sroa.0.024.i22, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.thread19.i29.preheader ] ; 4 uses
  %.sroa.0.0.i.i31 = getelementptr inbounds i8, ptr %.sroa.05.0.i.i30, i64 -4 ; 2 uses
  %i.dj = load i32, ptr %.sroa.0.0.i.i31, align 4, !tbaa !171 ; 3 uses
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds i8, ptr %i.ce, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !180 ; 2 uses
  %i.dn = icmp sgt i8 %i.di, -1
  %i.do = icmp slt i8 %i.dm, 0
  %or.cond.i.i.i.i32 = and i1 %i.dn, %i.do
  br i1 %or.cond.i.i.i.i32, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL19vivify_better_watchEEclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.thread.i.i39, label %bb.o

bb.o:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.thread19.i29
  %i.dp = icmp slt i8 %i.di, 0
  %i.dq = icmp sgt i8 %i.dm, -1
  %or.cond5.i.i.i.i33 = and i1 %i.dp, %i.dq
  br i1 %or.cond5.i.i.i.i33, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL19vivify_better_watchEEclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.i.i34

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL19vivify_better_watchEEclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.i.i34: ; preds = %bb.o
  %i.dr = load ptr, ptr %i.cb, align 8, !tbaa !174 ; 2 uses
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %i.dr, i64 %.pre26.i27
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !177
  %i.dv = tail call noundef i32 @llvm.abs.i32(i32 %i.dj, i1 true)
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.dr, i64 %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !177
  %i.ea = icmp sgt i32 %i.du, %i.dz
  br i1 %i.ea, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL19vivify_better_watchEEclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.thread.i.i39, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL19vivify_better_watchEEclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.thread.i.i39: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL19vivify_better_watchEEclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.i.i34, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.thread19.i29
  store i32 %i.dj, ptr %.sroa.05.0.i.i30, align 4, !tbaa !171
  %.pre.i40 = load i8, ptr %i.cg, align 1, !tbaa !180
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.thread19.i29, !llvm.loop !373

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL19vivify_better_watchEEclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.i.i34, %bb.o, %bb.n, %bb.m, %bb.l
  %.sink.i36 = phi ptr [ %0, %bb.n ], [ %0, %bb.l ], [ %0, %bb.m ], [ %.sroa.05.0.i.i30, %bb.o ], [ %.sroa.05.0.i.i30, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL19vivify_better_watchEEclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_.exit.i.i34 ]
  store i32 %i.cc, ptr %.sink.i36, align 4, !tbaa !171
  %.sroa.0.0.i37 = getelementptr inbounds nuw i8, ptr %.sroa.0.024.i22, i64 4 ; 2 uses
  %.not.i38 = icmp eq ptr %.sroa.0.0.i37, %1
  br i1 %.not.i38, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEEEvT_SC_T0_.exit, label %bb.j, !llvm.loop !374

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEEEvT_SC_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIN7CaDiCaL19vivify_better_watchEEEEvT_T0_.exit.i, %.preheader.i18, %bb.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEEEvT_SC_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEEEvT_T0_SD_T1_T2_(ptr %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 472
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !179  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 712
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.thread38
  %.041 = phi i64 [ %1, %.lr.ph ], [ %i.ak, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.thread38 ] ; 2 uses
  %i.g = shl i64 %.041, 1                         ; 2 uses
  %i.h = add i64 %i.g, 2                          ; 3 uses
  %i.i = getelementptr inbounds [4 x i8], ptr %0, i64 %i.h
  %i.j = or disjoint i64 %i.g, 1                  ; 2 uses
  %i.k = getelementptr inbounds [4 x i8], ptr %0, i64 %i.j
  %i.l = load i32, ptr %i.i, align 4, !tbaa !171  ; 4 uses
  %i.m = load i32, ptr %i.k, align 4, !tbaa !171  ; 3 uses
  %i.n = sext i32 %i.l to i64
  %i.o = getelementptr inbounds i8, ptr %i.e, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !180   ; 2 uses
  %i.q = sext i32 %i.m to i64
  %i.r = getelementptr inbounds i8, ptr %i.e, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !180   ; 2 uses
  %i.t = icmp sgt i8 %i.p, -1
  %i.u = icmp slt i8 %i.s, 0
  %or.cond.i.i = and i1 %i.t, %i.u
  br i1 %or.cond.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = icmp slt i8 %i.p, 0
  %i.w = icmp sgt i8 %i.s, -1
  %or.cond5.i.i = and i1 %i.v, %i.w
  br i1 %or.cond5.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit.thread38, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL19vivify_better_watchEEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEESB_EEbT_T0_.exit
end_hunk_1
