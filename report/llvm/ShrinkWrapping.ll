Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ShrinkWrapping?download=true
inline.NumInlined: 8136
inline.NumDeleted: 3649
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@"_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPPN4llvm6MCInstESt6vectorIS4_SaIS4_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt14ShrinkWrapping20computeSaveLocationsEvE3$_0EEEvT_SG_SG_T0_SH_T1_SH_T2_":bb.a

bb.d:                                             ; preds = %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4llvm6MCInstESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZNS2_4bolt14ShrinkWrapping20computeSaveLocationsEvE3$_0EEET_SG_SG_RKT0_T1_.exit", %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4llvm6MCInstESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZNS2_4bolt14ShrinkWrapping20computeSaveLocationsEvE3$_0EEET_SG_SG_RKT0_T1_.exit"
  %.sroa.083.0 = phi ptr [ %i.h, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4llvm6MCInstESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZNS2_4bolt14ShrinkWrapping20computeSaveLocationsEvE3$_0EEET_SG_SG_RKT0_T1_.exit" ], [ %.sroa.013.0.lcssa.i69, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4llvm6MCInstESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZNS2_4bolt14ShrinkWrapping20computeSaveLocationsEvE3$_0EEET_SG_SG_RKT0_T1_.exit" ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.013.0.lcssa.i, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4llvm6MCInstESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZNS2_4bolt14ShrinkWrapping20computeSaveLocationsEvE3$_0EEET_SG_SG_RKT0_T1_.exit" ], [ %i.ah, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4llvm6MCInstESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZNS2_4bolt14ShrinkWrapping20computeSaveLocationsEvE3$_0EEET_SG_SG_RKT0_T1_.exit" ] ; 2 uses
  %.060 = phi i64 [ %i.af, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4llvm6MCInstESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZNS2_4bolt14ShrinkWrapping20computeSaveLocationsEvE3$_0EEET_SG_SG_RKT0_T1_.exit" ], [ %i.ag, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4llvm6MCInstESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZNS2_4bolt14ShrinkWrapping20computeSaveLocationsEvE3$_0EEET_SG_SG_RKT0_T1_.exit" ] ; 3 uses
  %.0 = phi i64 [ %i.g, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4llvm6MCInstESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Iter_comp_valIZNS2_4bolt14ShrinkWrapping20computeSaveLocationsEvE3$_0EEET_SG_SG_RKT0_T1_.exit" ], [ %i.bf, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4llvm6MCInstESt6vectorIS4_SaIS4_EEEES4_NS0_5__ops14_Val_comp_iterIZNS2_4bolt14ShrinkWrapping20computeSaveLocationsEvE3$_0EEET_SG_SG_RKT0_T1_.exit" ] ; 2 uses
  %i.bg = sub nsw i64 %3, %.0                     ; 2 uses
  %i.bh = call ptr @_ZSt17__rotate_adaptiveIN9__gnu_cxx17__normal_iteratorIPPN4llvm6MCInstESt6vectorIS4_SaIS4_EEEES5_lET_SA_SA_SA_T1_SB_T0_SB_(ptr %.sroa.083.0, ptr %1, ptr %.sroa.0.0, i64 noundef %i.bg, i64 noundef %.060, ptr noundef %5, i64 noundef %6) ; 2 uses
  call fastcc void @"_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPPN4llvm6MCInstESt6vectorIS4_SaIS4_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt14ShrinkWrapping20computeSaveLocationsEvE3$_0EEEvT_SG_SG_T0_SH_T1_SH_T2_"(ptr %0, ptr %.sroa.083.0, ptr %i.bh, i64 noundef %.0, i64 noundef %.060, ptr noundef %5, i64 noundef %6, i64 %7)
  %i.bi = sub nsw i64 %4, %.060
  call fastcc void @"_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPPN4llvm6MCInstESt6vectorIS4_SaIS4_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt14ShrinkWrapping20computeSaveLocationsEvE3$_0EEEvT_SG_SG_T0_SH_T1_SH_T2_"(ptr %i.bh, ptr %.sroa.0.0, ptr %2, i64 noundef %i.bg, i64 noundef %i.bi, ptr noundef %5, i64 noundef %6, i64 %7)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr ptr @_ZSt17__rotate_adaptiveIN9__gnu_cxx17__normal_iteratorIPPN4llvm6MCInstESt6vectorIS4_SaIS4_EEEES5_lET_SA_SA_SA_T1_SB_T0_SB_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = icmp sle i64 %3, %4
  %.not = icmp sgt i64 %4, %6
  %or.cond = or i1 %i.a, %.not
  br i1 %or.cond, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not36 = icmp eq i64 %4, 0
  br i1 %.not36, label %bb.z, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 6 uses
  %i.e = icmp sgt i64 %i.d, 8                     ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.e, !prof !210

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %5, ptr align 8 %1, i64 %i.d, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm6MCInstESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit

bb.e:                                             ; preds = %bb.c
  %i.f = icmp eq i64 %i.d, 8
  br i1 %i.f, label %bb.f, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm6MCInstESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit

bb.f:                                             ; preds = %bb.e
  %i.g = load ptr, ptr %1, align 8, !tbaa !129
  store ptr %i.g, ptr %5, align 8, !tbaa !129
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm6MCInstESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm6MCInstESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.h = ptrtoint ptr %0 to i64
  %i.i = sub i64 %i.c, %i.h                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 3                   ; 2 uses
  %i.k = icmp sgt i64 %i.j, 1
  br i1 %i.k, label %bb.g, label %bb.h, !prof !210

bb.g:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm6MCInstESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit
  %i.l = sub nsw i64 0, %i.j
  %i.m = getelementptr inbounds [8 x i8], ptr %2, i64 %i.l
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.m, ptr align 8 %0, i64 %i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm6MCInstESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

bb.h:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm6MCInstESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit
  %i.n = icmp eq i64 %i.i, 8
  br i1 %i.n, label %bb.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm6MCInstESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds i8, ptr %2, i64 -8
  %i.p = load ptr, ptr %0, align 8, !tbaa !129
  store ptr %i.p, ptr %i.o, align 8, !tbaa !129
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm6MCInstESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm6MCInstESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit: ; preds = %bb.g, %bb.h, %bb.i
  br i1 %i.e, label %bb.j, label %bb.k, !prof !210

bb.j:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm6MCInstESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %0, ptr align 8 %5, i64 %i.d, i1 false)
  br label %_ZSt4moveIPPN4llvm6MCInstEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit

bb.k:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm6MCInstESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit
  %i.q = icmp eq i64 %i.d, 8
  br i1 %i.q, label %bb.l, label %_ZSt4moveIPPN4llvm6MCInstEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.k
  %i.r = load ptr, ptr %5, align 8, !tbaa !129
  store ptr %i.r, ptr %0, align 8, !tbaa !129
  br label %_ZSt4moveIPPN4llvm6MCInstEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit

_ZSt4moveIPPN4llvm6MCInstEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit: ; preds = %bb.j, %bb.k, %bb.l
  %i.s = getelementptr inbounds i8, ptr %0, i64 %i.d
  br label %bb.z

bb.m:                                             ; preds = %bb.a
  %.not34 = icmp sgt i64 %3, %6
  br i1 %.not34, label %bb.y, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not35 = icmp eq i64 %3, 0
  br i1 %.not35, label %bb.z, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.t = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.u = ptrtoint ptr %0 to i64
  %i.v = sub i64 %i.t, %i.u                       ; 6 uses
  %i.w = icmp sgt i64 %i.v, 8
  br i1 %i.w, label %bb.p, label %bb.q, !prof !210

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %5, ptr align 8 %0, i64 %i.v, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm6MCInstESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit37

bb.q:                                             ; preds = %bb.o
  %i.x = icmp eq i64 %i.v, 8
  br i1 %i.x, label %bb.r, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm6MCInstESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit37

bb.r:                                             ; preds = %bb.q
  %i.y = load ptr, ptr %0, align 8, !tbaa !129
  store ptr %i.y, ptr %5, align 8, !tbaa !129
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm6MCInstESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit37

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm6MCInstESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit37: ; preds = %bb.p, %bb.q, %bb.r
  %i.z = ptrtoint ptr %2 to i64
  %i.aa = sub i64 %i.z, %i.t                      ; 3 uses
  %i.ab = icmp sgt i64 %i.aa, 8
  br i1 %i.ab, label %bb.s, label %bb.t, !prof !210

bb.s:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm6MCInstESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit37
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %0, ptr align 8 %1, i64 %i.aa, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm6MCInstESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

bb.t:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm6MCInstESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit37
  %i.ac = icmp eq i64 %i.aa, 8
  br i1 %i.ac, label %bb.u, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm6MCInstESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

bb.u:                                             ; preds = %bb.t
  %i.ad = load ptr, ptr %1, align 8, !tbaa !129
  store ptr %i.ad, ptr %0, align 8, !tbaa !129
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm6MCInstESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm6MCInstESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit: ; preds = %bb.s, %bb.t, %bb.u
  %i.ae = ashr exact i64 %i.v, 3                  ; 3 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.v, label %bb.w, !prof !210

bb.v:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm6MCInstESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %5, i64 %i.v, i1 false)
  br label %_ZSt13move_backwardIPPN4llvm6MCInstEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit

bb.w:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm6MCInstESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit
  %i.ai = icmp eq i64 %i.v, 8
  br i1 %i.ai, label %bb.x, label %_ZSt13move_backwardIPPN4llvm6MCInstEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit

bb.x:                                             ; preds = %bb.w
  %i.aj = getelementptr inbounds i8, ptr %2, i64 -8
  %i.ak = load ptr, ptr %5, align 8, !tbaa !129
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !129
  br label %_ZSt13move_backwardIPPN4llvm6MCInstEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit

_ZSt13move_backwardIPPN4llvm6MCInstEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit: ; preds = %bb.v, %bb.w, %bb.x
  %i.al = sub nsw i64 0, %i.ae
  %i.am = getelementptr inbounds [8 x i8], ptr %2, i64 %i.al
  br label %bb.z

bb.y:                                             ; preds = %bb.m
  %i.an = tail call ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPPN4llvm6MCInstESt6vectorIS5_SaIS5_EEEEEET_SB_SB_SB_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2)
  br label %bb.z

bb.z:                                             ; preds = %bb.n, %bb.b, %bb.y, %_ZSt13move_backwardIPPN4llvm6MCInstEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit, %_ZSt4moveIPPN4llvm6MCInstEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit
  %.sroa.032.0 = phi ptr [ %i.s, %_ZSt4moveIPPN4llvm6MCInstEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit ], [ %i.an, %bb.y ], [ %i.am, %_ZSt13move_backwardIPPN4llvm6MCInstEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit ], [ %0, %bb.b ], [ %2, %bb.n ]
  ret ptr %.sroa.032.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEElNS0_5__ops15_Iter_comp_iterIZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvE3$_0EEEvT_SE_T0_T1_"(ptr %0, ptr %1, i64 noundef %2, ptr nofree noundef readonly byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.1488") align 8 captures(none) %3) unnamed_addr #3 {
bb.a:
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.1488", align 8 ; 5 uses
  %i.a = alloca i16, align 2                      ; 6 uses
  %i.b = alloca i16, align 2                      ; 9 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.1488", align 8 ; 9 uses
  %.fr22 = freeze ptr %1                          ; 3 uses
  %.fr21 = freeze ptr %0                          ; 43 uses
  %i.c = ptrtoint ptr %.fr21 to i64               ; 3 uses
  %i.d = ptrtoint ptr %.fr22 to i64
  %i.e = sub i64 %i.d, %i.c                       ; 2 uses
  %i.f = ashr exact i64 %i.e, 1                   ; 2 uses
  %i.g = icmp sgt i64 %i.f, 16
  br i1 %i.g, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %.fr21, i64 2 ; 6 uses
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph38

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvE3$_0EEET_SE_SE_T0_.exit"
  %i.j = icmp eq i64 %i.cw, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph38, !llvm.loop !2076

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i20.lcssa = phi i64 [ %i.e, %.lr.ph ], [ %i.dw, %bb.b ] ; 3 uses
  %storemerge18.lcssa = phi ptr [ %.fr22, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.k = lshr i64 %.fr.i.i20.lcssa, 1             ; 2 uses
  %i.l = add nsw i64 %i.k, -2                     ; 3 uses
  %i.m = lshr i64 %i.l, 1                         ; 3 uses
  %i.n = add nsw i64 %i.k, -1
  %i.o = lshr i64 %i.n, 1                         ; 4 uses
  %i.p = and i64 %.fr.i.i20.lcssa, 2
  %i.q = icmp eq i64 %i.p, 0
  %i.r = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %.fr21, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %.fr21, i64 %i.l
  br i1 %i.q, label %.split, label %.split.us

.split.us:                                        ; preds = %._crit_edge, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEltNS0_5__ops15_Iter_comp_iterIZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvE3$_0EEEvT_T0_SF_T1_T2_.exit.i.i.i.us"
  %.08.i.i.i.us = phi i64 [ %i.ao, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEltNS0_5__ops15_Iter_comp_iterIZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvE3$_0EEEvT_T0_SF_T1_T2_.exit.i.i.i.us" ], [ %i.m, %._crit_edge ] ; 8 uses
  %i.u = getelementptr inbounds [2 x i8], ptr %.fr21, i64 %.08.i.i.i.us
  %i.v = load i16, ptr %i.u, align 2, !tbaa !195  ; 2 uses
  %i.w = icmp slt i64 %.08.i.i.i.us, %i.o
  br i1 %i.w, label %.lr.ph.i.i.i.i.us, label %._crit_edge.i.i.i.i.us.thread

._crit_edge.i.i.i.i.us.thread:                    ; preds = %.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEltNS0_5__ops15_Iter_comp_iterIZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvE3$_0EEEvT_T0_SF_T1_T2_.exit.i.i.i.us"

.lr.ph.i.i.i.i.us:                                ; preds = %.split.us, %.lr.ph.i.i.i.i.us
  %.034.i.i.i.i.us = phi i64 [ %spec.select.i.i.i.i.us, %.lr.ph.i.i.i.i.us ], [ %.08.i.i.i.us, %.split.us ] ; 2 uses
  %i.x = shl i64 %.034.i.i.i.i.us, 1              ; 2 uses
  %i.y = add i64 %i.x, 2                          ; 2 uses
  %i.z = getelementptr inbounds [2 x i8], ptr %.fr21, i64 %i.y
  %i.aa = or disjoint i64 %i.x, 1                 ; 2 uses
  %i.ab = getelementptr inbounds [2 x i8], ptr %.fr21, i64 %i.aa
  %i.ac = call fastcc noundef zeroext i1 @"_ZZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvENK3$_0clERKtS4_"(ptr noundef nonnull readonly align 8 dereferenceable(24) %5, ptr noundef nonnull readonly align 2 dereferenceable(2) %i.z, ptr noundef nonnull readonly align 2 dereferenceable(2) %i.ab)
  %spec.select.i.i.i.i.us = select i1 %i.ac, i64 %i.aa, i64 %i.y ; 6 uses
  %i.ad = getelementptr inbounds [2 x i8], ptr %.fr21, i64 %spec.select.i.i.i.i.us
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !195
  %i.af = getelementptr inbounds [2 x i8], ptr %.fr21, i64 %.034.i.i.i.i.us
  store i16 %i.ae, ptr %i.af, align 2, !tbaa !195
  %i.ag = icmp slt i64 %spec.select.i.i.i.i.us, %i.o
  br i1 %i.ag, label %.lr.ph.i.i.i.i.us, label %._crit_edge.i.i.i.i.us, !llvm.loop !2077

._crit_edge.i.i.i.i.us:                           ; preds = %.lr.ph.i.i.i.i.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 %i.v, ptr %i.b, align 2, !tbaa !195
  %i.ah = icmp sgt i64 %spec.select.i.i.i.i.us, %.08.i.i.i.us
  br i1 %i.ah, label %.lr.ph.i.i.i.i.i.us, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEltNS0_5__ops15_Iter_comp_iterIZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvE3$_0EEEvT_T0_SF_T1_T2_.exit.i.i.i.us"

.lr.ph.i.i.i.i.i.us:                              ; preds = %._crit_edge.i.i.i.i.us, %bb.c
  %.018.i.i.i.i.i.us = phi i64 [ %.0919.i.i.i.i.i.us, %bb.c ], [ %spec.select.i.i.i.i.us, %._crit_edge.i.i.i.i.us ] ; 3 uses
  %.0919.in.i.i.i.i.i.us = add nsw i64 %.018.i.i.i.i.i.us, -1
  %.0919.i.i.i.i.i.us = sdiv i64 %.0919.in.i.i.i.i.i.us, 2 ; 4 uses
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %.fr21, i64 %.0919.i.i.i.i.i.us ; 2 uses
  %i.aj = call fastcc noundef zeroext i1 @"_ZZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvENK3$_0clERKtS4_"(ptr noundef nonnull readonly align 8 dereferenceable(24) %5, ptr noundef nonnull readonly align 2 dereferenceable(2) %i.ai, ptr noundef nonnull readonly align 2 dereferenceable(2) %i.b)
  br i1 %i.aj, label %bb.c, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEltNS0_5__ops15_Iter_comp_iterIZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvE3$_0EEEvT_T0_SF_T1_T2_.exit.i.i.i.us"

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.us
  %i.ak = load i16, ptr %i.ai, align 2, !tbaa !195
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %.fr21, i64 %.018.i.i.i.i.i.us
  store i16 %i.ak, ptr %i.al, align 2, !tbaa !195
  %i.am = icmp sgt i64 %.0919.i.i.i.i.i.us, %.08.i.i.i.us
  br i1 %i.am, label %.lr.ph.i.i.i.i.i.us, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEltNS0_5__ops15_Iter_comp_iterIZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvE3$_0EEEvT_T0_SF_T1_T2_.exit.i.i.i.us", !llvm.loop !2078

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEltNS0_5__ops15_Iter_comp_iterIZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvE3$_0EEEvT_T0_SF_T1_T2_.exit.i.i.i.us": ; preds = %.lr.ph.i.i.i.i.i.us, %bb.c, %._crit_edge.i.i.i.i.us.thread, %._crit_edge.i.i.i.i.us
  %.0.lcssa.i.i.i.i.i.us = phi i64 [ %spec.select.i.i.i.i.us, %._crit_edge.i.i.i.i.us ], [ %.08.i.i.i.us, %._crit_edge.i.i.i.i.us.thread ], [ %.018.i.i.i.i.i.us, %.lr.ph.i.i.i.i.i.us ], [ %.0919.i.i.i.i.i.us, %bb.c ]
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %.fr21, i64 %.0.lcssa.i.i.i.i.i.us
  store i16 %i.v, ptr %i.an, align 2, !tbaa !195
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i.i.i.us = icmp eq i64 %.08.i.i.i.us, 0
  %i.ao = add nsw i64 %.08.i.i.i.us, -1
  br i1 %.not.i.i.i.us, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvE3$_0EEEvT_SE_RT0_.exit.i.i", label %.split.us, !llvm.loop !2079

.split:                                           ; preds = %._crit_edge, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEltNS0_5__ops15_Iter_comp_iterIZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvE3$_0EEEvT_T0_SF_T1_T2_.exit.i.i.i"
  %.08.i.i.i = phi i64 [ %i.bl, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEltNS0_5__ops15_Iter_comp_iterIZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvE3$_0EEEvT_T0_SF_T1_T2_.exit.i.i.i" ], [ %i.m, %._crit_edge ] ; 8 uses
  %i.ap = getelementptr inbounds [2 x i8], ptr %.fr21, i64 %.08.i.i.i
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !195 ; 2 uses
  %i.ar = icmp slt i64 %.08.i.i.i, %i.o
  br i1 %i.ar, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split, %.lr.ph.i.i.i.i
  %.034.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.08.i.i.i, %.split ] ; 2 uses
  %i.as = shl i64 %.034.i.i.i.i, 1                ; 2 uses
  %i.at = add i64 %i.as, 2                        ; 2 uses
  %i.au = getelementptr inbounds [2 x i8], ptr %.fr21, i64 %i.at
  %i.av = or disjoint i64 %i.as, 1                ; 2 uses
  %i.aw = getelementptr inbounds [2 x i8], ptr %.fr21, i64 %i.av
  %i.ax = call fastcc noundef zeroext i1 @"_ZZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvENK3$_0clERKtS4_"(ptr noundef nonnull readonly align 8 dereferenceable(24) %5, ptr noundef nonnull readonly align 2 dereferenceable(2) %i.au, ptr noundef nonnull readonly align 2 dereferenceable(2) %i.aw)
  %spec.select.i.i.i.i = select i1 %i.ax, i64 %i.av, i64 %i.at ; 4 uses
  %i.ay = getelementptr inbounds [2 x i8], ptr %.fr21, i64 %spec.select.i.i.i.i
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !195
  %i.ba = getelementptr inbounds [2 x i8], ptr %.fr21, i64 %.034.i.i.i.i
  store i16 %i.az, ptr %i.ba, align 2, !tbaa !195
  %i.bb = icmp slt i64 %spec.select.i.i.i.i, %i.o
  br i1 %i.bb, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !2077

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.split
  %.0.lcssa.i.i.i.i = phi i64 [ %.08.i.i.i, %.split ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.bc = icmp eq i64 %.0.lcssa.i.i.i.i, %i.m
  br i1 %i.bc, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bd = load i16, ptr %i.s, align 2, !tbaa !195
  store i16 %i.bd, ptr %i.t, align 2, !tbaa !195
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.r, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 %i.aq, ptr %i.b, align 2, !tbaa !195
  %i.be = icmp sgt i64 %.1.i.i.i.i, %.08.i.i.i
  br i1 %i.be, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEltNS0_5__ops15_Iter_comp_iterIZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvE3$_0EEEvT_T0_SF_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.018.i.i.i.i.i = phi i64 [ %.0919.i.i.i.i.i, %bb.f ], [ %.1.i.i.i.i, %bb.e ] ; 3 uses
  %.0919.in.i.i.i.i.i = add nsw i64 %.018.i.i.i.i.i, -1
  %.0919.i.i.i.i.i = sdiv i64 %.0919.in.i.i.i.i.i, 2 ; 4 uses
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %.fr21, i64 %.0919.i.i.i.i.i ; 2 uses
  %i.bg = call fastcc noundef zeroext i1 @"_ZZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvENK3$_0clERKtS4_"(ptr noundef nonnull readonly align 8 dereferenceable(24) %5, ptr noundef nonnull readonly align 2 dereferenceable(2) %i.bf, ptr noundef nonnull readonly align 2 dereferenceable(2) %i.b)
  br i1 %i.bg, label %bb.f, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEltNS0_5__ops15_Iter_comp_iterIZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvE3$_0EEEvT_T0_SF_T1_T2_.exit.i.i.i"

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bh = load i16, ptr %i.bf, align 2, !tbaa !195
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %.fr21, i64 %.018.i.i.i.i.i
  store i16 %i.bh, ptr %i.bi, align 2, !tbaa !195
  %i.bj = icmp sgt i64 %.0919.i.i.i.i.i, %.08.i.i.i
  br i1 %i.bj, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEltNS0_5__ops15_Iter_comp_iterIZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvE3$_0EEEvT_T0_SF_T1_T2_.exit.i.i.i", !llvm.loop !2078

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEltNS0_5__ops15_Iter_comp_iterIZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvE3$_0EEEvT_T0_SF_T1_T2_.exit.i.i.i": ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.018.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0919.i.i.i.i.i, %bb.f ]
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %.fr21, i64 %.0.lcssa.i.i.i.i.i
  store i16 %i.aq, ptr %i.bk, align 2, !tbaa !195
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i.i.i = icmp eq i64 %.08.i.i.i, 0
  %i.bl = add nsw i64 %.08.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvE3$_0EEEvT_SE_RT0_.exit.i.i", label %.split, !llvm.loop !2079

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvE3$_0EEEvT_SE_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEltNS0_5__ops15_Iter_comp_iterIZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvE3$_0EEEvT_T0_SF_T1_T2_.exit.i.i.i.us", %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEltNS0_5__ops15_Iter_comp_iterIZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvE3$_0EEEvT_T0_SF_T1_T2_.exit.i.i.i"
  %6 = icmp sgt i64 %.fr.i.i20.lcssa, 2
  br i1 %6, label %.lr.ph.i8.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvE3$_0EEEvT_SE_SE_T0_.exit"

.lr.ph.i8.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvE3$_0EEEvT_SE_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvE3$_0EEEvT_SE_SE_RT0_.exit.i.i"
  %.sroa.0.05.i.i = phi ptr [ %i.bm, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvE3$_0EEEvT_SE_SE_RT0_.exit.i.i" ], [ %storemerge18.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvE3$_0EEEvT_SE_RT0_.exit.i.i" ]
  %i.bm = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -2 ; 4 uses
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !195 ; 3 uses
  %i.bo = load i16, ptr %.fr21, align 2, !tbaa !195
  store i16 %i.bo, ptr %i.bm, align 2, !tbaa !195
  %i.bp = ptrtoint ptr %i.bm to i64
  %i.bq = sub i64 %i.bp, %i.c                     ; 3 uses
  %i.br = ashr exact i64 %i.bq, 1                 ; 3 uses
  %i.bs = add nsw i64 %i.br, -1
  %i.bt = lshr i64 %i.bs, 1
  %i.bu = icmp sgt i64 %i.br, 2
  br i1 %i.bu, label %.lr.ph.i.i.i16.i, label %._crit_edge.i.i.i9.i

.lr.ph.i.i.i16.i:                                 ; preds = %.lr.ph.i8.i, %.lr.ph.i.i.i16.i
  %.034.i.i.i17.i = phi i64 [ %spec.select.i.i.i18.i, %.lr.ph.i.i.i16.i ], [ 0, %.lr.ph.i8.i ] ; 2 uses
  %i.bv = shl i64 %.034.i.i.i17.i, 1              ; 2 uses
  %i.bw = add i64 %i.bv, 2                        ; 2 uses
  %i.bx = getelementptr inbounds [2 x i8], ptr %.fr21, i64 %i.bw
  %i.by = or disjoint i64 %i.bv, 1                ; 2 uses
  %i.bz = getelementptr inbounds [2 x i8], ptr %.fr21, i64 %i.by
  %i.ca = call fastcc noundef zeroext i1 @"_ZZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvENK3$_0clERKtS4_"(ptr noundef nonnull readonly align 8 dereferenceable(24) %5, ptr noundef nonnull readonly align 2 dereferenceable(2) %i.bx, ptr noundef nonnull readonly align 2 dereferenceable(2) %i.bz)
  %spec.select.i.i.i18.i = select i1 %i.ca, i64 %i.by, i64 %i.bw ; 4 uses
  %i.cb = getelementptr inbounds [2 x i8], ptr %.fr21, i64 %spec.select.i.i.i18.i
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !195
  %i.cd = getelementptr inbounds [2 x i8], ptr %.fr21, i64 %.034.i.i.i17.i
  store i16 %i.cc, ptr %i.cd, align 2, !tbaa !195
  %i.ce = icmp slt i64 %spec.select.i.i.i18.i, %i.bt
  br i1 %i.ce, label %.lr.ph.i.i.i16.i, label %._crit_edge.i.i.i9.i, !llvm.loop !2077

._crit_edge.i.i.i9.i:                             ; preds = %.lr.ph.i.i.i16.i, %.lr.ph.i8.i
  %.0.lcssa.i.i.i10.i = phi i64 [ 0, %.lr.ph.i8.i ], [ %spec.select.i.i.i18.i, %.lr.ph.i.i.i16.i ] ; 5 uses
  %i.cf = and i64 %i.bq, 2
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i9.i
  %i.ch = add nsw i64 %i.br, -2
  %i.ci = ashr exact i64 %i.ch, 1
  %i.cj = icmp eq i64 %.0.lcssa.i.i.i10.i, %i.ci
  br i1 %i.cj, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.ck = shl nuw nsw i64 %.0.lcssa.i.i.i10.i, 1
  %i.cl = or disjoint i64 %i.ck, 1                ; 2 uses
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %.fr21, i64 %i.cl
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !195
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %.fr21, i64 %.0.lcssa.i.i.i10.i
  store i16 %i.cn, ptr %i.co, align 2, !tbaa !195
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %i.bn, ptr %i.a, align 2, !tbaa !195
  br label %.lr.ph.i.i.i.i12.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i9.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %i.bn, ptr %i.a, align 2, !tbaa !195
  %.not.i.i11.i = icmp eq i64 %.0.lcssa.i.i.i10.i, 0
  br i1 %.not.i.i11.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvE3$_0EEEvT_SE_SE_RT0_.exit.i.i", label %.lr.ph.i.i.i.i12.i.preheader

.lr.ph.i.i.i.i12.i.preheader:                     ; preds = %bb.h, %.thread.i.i.i
  %.018.i.i.i.i13.i.ph = phi i64 [ %.0.lcssa.i.i.i10.i, %bb.h ], [ %i.cl, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i12.i

.lr.ph.i.i.i.i12.i:                               ; preds = %.lr.ph.i.i.i.i12.i.preheader, %bb.i
  %.018.i.i.i.i13.i = phi i64 [ %.0919.i.i67.i.i.i, %bb.i ], [ %.018.i.i.i.i13.i.ph, %.lr.ph.i.i.i.i12.i.preheader ] ; 3 uses
  %.0919.in.i.i.i.i14.i = add nsw i64 %.018.i.i.i.i13.i, -1
  %.0919.i.i67.i.i.i = lshr i64 %.0919.in.i.i.i.i14.i, 1 ; 3 uses
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %.fr21, i64 %.0919.i.i67.i.i.i ; 2 uses
  %i.cq = call fastcc noundef zeroext i1 @"_ZZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvENK3$_0clERKtS4_"(ptr noundef nonnull readonly align 8 dereferenceable(24) %5, ptr noundef nonnull readonly align 2 dereferenceable(2) %i.cp, ptr noundef nonnull readonly align 2 dereferenceable(2) %i.a)
  br i1 %i.cq, label %bb.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvE3$_0EEEvT_SE_SE_RT0_.exit.i.i"

bb.i:                                             ; preds = %.lr.ph.i.i.i.i12.i
  %i.cr = load i16, ptr %i.cp, align 2, !tbaa !195
  %i.cs = getelementptr inbounds [2 x i8], ptr %.fr21, i64 %.018.i.i.i.i13.i
  store i16 %i.cr, ptr %i.cs, align 2, !tbaa !195
  %.not8.i.i.i = icmp eq i64 %.0919.i.i67.i.i.i, 0
  br i1 %.not8.i.i.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvE3$_0EEEvT_SE_SE_RT0_.exit.i.i", label %.lr.ph.i.i.i.i12.i, !llvm.loop !2078

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvE3$_0EEEvT_SE_SE_RT0_.exit.i.i": ; preds = %bb.i, %.lr.ph.i.i.i.i12.i, %bb.h
  %.0.lcssa.i.i.i.i15.i = phi i64 [ 0, %bb.h ], [ %.018.i.i.i.i13.i, %.lr.ph.i.i.i.i12.i ], [ 0, %bb.i ]
  %i.ct = getelementptr inbounds [2 x i8], ptr %.fr21, i64 %.0.lcssa.i.i.i.i15.i
  store i16 %i.bn, ptr %i.ct, align 2, !tbaa !195
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cu = icmp sgt i64 %i.bq, 2
  br i1 %i.cu, label %.lr.ph.i8.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvE3$_0EEEvT_SE_SE_T0_.exit", !llvm.loop !2080

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvE3$_0EEEvT_SE_SE_T0_.exit": ; preds = %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvE3$_0EEEvT_SE_SE_RT0_.exit.i.i", %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvE3$_0EEEvT_SE_RT0_.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.loopexit

.lr.ph38:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1837 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %.fr22, %.lr.ph ] ; 3 uses
  %.01936 = phi i64 [ %i.cw, %bb.b ], [ %2, %.lr.ph ]
  %i.cv = phi i64 [ %i.dx, %bb.b ], [ %i.f, %.lr.ph ]
  %i.cw = add nsw i64 %.01936, -1                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.cx = lshr i64 %i.cv, 1
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %.fr21, i64 %i.cx ; 7 uses
  %i.cz = getelementptr inbounds i8, ptr %storemerge1837, i64 -2 ; 8 uses
  %i.da = call fastcc noundef zeroext i1 @"_ZZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvENK3$_0clERKtS4_"(ptr noundef nonnull readonly align 8 dereferenceable(24) %3, ptr noundef nonnull readonly align 2 dereferenceable(2) %i.h, ptr noundef nonnull readonly align 2 dereferenceable(2) %i.cy)
  br i1 %i.da, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph38
  %i.db = call fastcc noundef zeroext i1 @"_ZZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvENK3$_0clERKtS4_"(ptr noundef nonnull readonly align 8 dereferenceable(24) %3, ptr noundef nonnull readonly align 2 dereferenceable(2) %i.cy, ptr noundef nonnull readonly align 2 dereferenceable(2) %i.cz)
  br i1 %i.db, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dc = load i16, ptr %.fr21, align 2, !tbaa !195
  %i.dd = load i16, ptr %i.cy, align 2, !tbaa !195
  store i16 %i.dd, ptr %.fr21, align 2, !tbaa !195
  store i16 %i.dc, ptr %i.cy, align 2, !tbaa !195
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader"

bb.l:                                             ; preds = %bb.j
  %i.de = call fastcc noundef zeroext i1 @"_ZZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvENK3$_0clERKtS4_"(ptr noundef nonnull readonly align 8 dereferenceable(24) %3, ptr noundef nonnull readonly align 2 dereferenceable(2) %i.h, ptr noundef nonnull readonly align 2 dereferenceable(2) %i.cz)
  %i.df = load i16, ptr %.fr21, align 2, !tbaa !195 ; 2 uses
  br i1 %i.de, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dg = load i16, ptr %i.cz, align 2, !tbaa !195
  store i16 %i.dg, ptr %.fr21, align 2, !tbaa !195
  store i16 %i.df, ptr %i.cz, align 2, !tbaa !195
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  %i.dh = load i16, ptr %i.h, align 2, !tbaa !195
  store i16 %i.dh, ptr %.fr21, align 2, !tbaa !195
  store i16 %i.df, ptr %i.h, align 2, !tbaa !195
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader"

bb.o:                                             ; preds = %.lr.ph38
  %i.di = call fastcc noundef zeroext i1 @"_ZZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvENK3$_0clERKtS4_"(ptr noundef nonnull readonly align 8 dereferenceable(24) %3, ptr noundef nonnull readonly align 2 dereferenceable(2) %i.h, ptr noundef nonnull readonly align 2 dereferenceable(2) %i.cz)
  br i1 %i.di, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dj = load <2 x i16>, ptr %.fr21, align 2, !tbaa !195
  %i.dk = shufflevector <2 x i16> %i.dj, <2 x i16> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i16> %i.dk, ptr %.fr21, align 2, !tbaa !195
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  %i.dl = call fastcc noundef zeroext i1 @"_ZZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvENK3$_0clERKtS4_"(ptr noundef nonnull readonly align 8 dereferenceable(24) %3, ptr noundef nonnull readonly align 2 dereferenceable(2) %i.cy, ptr noundef nonnull readonly align 2 dereferenceable(2) %i.cz)
  %i.dm = load i16, ptr %.fr21, align 2, !tbaa !195 ; 2 uses
  br i1 %i.dl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dn = load i16, ptr %i.cz, align 2, !tbaa !195
  store i16 %i.dn, ptr %.fr21, align 2, !tbaa !195
  store i16 %i.dm, ptr %i.cz, align 2, !tbaa !195
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader"

bb.s:                                             ; preds = %bb.q
  %i.do = load i16, ptr %i.cy, align 2, !tbaa !195
  store i16 %i.do, ptr %.fr21, align 2, !tbaa !195
  store i16 %i.dm, ptr %i.cy, align 2, !tbaa !195
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader": ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader", %bb.v
  %.sroa.010.0.i.i = phi ptr [ %i.dq, %bb.v ], [ %i.h, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge1837, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader" ]
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i"
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i" ], [ %i.dq, %bb.t ] ; 9 uses
  %i.dp = call fastcc noundef zeroext i1 @"_ZZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvENK3$_0clERKtS4_"(ptr noundef nonnull readonly align 8 dereferenceable(24) %4, ptr noundef nonnull readonly align 2 dereferenceable(2) %.sroa.010.1.i.i, ptr noundef nonnull readonly align 2 dereferenceable(2) %.fr21)
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 2 ; 2 uses
  br i1 %i.dp, label %bb.t, label %.preheader.i.i, !llvm.loop !2081

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -2 ; 6 uses
  %i.dr = call fastcc noundef zeroext i1 @"_ZZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvENK3$_0clERKtS4_"(ptr noundef nonnull readonly align 8 dereferenceable(24) %4, ptr noundef nonnull readonly align 2 dereferenceable(2) %.fr21, ptr noundef nonnull readonly align 2 dereferenceable(2) %.sroa.0.1.i.i)
  br i1 %i.dr, label %.preheader.i.i, label %bb.u, !llvm.loop !2082

bb.u:                                             ; preds = %.preheader.i.i
  %i.ds = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.ds, label %bb.v, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvE3$_0EEET_SE_SE_T0_.exit"

bb.v:                                             ; preds = %bb.u
  %i.dt = load i16, ptr %.sroa.010.1.i.i, align 2, !tbaa !195
  %i.du = load i16, ptr %.sroa.0.1.i.i, align 2, !tbaa !195
  store i16 %i.du, ptr %.sroa.010.1.i.i, align 2, !tbaa !195
  store i16 %i.dt, ptr %.sroa.0.1.i.i, align 2, !tbaa !195
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i", !llvm.loop !2083

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvE3$_0EEET_SE_SE_T0_.exit": ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEElNS0_5__ops15_Iter_comp_iterIZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvE3$_0EEEvT_SE_T0_T1_"(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge1837, i64 noundef %i.cw, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.1488") align 8 %3)
  %i.dv = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.dw = sub i64 %i.dv, %i.c                     ; 2 uses
  %i.dx = ashr exact i64 %i.dw, 1                 ; 2 uses
  %i.dy = icmp sgt i64 %i.dx, 16
  br i1 %i.dy, label %bb.b, label %.loopexit, !llvm.loop !2076

.loopexit:                                        ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvE3$_0EEET_SE_SE_T0_.exit", %bb.a, %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_comp_iterIZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvE3$_0EEEvT_SE_SE_T0_.exit"
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @"_ZZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvENK3$_0clERKtS4_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 2 captures(none) dereferenceable(2) %1, ptr nofree noundef nonnull readonly align 2 captures(none) dereferenceable(2) %2) unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.llvm::ErrorOr.838", align 8 ; 4 uses
  %4 = alloca %"class.llvm::ErrorOr.838", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !2086
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 992 ; 4 uses
  %i.c = load i16, ptr %1, align 2, !tbaa !195
  %i.d = zext i16 %i.c to i64
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !535  ; 2 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.d ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !236  ; 2 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !228
  %.not = icmp eq ptr %i.h, %i.i
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2087, !nonnull !64, !align !99
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 -8
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIPKN4llvm6MCInstESt4pairIKS4_PNS1_4bolt16BinaryBasicBlockEESaISA_ENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS6_(ptr noundef nonnull align 8 dereferenceable(56) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !127
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !535
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.o = phi ptr [ %.pre, %bb.b ], [ %i.e, %bb.a ]
  %i.p = phi ptr [ %i.n, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.q = load i16, ptr %2, align 2, !tbaa !195
  %i.r = zext i16 %i.q to i64
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !236  ; 2 uses
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !228
  %.not25 = icmp eq ptr %i.u, %i.v
  br i1 %.not25, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !2087, !nonnull !64, !align !99
  %i.y = getelementptr inbounds i8, ptr %i.u, i64 -8
  %i.z = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIPKN4llvm6MCInstESt4pairIKS4_PNS1_4bolt16BinaryBasicBlockEESaISA_ENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS6_(ptr noundef nonnull align 8 dereferenceable(56) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %i.y)
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !127
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.ab = phi ptr [ %i.aa, %bb.d ], [ null, %bb.c ] ; 2 uses
  %i.ac = icmp eq ptr %i.p, %i.ab
  br i1 %i.ac, label %.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = icmp eq ptr %i.p, null                  ; 2 uses
  %i.ae = icmp ne ptr %i.ab, null                 ; 2 uses
  %or.cond = and i1 %i.ad, %i.ae
  br i1 %or.cond, label %bb.x, label %bb.g

bb.g:                                             ; preds = %bb.f
  %or.cond3 = or i1 %i.ad, %i.ae
  br i1 %or.cond3, label %bb.h, label %bb.x

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !2088, !nonnull !64, !align !99 ; 5 uses
  %i.ah = load i16, ptr %1, align 2, !tbaa !195
  %i.ai = zext i16 %i.ah to i64
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !535 ; 2 uses
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.aj, i64 %i.ai
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !538
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !129 ; 4 uses
  %i.ap = load i16, ptr %2, align 2, !tbaa !195
  %i.aq = zext i16 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.aj, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !538
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !129
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ag, i64 176
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !482
  %.not.not.i.i.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not.not.i.i.i.i, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
end_hunk_0
